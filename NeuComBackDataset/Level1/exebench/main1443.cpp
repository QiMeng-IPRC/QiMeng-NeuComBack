#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int USART_BaudRate; int USART_Mode; int /*<<< orphan*/  USART_HardwareFlowControl; int /*<<< orphan*/  USART_Parity; int /*<<< orphan*/  USART_StopBits; int /*<<< orphan*/  USART_WordLength; } ;
typedef  TYPE_1__ USART_InitTypeDef ;

/* Variables and functions */
extern  int /*<<< orphan*/  USART_HardwareFlowControl_None ; 
extern  int USART_Mode_Rx ; 
extern  int USART_Mode_Tx ; 
extern  int /*<<< orphan*/  USART_Parity_No ; 
extern  int /*<<< orphan*/  USART_StopBits_1 ; 
extern  int /*<<< orphan*/  USART_WordLength_8b ; 
extern "C" { void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
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

void write_output(TYPE_1__* USART_InitStruct) {
  json output_json;
  TYPE_1__ output_temp_1 = *USART_InitStruct;
  json output_temp_2;

  output_temp_2["USART_BaudRate"] = output_temp_1.USART_BaudRate;

  output_temp_2["USART_Mode"] = output_temp_1.USART_Mode;

  output_temp_2["USART_HardwareFlowControl"] = output_temp_1.USART_HardwareFlowControl;

  output_temp_2["USART_Parity"] = output_temp_1.USART_Parity;

  output_temp_2["USART_StopBits"] = output_temp_1.USART_StopBits;

  output_temp_2["USART_WordLength"] = output_temp_1.USART_WordLength;
  output_json["USART_InitStruct"] = output_temp_2;

  output_json["USART_HardwareFlowControl_None"] = USART_HardwareFlowControl_None;

  output_json["USART_Mode_Rx"] = USART_Mode_Rx;

  output_json["USART_Mode_Tx"] = USART_Mode_Tx;

  output_json["USART_Parity_No"] = USART_Parity_No;

  output_json["USART_StopBits_1"] = USART_StopBits_1;

  output_json["USART_WordLength_8b"] = USART_WordLength_8b;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int USART_InitStruct_pointer__USART_BaudRate = input_json["USART_InitStruct"]["USART_BaudRate"];
  int USART_InitStruct_pointer__USART_Mode = input_json["USART_InitStruct"]["USART_Mode"];
  int USART_InitStruct_pointer__USART_HardwareFlowControl = input_json["USART_InitStruct"]["USART_HardwareFlowControl"];
  int USART_InitStruct_pointer__USART_Parity = input_json["USART_InitStruct"]["USART_Parity"];
  int USART_InitStruct_pointer__USART_StopBits = input_json["USART_InitStruct"]["USART_StopBits"];
  int USART_InitStruct_pointer__USART_WordLength = input_json["USART_InitStruct"]["USART_WordLength"];
  TYPE_1__ USART_InitStruct_pointer = {USART_InitStruct_pointer__USART_BaudRate, USART_InitStruct_pointer__USART_Mode, USART_InitStruct_pointer__USART_HardwareFlowControl, USART_InitStruct_pointer__USART_Parity, USART_InitStruct_pointer__USART_StopBits, USART_InitStruct_pointer__USART_WordLength};
  TYPE_1__* USART_InitStruct = &USART_InitStruct_pointer;
  USART_HardwareFlowControl_None = input_json["USART_HardwareFlowControl_None"];
  USART_Mode_Rx = input_json["USART_Mode_Rx"];
  USART_Mode_Tx = input_json["USART_Mode_Tx"];
  USART_Parity_No = input_json["USART_Parity_No"];
  USART_StopBits_1 = input_json["USART_StopBits_1"];
  USART_WordLength_8b = input_json["USART_WordLength_8b"];
  clock_t begin = clock();
  USART_StructInit(USART_InitStruct);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(USART_InitStruct);
}