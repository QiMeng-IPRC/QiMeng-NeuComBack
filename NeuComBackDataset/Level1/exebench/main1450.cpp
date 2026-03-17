#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {double x; double y; } ;
struct TYPE_4__ {double x; double y; } ;

/* Variables and functions */
extern  TYPE_2__ cone1 ; 
extern  TYPE_2__* coneList ; 
extern  TYPE_1__ position ; 
extern "C" { void setup();
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
  json output_temp_2;

  output_temp_2["x"] = cone1.x;

  output_temp_2["y"] = cone1.y;
  output_json["cone1"] = output_temp_2;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    TYPE_2__ output_temp_5 = coneList[i4];
    json output_temp_6;

    output_temp_6["x"] = output_temp_5.x;

    output_temp_6["y"] = output_temp_5.y;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["coneList"] = output_temp_3;
  json output_temp_7;

  output_temp_7["x"] = position.x;

  output_temp_7["y"] = position.y;
  output_json["position"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double cone1__x = input_json["cone1"]["x"];
  double cone1__y = input_json["cone1"]["y"];
  cone1 = {cone1__x, cone1__y};
  std::vector<TYPE_2__> input_temp_1_vec;
  for (auto& elem : input_json["coneList"]) {
    double input_temp_1_inner__x = elem["x"];
    double input_temp_1_inner__y = elem["y"];
    TYPE_2__ input_temp_1_inner = {input_temp_1_inner__x, input_temp_1_inner__y};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  coneList = &input_temp_1_vec[0];
  double position__x = input_json["position"]["x"];
  double position__y = input_json["position"]["y"];
  position = {position__x, position__y};
  clock_t begin = clock();
  setup();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}