#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct abuf {int used; scalar_t__ start; scalar_t__ len; } ;

/* Variables and functions */
extern "C" { void abuf_rdiscard(struct abuf *buf, int count);
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

void write_output(struct abuf* buf, int count) {
  json output_json;
  struct abuf output_temp_1 = *buf;
  json output_temp_2;

  output_temp_2["used"] = output_temp_1.used;

  output_temp_2["start"] = output_temp_1.start;

  output_temp_2["len"] = output_temp_1.len;
  output_json["buf"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int buf_pointer__used = input_json["buf"]["used"];
  long int buf_pointer__start = input_json["buf"]["start"];
  long int buf_pointer__len = input_json["buf"]["len"];
  struct abuf buf_pointer = {buf_pointer__used, buf_pointer__start, buf_pointer__len};
  struct abuf* buf = &buf_pointer;
  int count = input_json["count"];
  clock_t begin = clock();
  abuf_rdiscard(buf, count);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(buf, count);
}