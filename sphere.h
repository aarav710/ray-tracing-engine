#ifndef SPHERE
#define SPHERE 

#include "vec3.h"
#include "ray.h"
#include "hittable.h"

class sphere: public hittable {
public:
    sphere() {};
    sphere(const vec3& center, double r, std::shared_ptr<material> material_ptr): center{center}, r{r}, material_ptr{material_ptr} {};
    virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const override;

private:
    std::shared_ptr<material> material_ptr;
    vec3 center;
    double r;
};

#endif
