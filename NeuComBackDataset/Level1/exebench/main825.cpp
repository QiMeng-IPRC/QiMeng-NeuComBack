#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int x; int y; int name; int spec; int horizontal; int vertical; } ;
typedef  TYPE_1__ Data ;

/* Variables and functions */
extern "C" { void dataInit(Data * d, int x, int y, int name, int spec, int horizontal, int vertical);
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

void write_output(TYPE_1__* d, int x, int y, int name, int spec, int horizontal, int vertical) {
  json output_json;
  TYPE_1__ output_temp_1 = *d;
  json output_temp_2;

  output_temp_2["x"] = output_temp_1.x;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["name"] = output_temp_1.name;

  output_temp_2["spec"] = output_temp_1.spec;

  output_temp_2["horizontal"] = output_temp_1.horizontal;

  output_temp_2["vertical"] = output_temp_1.vertical;
  output_json["d"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int d_pointer__x = input_json["d"]["x"];
  int d_pointer__y = input_json["d"]["y"];
  int d_pointer__name = input_json["d"]["name"];
  int d_pointer__spec = input_json["d"]["spec"];
  int d_pointer__horizontal = input_json["d"]["horizontal"];
  int d_pointer__vertical = input_json["d"]["vertical"];
  TYPE_1__ d_pointer = {d_pointer__x, d_pointer__y, d_pointer__name, d_pointer__spec, d_pointer__horizontal, d_pointer__vertical};
  TYPE_1__* d = &d_pointer;
  int x = input_json["x"];
  int y = input_json["y"];
  int name = input_json["name"];
  int spec = input_json["spec"];
  int horizontal = input_json["horizontal"];
  int vertical = input_json["vertical"];
  clock_t begin = clock();
  dataInit(d, x, y, name, spec, horizontal, vertical);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(d, x, y, name, spec, horizontal, vertical);
}