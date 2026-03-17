#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int STM32_COMP_CMP1EN ; 
extern  int STM32_COMP_CMP1INSEL_INM4 ; 
extern  int STM32_COMP_CMP1INSEL_INM6 ; 
extern  int STM32_COMP_CMP1INSEL_MASK ; 
extern  int STM32_COMP_CSR ; 
extern "C" { void pd_select_polarity(int polarity);
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

void write_output(int polarity) {
  json output_json;

  output_json["STM32_COMP_CMP1EN"] = STM32_COMP_CMP1EN;

  output_json["STM32_COMP_CMP1INSEL_INM4"] = STM32_COMP_CMP1INSEL_INM4;

  output_json["STM32_COMP_CMP1INSEL_INM6"] = STM32_COMP_CMP1INSEL_INM6;

  output_json["STM32_COMP_CMP1INSEL_MASK"] = STM32_COMP_CMP1INSEL_MASK;

  output_json["STM32_COMP_CSR"] = STM32_COMP_CSR;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int polarity = input_json["polarity"];
  STM32_COMP_CMP1EN = input_json["STM32_COMP_CMP1EN"];
  STM32_COMP_CMP1INSEL_INM4 = input_json["STM32_COMP_CMP1INSEL_INM4"];
  STM32_COMP_CMP1INSEL_INM6 = input_json["STM32_COMP_CMP1INSEL_INM6"];
  STM32_COMP_CMP1INSEL_MASK = input_json["STM32_COMP_CMP1INSEL_MASK"];
  STM32_COMP_CSR = input_json["STM32_COMP_CSR"];
  clock_t begin = clock();
  pd_select_polarity(polarity);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(polarity);
}