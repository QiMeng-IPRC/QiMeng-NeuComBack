#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int xmin; int xmax; int ymin; int ymax; int zmin; int zmax; int white; int black; int axis; scalar_t__ opz; scalar_t__ opy; scalar_t__ opx; scalar_t__ pz; scalar_t__ py; scalar_t__ px; scalar_t__ plist; } ;
typedef  TYPE_1__ IloadInfo ;

/* Variables and functions */
extern "C" { int mrc_fix_li(IloadInfo *li, int nx, int ny, int nz);
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

void write_output(TYPE_1__* li, int nx, int ny, int nz, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *li;
  json output_temp_2;

  output_temp_2["xmin"] = output_temp_1.xmin;

  output_temp_2["xmax"] = output_temp_1.xmax;

  output_temp_2["ymin"] = output_temp_1.ymin;

  output_temp_2["ymax"] = output_temp_1.ymax;

  output_temp_2["zmin"] = output_temp_1.zmin;

  output_temp_2["zmax"] = output_temp_1.zmax;

  output_temp_2["white"] = output_temp_1.white;

  output_temp_2["black"] = output_temp_1.black;

  output_temp_2["axis"] = output_temp_1.axis;

  output_temp_2["opz"] = output_temp_1.opz;

  output_temp_2["opy"] = output_temp_1.opy;

  output_temp_2["opx"] = output_temp_1.opx;

  output_temp_2["pz"] = output_temp_1.pz;

  output_temp_2["py"] = output_temp_1.py;

  output_temp_2["px"] = output_temp_1.px;

  output_temp_2["plist"] = output_temp_1.plist;
  output_json["li"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int li_pointer__xmin = input_json["li"]["xmin"];
  int li_pointer__xmax = input_json["li"]["xmax"];
  int li_pointer__ymin = input_json["li"]["ymin"];
  int li_pointer__ymax = input_json["li"]["ymax"];
  int li_pointer__zmin = input_json["li"]["zmin"];
  int li_pointer__zmax = input_json["li"]["zmax"];
  int li_pointer__white = input_json["li"]["white"];
  int li_pointer__black = input_json["li"]["black"];
  int li_pointer__axis = input_json["li"]["axis"];
  long int li_pointer__opz = input_json["li"]["opz"];
  long int li_pointer__opy = input_json["li"]["opy"];
  long int li_pointer__opx = input_json["li"]["opx"];
  long int li_pointer__pz = input_json["li"]["pz"];
  long int li_pointer__py = input_json["li"]["py"];
  long int li_pointer__px = input_json["li"]["px"];
  long int li_pointer__plist = input_json["li"]["plist"];
  TYPE_1__ li_pointer = {li_pointer__xmin, li_pointer__xmax, li_pointer__ymin, li_pointer__ymax, li_pointer__zmin, li_pointer__zmax, li_pointer__white, li_pointer__black, li_pointer__axis, li_pointer__opz, li_pointer__opy, li_pointer__opx, li_pointer__pz, li_pointer__py, li_pointer__px, li_pointer__plist};
  TYPE_1__* li = &li_pointer;
  int nx = input_json["nx"];
  int ny = input_json["ny"];
  int nz = input_json["nz"];
  clock_t begin = clock();
  int returnv = mrc_fix_li(li, nx, ny, nz);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(li, nx, ny, nz, returnv);
}