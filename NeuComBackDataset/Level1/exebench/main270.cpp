#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int control_register; int interrupt_received; int irq; } ;
struct TYPE_4__ {TYPE_1__ b; } ;

/* Variables and functions */
extern  TYPE_2__ PIA0 ; 
extern "C" { void do_fs_fall(void);
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
  json output_temp_1;
  json output_temp_2;

  output_temp_2["control_register"] = PIA0.b.control_register;

  output_temp_2["interrupt_received"] = PIA0.b.interrupt_received;

  output_temp_2["irq"] = PIA0.b.irq;
  output_temp_1["b"] = output_temp_2;
  output_json["PIA0"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int PIA0__b__control_register = input_json["PIA0"]["b"]["control_register"];
  int PIA0__b__interrupt_received = input_json["PIA0"]["b"]["interrupt_received"];
  int PIA0__b__irq = input_json["PIA0"]["b"]["irq"];
  TYPE_1__ PIA0__b = {PIA0__b__control_register, PIA0__b__interrupt_received, PIA0__b__irq};
  PIA0 = {PIA0__b};
  clock_t begin = clock();
  do_fs_fall();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}