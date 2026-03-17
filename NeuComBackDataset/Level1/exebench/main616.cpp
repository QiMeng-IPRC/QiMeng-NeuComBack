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
struct TYPE_7__ {int index; int depth; int shift; } ;
typedef  TYPE_2__ gx_render_plane_t ;
struct TYPE_6__ {int num_components; int depth; } ;
struct TYPE_8__ {TYPE_1__ color_info; } ;
typedef  TYPE_3__ gx_device ;

/* Variables and functions */
extern "C" { int gx_render_plane_init(gx_render_plane_t *render_plane, const gx_device *dev, int index);
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

void write_output(TYPE_2__* render_plane, TYPE_3__* dev, int index, int returnv) {
  json output_json;
  TYPE_2__ output_temp_1 = *render_plane;
  json output_temp_2;

  output_temp_2["index"] = output_temp_1.index;

  output_temp_2["depth"] = output_temp_1.depth;

  output_temp_2["shift"] = output_temp_1.shift;
  output_json["render_plane"] = output_temp_2;
  TYPE_3__ output_temp_3 = *dev;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["num_components"] = output_temp_3.color_info.num_components;

  output_temp_5["depth"] = output_temp_3.color_info.depth;
  output_temp_4["color_info"] = output_temp_5;
  output_json["dev"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int render_plane_pointer__index = input_json["render_plane"]["index"];
  int render_plane_pointer__depth = input_json["render_plane"]["depth"];
  int render_plane_pointer__shift = input_json["render_plane"]["shift"];
  TYPE_2__ render_plane_pointer = {render_plane_pointer__index, render_plane_pointer__depth, render_plane_pointer__shift};
  TYPE_2__* render_plane = &render_plane_pointer;
  int dev_pointer__color_info__num_components = input_json["dev"]["color_info"]["num_components"];
  int dev_pointer__color_info__depth = input_json["dev"]["color_info"]["depth"];
  TYPE_1__ dev_pointer__color_info = {dev_pointer__color_info__num_components, dev_pointer__color_info__depth};
  TYPE_3__ dev_pointer = {dev_pointer__color_info};
  TYPE_3__* dev = &dev_pointer;
  int index = input_json["index"];
  clock_t begin = clock();
  int returnv = gx_render_plane_init(render_plane, dev, index);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(render_plane, dev, index, returnv);
}