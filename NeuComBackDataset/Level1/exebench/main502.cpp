#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct TFrame_LDAQCMD_ENC_Start {int header; int len; int tail; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  FRAMECMD_ENC_START ; 
extern "C" { void TFrame_LDAQCMD_ENC_Start_init(struct TFrame_LDAQCMD_ENC_Start *f);
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

void write_output(struct TFrame_LDAQCMD_ENC_Start* f) {
  json output_json;
  struct TFrame_LDAQCMD_ENC_Start output_temp_1 = *f;
  json output_temp_2;

  output_temp_2["header"] = output_temp_1.header;

  output_temp_2["len"] = output_temp_1.len;

  output_temp_2["tail"] = output_temp_1.tail;

  output_temp_2["opcode"] = output_temp_1.opcode;
  output_json["f"] = output_temp_2;

  output_json["FRAMECMD_ENC_START"] = FRAMECMD_ENC_START;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int f_pointer__header = input_json["f"]["header"];
  int f_pointer__len = input_json["f"]["len"];
  int f_pointer__tail = input_json["f"]["tail"];
  int f_pointer__opcode = input_json["f"]["opcode"];
  struct TFrame_LDAQCMD_ENC_Start f_pointer = {f_pointer__header, f_pointer__len, f_pointer__tail, f_pointer__opcode};
  struct TFrame_LDAQCMD_ENC_Start* f = &f_pointer;
  FRAMECMD_ENC_START = input_json["FRAMECMD_ENC_START"];
  clock_t begin = clock();
  TFrame_LDAQCMD_ENC_Start_init(f);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(f);
}