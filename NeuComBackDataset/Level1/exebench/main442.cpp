#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int SO0 ; 
extern  int SOE0 ; 
extern  unsigned int SREIF0 ; 
extern  unsigned int SREMK0 ; 
extern  unsigned int SRIF0 ; 
extern  unsigned int SRMK0 ; 
extern  int SS0 ; 
extern  unsigned int STIF0 ; 
extern  unsigned int STMK0 ; 
extern "C" { void R_UART0_Start(void);
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

  output_json["SO0"] = SO0;

  output_json["SOE0"] = SOE0;

  output_json["SREIF0"] = SREIF0;

  output_json["SREMK0"] = SREMK0;

  output_json["SRIF0"] = SRIF0;

  output_json["SRMK0"] = SRMK0;

  output_json["SS0"] = SS0;

  output_json["STIF0"] = STIF0;

  output_json["STMK0"] = STMK0;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  SO0 = input_json["SO0"];
  SOE0 = input_json["SOE0"];
  SREIF0 = input_json["SREIF0"];
  SREMK0 = input_json["SREMK0"];
  SRIF0 = input_json["SRIF0"];
  SRMK0 = input_json["SRMK0"];
  SS0 = input_json["SS0"];
  STIF0 = input_json["STIF0"];
  STMK0 = input_json["STMK0"];
  clock_t begin = clock();
  R_UART0_Start();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}