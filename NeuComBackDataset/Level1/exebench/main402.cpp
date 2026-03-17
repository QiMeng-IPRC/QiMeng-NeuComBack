#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float x; float y; float z; } ;
struct TYPE_6__ {int sign_x; int sign_y; int sign_z; TYPE_3__ inv_dir; TYPE_3__ origin; } ;
typedef  TYPE_1__ warp_ray_t ;
typedef  int /*<<< orphan*/  warp_inter_t ;
struct TYPE_7__ {TYPE_3__ const max; TYPE_3__ const min; } ;
typedef  TYPE_2__ warp_aabb_t ;
typedef  TYPE_3__ vec3_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  WARP_INTER_INTERSECTS ; 
extern  int /*<<< orphan*/  WARP_INTER_OUTSIDE ; 
extern "C" { extern warp_inter_t warp_intersects_ray_aabb (const warp_ray_t *ray, const warp_aabb_t *box, float t0, float t1);
 }

#include <vector>
#include <nlohmann/json.hpp>
#include <fstream>
#include <iomanip>
#include <clib/synthesizer.h>
#include <time.h>
#include <math.h>
#include <iostream>
char* output_file;
char* pre_accel_dump_file;  // optional dump file.
using json = nlohmann::json;
const char* __asan_default_options() {
  return "detect_leaks=0";
}

clock_t AcceleratorStart;
clock_t AcceleratorTotalNanos = 0;
void StartAcceleratorTimer() {
  AcceleratorStart = clock();
}

void StopAcceleratorTimer() {
  AcceleratorTotalNanos += (clock()) - AcceleratorStart;
}

void write_output(TYPE_1__* ray, TYPE_2__* box, float t0, float t1, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *ray;
  json output_temp_2;

  output_temp_2["sign_x"] = output_temp_1.sign_x;

  output_temp_2["sign_y"] = output_temp_1.sign_y;

  output_temp_2["sign_z"] = output_temp_1.sign_z;
  json output_temp_3;

  output_temp_3["x"] = output_temp_1.inv_dir.x;

  output_temp_3["y"] = output_temp_1.inv_dir.y;

  output_temp_3["z"] = output_temp_1.inv_dir.z;
  output_temp_2["inv_dir"] = output_temp_3;
  json output_temp_4;

  output_temp_4["x"] = output_temp_1.origin.x;

  output_temp_4["y"] = output_temp_1.origin.y;

  output_temp_4["z"] = output_temp_1.origin.z;
  output_temp_2["origin"] = output_temp_4;
  output_json["ray"] = output_temp_2;
  TYPE_2__ output_temp_5 = *box;
  json output_temp_6;
  json output_temp_7;

  output_temp_7["x"] = output_temp_5.max.x;

  output_temp_7["y"] = output_temp_5.max.y;

  output_temp_7["z"] = output_temp_5.max.z;
  output_temp_6["max"] = output_temp_7;
  json output_temp_8;

  output_temp_8["x"] = output_temp_5.min.x;

  output_temp_8["y"] = output_temp_5.min.y;

  output_temp_8["z"] = output_temp_5.min.z;
  output_temp_6["min"] = output_temp_8;
  output_json["box"] = output_temp_6;

  output_json["WARP_INTER_INTERSECTS"] = WARP_INTER_INTERSECTS;

  output_json["WARP_INTER_OUTSIDE"] = WARP_INTER_OUTSIDE;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ray_pointer__sign_x = input_json["ray"]["sign_x"];
  int ray_pointer__sign_y = input_json["ray"]["sign_y"];
  int ray_pointer__sign_z = input_json["ray"]["sign_z"];
  float ray_pointer__inv_dir__x = input_json["ray"]["inv_dir"]["x"];
  float ray_pointer__inv_dir__y = input_json["ray"]["inv_dir"]["y"];
  float ray_pointer__inv_dir__z = input_json["ray"]["inv_dir"]["z"];
  TYPE_3__ ray_pointer__inv_dir = {ray_pointer__inv_dir__x, ray_pointer__inv_dir__y, ray_pointer__inv_dir__z};
  float ray_pointer__origin__x = input_json["ray"]["origin"]["x"];
  float ray_pointer__origin__y = input_json["ray"]["origin"]["y"];
  float ray_pointer__origin__z = input_json["ray"]["origin"]["z"];
  TYPE_3__ ray_pointer__origin = {ray_pointer__origin__x, ray_pointer__origin__y, ray_pointer__origin__z};
  TYPE_1__ ray_pointer = {ray_pointer__sign_x, ray_pointer__sign_y, ray_pointer__sign_z, ray_pointer__inv_dir, ray_pointer__origin};
  TYPE_1__* ray = &ray_pointer;
  float box_pointer__max__x = input_json["box"]["max"]["x"];
  float box_pointer__max__y = input_json["box"]["max"]["y"];
  float box_pointer__max__z = input_json["box"]["max"]["z"];
  TYPE_3__ box_pointer__max = {box_pointer__max__x, box_pointer__max__y, box_pointer__max__z};
  float box_pointer__min__x = input_json["box"]["min"]["x"];
  float box_pointer__min__y = input_json["box"]["min"]["y"];
  float box_pointer__min__z = input_json["box"]["min"]["z"];
  TYPE_3__ box_pointer__min = {box_pointer__min__x, box_pointer__min__y, box_pointer__min__z};
  TYPE_2__ box_pointer = {box_pointer__max, box_pointer__min};
  TYPE_2__* box = &box_pointer;
  float t0 = input_json["t0"];
  float t1 = input_json["t1"];
  WARP_INTER_INTERSECTS = input_json["WARP_INTER_INTERSECTS"];
  WARP_INTER_OUTSIDE = input_json["WARP_INTER_OUTSIDE"];
  clock_t begin = clock();
  int returnv = warp_intersects_ray_aabb(ray, box, t0, t1);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ray, box, t0, t1, returnv);
}