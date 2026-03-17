#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dividor; int /*<<< orphan*/  counter; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ Place ;

/* Variables and functions */
extern "C" { void PlaceCopy(Place *to, const Place *from);
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

void write_output(TYPE_1__* to, TYPE_1__* from) {
  json output_json;
  TYPE_1__ output_temp_1 = *to;
  json output_temp_2;

  output_temp_2["dividor"] = output_temp_1.dividor;

  output_temp_2["counter"] = output_temp_1.counter;

  output_temp_2["line"] = output_temp_1.line;
  output_json["to"] = output_temp_2;
  TYPE_1__ output_temp_3 = *from;
  json output_temp_4;

  output_temp_4["dividor"] = output_temp_3.dividor;

  output_temp_4["counter"] = output_temp_3.counter;

  output_temp_4["line"] = output_temp_3.line;
  output_json["from"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int to_pointer__dividor = input_json["to"]["dividor"];
  int to_pointer__counter = input_json["to"]["counter"];
  int to_pointer__line = input_json["to"]["line"];
  TYPE_1__ to_pointer = {to_pointer__dividor, to_pointer__counter, to_pointer__line};
  TYPE_1__* to = &to_pointer;
  int from_pointer__dividor = input_json["from"]["dividor"];
  int from_pointer__counter = input_json["from"]["counter"];
  int from_pointer__line = input_json["from"]["line"];
  TYPE_1__ from_pointer = {from_pointer__dividor, from_pointer__counter, from_pointer__line};
  TYPE_1__* from = &from_pointer;
  clock_t begin = clock();
  PlaceCopy(to, from);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(to, from);
}