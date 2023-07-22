#include "ray.h"
#include "hittable.h"
#include "hittable_list.h"
#include <ios>

bool hittable_list::hit(const ray& r, double t_min, double t_max, hit_record& rec) const {
    hit_record temp;
    bool hit_anything = false;
    auto closest_so_far = t_max;
       
    for (const auto& object : objects) {
        if (object->hit(r, t_min, closest_so_far, temp)) {
            hit_anything = true;
            closest_so_far = temp.t;
            rec = temp;
        }
    }
    return hit_anything;
}

