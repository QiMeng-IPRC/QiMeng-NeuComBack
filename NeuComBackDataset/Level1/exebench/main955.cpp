#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int xres; int yres; } ;
struct TYPE_3__ {int width; int height; int x1; int y1; int x2; int y2; } ;

/* Variables and functions */
extern  TYPE_2__ g_screeninfo_var ; 
extern  TYPE_1__ g_window ; 
extern "C" { void set_window_dimension();
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

void write_output() {
  json output_json;
  json output_temp_1;

  output_temp_1["xres"] = g_screeninfo_var.xres;

  output_temp_1["yres"] = g_screeninfo_var.yres;
  output_json["g_screeninfo_var"] = output_temp_1;
  json output_temp_2;

  output_temp_2["width"] = g_window.width;

  output_temp_2["height"] = g_window.height;

  output_temp_2["x1"] = g_window.x1;

  output_temp_2["y1"] = g_window.y1;

  output_temp_2["x2"] = g_window.x2;

  output_temp_2["y2"] = g_window.y2;
  output_json["g_window"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int g_screeninfo_var__xres = input_json["g_screeninfo_var"]["xres"];
  int g_screeninfo_var__yres = input_json["g_screeninfo_var"]["yres"];
  g_screeninfo_var = {g_screeninfo_var__xres, g_screeninfo_var__yres};
  int g_window__width = input_json["g_window"]["width"];
  int g_window__height = input_json["g_window"]["height"];
  int g_window__x1 = input_json["g_window"]["x1"];
  int g_window__y1 = input_json["g_window"]["y1"];
  int g_window__x2 = input_json["g_window"]["x2"];
  int g_window__y2 = input_json["g_window"]["y2"];
  g_window = {g_window__width, g_window__height, g_window__x1, g_window__y1, g_window__x2, g_window__y2};
  clock_t begin = clock();
  set_window_dimension();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}