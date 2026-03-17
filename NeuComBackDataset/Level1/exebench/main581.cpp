#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  DCMI_ExtendedDataMode; int /*<<< orphan*/  DCMI_CaptureRate; int /*<<< orphan*/  DCMI_HSPolarity; int /*<<< orphan*/  DCMI_VSPolarity; int /*<<< orphan*/  DCMI_PCKPolarity; int /*<<< orphan*/  DCMI_SynchroMode; int /*<<< orphan*/  DCMI_CaptureMode; } ;
typedef  TYPE_1__ DCMI_InitTypeDef ;

/* Variables and functions */
extern  int /*<<< orphan*/  DCMI_CaptureMode_Continuous ; 
extern  int /*<<< orphan*/  DCMI_CaptureRate_All_Frame ; 
extern  int /*<<< orphan*/  DCMI_ExtendedDataMode_8b ; 
extern  int /*<<< orphan*/  DCMI_HSPolarity_Low ; 
extern  int /*<<< orphan*/  DCMI_PCKPolarity_Falling ; 
extern  int /*<<< orphan*/  DCMI_SynchroMode_Hardware ; 
extern  int /*<<< orphan*/  DCMI_VSPolarity_Low ; 
extern "C" { void DCMI_StructInit(DCMI_InitTypeDef* DCMI_InitStruct);
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

void write_output(TYPE_1__* DCMI_InitStruct) {
  json output_json;
  TYPE_1__ output_temp_1 = *DCMI_InitStruct;
  json output_temp_2;

  output_temp_2["DCMI_ExtendedDataMode"] = output_temp_1.DCMI_ExtendedDataMode;

  output_temp_2["DCMI_CaptureRate"] = output_temp_1.DCMI_CaptureRate;

  output_temp_2["DCMI_HSPolarity"] = output_temp_1.DCMI_HSPolarity;

  output_temp_2["DCMI_VSPolarity"] = output_temp_1.DCMI_VSPolarity;

  output_temp_2["DCMI_PCKPolarity"] = output_temp_1.DCMI_PCKPolarity;

  output_temp_2["DCMI_SynchroMode"] = output_temp_1.DCMI_SynchroMode;

  output_temp_2["DCMI_CaptureMode"] = output_temp_1.DCMI_CaptureMode;
  output_json["DCMI_InitStruct"] = output_temp_2;

  output_json["DCMI_CaptureMode_Continuous"] = DCMI_CaptureMode_Continuous;

  output_json["DCMI_CaptureRate_All_Frame"] = DCMI_CaptureRate_All_Frame;

  output_json["DCMI_ExtendedDataMode_8b"] = DCMI_ExtendedDataMode_8b;

  output_json["DCMI_HSPolarity_Low"] = DCMI_HSPolarity_Low;

  output_json["DCMI_PCKPolarity_Falling"] = DCMI_PCKPolarity_Falling;

  output_json["DCMI_SynchroMode_Hardware"] = DCMI_SynchroMode_Hardware;

  output_json["DCMI_VSPolarity_Low"] = DCMI_VSPolarity_Low;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int DCMI_InitStruct_pointer__DCMI_ExtendedDataMode = input_json["DCMI_InitStruct"]["DCMI_ExtendedDataMode"];
  int DCMI_InitStruct_pointer__DCMI_CaptureRate = input_json["DCMI_InitStruct"]["DCMI_CaptureRate"];
  int DCMI_InitStruct_pointer__DCMI_HSPolarity = input_json["DCMI_InitStruct"]["DCMI_HSPolarity"];
  int DCMI_InitStruct_pointer__DCMI_VSPolarity = input_json["DCMI_InitStruct"]["DCMI_VSPolarity"];
  int DCMI_InitStruct_pointer__DCMI_PCKPolarity = input_json["DCMI_InitStruct"]["DCMI_PCKPolarity"];
  int DCMI_InitStruct_pointer__DCMI_SynchroMode = input_json["DCMI_InitStruct"]["DCMI_SynchroMode"];
  int DCMI_InitStruct_pointer__DCMI_CaptureMode = input_json["DCMI_InitStruct"]["DCMI_CaptureMode"];
  TYPE_1__ DCMI_InitStruct_pointer = {DCMI_InitStruct_pointer__DCMI_ExtendedDataMode, DCMI_InitStruct_pointer__DCMI_CaptureRate, DCMI_InitStruct_pointer__DCMI_HSPolarity, DCMI_InitStruct_pointer__DCMI_VSPolarity, DCMI_InitStruct_pointer__DCMI_PCKPolarity, DCMI_InitStruct_pointer__DCMI_SynchroMode, DCMI_InitStruct_pointer__DCMI_CaptureMode};
  TYPE_1__* DCMI_InitStruct = &DCMI_InitStruct_pointer;
  DCMI_CaptureMode_Continuous = input_json["DCMI_CaptureMode_Continuous"];
  DCMI_CaptureRate_All_Frame = input_json["DCMI_CaptureRate_All_Frame"];
  DCMI_ExtendedDataMode_8b = input_json["DCMI_ExtendedDataMode_8b"];
  DCMI_HSPolarity_Low = input_json["DCMI_HSPolarity_Low"];
  DCMI_PCKPolarity_Falling = input_json["DCMI_PCKPolarity_Falling"];
  DCMI_SynchroMode_Hardware = input_json["DCMI_SynchroMode_Hardware"];
  DCMI_VSPolarity_Low = input_json["DCMI_VSPolarity_Low"];
  clock_t begin = clock();
  DCMI_StructInit(DCMI_InitStruct);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(DCMI_InitStruct);
}