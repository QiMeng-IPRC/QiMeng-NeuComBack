#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  start; int /*<<< orphan*/  current; } ;
struct TYPE_5__ {TYPE_1__ diff_text_range; } ;
typedef  TYPE_2__ svn_diff_hunk_t ;

/* Variables and functions */
extern "C" { void svn_diff_hunk_reset_diff_text(svn_diff_hunk_t *hunk);
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

void write_output(TYPE_2__* hunk) {
  json output_json;
  TYPE_2__ output_temp_1 = *hunk;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["start"] = output_temp_1.diff_text_range.start;

  output_temp_3["current"] = output_temp_1.diff_text_range.current;
  output_temp_2["diff_text_range"] = output_temp_3;
  output_json["hunk"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int hunk_pointer__diff_text_range__start = input_json["hunk"]["diff_text_range"]["start"];
  int hunk_pointer__diff_text_range__current = input_json["hunk"]["diff_text_range"]["current"];
  TYPE_1__ hunk_pointer__diff_text_range = {hunk_pointer__diff_text_range__start, hunk_pointer__diff_text_range__current};
  TYPE_2__ hunk_pointer = {hunk_pointer__diff_text_range};
  TYPE_2__* hunk = &hunk_pointer;
  clock_t begin = clock();
  svn_diff_hunk_reset_diff_text(hunk);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(hunk);
}