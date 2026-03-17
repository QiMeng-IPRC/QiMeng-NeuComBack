#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int start_pressed; int select_pressed; int option_pressed; int internal_speaker; } ;

/* Variables and functions */
extern  TYPE_1__ gtia ; 
extern "C" { void gtia_write_console ( unsigned int value );
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

void write_output(unsigned int value) {
  json output_json;
  json output_temp_1;

  output_temp_1["start_pressed"] = gtia.start_pressed;

  output_temp_1["select_pressed"] = gtia.select_pressed;

  output_temp_1["option_pressed"] = gtia.option_pressed;

  output_temp_1["internal_speaker"] = gtia.internal_speaker;
  output_json["gtia"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int value = input_json["value"];
  int gtia__start_pressed = input_json["gtia"]["start_pressed"];
  int gtia__select_pressed = input_json["gtia"]["select_pressed"];
  int gtia__option_pressed = input_json["gtia"]["option_pressed"];
  int gtia__internal_speaker = input_json["gtia"]["internal_speaker"];
  gtia = {gtia__start_pressed, gtia__select_pressed, gtia__option_pressed, gtia__internal_speaker};
  clock_t begin = clock();
  gtia_write_console(value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(value);
}