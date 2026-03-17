#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct v4l2_rect {scalar_t__ width; scalar_t__ height; } ;

/* Variables and functions */
extern "C" { void v4l2_rect_set_max_size(struct v4l2_rect *r, const struct v4l2_rect *max_size);
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

void write_output(struct v4l2_rect* r, struct v4l2_rect* max_size) {
  json output_json;
  struct v4l2_rect output_temp_1 = *r;
  json output_temp_2;

  output_temp_2["width"] = output_temp_1.width;

  output_temp_2["height"] = output_temp_1.height;
  output_json["r"] = output_temp_2;
  struct v4l2_rect output_temp_3 = *max_size;
  json output_temp_4;

  output_temp_4["width"] = output_temp_3.width;

  output_temp_4["height"] = output_temp_3.height;
  output_json["max_size"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int r_pointer__width = input_json["r"]["width"];
  long int r_pointer__height = input_json["r"]["height"];
  struct v4l2_rect r_pointer = {r_pointer__width, r_pointer__height};
  struct v4l2_rect* r = &r_pointer;
  long int max_size_pointer__width = input_json["max_size"]["width"];
  long int max_size_pointer__height = input_json["max_size"]["height"];
  struct v4l2_rect max_size_pointer = {max_size_pointer__width, max_size_pointer__height};
  struct v4l2_rect* max_size = &max_size_pointer;
  clock_t begin = clock();
  v4l2_rect_set_max_size(r, max_size);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(r, max_size);
}