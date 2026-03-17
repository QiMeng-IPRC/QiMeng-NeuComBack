#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double m_duration; double m_timeToAverage; float m_currentFPS; scalar_t__ m_frameCounter; } ;
typedef  TYPE_1__ JBKFPSCounter ;

/* Variables and functions */
extern "C" { void JBKFPSCounter_Update(JBKFPSCounter* inst, double deltaTime);
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

void write_output(TYPE_1__* inst, double deltaTime) {
  json output_json;
  TYPE_1__ output_temp_1 = *inst;
  json output_temp_2;

  output_temp_2["m_duration"] = output_temp_1.m_duration;

  output_temp_2["m_timeToAverage"] = output_temp_1.m_timeToAverage;

  output_temp_2["m_currentFPS"] = output_temp_1.m_currentFPS;

  output_temp_2["m_frameCounter"] = output_temp_1.m_frameCounter;
  output_json["inst"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  double inst_pointer__m_duration = input_json["inst"]["m_duration"];
  double inst_pointer__m_timeToAverage = input_json["inst"]["m_timeToAverage"];
  float inst_pointer__m_currentFPS = input_json["inst"]["m_currentFPS"];
  long int inst_pointer__m_frameCounter = input_json["inst"]["m_frameCounter"];
  TYPE_1__ inst_pointer = {inst_pointer__m_duration, inst_pointer__m_timeToAverage, inst_pointer__m_currentFPS, inst_pointer__m_frameCounter};
  TYPE_1__* inst = &inst_pointer;
  double deltaTime = input_json["deltaTime"];
  clock_t begin = clock();
  JBKFPSCounter_Update(inst, deltaTime);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(inst, deltaTime);
}