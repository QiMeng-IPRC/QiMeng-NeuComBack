#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char ls; char rs; char ts; char bs; char tl; char tr; char bl; char br; } ;
struct TYPE_5__ {int height; int width; int starty; int startx; TYPE_1__ border; } ;
typedef  TYPE_2__ WIN ;

/* Variables and functions */
extern  int COLS ; 
extern  int LINES ; 
extern "C" { void init_win_params(WIN *p_win);
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

void write_output(TYPE_2__* p_win) {
  json output_json;
  TYPE_2__ output_temp_1 = *p_win;
  json output_temp_2;

  output_temp_2["height"] = output_temp_1.height;

  output_temp_2["width"] = output_temp_1.width;

  output_temp_2["starty"] = output_temp_1.starty;

  output_temp_2["startx"] = output_temp_1.startx;
  json output_temp_3;

  output_temp_3["ls"] = output_temp_1.border.ls;

  output_temp_3["rs"] = output_temp_1.border.rs;

  output_temp_3["ts"] = output_temp_1.border.ts;

  output_temp_3["bs"] = output_temp_1.border.bs;

  output_temp_3["tl"] = output_temp_1.border.tl;

  output_temp_3["tr"] = output_temp_1.border.tr;

  output_temp_3["bl"] = output_temp_1.border.bl;

  output_temp_3["br"] = output_temp_1.border.br;
  output_temp_2["border"] = output_temp_3;
  output_json["p_win"] = output_temp_2;

  output_json["COLS"] = COLS;

  output_json["LINES"] = LINES;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_win_pointer__height = input_json["p_win"]["height"];
  int p_win_pointer__width = input_json["p_win"]["width"];
  int p_win_pointer__starty = input_json["p_win"]["starty"];
  int p_win_pointer__startx = input_json["p_win"]["startx"];
  char p_win_pointer__border__ls = input_json["p_win"]["border"]["ls"].get<char>();
  char p_win_pointer__border__rs = input_json["p_win"]["border"]["rs"].get<char>();
  char p_win_pointer__border__ts = input_json["p_win"]["border"]["ts"].get<char>();
  char p_win_pointer__border__bs = input_json["p_win"]["border"]["bs"].get<char>();
  char p_win_pointer__border__tl = input_json["p_win"]["border"]["tl"].get<char>();
  char p_win_pointer__border__tr = input_json["p_win"]["border"]["tr"].get<char>();
  char p_win_pointer__border__bl = input_json["p_win"]["border"]["bl"].get<char>();
  char p_win_pointer__border__br = input_json["p_win"]["border"]["br"].get<char>();
  TYPE_1__ p_win_pointer__border = {p_win_pointer__border__ls, p_win_pointer__border__rs, p_win_pointer__border__ts, p_win_pointer__border__bs, p_win_pointer__border__tl, p_win_pointer__border__tr, p_win_pointer__border__bl, p_win_pointer__border__br};
  TYPE_2__ p_win_pointer = {p_win_pointer__height, p_win_pointer__width, p_win_pointer__starty, p_win_pointer__startx, p_win_pointer__border};
  TYPE_2__* p_win = &p_win_pointer;
  COLS = input_json["COLS"];
  LINES = input_json["LINES"];
  clock_t begin = clock();
  init_win_params(p_win);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p_win);
}