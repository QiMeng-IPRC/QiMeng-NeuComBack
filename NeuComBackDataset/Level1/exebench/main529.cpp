#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double vt; float v; } ;
struct TYPE_8__ {TYPE_2__ speed; } ;
struct TYPE_5__ {double spacing; } ;
struct TYPE_7__ {TYPE_1__ coefs; } ;

/* Variables and functions */
extern  TYPE_4__ motionState ; 
extern  TYPE_3__ odo ; 
extern "C" { float get_vd();
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

void write_output(float returnv) {
  json output_json;
  json output_temp_1;
  json output_temp_2;

  output_temp_2["vt"] = motionState.speed.vt;

  output_temp_2["v"] = motionState.speed.v;
  output_temp_1["speed"] = output_temp_2;
  output_json["motionState"] = output_temp_1;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["spacing"] = odo.coefs.spacing;
  output_temp_3["coefs"] = output_temp_4;
  output_json["odo"] = output_temp_3;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double motionState__speed__vt = input_json["motionState"]["speed"]["vt"];
  float motionState__speed__v = input_json["motionState"]["speed"]["v"];
  TYPE_2__ motionState__speed = {motionState__speed__vt, motionState__speed__v};
  motionState = {motionState__speed};
  double odo__coefs__spacing = input_json["odo"]["coefs"]["spacing"];
  TYPE_1__ odo__coefs = {odo__coefs__spacing};
  odo = {odo__coefs};
  clock_t begin = clock();
  float returnv = get_vd();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(returnv);
}