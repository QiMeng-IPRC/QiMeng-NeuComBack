#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt64 ;
struct TYPE_3__ {scalar_t__ Size; size_t Data; } ;
typedef  int SRes ;
typedef  TYPE_1__ CSzData ;

/* Variables and functions */
extern "C" { SRes SzSkeepDataSize(CSzData *sd, UInt64 size);
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

void write_output(TYPE_1__* sd, long int size, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *sd;
  json output_temp_2;

  output_temp_2["Size"] = output_temp_1.Size;

  output_temp_2["Data"] = output_temp_1.Data;
  output_json["sd"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int sd_pointer__Size = input_json["sd"]["Size"];
  unsigned long int sd_pointer__Data = input_json["sd"]["Data"];
  TYPE_1__ sd_pointer = {sd_pointer__Size, sd_pointer__Data};
  TYPE_1__* sd = &sd_pointer;
  long int size = input_json["size"];
  clock_t begin = clock();
  int returnv = SzSkeepDataSize(sd, size);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sd, size, returnv);
}