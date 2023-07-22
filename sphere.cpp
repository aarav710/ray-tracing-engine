#include "vec3.h"
#include "sphere.h"

bool sphere::hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
    auto oc = r.origin() - center;
    auto a = r.direction().squared_length();
    auto b = dot(oc, r.direction());
    auto c  = dot(oc, oc) - this->r * this->r;
    auto discriminant = b*b - a*c;
    if (discriminant < 0) return false;
    auto sqrtd = sqrt(discriminant);
    auto root = (-b - sqrtd) / a;
    if (root < t_min || t_max < root) {
        root = (-b + sqrtd) / a;
        if (root < t_min || t_max < root)
            return false;
    }
    rec.t = root;
    rec.p = r.point_at_parameter(rec.t);
    vec3 outward_normal = (rec.p - center) / this->r;
    rec.set_face_normal(r, outward_normal);
    rec.material_ptr = material_ptr;
    return true;
};