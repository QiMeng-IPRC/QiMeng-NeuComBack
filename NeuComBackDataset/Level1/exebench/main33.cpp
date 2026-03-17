#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t bind_size; } ;
typedef  TYPE_1__ MdbHandle ;

/* Variables and functions */
extern "C" { void mdb_set_bind_size(MdbHandle *mdb, size_t bind_size);
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

void write_output(TYPE_1__* mdb, unsigned long int bind_size) {
  json output_json;
  TYPE_1__ output_temp_1 = *mdb;
  json output_temp_2;

  output_temp_2["bind_size"] = output_temp_1.bind_size;
  output_json["mdb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int mdb_pointer__bind_size = input_json["mdb"]["bind_size"];
  TYPE_1__ mdb_pointer = {mdb_pointer__bind_size};
  TYPE_1__* mdb = &mdb_pointer;
  unsigned long int bind_size = input_json["bind_size"];
  clock_t begin = clock();
  mdb_set_bind_size(mdb, bind_size);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mdb, bind_size);
}