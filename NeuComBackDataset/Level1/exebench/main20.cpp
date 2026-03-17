#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  char CTLESC ; 
extern  char CTLQUOTEEND ; 
extern  char CTLQUOTEMARK ; 
extern "C" { void rmescapes(char *str);
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

void write_output(char* str) {
  json output_json;

  output_json["str"] = str;

  output_json["CTLESC"] = CTLESC;

  output_json["CTLQUOTEEND"] = CTLQUOTEEND;

  output_json["CTLQUOTEMARK"] = CTLQUOTEMARK;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* str = strdup(input_json["str"].get<std::string>().c_str());
  CTLESC = input_json["CTLESC"].get<char>();
  CTLQUOTEEND = input_json["CTLQUOTEEND"].get<char>();
  CTLQUOTEMARK = input_json["CTLQUOTEMARK"].get<char>();
  clock_t begin = clock();
  rmescapes(str);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(str);
}