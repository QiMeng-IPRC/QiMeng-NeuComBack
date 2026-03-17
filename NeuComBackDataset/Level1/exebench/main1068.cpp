#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  col; int /*<<< orphan*/  row; } ;
struct TYPE_3__ {int /*<<< orphan*/  col; int /*<<< orphan*/  row; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  rstyle ; 
extern  int /*<<< orphan*/  save_rstyle ; 
extern  TYPE_2__ save_screen ; 
extern  TYPE_1__* screen ; 
extern "C" { void scr_save_cursor();
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

  output_json["rstyle"] = rstyle;

  output_json["save_rstyle"] = save_rstyle;
  json output_temp_1;

  output_temp_1["col"] = save_screen.col;

  output_temp_1["row"] = save_screen.row;
  output_json["save_screen"] = output_temp_1;
  TYPE_1__ output_temp_2 = *screen;
  json output_temp_3;

  output_temp_3["col"] = output_temp_2.col;

  output_temp_3["row"] = output_temp_2.row;
  output_json["screen"] = output_temp_3;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  rstyle = input_json["rstyle"];
  save_rstyle = input_json["save_rstyle"];
  int save_screen__col = input_json["save_screen"]["col"];
  int save_screen__row = input_json["save_screen"]["row"];
  save_screen = {save_screen__col, save_screen__row};
  int screen_pointer__col = input_json["screen"]["col"];
  int screen_pointer__row = input_json["screen"]["row"];
  TYPE_1__ screen_pointer = {screen_pointer__col, screen_pointer__row};
  screen = &screen_pointer;
  clock_t begin = clock();
  scr_save_cursor();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}