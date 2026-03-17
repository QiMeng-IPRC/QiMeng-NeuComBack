#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct nsxml_switch_option_result {int /*<<< orphan*/  result_type; scalar_t__ is_set; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  nsxml_result_type_switch ; 
extern "C" { void nsxml_switch_option_result_init(struct nsxml_switch_option_result *option);
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

void write_output(struct nsxml_switch_option_result* option) {
  json output_json;
  struct nsxml_switch_option_result output_temp_1 = *option;
  json output_temp_2;

  output_temp_2["result_type"] = output_temp_1.result_type;

  output_temp_2["is_set"] = output_temp_1.is_set;
  output_json["option"] = output_temp_2;

  output_json["nsxml_result_type_switch"] = nsxml_result_type_switch;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int option_pointer__result_type = input_json["option"]["result_type"];
  long int option_pointer__is_set = input_json["option"]["is_set"];
  struct nsxml_switch_option_result option_pointer = {option_pointer__result_type, option_pointer__is_set};
  struct nsxml_switch_option_result* option = &option_pointer;
  nsxml_result_type_switch = input_json["nsxml_result_type_switch"];
  clock_t begin = clock();
  nsxml_switch_option_result_init(option);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(option);
}