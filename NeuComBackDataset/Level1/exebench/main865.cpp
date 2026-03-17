#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  ptr; int /*<<< orphan*/  buf; scalar_t__ count; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
extern  int /*<<< orphan*/  _DIR_EOD ; 
extern "C" { void rewinddir(DIR *dirp);
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

void write_output(TYPE_1__* dirp) {
  json output_json;
  TYPE_1__ output_temp_1 = *dirp;
  json output_temp_2;

  output_temp_2["flags"] = output_temp_1.flags;

  output_temp_2["ptr"] = output_temp_1.ptr;

  output_temp_2["buf"] = output_temp_1.buf;

  output_temp_2["count"] = output_temp_1.count;
  output_json["dirp"] = output_temp_2;

  output_json["_DIR_EOD"] = _DIR_EOD;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dirp_pointer__flags = input_json["dirp"]["flags"];
  int dirp_pointer__ptr = input_json["dirp"]["ptr"];
  int dirp_pointer__buf = input_json["dirp"]["buf"];
  long int dirp_pointer__count = input_json["dirp"]["count"];
  TYPE_1__ dirp_pointer = {dirp_pointer__flags, dirp_pointer__ptr, dirp_pointer__buf, dirp_pointer__count};
  TYPE_1__* dirp = &dirp_pointer;
  _DIR_EOD = input_json["_DIR_EOD"];
  clock_t begin = clock();
  rewinddir(dirp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dirp);
}