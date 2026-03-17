#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  DMA_PeripheralBurst; int /*<<< orphan*/  DMA_MemoryBurst; int /*<<< orphan*/  DMA_FIFOThreshold; int /*<<< orphan*/  DMA_FIFOMode; int /*<<< orphan*/  DMA_Priority; int /*<<< orphan*/  DMA_Mode; int /*<<< orphan*/  DMA_MemoryDataSize; int /*<<< orphan*/  DMA_PeripheralDataSize; int /*<<< orphan*/  DMA_MemoryInc; int /*<<< orphan*/  DMA_PeripheralInc; scalar_t__ DMA_BufferSize; int /*<<< orphan*/  DMA_DIR; scalar_t__ DMA_Memory0BaseAddr; scalar_t__ DMA_PeripheralBaseAddr; scalar_t__ DMA_Channel; } ;
typedef  TYPE_1__ DMA_InitTypeDef ;

/* Variables and functions */
extern  int /*<<< orphan*/  DMA_DIR_PeripheralToMemory ; 
extern  int /*<<< orphan*/  DMA_FIFOMode_Disable ; 
extern  int /*<<< orphan*/  DMA_FIFOThreshold_1QuarterFull ; 
extern  int /*<<< orphan*/  DMA_MemoryBurst_Single ; 
extern  int /*<<< orphan*/  DMA_MemoryDataSize_Byte ; 
extern  int /*<<< orphan*/  DMA_MemoryInc_Disable ; 
extern  int /*<<< orphan*/  DMA_Mode_Normal ; 
extern  int /*<<< orphan*/  DMA_PeripheralBurst_Single ; 
extern  int /*<<< orphan*/  DMA_PeripheralDataSize_Byte ; 
extern  int /*<<< orphan*/  DMA_PeripheralInc_Disable ; 
extern  int /*<<< orphan*/  DMA_Priority_Low ; 
extern "C" { void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
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

void write_output(TYPE_1__* DMA_InitStruct) {
  json output_json;
  TYPE_1__ output_temp_1 = *DMA_InitStruct;
  json output_temp_2;

  output_temp_2["DMA_PeripheralBurst"] = output_temp_1.DMA_PeripheralBurst;

  output_temp_2["DMA_MemoryBurst"] = output_temp_1.DMA_MemoryBurst;

  output_temp_2["DMA_FIFOThreshold"] = output_temp_1.DMA_FIFOThreshold;

  output_temp_2["DMA_FIFOMode"] = output_temp_1.DMA_FIFOMode;

  output_temp_2["DMA_Priority"] = output_temp_1.DMA_Priority;

  output_temp_2["DMA_Mode"] = output_temp_1.DMA_Mode;

  output_temp_2["DMA_MemoryDataSize"] = output_temp_1.DMA_MemoryDataSize;

  output_temp_2["DMA_PeripheralDataSize"] = output_temp_1.DMA_PeripheralDataSize;

  output_temp_2["DMA_MemoryInc"] = output_temp_1.DMA_MemoryInc;

  output_temp_2["DMA_PeripheralInc"] = output_temp_1.DMA_PeripheralInc;

  output_temp_2["DMA_BufferSize"] = output_temp_1.DMA_BufferSize;

  output_temp_2["DMA_DIR"] = output_temp_1.DMA_DIR;

  output_temp_2["DMA_Memory0BaseAddr"] = output_temp_1.DMA_Memory0BaseAddr;

  output_temp_2["DMA_PeripheralBaseAddr"] = output_temp_1.DMA_PeripheralBaseAddr;

  output_temp_2["DMA_Channel"] = output_temp_1.DMA_Channel;
  output_json["DMA_InitStruct"] = output_temp_2;

  output_json["DMA_DIR_PeripheralToMemory"] = DMA_DIR_PeripheralToMemory;

  output_json["DMA_FIFOMode_Disable"] = DMA_FIFOMode_Disable;

  output_json["DMA_FIFOThreshold_1QuarterFull"] = DMA_FIFOThreshold_1QuarterFull;

  output_json["DMA_MemoryBurst_Single"] = DMA_MemoryBurst_Single;

  output_json["DMA_MemoryDataSize_Byte"] = DMA_MemoryDataSize_Byte;

  output_json["DMA_MemoryInc_Disable"] = DMA_MemoryInc_Disable;

  output_json["DMA_Mode_Normal"] = DMA_Mode_Normal;

  output_json["DMA_PeripheralBurst_Single"] = DMA_PeripheralBurst_Single;

  output_json["DMA_PeripheralDataSize_Byte"] = DMA_PeripheralDataSize_Byte;

  output_json["DMA_PeripheralInc_Disable"] = DMA_PeripheralInc_Disable;

  output_json["DMA_Priority_Low"] = DMA_Priority_Low;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int DMA_InitStruct_pointer__DMA_PeripheralBurst = input_json["DMA_InitStruct"]["DMA_PeripheralBurst"];
  int DMA_InitStruct_pointer__DMA_MemoryBurst = input_json["DMA_InitStruct"]["DMA_MemoryBurst"];
  int DMA_InitStruct_pointer__DMA_FIFOThreshold = input_json["DMA_InitStruct"]["DMA_FIFOThreshold"];
  int DMA_InitStruct_pointer__DMA_FIFOMode = input_json["DMA_InitStruct"]["DMA_FIFOMode"];
  int DMA_InitStruct_pointer__DMA_Priority = input_json["DMA_InitStruct"]["DMA_Priority"];
  int DMA_InitStruct_pointer__DMA_Mode = input_json["DMA_InitStruct"]["DMA_Mode"];
  int DMA_InitStruct_pointer__DMA_MemoryDataSize = input_json["DMA_InitStruct"]["DMA_MemoryDataSize"];
  int DMA_InitStruct_pointer__DMA_PeripheralDataSize = input_json["DMA_InitStruct"]["DMA_PeripheralDataSize"];
  int DMA_InitStruct_pointer__DMA_MemoryInc = input_json["DMA_InitStruct"]["DMA_MemoryInc"];
  int DMA_InitStruct_pointer__DMA_PeripheralInc = input_json["DMA_InitStruct"]["DMA_PeripheralInc"];
  long int DMA_InitStruct_pointer__DMA_BufferSize = input_json["DMA_InitStruct"]["DMA_BufferSize"];
  int DMA_InitStruct_pointer__DMA_DIR = input_json["DMA_InitStruct"]["DMA_DIR"];
  long int DMA_InitStruct_pointer__DMA_Memory0BaseAddr = input_json["DMA_InitStruct"]["DMA_Memory0BaseAddr"];
  long int DMA_InitStruct_pointer__DMA_PeripheralBaseAddr = input_json["DMA_InitStruct"]["DMA_PeripheralBaseAddr"];
  long int DMA_InitStruct_pointer__DMA_Channel = input_json["DMA_InitStruct"]["DMA_Channel"];
  TYPE_1__ DMA_InitStruct_pointer = {DMA_InitStruct_pointer__DMA_PeripheralBurst, DMA_InitStruct_pointer__DMA_MemoryBurst, DMA_InitStruct_pointer__DMA_FIFOThreshold, DMA_InitStruct_pointer__DMA_FIFOMode, DMA_InitStruct_pointer__DMA_Priority, DMA_InitStruct_pointer__DMA_Mode, DMA_InitStruct_pointer__DMA_MemoryDataSize, DMA_InitStruct_pointer__DMA_PeripheralDataSize, DMA_InitStruct_pointer__DMA_MemoryInc, DMA_InitStruct_pointer__DMA_PeripheralInc, DMA_InitStruct_pointer__DMA_BufferSize, DMA_InitStruct_pointer__DMA_DIR, DMA_InitStruct_pointer__DMA_Memory0BaseAddr, DMA_InitStruct_pointer__DMA_PeripheralBaseAddr, DMA_InitStruct_pointer__DMA_Channel};
  TYPE_1__* DMA_InitStruct = &DMA_InitStruct_pointer;
  DMA_DIR_PeripheralToMemory = input_json["DMA_DIR_PeripheralToMemory"];
  DMA_FIFOMode_Disable = input_json["DMA_FIFOMode_Disable"];
  DMA_FIFOThreshold_1QuarterFull = input_json["DMA_FIFOThreshold_1QuarterFull"];
  DMA_MemoryBurst_Single = input_json["DMA_MemoryBurst_Single"];
  DMA_MemoryDataSize_Byte = input_json["DMA_MemoryDataSize_Byte"];
  DMA_MemoryInc_Disable = input_json["DMA_MemoryInc_Disable"];
  DMA_Mode_Normal = input_json["DMA_Mode_Normal"];
  DMA_PeripheralBurst_Single = input_json["DMA_PeripheralBurst_Single"];
  DMA_PeripheralDataSize_Byte = input_json["DMA_PeripheralDataSize_Byte"];
  DMA_PeripheralInc_Disable = input_json["DMA_PeripheralInc_Disable"];
  DMA_Priority_Low = input_json["DMA_Priority_Low"];
  clock_t begin = clock();
  DMA_StructInit(DMA_InitStruct);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(DMA_InitStruct);
}