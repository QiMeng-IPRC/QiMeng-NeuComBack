#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct buffer {size_t size; size_t len; } ;

/* Variables and functions */
extern "C" { void buffer_setlen(struct buffer *b, size_t len);
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

void write_output(struct buffer* b, unsigned long int len) {
  json output_json;
  struct buffer output_temp_1 = *b;
  json output_temp_2;

  output_temp_2["size"] = output_temp_1.size;

  output_temp_2["len"] = output_temp_1.len;
  output_json["b"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int b_pointer__size = input_json["b"]["size"];
  unsigned long int b_pointer__len = input_json["b"]["len"];
  struct buffer b_pointer = {b_pointer__size, b_pointer__len};
  struct buffer* b = &b_pointer;
  unsigned long int len = input_json["len"];
  clock_t begin = clock();
  buffer_setlen(b, len);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(b, len);
}