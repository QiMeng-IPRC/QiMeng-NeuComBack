#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct dictionary {size_t end; size_t pos; size_t limit; } ;

/* Variables and functions */
extern "C" { void dict_limit(struct dictionary *dict, size_t out_max);
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

void write_output(struct dictionary* dict, unsigned long int out_max) {
  json output_json;
  struct dictionary output_temp_1 = *dict;
  json output_temp_2;

  output_temp_2["end"] = output_temp_1.end;

  output_temp_2["pos"] = output_temp_1.pos;

  output_temp_2["limit"] = output_temp_1.limit;
  output_json["dict"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int dict_pointer__end = input_json["dict"]["end"];
  unsigned long int dict_pointer__pos = input_json["dict"]["pos"];
  unsigned long int dict_pointer__limit = input_json["dict"]["limit"];
  struct dictionary dict_pointer = {dict_pointer__end, dict_pointer__pos, dict_pointer__limit};
  struct dictionary* dict = &dict_pointer;
  unsigned long int out_max = input_json["out_max"];
  clock_t begin = clock();
  dict_limit(dict, out_max);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dict, out_max);
}