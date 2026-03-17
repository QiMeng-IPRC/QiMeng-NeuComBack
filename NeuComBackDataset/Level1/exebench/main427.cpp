#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  GPIO_PuPd; int /*<<< orphan*/  GPIO_OType; int /*<<< orphan*/  GPIO_Speed; int /*<<< orphan*/  GPIO_Mode; int /*<<< orphan*/  GPIO_Pin; } ;
typedef  TYPE_1__ GPIO_InitTypeDef ;

/* Variables and functions */
extern  int /*<<< orphan*/  GPIO_Mode_IN ; 
extern  int /*<<< orphan*/  GPIO_OType_PP ; 
extern  int /*<<< orphan*/  GPIO_Pin_All ; 
extern  int /*<<< orphan*/  GPIO_PuPd_NOPULL ; 
extern  int /*<<< orphan*/  GPIO_Speed_Level_2 ; 
extern "C" { void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
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

void write_output(TYPE_1__* GPIO_InitStruct) {
  json output_json;
  TYPE_1__ output_temp_1 = *GPIO_InitStruct;
  json output_temp_2;

  output_temp_2["GPIO_PuPd"] = output_temp_1.GPIO_PuPd;

  output_temp_2["GPIO_OType"] = output_temp_1.GPIO_OType;

  output_temp_2["GPIO_Speed"] = output_temp_1.GPIO_Speed;

  output_temp_2["GPIO_Mode"] = output_temp_1.GPIO_Mode;

  output_temp_2["GPIO_Pin"] = output_temp_1.GPIO_Pin;
  output_json["GPIO_InitStruct"] = output_temp_2;

  output_json["GPIO_Mode_IN"] = GPIO_Mode_IN;

  output_json["GPIO_OType_PP"] = GPIO_OType_PP;

  output_json["GPIO_Pin_All"] = GPIO_Pin_All;

  output_json["GPIO_PuPd_NOPULL"] = GPIO_PuPd_NOPULL;

  output_json["GPIO_Speed_Level_2"] = GPIO_Speed_Level_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int GPIO_InitStruct_pointer__GPIO_PuPd = input_json["GPIO_InitStruct"]["GPIO_PuPd"];
  int GPIO_InitStruct_pointer__GPIO_OType = input_json["GPIO_InitStruct"]["GPIO_OType"];
  int GPIO_InitStruct_pointer__GPIO_Speed = input_json["GPIO_InitStruct"]["GPIO_Speed"];
  int GPIO_InitStruct_pointer__GPIO_Mode = input_json["GPIO_InitStruct"]["GPIO_Mode"];
  int GPIO_InitStruct_pointer__GPIO_Pin = input_json["GPIO_InitStruct"]["GPIO_Pin"];
  TYPE_1__ GPIO_InitStruct_pointer = {GPIO_InitStruct_pointer__GPIO_PuPd, GPIO_InitStruct_pointer__GPIO_OType, GPIO_InitStruct_pointer__GPIO_Speed, GPIO_InitStruct_pointer__GPIO_Mode, GPIO_InitStruct_pointer__GPIO_Pin};
  TYPE_1__* GPIO_InitStruct = &GPIO_InitStruct_pointer;
  GPIO_Mode_IN = input_json["GPIO_Mode_IN"];
  GPIO_OType_PP = input_json["GPIO_OType_PP"];
  GPIO_Pin_All = input_json["GPIO_Pin_All"];
  GPIO_PuPd_NOPULL = input_json["GPIO_PuPd_NOPULL"];
  GPIO_Speed_Level_2 = input_json["GPIO_Speed_Level_2"];
  clock_t begin = clock();
  GPIO_StructInit(GPIO_InitStruct);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(GPIO_InitStruct);
}