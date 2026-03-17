#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct yas_bma_acceleration {int x; int y; int z; int x_raw; int y_raw; int z_raw; } ;
struct TYPE_2__ {int filter_enable; int threshold; struct yas_bma_acceleration last; } ;

/* Variables and functions */
extern  TYPE_1__ acc_data ; 
extern "C" { int yas_bma222_data_filter(int data[], int raw[], struct yas_bma_acceleration *accel);
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

void write_output(int* data, int* raw, struct yas_bma_acceleration* accel, int returnv) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = data[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["data"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = raw[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["raw"] = output_temp_6;
  struct yas_bma_acceleration output_temp_9 = *accel;
  json output_temp_10;

  output_temp_10["x"] = output_temp_9.x;

  output_temp_10["y"] = output_temp_9.y;

  output_temp_10["z"] = output_temp_9.z;

  output_temp_10["x_raw"] = output_temp_9.x_raw;

  output_temp_10["y_raw"] = output_temp_9.y_raw;

  output_temp_10["z_raw"] = output_temp_9.z_raw;
  output_json["accel"] = output_temp_10;
  json output_temp_11;

  output_temp_11["filter_enable"] = acc_data.filter_enable;

  output_temp_11["threshold"] = acc_data.threshold;
  json output_temp_12;

  output_temp_12["x"] = acc_data.last.x;

  output_temp_12["y"] = acc_data.last.y;

  output_temp_12["z"] = acc_data.last.z;

  output_temp_12["x_raw"] = acc_data.last.x_raw;

  output_temp_12["y_raw"] = acc_data.last.y_raw;

  output_temp_12["z_raw"] = acc_data.last.z_raw;
  output_temp_11["last"] = output_temp_12;
  output_json["acc_data"] = output_temp_11;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["data"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* data = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["raw"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* raw = &input_temp_2_vec[0];
  int accel_pointer__x = input_json["accel"]["x"];
  int accel_pointer__y = input_json["accel"]["y"];
  int accel_pointer__z = input_json["accel"]["z"];
  int accel_pointer__x_raw = input_json["accel"]["x_raw"];
  int accel_pointer__y_raw = input_json["accel"]["y_raw"];
  int accel_pointer__z_raw = input_json["accel"]["z_raw"];
  struct yas_bma_acceleration accel_pointer = {accel_pointer__x, accel_pointer__y, accel_pointer__z, accel_pointer__x_raw, accel_pointer__y_raw, accel_pointer__z_raw};
  struct yas_bma_acceleration* accel = &accel_pointer;
  int acc_data__filter_enable = input_json["acc_data"]["filter_enable"];
  int acc_data__threshold = input_json["acc_data"]["threshold"];
  int acc_data__last__x = input_json["acc_data"]["last"]["x"];
  int acc_data__last__y = input_json["acc_data"]["last"]["y"];
  int acc_data__last__z = input_json["acc_data"]["last"]["z"];
  int acc_data__last__x_raw = input_json["acc_data"]["last"]["x_raw"];
  int acc_data__last__y_raw = input_json["acc_data"]["last"]["y_raw"];
  int acc_data__last__z_raw = input_json["acc_data"]["last"]["z_raw"];
  struct yas_bma_acceleration acc_data__last = {acc_data__last__x, acc_data__last__y, acc_data__last__z, acc_data__last__x_raw, acc_data__last__y_raw, acc_data__last__z_raw};
  acc_data = {acc_data__filter_enable, acc_data__threshold, acc_data__last};
  clock_t begin = clock();
  int returnv = yas_bma222_data_filter(data, raw, accel);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(data, raw, accel, returnv);
}