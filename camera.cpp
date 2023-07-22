#include "camera.h"
#include "ray.h"
#include "vec3.h"

camera::camera(vec3 lookfrom, vec3 lookat, vec3 vup, double vfov, double aspect_ratio, double aperture, double focus_dist){
    auto theta = degrees_to_radians(vfov);
    auto h = tan(theta/2);
    auto viewport_height = 2.0 * h;
    auto viewport_width = aspect_ratio * viewport_height;
    auto w = vec3::make_unit_vector(lookfrom - lookat);
    auto u = vec3::make_unit_vector(cross(vup, w));
    auto v = cross(w, u);
    origin = lookfrom;
    horizontal = viewport_width * u * focus_dist;
    vertical = viewport_height * v * focus_dist;
    lower_left_corner = origin - horizontal / 2 - vertical / 2 - focus_dist * w;
    lens_radius = aperture / 2;
}

ray camera::get_ray(double s, double t) const {
    vec3 rd = lens_radius * random_in_unit_disk();
    vec3 offset = u * rd.x() + v * rd.y();
    return ray(origin + offset, lower_left_corner + s * horizontal + t * vertical - origin - offset);
}
