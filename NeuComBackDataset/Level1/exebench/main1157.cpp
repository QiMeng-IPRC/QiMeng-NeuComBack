#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int NR12_REG ; 
extern  int /*<<< orphan*/  TRUE ; 
extern  scalar_t__ script_cmd_args_len ; 
extern  int /*<<< orphan*/  script_continue ; 
extern  int /*<<< orphan*/  script_ptr ; 
extern "C" { void Script_SoundStopTone_b();
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

  output_json["NR12_REG"] = NR12_REG;

  output_json["TRUE"] = TRUE;

  output_json["script_cmd_args_len"] = script_cmd_args_len;

  output_json["script_continue"] = script_continue;

  output_json["script_ptr"] = script_ptr;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  NR12_REG = input_json["NR12_REG"];
  TRUE = input_json["TRUE"];
  script_cmd_args_len = input_json["script_cmd_args_len"];
  script_continue = input_json["script_continue"];
  script_ptr = input_json["script_ptr"];
  clock_t begin = clock();
  Script_SoundStopTone_b();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}