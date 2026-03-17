#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  time; int /*<<< orphan*/  scoreFadeTime; scalar_t__ showScores; } ;

/* Variables and functions */
extern  TYPE_1__ cg ; 
extern  scalar_t__ qfalse ; 
extern "C" { void CG_ScoresUp_f(void);
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
  json output_temp_1;

  output_temp_1["time"] = cg.time;

  output_temp_1["scoreFadeTime"] = cg.scoreFadeTime;

  output_temp_1["showScores"] = cg.showScores;
  output_json["cg"] = output_temp_1;

  output_json["qfalse"] = qfalse;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int cg__time = input_json["cg"]["time"];
  int cg__scoreFadeTime = input_json["cg"]["scoreFadeTime"];
  long int cg__showScores = input_json["cg"]["showScores"];
  cg = {cg__time, cg__scoreFadeTime, cg__showScores};
  qfalse = input_json["qfalse"];
  clock_t begin = clock();
  CG_ScoresUp_f();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}