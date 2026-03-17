#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  simon_bytecount; } ;

/* Variables and functions */
extern  TYPE_1__* simondataptr ; 
extern "C" { void simon_hardware_blocksetindex(u8 l_index);
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

void write_output(int l_index) {
  json output_json;
  TYPE_1__ output_temp_1 = *simondataptr;
  json output_temp_2;

  output_temp_2["simon_bytecount"] = output_temp_1.simon_bytecount;
  output_json["simondataptr"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int l_index = input_json["l_index"];
  int simondataptr_pointer__simon_bytecount = input_json["simondataptr"]["simon_bytecount"];
  TYPE_1__ simondataptr_pointer = {simondataptr_pointer__simon_bytecount};
  simondataptr = &simondataptr_pointer;
  clock_t begin = clock();
  simon_hardware_blocksetindex(l_index);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(l_index);
}