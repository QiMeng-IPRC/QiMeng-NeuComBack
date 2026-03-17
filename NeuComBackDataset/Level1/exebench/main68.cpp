#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  char* gen_label_break ; 
extern  char* gen_label_break_store ; 
extern  char* gen_label_continue ; 
extern  char* gen_label_continue_store ; 
extern "C" { void gen_jump_save(char *lbreak, char *lcontinue);
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

void write_output(char* lbreak, char* lcontinue) {
  json output_json;

  output_json["lbreak"] = lbreak;

  output_json["lcontinue"] = lcontinue;

  output_json["gen_label_break"] = gen_label_break;

  output_json["gen_label_break_store"] = gen_label_break_store;

  output_json["gen_label_continue"] = gen_label_continue;

  output_json["gen_label_continue_store"] = gen_label_continue_store;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* lbreak = strdup(input_json["lbreak"].get<std::string>().c_str());
  char* lcontinue = strdup(input_json["lcontinue"].get<std::string>().c_str());
  gen_label_break = strdup(input_json["gen_label_break"].get<std::string>().c_str());
  gen_label_break_store = strdup(input_json["gen_label_break_store"].get<std::string>().c_str());
  gen_label_continue = strdup(input_json["gen_label_continue"].get<std::string>().c_str());
  gen_label_continue_store = strdup(input_json["gen_label_continue_store"].get<std::string>().c_str());
  clock_t begin = clock();
  gen_jump_save(lbreak, lcontinue);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(lbreak, lcontinue);
}