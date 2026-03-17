#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int vx; int vy; int vxsize; int vysize; } ;

/* Variables and functions */
extern  TYPE_1__ gfx ; 
extern "C" { void InitGfxDoor2Info(int vx, int vy, int vxsize, int vysize);
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

void write_output(int vx, int vy, int vxsize, int vysize) {
  json output_json;
  json output_temp_1;

  output_temp_1["vx"] = gfx.vx;

  output_temp_1["vy"] = gfx.vy;

  output_temp_1["vxsize"] = gfx.vxsize;

  output_temp_1["vysize"] = gfx.vysize;
  output_json["gfx"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int vx = input_json["vx"];
  int vy = input_json["vy"];
  int vxsize = input_json["vxsize"];
  int vysize = input_json["vysize"];
  int gfx__vx = input_json["gfx"]["vx"];
  int gfx__vy = input_json["gfx"]["vy"];
  int gfx__vxsize = input_json["gfx"]["vxsize"];
  int gfx__vysize = input_json["gfx"]["vysize"];
  gfx = {gfx__vx, gfx__vy, gfx__vxsize, gfx__vysize};
  clock_t begin = clock();
  InitGfxDoor2Info(vx, vy, vxsize, vysize);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(vx, vy, vxsize, vysize);
}