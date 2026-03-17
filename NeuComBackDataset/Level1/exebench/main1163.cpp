#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct equeue_event {int id; } ;
struct TYPE_3__ {unsigned int npw2; } ;
typedef  TYPE_1__ equeue_t ;

/* Variables and functions */
extern "C" { void equeue_incid(equeue_t *q, struct equeue_event *e);
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

void write_output(TYPE_1__* q, struct equeue_event* e) {
  json output_json;
  TYPE_1__ output_temp_1 = *q;
  json output_temp_2;

  output_temp_2["npw2"] = output_temp_1.npw2;
  output_json["q"] = output_temp_2;
  struct equeue_event output_temp_3 = *e;
  json output_temp_4;

  output_temp_4["id"] = output_temp_3.id;
  output_json["e"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int q_pointer__npw2 = input_json["q"]["npw2"];
  TYPE_1__ q_pointer = {q_pointer__npw2};
  TYPE_1__* q = &q_pointer;
  int e_pointer__id = input_json["e"]["id"];
  struct equeue_event e_pointer = {e_pointer__id};
  struct equeue_event* e = &e_pointer;
  clock_t begin = clock();
  equeue_incid(q, e);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(q, e);
}