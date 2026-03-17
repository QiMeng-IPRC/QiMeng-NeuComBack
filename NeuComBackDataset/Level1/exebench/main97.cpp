#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  float YK_0 ; 
extern  float YK_1 ; 
extern  int YP_00 ; 
extern  int YP_01 ; 
extern  int YP_10 ; 
extern  int YP_11 ; 
extern  scalar_t__ YQ_angle ; 
extern  int YQ_bias ; 
extern  int YR_measured ; 
extern  int YS ; 
extern  float Y_angle ; 
extern  float Y_bias ; 
extern  float Yy ; 
extern "C" { float kalmanFilterY(float newAngle, float newRate,int dt);
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

void write_output(float newAngle, float newRate, int dt, float returnv) {
  json output_json;

  output_json["YK_0"] = YK_0;

  output_json["YK_1"] = YK_1;

  output_json["YP_00"] = YP_00;

  output_json["YP_01"] = YP_01;

  output_json["YP_10"] = YP_10;

  output_json["YP_11"] = YP_11;

  output_json["YQ_angle"] = YQ_angle;

  output_json["YQ_bias"] = YQ_bias;

  output_json["YR_measured"] = YR_measured;

  output_json["YS"] = YS;

  output_json["Y_angle"] = Y_angle;

  output_json["Y_bias"] = Y_bias;

  output_json["Yy"] = Yy;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float newAngle = input_json["newAngle"];
  float newRate = input_json["newRate"];
  int dt = input_json["dt"];
  YK_0 = input_json["YK_0"];
  YK_1 = input_json["YK_1"];
  YP_00 = input_json["YP_00"];
  YP_01 = input_json["YP_01"];
  YP_10 = input_json["YP_10"];
  YP_11 = input_json["YP_11"];
  YQ_angle = input_json["YQ_angle"];
  YQ_bias = input_json["YQ_bias"];
  YR_measured = input_json["YR_measured"];
  YS = input_json["YS"];
  Y_angle = input_json["Y_angle"];
  Y_bias = input_json["Y_bias"];
  Yy = input_json["Yy"];
  clock_t begin = clock();
  float returnv = kalmanFilterY(newAngle, newRate, dt);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(newAngle, newRate, dt, returnv);
}