#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  XactDeferrable ; 
extern  int /*<<< orphan*/  XactIsoLevel ; 
extern  int /*<<< orphan*/  XactReadOnly ; 
extern  int /*<<< orphan*/  save_XactDeferrable ; 
extern  int /*<<< orphan*/  save_XactIsoLevel ; 
extern  int /*<<< orphan*/  save_XactReadOnly ; 
extern "C" { void SaveTransactionCharacteristics(void);
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

  output_json["XactDeferrable"] = XactDeferrable;

  output_json["XactIsoLevel"] = XactIsoLevel;

  output_json["XactReadOnly"] = XactReadOnly;

  output_json["save_XactDeferrable"] = save_XactDeferrable;

  output_json["save_XactIsoLevel"] = save_XactIsoLevel;

  output_json["save_XactReadOnly"] = save_XactReadOnly;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  XactDeferrable = input_json["XactDeferrable"];
  XactIsoLevel = input_json["XactIsoLevel"];
  XactReadOnly = input_json["XactReadOnly"];
  save_XactDeferrable = input_json["save_XactDeferrable"];
  save_XactIsoLevel = input_json["save_XactIsoLevel"];
  save_XactReadOnly = input_json["save_XactReadOnly"];
  clock_t begin = clock();
  SaveTransactionCharacteristics();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}