#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ asize; char* ptr; scalar_t__ size; } ;
typedef  TYPE_1__ gh_buf ;

/* Variables and functions */
extern "C" { void gh_buf_clear(gh_buf *buf);
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

void write_output(TYPE_1__* buf) {
  json output_json;
  TYPE_1__ output_temp_1 = *buf;
  json output_temp_2;

  output_temp_2["asize"] = output_temp_1.asize;

  output_temp_2["ptr"] = output_temp_1.ptr;

  output_temp_2["size"] = output_temp_1.size;
  output_json["buf"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int buf_pointer__asize = input_json["buf"]["asize"];
  char* buf_pointer__ptr = strdup(input_json["buf"]["ptr"].get<std::string>().c_str());
  long int buf_pointer__size = input_json["buf"]["size"];
  TYPE_1__ buf_pointer = {buf_pointer__asize, buf_pointer__ptr, buf_pointer__size};
  TYPE_1__* buf = &buf_pointer;
  clock_t begin = clock();
  gh_buf_clear(buf);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(buf);
}