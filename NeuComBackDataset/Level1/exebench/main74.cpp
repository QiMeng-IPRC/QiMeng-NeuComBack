#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dnsp; int hpf; int dnts; int di; scalar_t__ disp; scalar_t__ gamut; scalar_t__ his; } ;
typedef  TYPE_3__ viqe_modes_t ;
struct TYPE_7__ {int nTOP_INT; } ;
struct TYPE_6__ {int nTOP_CTRL; } ;
struct TYPE_9__ {TYPE_2__ uTOP_INT; TYPE_1__ uTOP_CTRL; } ;

/* Variables and functions */
extern  TYPE_5__* HwVIPET ; 
extern  int RET_VIQE_EN_DI_DNSP ; 
extern  int RET_VIQE_EN_ERRREG ; 
extern "C" { int viqe_set_modes( viqe_modes_t *modes );
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

void write_output(TYPE_3__* modes, int returnv) {
  json output_json;
  TYPE_3__ output_temp_1 = *modes;
  json output_temp_2;

  output_temp_2["dnsp"] = output_temp_1.dnsp;

  output_temp_2["hpf"] = output_temp_1.hpf;

  output_temp_2["dnts"] = output_temp_1.dnts;

  output_temp_2["di"] = output_temp_1.di;

  output_temp_2["disp"] = output_temp_1.disp;

  output_temp_2["gamut"] = output_temp_1.gamut;

  output_temp_2["his"] = output_temp_1.his;
  output_json["modes"] = output_temp_2;
  TYPE_5__ output_temp_3 = *HwVIPET;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["nTOP_INT"] = output_temp_3.uTOP_INT.nTOP_INT;
  output_temp_4["uTOP_INT"] = output_temp_5;
  json output_temp_6;

  output_temp_6["nTOP_CTRL"] = output_temp_3.uTOP_CTRL.nTOP_CTRL;
  output_temp_4["uTOP_CTRL"] = output_temp_6;
  output_json["HwVIPET"] = output_temp_4;

  output_json["RET_VIQE_EN_DI_DNSP"] = RET_VIQE_EN_DI_DNSP;

  output_json["RET_VIQE_EN_ERRREG"] = RET_VIQE_EN_ERRREG;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int modes_pointer__dnsp = input_json["modes"]["dnsp"];
  int modes_pointer__hpf = input_json["modes"]["hpf"];
  int modes_pointer__dnts = input_json["modes"]["dnts"];
  int modes_pointer__di = input_json["modes"]["di"];
  long int modes_pointer__disp = input_json["modes"]["disp"];
  long int modes_pointer__gamut = input_json["modes"]["gamut"];
  long int modes_pointer__his = input_json["modes"]["his"];
  TYPE_3__ modes_pointer = {modes_pointer__dnsp, modes_pointer__hpf, modes_pointer__dnts, modes_pointer__di, modes_pointer__disp, modes_pointer__gamut, modes_pointer__his};
  TYPE_3__* modes = &modes_pointer;
  int HwVIPET_pointer__uTOP_INT__nTOP_INT = input_json["HwVIPET"]["uTOP_INT"]["nTOP_INT"];
  TYPE_2__ HwVIPET_pointer__uTOP_INT = {HwVIPET_pointer__uTOP_INT__nTOP_INT};
  int HwVIPET_pointer__uTOP_CTRL__nTOP_CTRL = input_json["HwVIPET"]["uTOP_CTRL"]["nTOP_CTRL"];
  TYPE_1__ HwVIPET_pointer__uTOP_CTRL = {HwVIPET_pointer__uTOP_CTRL__nTOP_CTRL};
  TYPE_5__ HwVIPET_pointer = {HwVIPET_pointer__uTOP_INT, HwVIPET_pointer__uTOP_CTRL};
  HwVIPET = &HwVIPET_pointer;
  RET_VIQE_EN_DI_DNSP = input_json["RET_VIQE_EN_DI_DNSP"];
  RET_VIQE_EN_ERRREG = input_json["RET_VIQE_EN_ERRREG"];
  clock_t begin = clock();
  int returnv = viqe_set_modes(modes);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(modes, returnv);
}