#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ThreeAxis {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_2__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;

/* Variables and functions */
extern  TYPE_1__ HardIron ; 
extern "C" { void adj_mag(struct ThreeAxis *mag);
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

void write_output(struct ThreeAxis* mag) {
  json output_json;
  struct ThreeAxis output_temp_1 = *mag;
  json output_temp_2;

  output_temp_2["z"] = output_temp_1.z;

  output_temp_2["y"] = output_temp_1.y;

  output_temp_2["x"] = output_temp_1.x;
  output_json["mag"] = output_temp_2;
  json output_temp_3;

  output_temp_3["z"] = HardIron.z;

  output_temp_3["y"] = HardIron.y;

  output_temp_3["x"] = HardIron.x;
  output_json["HardIron"] = output_temp_3;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int mag_pointer__z = input_json["mag"]["z"];
  int mag_pointer__y = input_json["mag"]["y"];
  int mag_pointer__x = input_json["mag"]["x"];
  struct ThreeAxis mag_pointer = {mag_pointer__z, mag_pointer__y, mag_pointer__x};
  struct ThreeAxis* mag = &mag_pointer;
  long int HardIron__z = input_json["HardIron"]["z"];
  long int HardIron__y = input_json["HardIron"]["y"];
  long int HardIron__x = input_json["HardIron"]["x"];
  HardIron = {HardIron__z, HardIron__y, HardIron__x};
  clock_t begin = clock();
  adj_mag(mag);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mag);
}