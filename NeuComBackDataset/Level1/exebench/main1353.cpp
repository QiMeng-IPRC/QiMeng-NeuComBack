#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int CurSH2FreqType; int DecilineStop; int Duf; scalar_t__ CycleCountII; int /*<<< orphan*/  IsPal; scalar_t__ LineCount; scalar_t__ DecilineCount; } ;

/* Variables and functions */
extern  TYPE_1__ yabsys ; 
extern "C" { void YabauseChangeTiming(int freqtype);
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

void write_output(int freqtype) {
  json output_json;
  json output_temp_1;

  output_temp_1["CurSH2FreqType"] = yabsys.CurSH2FreqType;

  output_temp_1["DecilineStop"] = yabsys.DecilineStop;

  output_temp_1["Duf"] = yabsys.Duf;

  output_temp_1["CycleCountII"] = yabsys.CycleCountII;

  output_temp_1["IsPal"] = yabsys.IsPal;

  output_temp_1["LineCount"] = yabsys.LineCount;

  output_temp_1["DecilineCount"] = yabsys.DecilineCount;
  output_json["yabsys"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int freqtype = input_json["freqtype"];
  int yabsys__CurSH2FreqType = input_json["yabsys"]["CurSH2FreqType"];
  int yabsys__DecilineStop = input_json["yabsys"]["DecilineStop"];
  int yabsys__Duf = input_json["yabsys"]["Duf"];
  long int yabsys__CycleCountII = input_json["yabsys"]["CycleCountII"];
  int yabsys__IsPal = input_json["yabsys"]["IsPal"];
  long int yabsys__LineCount = input_json["yabsys"]["LineCount"];
  long int yabsys__DecilineCount = input_json["yabsys"]["DecilineCount"];
  yabsys = {yabsys__CurSH2FreqType, yabsys__DecilineStop, yabsys__Duf, yabsys__CycleCountII, yabsys__IsPal, yabsys__LineCount, yabsys__DecilineCount};
  clock_t begin = clock();
  YabauseChangeTiming(freqtype);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(freqtype);
}