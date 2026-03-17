#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int reg_data; double pres; } ;

/* Variables and functions */
extern  TYPE_1__* libgpio_pwm ; 
extern  int* libgpio_pwm_mem ; 
extern "C" { void pwmSetDuty(int pwm, double dc);
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

void write_output(int pwm, double dc) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    TYPE_1__ output_temp_5 = libgpio_pwm[i4];
    json output_temp_6;

    output_temp_6["reg_data"] = output_temp_5.reg_data;

    output_temp_6["pres"] = output_temp_5.pres;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["libgpio_pwm"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = libgpio_pwm_mem[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["libgpio_pwm_mem"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pwm = input_json["pwm"];
  double dc = input_json["dc"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["libgpio_pwm"]) {
    int input_temp_1_inner__reg_data = elem["reg_data"];
    double input_temp_1_inner__pres = elem["pres"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__reg_data, input_temp_1_inner__pres};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  libgpio_pwm = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["libgpio_pwm_mem"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  libgpio_pwm_mem = &input_temp_2_vec[0];
  clock_t begin = clock();
  pwmSetDuty(pwm, dc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pwm, dc);
}