#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int keylen; int vallen; } ;
typedef  TYPE_1__ hash_table_t ;

/* Variables and functions */
extern "C" { void hash_table_entry_len(hash_table_t *t, int keylen, int vallen);
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

void write_output(TYPE_1__* t, int keylen, int vallen) {
  json output_json;
  TYPE_1__ output_temp_1 = *t;
  json output_temp_2;

  output_temp_2["keylen"] = output_temp_1.keylen;

  output_temp_2["vallen"] = output_temp_1.vallen;
  output_json["t"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int t_pointer__keylen = input_json["t"]["keylen"];
  int t_pointer__vallen = input_json["t"]["vallen"];
  TYPE_1__ t_pointer = {t_pointer__keylen, t_pointer__vallen};
  TYPE_1__* t = &t_pointer;
  int keylen = input_json["keylen"];
  int vallen = input_json["vallen"];
  clock_t begin = clock();
  hash_table_entry_len(t, keylen, vallen);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(t, keylen, vallen);
}