#ifndef VEC3_H
#define VEC3_H

#include <math.h>
#include "num.h"

class vec3 {
    public:
      constexpr vec3():e{} {};
      constexpr vec3(const vec3& vector): e{vector.x(), vector.y(), vector.z()} {};
      constexpr vec3(double e0, double e1, double e2): e{e0, e1, e2} {};
      static vec3 random() {return vec3{random_double(), random_double(), random_double()};};
      static vec3 random(double min, double max) {
        return vec3{random_double(min, max), random_double(min, max), random_double(min, max)};
      };

      // for locations
      constexpr float x() const noexcept {return e[0];};
      constexpr float y() const noexcept {return e[1];};
      constexpr float z() const noexcept {return e[2];};

      // for rgb colors
      constexpr float r() const noexcept {return e[0];};
      constexpr float g() const noexcept {return e[1];};
      constexpr float b() const noexcept {return e[2];};

      constexpr double operator[](int i) const {return e[i];};
      constexpr double & operator[](int i) {return e[i];};
      constexpr const vec3& operator+() const {return *this;}; 
      constexpr vec3 operator-() const {return vec3{-e[0], -e[1], -e[2]};};

      vec3& operator+=(const vec3& v2);
      vec3& operator-=(const vec3& v2);
      vec3& operator/=(const vec3& v2);
      vec3& operator*=(const vec3& v2);
      vec3& operator*=(const float t);
      vec3& operator/=(const float t);

      bool near_zero() const {
          const auto s = 1e-8;
          return (fabs(e[0]) < s) && (fabs(e[1]) < s) && (fabs(e[2]) < s);
      };

      constexpr double length() const {return sqrt(this->squared_length());};
      constexpr double squared_length() const {return e[0] * e[0] + e[1] * e[1] + e[2] * e[2];};
      static vec3 make_unit_vector(vec3 vector);

      // contains the 3 coordinates for either the color or location
      double e[3];
};

constexpr vec3 operator*(const vec3& v, const double t) {
    return vec3{v.e[0] * t, v.e[1] * t, v.e[2] * t};
}

constexpr vec3 operator*(const double t, const vec3& v) {
    return v * t;
}

constexpr vec3 operator/(const vec3& v, double t) {
    return v * (1.0 / t);
}

constexpr vec3 operator*(const vec3& v1, const vec3& v2) {
    return vec3{v1.e[0] * v2.e[0], v1.e[1] * v2.e[1], v1.e[2] * v2.e[2]};
}

constexpr vec3 operator/(const vec3& v1, const vec3& v2) {
    return vec3{v1.e[0] / v2.e[0], v1.e[1] / v2.e[1], v1.e[2] / v2.e[2]};
}

constexpr vec3 operator+(const vec3& v1, const vec3& v2) {
    return vec3{v1.e[0] + v2.e[0], v1.e[1] + v2.e[1], v1.e[2] + v2.e[2]};
}

constexpr vec3 operator-(const vec3& v1, const vec3& v2) {
    return v1 + (-v2);
}

constexpr float dot(const vec3& v1, const vec3& v2) {
    return v1.e[0] * v2.e[0] + v1.e[1] * v2.e[1] + v1.e[2] * v2.e[2];
}

constexpr vec3 cross(const vec3 &u, const vec3 &v) {
    return vec3(u.e[1] * v.e[2] - u.e[2] * v.e[1],
            u.e[2] * v.e[0] - u.e[0] * v.e[2],
            u.e[0] * v.e[1] - u.e[1] * v.e[0]);
}

vec3 random_in_unit_disk();
vec3 random_in_unit_sphere();
vec3 random_unit_vector();
vec3 reflect(const vec3& v, const vec3& n);
vec3 refract(const vec3& uv, const vec3&n, double etai_over_etat);
#endif
