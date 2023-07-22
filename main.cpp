#include "vec3.h"
#include <iostream>
#include "ray.h"
#include "hittable_list.h"
#include <memory>
#include "sphere.h"
#include <limits>
#include "camera.h"
#include "num.h"
#include "material.h"

using namespace std;

vec3 color(const ray& r, const hittable& world, int depth);
hittable_list random_scene();

int main() {
    const auto aspect_ratio = 3.0 / 2.0;
    const int nx = 1200;
    const int ny = static_cast<int>(nx / aspect_ratio);
    const int samples_per_pixel = 500;
    constexpr int max_depth = 50;

    auto world = random_scene();
    auto R = cos(pi / 4);
    auto material_ground = make_shared<lambertian>(vec3(0.8, 0.8, 0.0));
    auto material_center = make_shared<lambertian>(vec3(0.1, 0.2, 0.5));
    auto material_left   = make_shared<dielectric>(1.5);
    auto material_right  = make_shared<metal>(vec3(0.8, 0.6, 0.2), 0.0);

    world.add(make_shared<sphere>(vec3( 0.0, -100.5, -1.0), 100.0, material_ground));
    world.add(make_shared<sphere>(vec3( 0.0,    0.0, -1.0),   0.5, material_center));
    world.add(make_shared<sphere>(vec3(-1.0,    0.0, -1.0),   0.5, material_left));
    world.add(make_shared<sphere>(vec3(-1.0,    0.0, -1.0), -0.45, material_left));
    world.add(make_shared<sphere>(vec3( 1.0,    0.0, -1.0),   0.5, material_right));

    vec3 lookfrom(13, 2, 3);
    vec3 lookat(0, 0, 0);
    vec3 vup(0, 1, 0);
    auto dist_to_focus = 10.0;
    auto aperture = 0.1;

    camera cam(lookfrom, lookat, vup, 20, aspect_ratio, aperture, dist_to_focus);

    auto viewport_height = 2.0;
    auto viewport_width = aspect_ratio * viewport_height;
    auto focal_length = 1.0;
    auto origin = vec3(0, 0, 0);
    auto horizontal = vec3(viewport_width, 0, 0);
    auto vertical = vec3(0, viewport_height, 0);
    auto bottom_left_corner = origin - horizontal/2 - vertical/2 - vec3(0, 0, focal_length);

    cout << "P3\n" << nx << " " << ny << endl << "255" << endl;
    
    for (int j = ny - 1; j >= 0; --j) {
        for (int i = 0; i < nx; ++i) {
            vec3 c(0.0, 0.0, 0.0);
            for (int k = 0; k < samples_per_pixel; ++k) {
                auto u = (i + random_double()) / (nx - 1);
                auto v = (j + random_double()) / (ny - 1);
                ray r = cam.get_ray(u, v);
                c += color(r, world, max_depth);
            }
            
            auto scale = 1.0 / samples_per_pixel;

            auto r = sqrt(c.x() * scale);
            auto g = sqrt(c.y() * scale);
            auto b = sqrt(c.z() * scale);
            
            int ir = static_cast<int>(256 * clamp(r, 0.0, 0.999));
            int ig = static_cast<int>(256 * clamp(g, 0.0, 0.999));
            int ib = static_cast<int>(256 * clamp(b, 0.0, 0.999));
            
            cout << ir << " " << ig << " " << ib << endl;   
        }
    }
}

vec3 color(const ray& r, const hittable& world, int depth) {
    hit_record rec;
    if (depth <= 0) return vec3{0, 0, 0};
    if (world.hit(r, 0.001, numeric_limits<double>::infinity(), rec)) {
        ray scattered;
        vec3 attenuation;
        if (rec.material_ptr->scatter(r, rec, attenuation, scattered))
            return attenuation * color(scattered, world, depth-1);
        return vec3{0,0,0};
    }
    vec3 unit_direction = vec3::make_unit_vector(r.direction());
    auto t = 0.5*(unit_direction.y() + 1.0);
    return (1.0-t)*vec3(1.0, 1.0, 1.0) + t*vec3(0.5, 0.7, 1.0);
}

hittable_list random_scene() {
    hittable_list world;
    auto ground_material = make_shared<lambertian>(vec3(0.5, 0.5, 0.5));
    world.add(make_shared<sphere>(vec3(0, -1000, 0), 1000, ground_material));
    for (int a = -1; a < 11; a++) {
        for (int b = -11; b < 11; b++) {
            auto choose_mat = random_double();
            vec3 center(a + 0.9 * random_double(), 0.2, b + 0.9 * random_double());
            if ((center - vec3(4, 0.2, 0)).length() > 0.9) {
                shared_ptr<material> sphere_material;

                if (choose_mat < 0.8) {
                    // diffuse 
                    auto albedo = vec3::random() * vec3::random();
                    sphere_material = make_shared<lambertian>(albedo);
                    world.add(make_shared<sphere>(center, 0.2, sphere_material));
                } else if (choose_mat < 0.95) {
                    // metal 
                    auto albedo = vec3::random(0.5, 1);
                    auto fuzz = random_double(0, 0.5);
                    sphere_material = make_shared<metal>(albedo, fuzz);
                    world.add(make_shared<sphere>(center, 0.2, sphere_material));
                } else {
                    // glass
                    sphere_material = make_shared<dielectric>(1.5);
                    world.add(make_shared<sphere>(center, 0.2, sphere_material));
                }
            }
        }
    }
    auto material1 = make_shared<dielectric>(1.5);
    world.add(make_shared<sphere>(vec3(0, 1, 0), 1.0, material1));

    auto material2 = make_shared<lambertian>(vec3(0.4, 0.2, 0.1));
    world.add(make_shared<sphere>(vec3(-4, 1, 0), 1.0, material2));

    auto material3 = make_shared<metal>(vec3(0.7, 0.6, 0.5), 0.0);
    world.add(make_shared<sphere>(vec3(4, 1, 0), 1.0, material3));

    return world;
}





