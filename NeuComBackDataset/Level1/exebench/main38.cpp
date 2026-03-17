#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int pos_x; int x_dir; int pos_y; int y_dir; int pos_z; int z_dir; int max_x; int max_y; int max_z; } ;

/* Variables and functions */
extern  TYPE_1__* g_bola ; 
extern "C" { void move_ball();
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
  TYPE_1__ output_temp_1 = *g_bola;
  json output_temp_2;

  output_temp_2["pos_x"] = output_temp_1.pos_x;

  output_temp_2["x_dir"] = output_temp_1.x_dir;

  output_temp_2["pos_y"] = output_temp_1.pos_y;

  output_temp_2["y_dir"] = output_temp_1.y_dir;

  output_temp_2["pos_z"] = output_temp_1.pos_z;

  output_temp_2["z_dir"] = output_temp_1.z_dir;

  output_temp_2["max_x"] = output_temp_1.max_x;

  output_temp_2["max_y"] = output_temp_1.max_y;

  output_temp_2["max_z"] = output_temp_1.max_z;
  output_json["g_bola"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int g_bola_pointer__pos_x = input_json["g_bola"]["pos_x"];
  int g_bola_pointer__x_dir = input_json["g_bola"]["x_dir"];
  int g_bola_pointer__pos_y = input_json["g_bola"]["pos_y"];
  int g_bola_pointer__y_dir = input_json["g_bola"]["y_dir"];
  int g_bola_pointer__pos_z = input_json["g_bola"]["pos_z"];
  int g_bola_pointer__z_dir = input_json["g_bola"]["z_dir"];
  int g_bola_pointer__max_x = input_json["g_bola"]["max_x"];
  int g_bola_pointer__max_y = input_json["g_bola"]["max_y"];
  int g_bola_pointer__max_z = input_json["g_bola"]["max_z"];
  TYPE_1__ g_bola_pointer = {g_bola_pointer__pos_x, g_bola_pointer__x_dir, g_bola_pointer__pos_y, g_bola_pointer__y_dir, g_bola_pointer__pos_z, g_bola_pointer__z_dir, g_bola_pointer__max_x, g_bola_pointer__max_y, g_bola_pointer__max_z};
  g_bola = &g_bola_pointer;
  clock_t begin = clock();
  move_ball();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}