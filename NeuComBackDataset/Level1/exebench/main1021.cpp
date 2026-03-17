#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;

/* Variables and functions */
extern  int COLS ; 
extern  int LINES ; 
extern  TYPE_1__ content_box ; 
extern  scalar_t__ pref_messageline ; 
extern  int pref_screenheight ; 
extern  int pref_screenwidth ; 
extern "C" { void compute_content_box();
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

  output_json["COLS"] = COLS;

  output_json["LINES"] = LINES;
  json output_temp_1;

  output_temp_1["right"] = content_box.right;

  output_temp_1["bottom"] = content_box.bottom;

  output_temp_1["top"] = content_box.top;

  output_temp_1["left"] = content_box.left;
  output_json["content_box"] = output_temp_1;

  output_json["pref_messageline"] = pref_messageline;

  output_json["pref_screenheight"] = pref_screenheight;

  output_json["pref_screenwidth"] = pref_screenwidth;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  COLS = input_json["COLS"];
  LINES = input_json["LINES"];
  int content_box__right = input_json["content_box"]["right"];
  int content_box__bottom = input_json["content_box"]["bottom"];
  long int content_box__top = input_json["content_box"]["top"];
  long int content_box__left = input_json["content_box"]["left"];
  content_box = {content_box__right, content_box__bottom, content_box__top, content_box__left};
  pref_messageline = input_json["pref_messageline"];
  pref_screenheight = input_json["pref_screenheight"];
  pref_screenwidth = input_json["pref_screenwidth"];
  clock_t begin = clock();
  compute_content_box();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}