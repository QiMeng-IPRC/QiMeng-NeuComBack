#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int highlightx; int name_width; int rightx; scalar_t__ hilite_w; scalar_t__ squeeze_info; } ;
typedef  TYPE_2__ TwmWindow ;
struct TYPE_5__ {int titlex; scalar_t__ nright; int rightoff; int width; } ;
struct TYPE_7__ {int TitlePadding; int FramePadding; TYPE_1__ TBInfo; } ;
typedef  scalar_t__ Bool ;

/* Variables and functions */
extern  TYPE_3__* Scr ; 
extern "C" { void ComputeWindowTitleOffsets (TwmWindow *tmp_win, int width, Bool squeeze);
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

void write_output(TYPE_2__* tmp_win, int width, long int squeeze) {
  json output_json;
  TYPE_2__ output_temp_1 = *tmp_win;
  json output_temp_2;

  output_temp_2["highlightx"] = output_temp_1.highlightx;

  output_temp_2["name_width"] = output_temp_1.name_width;

  output_temp_2["rightx"] = output_temp_1.rightx;

  output_temp_2["hilite_w"] = output_temp_1.hilite_w;

  output_temp_2["squeeze_info"] = output_temp_1.squeeze_info;
  output_json["tmp_win"] = output_temp_2;
  TYPE_3__ output_temp_3 = *Scr;
  json output_temp_4;

  output_temp_4["TitlePadding"] = output_temp_3.TitlePadding;

  output_temp_4["FramePadding"] = output_temp_3.FramePadding;
  json output_temp_5;

  output_temp_5["titlex"] = output_temp_3.TBInfo.titlex;

  output_temp_5["nright"] = output_temp_3.TBInfo.nright;

  output_temp_5["rightoff"] = output_temp_3.TBInfo.rightoff;

  output_temp_5["width"] = output_temp_3.TBInfo.width;
  output_temp_4["TBInfo"] = output_temp_5;
  output_json["Scr"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int tmp_win_pointer__highlightx = input_json["tmp_win"]["highlightx"];
  int tmp_win_pointer__name_width = input_json["tmp_win"]["name_width"];
  int tmp_win_pointer__rightx = input_json["tmp_win"]["rightx"];
  long int tmp_win_pointer__hilite_w = input_json["tmp_win"]["hilite_w"];
  long int tmp_win_pointer__squeeze_info = input_json["tmp_win"]["squeeze_info"];
  TYPE_2__ tmp_win_pointer = {tmp_win_pointer__highlightx, tmp_win_pointer__name_width, tmp_win_pointer__rightx, tmp_win_pointer__hilite_w, tmp_win_pointer__squeeze_info};
  TYPE_2__* tmp_win = &tmp_win_pointer;
  int width = input_json["width"];
  long int squeeze = input_json["squeeze"];
  int Scr_pointer__TitlePadding = input_json["Scr"]["TitlePadding"];
  int Scr_pointer__FramePadding = input_json["Scr"]["FramePadding"];
  int Scr_pointer__TBInfo__titlex = input_json["Scr"]["TBInfo"]["titlex"];
  long int Scr_pointer__TBInfo__nright = input_json["Scr"]["TBInfo"]["nright"];
  int Scr_pointer__TBInfo__rightoff = input_json["Scr"]["TBInfo"]["rightoff"];
  int Scr_pointer__TBInfo__width = input_json["Scr"]["TBInfo"]["width"];
  TYPE_1__ Scr_pointer__TBInfo = {Scr_pointer__TBInfo__titlex, Scr_pointer__TBInfo__nright, Scr_pointer__TBInfo__rightoff, Scr_pointer__TBInfo__width};
  TYPE_3__ Scr_pointer = {Scr_pointer__TitlePadding, Scr_pointer__FramePadding, Scr_pointer__TBInfo};
  Scr = &Scr_pointer;
  clock_t begin = clock();
  ComputeWindowTitleOffsets(tmp_win, width, squeeze);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tmp_win, width, squeeze);
}