#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {float Bw; float Br; float error_th; int MaxIter; float LMET; int laserStep; float MaxDistInter; float filter; int ProjectionFilter; float AsocError; float errx_out; float erry_out; float errt_out; int IterSmoothConv; } ;

/* Variables and functions */
extern  float MAXLASERRANGE ; 
extern  TYPE_1__ params ; 
extern "C" { void Init_MbICP_ScanMatching(float max_laser_range,float Bw, float Br, float L, int laserStep, float MaxDistInter, float filter, int ProjectionFilter, float AsocError, int MaxIter, float error_ratio, float error_x, float error_y, float error_t, int IterSmoothConv);
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

void write_output(float max_laser_range, float Bw, float Br, float L, int laserStep, float MaxDistInter, float filter, int ProjectionFilter, float AsocError, int MaxIter, float error_ratio, float error_x, float error_y, float error_t, int IterSmoothConv) {
  json output_json;

  output_json["MAXLASERRANGE"] = MAXLASERRANGE;
  json output_temp_1;

  output_temp_1["Bw"] = params.Bw;

  output_temp_1["Br"] = params.Br;

  output_temp_1["error_th"] = params.error_th;

  output_temp_1["MaxIter"] = params.MaxIter;

  output_temp_1["LMET"] = params.LMET;

  output_temp_1["laserStep"] = params.laserStep;

  output_temp_1["MaxDistInter"] = params.MaxDistInter;

  output_temp_1["filter"] = params.filter;

  output_temp_1["ProjectionFilter"] = params.ProjectionFilter;

  output_temp_1["AsocError"] = params.AsocError;

  output_temp_1["errx_out"] = params.errx_out;

  output_temp_1["erry_out"] = params.erry_out;

  output_temp_1["errt_out"] = params.errt_out;

  output_temp_1["IterSmoothConv"] = params.IterSmoothConv;
  output_json["params"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float max_laser_range = input_json["max_laser_range"];
  float Bw = input_json["Bw"];
  float Br = input_json["Br"];
  float L = input_json["L"];
  int laserStep = input_json["laserStep"];
  float MaxDistInter = input_json["MaxDistInter"];
  float filter = input_json["filter"];
  int ProjectionFilter = input_json["ProjectionFilter"];
  float AsocError = input_json["AsocError"];
  int MaxIter = input_json["MaxIter"];
  float error_ratio = input_json["error_ratio"];
  float error_x = input_json["error_x"];
  float error_y = input_json["error_y"];
  float error_t = input_json["error_t"];
  int IterSmoothConv = input_json["IterSmoothConv"];
  MAXLASERRANGE = input_json["MAXLASERRANGE"];
  float params__Bw = input_json["params"]["Bw"];
  float params__Br = input_json["params"]["Br"];
  float params__error_th = input_json["params"]["error_th"];
  int params__MaxIter = input_json["params"]["MaxIter"];
  float params__LMET = input_json["params"]["LMET"];
  int params__laserStep = input_json["params"]["laserStep"];
  float params__MaxDistInter = input_json["params"]["MaxDistInter"];
  float params__filter = input_json["params"]["filter"];
  int params__ProjectionFilter = input_json["params"]["ProjectionFilter"];
  float params__AsocError = input_json["params"]["AsocError"];
  float params__errx_out = input_json["params"]["errx_out"];
  float params__erry_out = input_json["params"]["erry_out"];
  float params__errt_out = input_json["params"]["errt_out"];
  int params__IterSmoothConv = input_json["params"]["IterSmoothConv"];
  params = {params__Bw, params__Br, params__error_th, params__MaxIter, params__LMET, params__laserStep, params__MaxDistInter, params__filter, params__ProjectionFilter, params__AsocError, params__errx_out, params__erry_out, params__errt_out, params__IterSmoothConv};
  clock_t begin = clock();
  Init_MbICP_ScanMatching(max_laser_range, Bw, Br, L, laserStep, MaxDistInter, filter, ProjectionFilter, AsocError, MaxIter, error_ratio, error_x, error_y, error_t, IterSmoothConv);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(max_laser_range, Bw, Br, L, laserStep, MaxDistInter, filter, ProjectionFilter, AsocError, MaxIter, error_ratio, error_x, error_y, error_t, IterSmoothConv);
}