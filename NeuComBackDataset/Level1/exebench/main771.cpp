#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_write_fn_t ;
struct TYPE_3__ {int /*<<< orphan*/  write_fn; } ;
typedef  TYPE_1__ svn_stream_t ;

/* Variables and functions */
extern "C" { void svn_stream_set_write(svn_stream_t *stream, svn_write_fn_t write_fn);
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

void write_output(TYPE_1__* stream, int write_fn) {
  json output_json;
  TYPE_1__ output_temp_1 = *stream;
  json output_temp_2;

  output_temp_2["write_fn"] = output_temp_1.write_fn;
  output_json["stream"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int stream_pointer__write_fn = input_json["stream"]["write_fn"];
  TYPE_1__ stream_pointer = {stream_pointer__write_fn};
  TYPE_1__* stream = &stream_pointer;
  int write_fn = input_json["write_fn"];
  clock_t begin = clock();
  svn_stream_set_write(stream, write_fn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(stream, write_fn);
}