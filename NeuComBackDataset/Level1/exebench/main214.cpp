#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ z_raw; scalar_t__ y_raw; scalar_t__ x_raw; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {scalar_t__* v; } ;
struct TYPE_6__ {int delay; int threshold; TYPE_2__ last; scalar_t__ odr; scalar_t__ filter_enable; scalar_t__ position; TYPE_1__ offset; scalar_t__ enable; scalar_t__ initialize; } ;

/* Variables and functions */
extern  TYPE_3__ acc_data ; 
extern "C" { void yas_lis331dlh_init_data(void);
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

  output_temp_2["delay"] = acc_data.delay;

  output_temp_2["threshold"] = acc_data.threshold;
  json output_temp_3;

  output_temp_3["z_raw"] = acc_data.last.z_raw;

  output_temp_3["y_raw"] = acc_data.last.y_raw;

  output_temp_3["x_raw"] = acc_data.last.x_raw;

  output_temp_3["z"] = acc_data.last.z;

  output_temp_3["y"] = acc_data.last.y;

  output_temp_3["x"] = acc_data.last.x;
  output_temp_2["last"] = output_temp_3;

  output_temp_2["odr"] = acc_data.odr;

  output_temp_2["filter_enable"] = acc_data.filter_enable;

  output_temp_2["position"] = acc_data.position;
  json output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    long int output_temp_7 = acc_data.offset.v[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_temp_4["v"] = output_temp_5;
  output_temp_2["offset"] = output_temp_4;

  output_temp_2["enable"] = acc_data.enable;

  output_temp_2["initialize"] = acc_data.initialize;
  output_json["acc_data"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int acc_data__delay = input_json["acc_data"]["delay"];
  int acc_data__threshold = input_json["acc_data"]["threshold"];
  long int acc_data__last__z_raw = input_json["acc_data"]["last"]["z_raw"];
  long int acc_data__last__y_raw = input_json["acc_data"]["last"]["y_raw"];
  long int acc_data__last__x_raw = input_json["acc_data"]["last"]["x_raw"];
  long int acc_data__last__z = input_json["acc_data"]["last"]["z"];
  long int acc_data__last__y = input_json["acc_data"]["last"]["y"];
  long int acc_data__last__x = input_json["acc_data"]["last"]["x"];
  TYPE_2__ acc_data__last = {acc_data__last__z_raw, acc_data__last__y_raw, acc_data__last__x_raw, acc_data__last__z, acc_data__last__y, acc_data__last__x};
  long int acc_data__odr = input_json["acc_data"]["odr"];
  long int acc_data__filter_enable = input_json["acc_data"]["filter_enable"];
  long int acc_data__position = input_json["acc_data"]["position"];
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["acc_data"]["offset"]["v"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* acc_data__offset__v = &input_temp_1_vec[0];
  TYPE_1__ acc_data__offset = {acc_data__offset__v};
  long int acc_data__enable = input_json["acc_data"]["enable"];
  long int acc_data__initialize = input_json["acc_data"]["initialize"];
  acc_data = {acc_data__delay, acc_data__threshold, acc_data__last, acc_data__odr, acc_data__filter_enable, acc_data__position, acc_data__offset, acc_data__enable, acc_data__initialize};
  clock_t begin = clock();
  yas_lis331dlh_init_data();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}