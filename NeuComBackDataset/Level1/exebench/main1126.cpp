#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* input; unsigned int input_length; } ;
struct TYPE_5__ {TYPE_1__ prepare; } ;
typedef  TYPE_2__ sam_memory ;

/* Variables and functions */
extern "C" { void SetInput(sam_memory* sam, const char *_input, unsigned int l);
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

void write_output(TYPE_2__* sam, char* _input, unsigned int l) {
  json output_json;
  TYPE_2__ output_temp_1 = *sam;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["input"] = output_temp_1.prepare.input;

  output_temp_3["input_length"] = output_temp_1.prepare.input_length;
  output_temp_2["prepare"] = output_temp_3;
  output_json["sam"] = output_temp_2;

  output_json["_input"] = _input;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* sam_pointer__prepare__input = strdup(input_json["sam"]["prepare"]["input"].get<std::string>().c_str());
  unsigned int sam_pointer__prepare__input_length = input_json["sam"]["prepare"]["input_length"];
  TYPE_1__ sam_pointer__prepare = {sam_pointer__prepare__input, sam_pointer__prepare__input_length};
  TYPE_2__ sam_pointer = {sam_pointer__prepare};
  TYPE_2__* sam = &sam_pointer;
  char* _input = strdup(input_json["_input"].get<std::string>().c_str());
  unsigned int l = input_json["l"];
  clock_t begin = clock();
  SetInput(sam, _input, l);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sam, _input, l);
}