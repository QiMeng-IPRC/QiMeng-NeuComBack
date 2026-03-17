#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct z26_state {int DataBus; int VSyncFlag; int PrevLinesInFrame; int LinesInFrame; int ScanLine; int /*<<< orphan*/  Frame; } ;

/* Variables and functions */
extern "C" { void H_VSYNC(struct z26_state* s);
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

void write_output(struct z26_state* s) {
  json output_json;
  struct z26_state output_temp_1 = *s;
  json output_temp_2;

  output_temp_2["DataBus"] = output_temp_1.DataBus;

  output_temp_2["VSyncFlag"] = output_temp_1.VSyncFlag;

  output_temp_2["PrevLinesInFrame"] = output_temp_1.PrevLinesInFrame;

  output_temp_2["LinesInFrame"] = output_temp_1.LinesInFrame;

  output_temp_2["ScanLine"] = output_temp_1.ScanLine;

  output_temp_2["Frame"] = output_temp_1.Frame;
  output_json["s"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int s_pointer__DataBus = input_json["s"]["DataBus"];
  int s_pointer__VSyncFlag = input_json["s"]["VSyncFlag"];
  int s_pointer__PrevLinesInFrame = input_json["s"]["PrevLinesInFrame"];
  int s_pointer__LinesInFrame = input_json["s"]["LinesInFrame"];
  int s_pointer__ScanLine = input_json["s"]["ScanLine"];
  int s_pointer__Frame = input_json["s"]["Frame"];
  struct z26_state s_pointer = {s_pointer__DataBus, s_pointer__VSyncFlag, s_pointer__PrevLinesInFrame, s_pointer__LinesInFrame, s_pointer__ScanLine, s_pointer__Frame};
  struct z26_state* s = &s_pointer;
  clock_t begin = clock();
  H_VSYNC(s);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s);
}