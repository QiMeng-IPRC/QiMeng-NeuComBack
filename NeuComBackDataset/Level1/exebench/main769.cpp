#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vector ;
struct TYPE_3__ {int /*<<< orphan*/  rightvec; int /*<<< orphan*/  upvec; int /*<<< orphan*/  viewvec; int /*<<< orphan*/  center; } ;
typedef  TYPE_1__ camdef ;

/* Variables and functions */
extern "C" { void getcameraposition(camdef * camera, vector * center, vector * viewvec, vector * upvec, vector * rightvec);
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

void write_output(TYPE_1__* camera, int* center, int* viewvec, int* upvec, int* rightvec) {
  json output_json;
  TYPE_1__ output_temp_5 = *camera;
  json output_temp_6;

  output_temp_6["rightvec"] = output_temp_5.rightvec;

  output_temp_6["upvec"] = output_temp_5.upvec;

  output_temp_6["viewvec"] = output_temp_5.viewvec;

  output_temp_6["center"] = output_temp_5.center;
  output_json["camera"] = output_temp_6;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = center[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["center"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = viewvec[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["viewvec"] = output_temp_10;
  std::vector<json> output_temp_13;
  for (unsigned int i14 = 0; i14 < 32; i14++) {
    int output_temp_15 = upvec[i14];

    output_temp_13.push_back(output_temp_15);
  }
  output_json["upvec"] = output_temp_13;
  std::vector<json> output_temp_16;
  for (unsigned int i17 = 0; i17 < 32; i17++) {
    int output_temp_18 = rightvec[i17];

    output_temp_16.push_back(output_temp_18);
  }
  output_json["rightvec"] = output_temp_16;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int camera_pointer__rightvec = input_json["camera"]["rightvec"];
  int camera_pointer__upvec = input_json["camera"]["upvec"];
  int camera_pointer__viewvec = input_json["camera"]["viewvec"];
  int camera_pointer__center = input_json["camera"]["center"];
  TYPE_1__ camera_pointer = {camera_pointer__rightvec, camera_pointer__upvec, camera_pointer__viewvec, camera_pointer__center};
  TYPE_1__* camera = &camera_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["center"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* center = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["viewvec"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* viewvec = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["upvec"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* upvec = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["rightvec"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* rightvec = &input_temp_4_vec[0];
  clock_t begin = clock();
  getcameraposition(camera, center, viewvec, upvec, rightvec);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(camera, center, viewvec, upvec, rightvec);
}