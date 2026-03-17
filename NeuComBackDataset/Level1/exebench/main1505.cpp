#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ x; scalar_t__ r; scalar_t__ y; } ;
struct TYPE_5__ {scalar_t__ h; scalar_t__ w; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ MARKER_EXTENT ;
typedef  scalar_t__ MARKER_DISTANCE ;
typedef  TYPE_2__ MARKER ;

/* Variables and functions */
extern "C" { void lulu_get_marker_array_extent(MARKER *a, int n_markers, MARKER_EXTENT *ext);
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

void write_output(TYPE_2__* a, int n_markers, TYPE_1__* ext) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_2__ output_temp_4 = a[i3];
    json output_temp_5;

    output_temp_5["x"] = output_temp_4.x;

    output_temp_5["r"] = output_temp_4.r;

    output_temp_5["y"] = output_temp_4.y;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["a"] = output_temp_2;
  TYPE_1__ output_temp_6 = *ext;
  json output_temp_7;

  output_temp_7["h"] = output_temp_6.h;

  output_temp_7["w"] = output_temp_6.w;

  output_temp_7["y"] = output_temp_6.y;

  output_temp_7["x"] = output_temp_6.x;
  output_json["ext"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_2__> input_temp_1_vec;
  for (auto& elem : input_json["a"]) {
    long int input_temp_1_inner__x = elem["x"];
    long int input_temp_1_inner__r = elem["r"];
    long int input_temp_1_inner__y = elem["y"];
    TYPE_2__ input_temp_1_inner = {input_temp_1_inner__x, input_temp_1_inner__r, input_temp_1_inner__y};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_2__* a = &input_temp_1_vec[0];
  int n_markers = input_json["n_markers"];
  long int ext_pointer__h = input_json["ext"]["h"];
  long int ext_pointer__w = input_json["ext"]["w"];
  long int ext_pointer__y = input_json["ext"]["y"];
  long int ext_pointer__x = input_json["ext"]["x"];
  TYPE_1__ ext_pointer = {ext_pointer__h, ext_pointer__w, ext_pointer__y, ext_pointer__x};
  TYPE_1__* ext = &ext_pointer;
  clock_t begin = clock();
  lulu_get_marker_array_extent(a, n_markers, ext);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, n_markers, ext);
}