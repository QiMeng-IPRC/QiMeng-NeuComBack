#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int compressionLevel; } ;
struct TYPE_5__ {TYPE_1__ internal_donotuse; } ;
typedef  TYPE_2__ LZ4_streamHC_t ;

/* Variables and functions */
extern "C" { void LZ4_setCompressionLevel(LZ4_streamHC_t* LZ4_streamHCPtr, int compressionLevel);
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

void write_output(TYPE_2__* LZ4_streamHCPtr, int compressionLevel) {
  json output_json;
  TYPE_2__ output_temp_1 = *LZ4_streamHCPtr;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["compressionLevel"] = output_temp_1.internal_donotuse.compressionLevel;
  output_temp_2["internal_donotuse"] = output_temp_3;
  output_json["LZ4_streamHCPtr"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int LZ4_streamHCPtr_pointer__internal_donotuse__compressionLevel = input_json["LZ4_streamHCPtr"]["internal_donotuse"]["compressionLevel"];
  TYPE_1__ LZ4_streamHCPtr_pointer__internal_donotuse = {LZ4_streamHCPtr_pointer__internal_donotuse__compressionLevel};
  TYPE_2__ LZ4_streamHCPtr_pointer = {LZ4_streamHCPtr_pointer__internal_donotuse};
  TYPE_2__* LZ4_streamHCPtr = &LZ4_streamHCPtr_pointer;
  int compressionLevel = input_json["compressionLevel"];
  clock_t begin = clock();
  LZ4_setCompressionLevel(LZ4_streamHCPtr, compressionLevel);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(LZ4_streamHCPtr, compressionLevel);
}