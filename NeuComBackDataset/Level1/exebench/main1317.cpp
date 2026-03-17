#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ size; scalar_t__ v; } ;
struct TYPE_5__ {scalar_t__ p; scalar_t__ end; } ;
typedef  TYPE_1__ HASH_TABLE_ITER ;
typedef  TYPE_2__ HASH_TABLE ;

/* Variables and functions */
extern "C" { void hashTableIterInit(HASH_TABLE_ITER *iter, const HASH_TABLE *table);
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

void write_output(TYPE_1__* iter, TYPE_2__* table) {
  json output_json;
  TYPE_1__ output_temp_1 = *iter;
  json output_temp_2;

  output_temp_2["p"] = output_temp_1.p;

  output_temp_2["end"] = output_temp_1.end;
  output_json["iter"] = output_temp_2;
  TYPE_2__ output_temp_3 = *table;
  json output_temp_4;

  output_temp_4["size"] = output_temp_3.size;

  output_temp_4["v"] = output_temp_3.v;
  output_json["table"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int iter_pointer__p = input_json["iter"]["p"];
  long int iter_pointer__end = input_json["iter"]["end"];
  TYPE_1__ iter_pointer = {iter_pointer__p, iter_pointer__end};
  TYPE_1__* iter = &iter_pointer;
  long int table_pointer__size = input_json["table"]["size"];
  long int table_pointer__v = input_json["table"]["v"];
  TYPE_2__ table_pointer = {table_pointer__size, table_pointer__v};
  TYPE_2__* table = &table_pointer;
  clock_t begin = clock();
  hashTableIterInit(iter, table);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(iter, table);
}