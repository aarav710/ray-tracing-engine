#ifndef HITTABLE_LIST_H
#define HITTABLE_LIST_H

#include "hittable.h"
#include "ray.h"
#include "vec3.h"
#include <memory>
#include <vector>

using namespace std;

class hittable_list: public hittable {
    public:
      hittable_list(){}
      hittable_list(shared_ptr<hittable> object) { add(object); };
      void clear() {objects.clear();};
      void add(shared_ptr<hittable> object) { objects.push_back(object); };
      virtual bool hit(const ray& r, double t_min, double t_max, hit_record& rec) const override;

      private:
        vector<shared_ptr<hittable>> objects;
};

#endif