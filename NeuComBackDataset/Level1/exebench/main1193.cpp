#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  myreg ;
struct TYPE_2__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  size_t SANE_Int ;
typedef  int /*<<< orphan*/  SANE_Byte ;

/* Variables and functions */
extern  int /*<<< orphan*/  CCD_SENSOR ; 
extern  int /*<<< orphan*/  CIS_SENSOR ; 
extern  int /*<<< orphan*/  USB11 ; 
extern  int /*<<< orphan*/  USB20 ; 
extern "C" { void hp3970_refvoltages(SANE_Int usb, SANE_Int sensor, SANE_Byte *vrts, SANE_Byte *vrms, SANE_Byte *vrbs);
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

void write_output(unsigned long int usb, unsigned long int sensor, int* vrts, int* vrms, int* vrbs) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = vrts[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["vrts"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = vrms[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["vrms"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = vrbs[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["vrbs"] = output_temp_10;

  output_json["CCD_SENSOR"] = CCD_SENSOR;

  output_json["CIS_SENSOR"] = CIS_SENSOR;

  output_json["USB11"] = USB11;

  output_json["USB20"] = USB20;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int usb = input_json["usb"];
  unsigned long int sensor = input_json["sensor"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["vrts"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* vrts = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["vrms"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* vrms = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["vrbs"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* vrbs = &input_temp_3_vec[0];
  CCD_SENSOR = input_json["CCD_SENSOR"];
  CIS_SENSOR = input_json["CIS_SENSOR"];
  USB11 = input_json["USB11"];
  USB20 = input_json["USB20"];
  clock_t begin = clock();
  hp3970_refvoltages(usb, sensor, vrts, vrms, vrbs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(usb, sensor, vrts, vrms, vrbs);
}