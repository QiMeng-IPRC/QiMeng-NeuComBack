#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int NFEN0 ; 
extern  int P0 ; 
extern  int PM0 ; 
extern  int SCR02 ; 
extern  int SCR03 ; 
extern  int SDR02 ; 
extern  int SDR03 ; 
extern  int SIR03 ; 
extern  int SMR02 ; 
extern  int SMR03 ; 
extern  int SO0 ; 
extern  int SOE0 ; 
extern  int SOL0 ; 
extern  unsigned int SREIF1 ; 
extern  unsigned int SREMK1 ; 
extern  unsigned int SREPR01 ; 
extern  unsigned int SREPR11 ; 
extern  unsigned int SRIF1 ; 
extern  unsigned int SRMK1 ; 
extern  unsigned int SRPR01 ; 
extern  unsigned int SRPR11 ; 
extern  int ST0 ; 
extern  unsigned int STIF1 ; 
extern  unsigned int STMK1 ; 
extern  unsigned int STPR01 ; 
extern  unsigned int STPR11 ; 
extern "C" { void R_UART1_Create(void);
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

  output_json["NFEN0"] = NFEN0;

  output_json["P0"] = P0;

  output_json["PM0"] = PM0;

  output_json["SCR02"] = SCR02;

  output_json["SCR03"] = SCR03;

  output_json["SDR02"] = SDR02;

  output_json["SDR03"] = SDR03;

  output_json["SIR03"] = SIR03;

  output_json["SMR02"] = SMR02;

  output_json["SMR03"] = SMR03;

  output_json["SO0"] = SO0;

  output_json["SOE0"] = SOE0;

  output_json["SOL0"] = SOL0;

  output_json["SREIF1"] = SREIF1;

  output_json["SREMK1"] = SREMK1;

  output_json["SREPR01"] = SREPR01;

  output_json["SREPR11"] = SREPR11;

  output_json["SRIF1"] = SRIF1;

  output_json["SRMK1"] = SRMK1;

  output_json["SRPR01"] = SRPR01;

  output_json["SRPR11"] = SRPR11;

  output_json["ST0"] = ST0;

  output_json["STIF1"] = STIF1;

  output_json["STMK1"] = STMK1;

  output_json["STPR01"] = STPR01;

  output_json["STPR11"] = STPR11;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  NFEN0 = input_json["NFEN0"];
  P0 = input_json["P0"];
  PM0 = input_json["PM0"];
  SCR02 = input_json["SCR02"];
  SCR03 = input_json["SCR03"];
  SDR02 = input_json["SDR02"];
  SDR03 = input_json["SDR03"];
  SIR03 = input_json["SIR03"];
  SMR02 = input_json["SMR02"];
  SMR03 = input_json["SMR03"];
  SO0 = input_json["SO0"];
  SOE0 = input_json["SOE0"];
  SOL0 = input_json["SOL0"];
  SREIF1 = input_json["SREIF1"];
  SREMK1 = input_json["SREMK1"];
  SREPR01 = input_json["SREPR01"];
  SREPR11 = input_json["SREPR11"];
  SRIF1 = input_json["SRIF1"];
  SRMK1 = input_json["SRMK1"];
  SRPR01 = input_json["SRPR01"];
  SRPR11 = input_json["SRPR11"];
  ST0 = input_json["ST0"];
  STIF1 = input_json["STIF1"];
  STMK1 = input_json["STMK1"];
  STPR01 = input_json["STPR01"];
  STPR11 = input_json["STPR11"];
  clock_t begin = clock();
  R_UART1_Create();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}