#!/bin/bash

cd ./build
cmake ..
make 
./ray-tracing-engine > ../image.ppm