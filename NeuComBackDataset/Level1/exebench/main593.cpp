#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ s_init; int /*<<< orphan*/  z_init; } ;
struct TYPE_3__ {scalar_t__* s; scalar_t__* h; int /*<<< orphan*/ * z; scalar_t__* y; scalar_t__* x; } ;

/* Variables and functions */
extern  TYPE_2__ settings ; 
extern  TYPE_1__ work ; 
extern "C" { void set_start(void);
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
  json output_temp_6;

  output_temp_6["s_init"] = settings.s_init;

  output_temp_6["z_init"] = settings.z_init;
  output_json["settings"] = output_temp_6;
  json output_temp_7;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    long int output_temp_10 = work.s[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_temp_7["s"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    long int output_temp_13 = work.h[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_temp_7["h"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    int output_temp_16 = work.z[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_temp_7["z"] = output_temp_14;
  std::vector<json> output_temp_17;
  for (unsigned int i18 = 0; i18 < 32; i18++) {
    long int output_temp_19 = work.y[i18];

    output_temp_17.push_back(output_temp_19);
  }
  output_temp_7["y"] = output_temp_17;
  std::vector<json> output_temp_20;
  for (unsigned int i21 = 0; i21 < 32; i21++) {
    long int output_temp_22 = work.x[i21];

    output_temp_20.push_back(output_temp_22);
  }
  output_temp_7["x"] = output_temp_20;
  output_json["work"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int settings__s_init = input_json["settings"]["s_init"];
  int settings__z_init = input_json["settings"]["z_init"];
  settings = {settings__s_init, settings__z_init};
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["work"]["s"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* work__s = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["work"]["h"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  long int* work__h = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["work"]["z"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* work__z = &input_temp_3_vec[0];
  std::vector<long int> input_temp_4_vec;
  for (auto& elem : input_json["work"]["y"]) {
    long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  long int* work__y = &input_temp_4_vec[0];
  std::vector<long int> input_temp_5_vec;
  for (auto& elem : input_json["work"]["x"]) {
    long int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  long int* work__x = &input_temp_5_vec[0];
  work = {work__s, work__h, work__z, work__y, work__x};
  clock_t begin = clock();
  set_start();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}