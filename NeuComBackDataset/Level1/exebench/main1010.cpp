#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ quat_t ;

/* Variables and functions */
extern "C" { void quat_conjugate(quat_t* q, const quat_t* q1);
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

void write_output(TYPE_1__* q, TYPE_1__* q1) {
  json output_json;
  TYPE_1__ output_temp_1 = *q;
  json output_temp_2;

  output_temp_2["w"] = output_temp_1.w;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["q"] = output_temp_2;
  TYPE_1__ output_temp_3 = *q1;
  json output_temp_4;

  output_temp_4["w"] = output_temp_3.w;

  output_temp_4["z"] = output_temp_3.z;

  output_temp_4["y"] = output_temp_3.y;

  output_temp_4["x"] = output_temp_3.x;
  output_json["q1"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int q_pointer__w = input_json["q"]["w"];
  int q_pointer__z = input_json["q"]["z"];
  int q_pointer__y = input_json["q"]["y"];
  int q_pointer__x = input_json["q"]["x"];
  TYPE_1__ q_pointer = {q_pointer__w, q_pointer__z, q_pointer__y, q_pointer__x};
  TYPE_1__* q = &q_pointer;
  int q1_pointer__w = input_json["q1"]["w"];
  int q1_pointer__z = input_json["q1"]["z"];
  int q1_pointer__y = input_json["q1"]["y"];
  int q1_pointer__x = input_json["q1"]["x"];
  TYPE_1__ q1_pointer = {q1_pointer__w, q1_pointer__z, q1_pointer__y, q1_pointer__x};
  TYPE_1__* q1 = &q1_pointer;
  clock_t begin = clock();
  quat_conjugate(q, q1);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(q, q1);
}