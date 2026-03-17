#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int tsk_size_t ;
struct TYPE_3__ {int max_metadata_length_increment; } ;
typedef  TYPE_1__ tsk_node_table_t ;

/* Variables and functions */
extern "C" { int tsk_node_table_set_max_metadata_length_increment(tsk_node_table_t *self, tsk_size_t max_metadata_length_increment);
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

void write_output(TYPE_1__* self, int max_metadata_length_increment, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *self;
  json output_temp_2;

  output_temp_2["max_metadata_length_increment"] = output_temp_1.max_metadata_length_increment;
  output_json["self"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int self_pointer__max_metadata_length_increment = input_json["self"]["max_metadata_length_increment"];
  TYPE_1__ self_pointer = {self_pointer__max_metadata_length_increment};
  TYPE_1__* self = &self_pointer;
  int max_metadata_length_increment = input_json["max_metadata_length_increment"];
  clock_t begin = clock();
  int returnv = tsk_node_table_set_max_metadata_length_increment(self, max_metadata_length_increment);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self, max_metadata_length_increment, returnv);
}