#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ direction; int /*<<< orphan*/  next; } ;
struct TYPE_5__ {TYPE_1__ iter; int /*<<< orphan*/  head; } ;
typedef  TYPE_2__ list ;

/* Variables and functions */
extern "C" { void listRewind(list *list);
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

void write_output(TYPE_2__* list) {
  json output_json;
  TYPE_2__ output_temp_1 = *list;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["direction"] = output_temp_1.iter.direction;

  output_temp_3["next"] = output_temp_1.iter.next;
  output_temp_2["iter"] = output_temp_3;

  output_temp_2["head"] = output_temp_1.head;
  output_json["list"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int list_pointer__iter__direction = input_json["list"]["iter"]["direction"];
  int list_pointer__iter__next = input_json["list"]["iter"]["next"];
  TYPE_1__ list_pointer__iter = {list_pointer__iter__direction, list_pointer__iter__next};
  int list_pointer__head = input_json["list"]["head"];
  TYPE_2__ list_pointer = {list_pointer__iter, list_pointer__head};
  TYPE_2__* list = &list_pointer;
  clock_t begin = clock();
  listRewind(list);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(list);
}