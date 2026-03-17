#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {int x; int y; } ;
typedef  TYPE_4__ xyi_t ;
struct TYPE_15__ {int x; int y; } ;
struct TYPE_17__ {TYPE_3__ dim; } ;
typedef  TYPE_5__ raster_t ;
struct TYPE_13__ {int x; int y; } ;
struct TYPE_14__ {TYPE_1__ dim; } ;
struct TYPE_12__ {TYPE_2__ r; } ;

/* Variables and functions */
extern  int A_BOT ; 
extern  int A_CEN ; 
extern  int A_RIG ; 
extern  TYPE_11__ fb ; 
extern "C" { int sprite_offsets(raster_t r, xyi_t *pos, xyi_t *offset, xyi_t *start, xyi_t *stop, int hmode, int vmode);
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

void write_output(TYPE_5__ r, TYPE_4__* pos, TYPE_4__* offset, TYPE_4__* start, TYPE_4__* stop, int hmode, int vmode, int returnv) {
  json output_json;
  TYPE_4__ output_temp_1 = *pos;
  json output_temp_2;

  output_temp_2["x"] = output_temp_1.x;

  output_temp_2["y"] = output_temp_1.y;
  output_json["pos"] = output_temp_2;
  TYPE_4__ output_temp_3 = *offset;
  json output_temp_4;

  output_temp_4["x"] = output_temp_3.x;

  output_temp_4["y"] = output_temp_3.y;
  output_json["offset"] = output_temp_4;
  TYPE_4__ output_temp_5 = *start;
  json output_temp_6;

  output_temp_6["x"] = output_temp_5.x;

  output_temp_6["y"] = output_temp_5.y;
  output_json["start"] = output_temp_6;
  TYPE_4__ output_temp_7 = *stop;
  json output_temp_8;

  output_temp_8["x"] = output_temp_7.x;

  output_temp_8["y"] = output_temp_7.y;
  output_json["stop"] = output_temp_8;

  output_json["A_BOT"] = A_BOT;

  output_json["A_CEN"] = A_CEN;

  output_json["A_RIG"] = A_RIG;
  json output_temp_9;
  json output_temp_10;
  json output_temp_11;

  output_temp_11["x"] = fb.r.dim.x;

  output_temp_11["y"] = fb.r.dim.y;
  output_temp_10["dim"] = output_temp_11;
  output_temp_9["r"] = output_temp_10;
  output_json["fb"] = output_temp_9;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int r__dim__x = input_json["r"]["dim"]["x"];
  int r__dim__y = input_json["r"]["dim"]["y"];
  TYPE_3__ r__dim = {r__dim__x, r__dim__y};
  TYPE_5__ r = {r__dim};
  int pos_pointer__x = input_json["pos"]["x"];
  int pos_pointer__y = input_json["pos"]["y"];
  TYPE_4__ pos_pointer = {pos_pointer__x, pos_pointer__y};
  TYPE_4__* pos = &pos_pointer;
  int offset_pointer__x = input_json["offset"]["x"];
  int offset_pointer__y = input_json["offset"]["y"];
  TYPE_4__ offset_pointer = {offset_pointer__x, offset_pointer__y};
  TYPE_4__* offset = &offset_pointer;
  int start_pointer__x = input_json["start"]["x"];
  int start_pointer__y = input_json["start"]["y"];
  TYPE_4__ start_pointer = {start_pointer__x, start_pointer__y};
  TYPE_4__* start = &start_pointer;
  int stop_pointer__x = input_json["stop"]["x"];
  int stop_pointer__y = input_json["stop"]["y"];
  TYPE_4__ stop_pointer = {stop_pointer__x, stop_pointer__y};
  TYPE_4__* stop = &stop_pointer;
  int hmode = input_json["hmode"];
  int vmode = input_json["vmode"];
  A_BOT = input_json["A_BOT"];
  A_CEN = input_json["A_CEN"];
  A_RIG = input_json["A_RIG"];
  int fb__r__dim__x = input_json["fb"]["r"]["dim"]["x"];
  int fb__r__dim__y = input_json["fb"]["r"]["dim"]["y"];
  TYPE_1__ fb__r__dim = {fb__r__dim__x, fb__r__dim__y};
  TYPE_2__ fb__r = {fb__r__dim};
  fb = {fb__r};
  clock_t begin = clock();
  int returnv = sprite_offsets(r, pos, offset, start, stop, hmode, vmode);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(r, pos, offset, start, stop, hmode, vmode, returnv);
}