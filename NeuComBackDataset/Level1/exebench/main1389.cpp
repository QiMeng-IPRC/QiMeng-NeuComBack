#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long base_low; unsigned long base_high; unsigned short selector; unsigned char flags; scalar_t__ always0; } ;

/* Variables and functions */
extern  TYPE_1__* idt ; 
extern "C" { void idt_set_gate(int num_exception, unsigned long base, unsigned short selector, unsigned char flags);
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

void write_output(int num_exception, unsigned long int base, unsigned short selector, unsigned char flags) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = idt[i3];
    json output_temp_5;

    output_temp_5["base_low"] = output_temp_4.base_low;

    output_temp_5["base_high"] = output_temp_4.base_high;

    output_temp_5["selector"] = output_temp_4.selector;

    output_temp_5["flags"] = output_temp_4.flags;

    output_temp_5["always0"] = output_temp_4.always0;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["idt"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int num_exception = input_json["num_exception"];
  unsigned long int base = input_json["base"];
  unsigned short selector = input_json["selector"];
  unsigned char flags = input_json["flags"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["idt"]) {
    unsigned long int input_temp_1_inner__base_low = elem["base_low"];
    unsigned long int input_temp_1_inner__base_high = elem["base_high"];
    unsigned short input_temp_1_inner__selector = elem["selector"];
    unsigned char input_temp_1_inner__flags = elem["flags"];
    long int input_temp_1_inner__always0 = elem["always0"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__base_low, input_temp_1_inner__base_high, input_temp_1_inner__selector, input_temp_1_inner__flags, input_temp_1_inner__always0};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  idt = &input_temp_1_vec[0];
  clock_t begin = clock();
  idt_set_gate(num_exception, base, selector, flags);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(num_exception, base, selector, flags);
}