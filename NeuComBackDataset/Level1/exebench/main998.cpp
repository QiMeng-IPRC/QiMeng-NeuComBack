#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int vuint32_t ;
struct stm_gpio {int ospeedr; } ;

/* Variables and functions */
extern "C" { void stm_ospeedr_set(struct stm_gpio *gpio, int pin, vuint32_t value);
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

void write_output(struct stm_gpio* gpio, int pin, int value) {
  json output_json;
  struct stm_gpio output_temp_1 = *gpio;
  json output_temp_2;

  output_temp_2["ospeedr"] = output_temp_1.ospeedr;
  output_json["gpio"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int gpio_pointer__ospeedr = input_json["gpio"]["ospeedr"];
  struct stm_gpio gpio_pointer = {gpio_pointer__ospeedr};
  struct stm_gpio* gpio = &gpio_pointer;
  int pin = input_json["pin"];
  int value = input_json["value"];
  clock_t begin = clock();
  stm_ospeedr_set(gpio, pin, value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(gpio, pin, value);
}