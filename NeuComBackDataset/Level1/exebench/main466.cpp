#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  qz; int /*<<< orphan*/  qy; int /*<<< orphan*/  qx; int /*<<< orphan*/  qi; } ;
struct OrientationReps {int status; TYPE_1__ quat_f; } ;
struct FloatQuat {int /*<<< orphan*/  qz; int /*<<< orphan*/  qy; int /*<<< orphan*/  qx; int /*<<< orphan*/  qi; } ;

/* Variables and functions */
extern "C" { void orientationSetQuat_f(struct OrientationReps* orientation, struct FloatQuat* quat);
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

void write_output(struct OrientationReps* orientation, struct FloatQuat* quat) {
  json output_json;
  struct OrientationReps output_temp_2 = *orientation;
  json output_temp_3;

  output_temp_3["status"] = output_temp_2.status;
  json output_temp_4;

  output_temp_4["qz"] = output_temp_2.quat_f.qz;

  output_temp_4["qy"] = output_temp_2.quat_f.qy;

  output_temp_4["qx"] = output_temp_2.quat_f.qx;

  output_temp_4["qi"] = output_temp_2.quat_f.qi;
  output_temp_3["quat_f"] = output_temp_4;
  output_json["orientation"] = output_temp_3;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    struct FloatQuat output_temp_7 = quat[i6];
    json output_temp_8;

    output_temp_8["qz"] = output_temp_7.qz;

    output_temp_8["qy"] = output_temp_7.qy;

    output_temp_8["qx"] = output_temp_7.qx;

    output_temp_8["qi"] = output_temp_7.qi;
    output_temp_5.push_back(output_temp_8);
  }
  output_json["quat"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int orientation_pointer__status = input_json["orientation"]["status"];
  int orientation_pointer__quat_f__qz = input_json["orientation"]["quat_f"]["qz"];
  int orientation_pointer__quat_f__qy = input_json["orientation"]["quat_f"]["qy"];
  int orientation_pointer__quat_f__qx = input_json["orientation"]["quat_f"]["qx"];
  int orientation_pointer__quat_f__qi = input_json["orientation"]["quat_f"]["qi"];
  TYPE_1__ orientation_pointer__quat_f = {orientation_pointer__quat_f__qz, orientation_pointer__quat_f__qy, orientation_pointer__quat_f__qx, orientation_pointer__quat_f__qi};
  struct OrientationReps orientation_pointer = {orientation_pointer__status, orientation_pointer__quat_f};
  struct OrientationReps* orientation = &orientation_pointer;
  std::vector<struct FloatQuat> input_temp_1_vec;
  for (auto& elem : input_json["quat"]) {
    int input_temp_1_inner__qz = elem["qz"];
    int input_temp_1_inner__qy = elem["qy"];
    int input_temp_1_inner__qx = elem["qx"];
    int input_temp_1_inner__qi = elem["qi"];
    struct FloatQuat input_temp_1_inner = {input_temp_1_inner__qz, input_temp_1_inner__qy, input_temp_1_inner__qx, input_temp_1_inner__qi};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct FloatQuat* quat = &input_temp_1_vec[0];
  clock_t begin = clock();
  orientationSetQuat_f(orientation, quat);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(orientation, quat);
}