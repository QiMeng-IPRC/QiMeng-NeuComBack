#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
extern  int DDRB ; 
extern  int PCICR ; 
extern  int PCMSK0 ; 
extern  int PORTB ; 
extern  TYPE_1__ settings ; 
extern "C" { void limits_init();
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

void write_output() {
  json output_json;

  output_json["DDRB"] = DDRB;

  output_json["PCICR"] = PCICR;

  output_json["PCMSK0"] = PCMSK0;

  output_json["PORTB"] = PORTB;
  json output_temp_1;

  output_temp_1["flags"] = settings.flags;
  output_json["settings"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  DDRB = input_json["DDRB"];
  PCICR = input_json["PCICR"];
  PCMSK0 = input_json["PCMSK0"];
  PORTB = input_json["PORTB"];
  int settings__flags = input_json["settings"]["flags"];
  settings = {settings__flags};
  clock_t begin = clock();
  limits_init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}