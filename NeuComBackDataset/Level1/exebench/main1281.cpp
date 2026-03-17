#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ supply; scalar_t__ top; scalar_t__ size; scalar_t__ supplytime; } ;
typedef  TYPE_1__ Ring ;

/* Variables and functions */
extern  scalar_t__ ring_clock ; 
extern "C" { void ring_supplied (Ring * ring, int count);
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

void write_output(TYPE_1__* ring, int count) {
  json output_json;
  TYPE_1__ output_temp_1 = *ring;
  json output_temp_2;

  output_temp_2["supply"] = output_temp_1.supply;

  output_temp_2["top"] = output_temp_1.top;

  output_temp_2["size"] = output_temp_1.size;

  output_temp_2["supplytime"] = output_temp_1.supplytime;
  output_json["ring"] = output_temp_2;

  output_json["ring_clock"] = ring_clock;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int ring_pointer__supply = input_json["ring"]["supply"];
  long int ring_pointer__top = input_json["ring"]["top"];
  long int ring_pointer__size = input_json["ring"]["size"];
  long int ring_pointer__supplytime = input_json["ring"]["supplytime"];
  TYPE_1__ ring_pointer = {ring_pointer__supply, ring_pointer__top, ring_pointer__size, ring_pointer__supplytime};
  TYPE_1__* ring = &ring_pointer;
  int count = input_json["count"];
  ring_clock = input_json["ring_clock"];
  clock_t begin = clock();
  ring_supplied(ring, count);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ring, count);
}