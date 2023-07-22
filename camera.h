#ifndef CAMERA_H
#define CAMERA_H

#include "vec3.h"
#include "ray.h"

const auto pi = 2 * acos(0.0);


inline double degrees_to_radians(double degrees) {
    return degrees * pi / 180.0;
}
class camera{
    private:
      vec3 origin;
      vec3 lower_left_corner;
      vec3 horizontal;
      vec3 vertical;
      vec3 u;
      vec3 v;
      vec3 w;
      double lens_radius;
        
    public:
        camera();
        camera(vec3 lookfrom, vec3 lookat, vec3 vup, double vfov, double aspect_ratio, double aperture, double focus_dist);
        ray get_ray(double s, double t) const;
};


#endif
