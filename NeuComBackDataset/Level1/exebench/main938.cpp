#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  USART_LastBit; int /*<<< orphan*/  USART_CPHA; int /*<<< orphan*/  USART_CPOL; int /*<<< orphan*/  USART_Clock; } ;
typedef  TYPE_1__ USART_ClockInitTypeDef ;

/* Variables and functions */
extern  int /*<<< orphan*/  USART_CPHA_1Edge ; 
extern  int /*<<< orphan*/  USART_CPOL_Low ; 
extern  int /*<<< orphan*/  USART_Clock_Disable ; 
extern  int /*<<< orphan*/  USART_LastBit_Disable ; 
extern "C" { void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
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

void write_output(TYPE_1__* USART_ClockInitStruct) {
  json output_json;
  TYPE_1__ output_temp_1 = *USART_ClockInitStruct;
  json output_temp_2;

  output_temp_2["USART_LastBit"] = output_temp_1.USART_LastBit;

  output_temp_2["USART_CPHA"] = output_temp_1.USART_CPHA;

  output_temp_2["USART_CPOL"] = output_temp_1.USART_CPOL;

  output_temp_2["USART_Clock"] = output_temp_1.USART_Clock;
  output_json["USART_ClockInitStruct"] = output_temp_2;

  output_json["USART_CPHA_1Edge"] = USART_CPHA_1Edge;

  output_json["USART_CPOL_Low"] = USART_CPOL_Low;

  output_json["USART_Clock_Disable"] = USART_Clock_Disable;

  output_json["USART_LastBit_Disable"] = USART_LastBit_Disable;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int USART_ClockInitStruct_pointer__USART_LastBit = input_json["USART_ClockInitStruct"]["USART_LastBit"];
  int USART_ClockInitStruct_pointer__USART_CPHA = input_json["USART_ClockInitStruct"]["USART_CPHA"];
  int USART_ClockInitStruct_pointer__USART_CPOL = input_json["USART_ClockInitStruct"]["USART_CPOL"];
  int USART_ClockInitStruct_pointer__USART_Clock = input_json["USART_ClockInitStruct"]["USART_Clock"];
  TYPE_1__ USART_ClockInitStruct_pointer = {USART_ClockInitStruct_pointer__USART_LastBit, USART_ClockInitStruct_pointer__USART_CPHA, USART_ClockInitStruct_pointer__USART_CPOL, USART_ClockInitStruct_pointer__USART_Clock};
  TYPE_1__* USART_ClockInitStruct = &USART_ClockInitStruct_pointer;
  USART_CPHA_1Edge = input_json["USART_CPHA_1Edge"];
  USART_CPOL_Low = input_json["USART_CPOL_Low"];
  USART_Clock_Disable = input_json["USART_Clock_Disable"];
  USART_LastBit_Disable = input_json["USART_LastBit_Disable"];
  clock_t begin = clock();
  USART_ClockStructInit(USART_ClockInitStruct);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(USART_ClockInitStruct);
}