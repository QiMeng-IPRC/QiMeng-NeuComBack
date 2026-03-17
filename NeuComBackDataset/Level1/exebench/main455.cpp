#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  raptor_sax2_characters_handler ;
struct TYPE_3__ {int /*<<< orphan*/  characters_handler; } ;
typedef  TYPE_1__ raptor_sax2 ;

/* Variables and functions */
extern "C" { void raptor_sax2_set_characters_handler(raptor_sax2* sax2, raptor_sax2_characters_handler handler);
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

void write_output(TYPE_1__* sax2, int handler) {
  json output_json;
  TYPE_1__ output_temp_1 = *sax2;
  json output_temp_2;

  output_temp_2["characters_handler"] = output_temp_1.characters_handler;
  output_json["sax2"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int sax2_pointer__characters_handler = input_json["sax2"]["characters_handler"];
  TYPE_1__ sax2_pointer = {sax2_pointer__characters_handler};
  TYPE_1__* sax2 = &sax2_pointer;
  int handler = input_json["handler"];
  clock_t begin = clock();
  raptor_sax2_set_characters_handler(sax2, handler);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sax2, handler);
}