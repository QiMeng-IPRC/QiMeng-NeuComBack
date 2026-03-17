#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int TIMER_GAME ; 
extern  int TIMER_GUI ; 
extern  int /*<<< orphan*/  g_timerGUI ; 
extern  int /*<<< orphan*/  g_timerGame ; 
extern  int /*<<< orphan*/  g_timerInput ; 
extern  int /*<<< orphan*/  g_timerSleep ; 
extern  scalar_t__ g_timerTimeout ; 
extern  int s_timersActive ; 
extern "C" { void Timer_Tick(void);
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

  output_json["TIMER_GAME"] = TIMER_GAME;

  output_json["TIMER_GUI"] = TIMER_GUI;

  output_json["g_timerGUI"] = g_timerGUI;

  output_json["g_timerGame"] = g_timerGame;

  output_json["g_timerInput"] = g_timerInput;

  output_json["g_timerSleep"] = g_timerSleep;

  output_json["g_timerTimeout"] = g_timerTimeout;

  output_json["s_timersActive"] = s_timersActive;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  TIMER_GAME = input_json["TIMER_GAME"];
  TIMER_GUI = input_json["TIMER_GUI"];
  g_timerGUI = input_json["g_timerGUI"];
  g_timerGame = input_json["g_timerGame"];
  g_timerInput = input_json["g_timerInput"];
  g_timerSleep = input_json["g_timerSleep"];
  g_timerTimeout = input_json["g_timerTimeout"];
  s_timersActive = input_json["s_timersActive"];
  clock_t begin = clock();
  Timer_Tick();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}