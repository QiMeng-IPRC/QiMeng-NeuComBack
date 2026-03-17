#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ SampleTime ; 
extern  int controllerDirection ; 
extern  float dispKd ; 
extern  float dispKi ; 
extern  float dispKp ; 
extern  float kd ; 
extern  float ki ; 
extern  float kp ; 
extern "C" { void PIDSetTunings(float Kp, float Ki, float Kd);
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

void write_output(float Kp, float Ki, float Kd) {
  json output_json;

  output_json["SampleTime"] = SampleTime;

  output_json["controllerDirection"] = controllerDirection;

  output_json["dispKd"] = dispKd;

  output_json["dispKi"] = dispKi;

  output_json["dispKp"] = dispKp;

  output_json["kd"] = kd;

  output_json["ki"] = ki;

  output_json["kp"] = kp;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float Kp = input_json["Kp"];
  float Ki = input_json["Ki"];
  float Kd = input_json["Kd"];
  SampleTime = input_json["SampleTime"];
  controllerDirection = input_json["controllerDirection"];
  dispKd = input_json["dispKd"];
  dispKi = input_json["dispKi"];
  dispKp = input_json["dispKp"];
  kd = input_json["kd"];
  ki = input_json["ki"];
  kp = input_json["kp"];
  clock_t begin = clock();
  PIDSetTunings(Kp, Ki, Kd);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(Kp, Ki, Kd);
}