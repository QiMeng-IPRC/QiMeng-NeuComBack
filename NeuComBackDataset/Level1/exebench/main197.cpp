#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  boolean ;
struct TYPE_2__ {int clip_x; int clip_y; int clip_width; int clip_height; int /*<<< orphan*/  clipping_enabled; } ;

/* Variables and functions */
extern  TYPE_1__ gfx ; 
extern "C" { void InitGfxClipRegion(boolean enabled, int x, int y, int width, int height);
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

void write_output(int enabled, int x, int y, int width, int height) {
  json output_json;
  json output_temp_1;

  output_temp_1["clip_x"] = gfx.clip_x;

  output_temp_1["clip_y"] = gfx.clip_y;

  output_temp_1["clip_width"] = gfx.clip_width;

  output_temp_1["clip_height"] = gfx.clip_height;

  output_temp_1["clipping_enabled"] = gfx.clipping_enabled;
  output_json["gfx"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int enabled = input_json["enabled"];
  int x = input_json["x"];
  int y = input_json["y"];
  int width = input_json["width"];
  int height = input_json["height"];
  int gfx__clip_x = input_json["gfx"]["clip_x"];
  int gfx__clip_y = input_json["gfx"]["clip_y"];
  int gfx__clip_width = input_json["gfx"]["clip_width"];
  int gfx__clip_height = input_json["gfx"]["clip_height"];
  int gfx__clipping_enabled = input_json["gfx"]["clipping_enabled"];
  gfx = {gfx__clip_x, gfx__clip_y, gfx__clip_width, gfx__clip_height, gfx__clipping_enabled};
  clock_t begin = clock();
  InitGfxClipRegion(enabled, x, y, width, height);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(enabled, x, y, width, height);
}