#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct PLAYER {int joy_snap; int joy_drop; int joy_n; int joy_e; int joy_s; int joy_w; scalar_t__ joy_stick; } ;
typedef  int byte ;

/* Variables and functions */
extern "C" { void readjoy(byte action, struct PLAYER *ply);
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

void write_output(int action, struct PLAYER* ply) {
  json output_json;
  struct PLAYER output_temp_1 = *ply;
  json output_temp_2;

  output_temp_2["joy_snap"] = output_temp_1.joy_snap;

  output_temp_2["joy_drop"] = output_temp_1.joy_drop;

  output_temp_2["joy_n"] = output_temp_1.joy_n;

  output_temp_2["joy_e"] = output_temp_1.joy_e;

  output_temp_2["joy_s"] = output_temp_1.joy_s;

  output_temp_2["joy_w"] = output_temp_1.joy_w;

  output_temp_2["joy_stick"] = output_temp_1.joy_stick;
  output_json["ply"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int action = input_json["action"];
  int ply_pointer__joy_snap = input_json["ply"]["joy_snap"];
  int ply_pointer__joy_drop = input_json["ply"]["joy_drop"];
  int ply_pointer__joy_n = input_json["ply"]["joy_n"];
  int ply_pointer__joy_e = input_json["ply"]["joy_e"];
  int ply_pointer__joy_s = input_json["ply"]["joy_s"];
  int ply_pointer__joy_w = input_json["ply"]["joy_w"];
  long int ply_pointer__joy_stick = input_json["ply"]["joy_stick"];
  struct PLAYER ply_pointer = {ply_pointer__joy_snap, ply_pointer__joy_drop, ply_pointer__joy_n, ply_pointer__joy_e, ply_pointer__joy_s, ply_pointer__joy_w, ply_pointer__joy_stick};
  struct PLAYER* ply = &ply_pointer;
  clock_t begin = clock();
  readjoy(action, ply);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(action, ply);
}