//
// Created by aarav jain on 2023-05-11.
//

#ifndef RAY_TRACING_ENGINE_MATERIAL_H
#define RAY_TRACING_ENGINE_MATERIAL_H

#include "num.h"
#include "ray.h"
#include "hittable.h"
#include "vec3.h"
class material {
public:
    virtual bool scatter(const ray& ray_in, const hit_record& record, vec3& attenuation, ray& scattered) const = 0;
};

class lambertian: public material {
public:
    lambertian(const vec3& a) : albedo(a) {}

    virtual bool scatter(const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered) const override {
        auto scatter_direction = rec.normal + random_unit_vector();
        if (scatter_direction.near_zero()) scatter_direction = rec.normal;
        scattered = ray(rec.p, scatter_direction);
        attenuation = albedo;
        return true;
    }

public:
    vec3 albedo;

};

class metal : public material {
public:
    metal(const vec3& a, double f) : albedo(a), fuzz(f < 1 ? f : 1) {};

    virtual bool scatter(const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered) const override {
        vec3 reflected = reflect(vec3::make_unit_vector(r_in.direction()), rec.normal);
        scattered = ray(rec.p, reflected + fuzz * random_in_unit_sphere());
        scattered = ray(rec.p, reflected);
        attenuation = albedo;
        return (dot(scattered.direction(), rec.normal) > 0);
    }

public:
    vec3 albedo;
    double fuzz;
};

 class dielectric: public material {
     public:
         dielectric(double index_of_refraction): ir(index_of_refraction) {};

         virtual bool scatter(const ray& r_in, const hit_record& rec, vec3& attenuation, ray& scattered) const override {
            attenuation = vec3(1.0, 1.0, 1.0);
            double refraction_ratio = rec.front_face ? (1.0/ir) : ir;
            
            vec3 unit_direction = vec3::make_unit_vector(r_in.direction());  
            double cos_theta = fmin(dot(-unit_direction, rec.normal), 1.0);
            double sin_theta = sqrt(1.0 - cos_theta * cos_theta);
            bool cannot_refract = refraction_ratio * sin_theta > 1.0;
            vec3 direction;
            if (cannot_refract || reflectance(cos_theta, refraction_ratio) > random_double()) {
                direction = reflect(unit_direction, rec.normal);
            } else {
                direction = refract(unit_direction, rec.normal, refraction_ratio); 
            }
            scattered = ray(rec.p, direction);
            return true;
         }

    public:
         double ir;
    private:
         static double reflectance(double cosine, double ref_idx) {
            auto r0 = (1 - ref_idx) / (1 + ref_idx);
            r0 = r0 * r0;
            return r0 + (1 - r0) + pow((1 - cosine), 5);
         }
};
#endif //RAY_TRACING_ENGINE_MATERIAL_H
