#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  getlen; int /*<<< orphan*/  getpos; int /*<<< orphan*/  seek; int /*<<< orphan*/  stop; int /*<<< orphan*/  resume; int /*<<< orphan*/  pause; int /*<<< orphan*/  play; } ;

/* Variables and functions */
extern  TYPE_1__ audeng_mp3 ; 
extern  int /*<<< orphan*/  audeng_mp3_getlen ; 
extern  int /*<<< orphan*/  audeng_mp3_getpos ; 
extern  int /*<<< orphan*/  audeng_mp3_pause ; 
extern  int /*<<< orphan*/  audeng_mp3_play ; 
extern  int /*<<< orphan*/  audeng_mp3_resume ; 
extern  int /*<<< orphan*/  audeng_mp3_seek ; 
extern  int /*<<< orphan*/  audeng_mp3_stop ; 
extern "C" { void audeng_mp3_init ();
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
  json output_temp_1;

  output_temp_1["getlen"] = audeng_mp3.getlen;

  output_temp_1["getpos"] = audeng_mp3.getpos;

  output_temp_1["seek"] = audeng_mp3.seek;

  output_temp_1["stop"] = audeng_mp3.stop;

  output_temp_1["resume"] = audeng_mp3.resume;

  output_temp_1["pause"] = audeng_mp3.pause;

  output_temp_1["play"] = audeng_mp3.play;
  output_json["audeng_mp3"] = output_temp_1;

  output_json["audeng_mp3_getlen"] = audeng_mp3_getlen;

  output_json["audeng_mp3_getpos"] = audeng_mp3_getpos;

  output_json["audeng_mp3_pause"] = audeng_mp3_pause;

  output_json["audeng_mp3_play"] = audeng_mp3_play;

  output_json["audeng_mp3_resume"] = audeng_mp3_resume;

  output_json["audeng_mp3_seek"] = audeng_mp3_seek;

  output_json["audeng_mp3_stop"] = audeng_mp3_stop;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int audeng_mp3__getlen = input_json["audeng_mp3"]["getlen"];
  int audeng_mp3__getpos = input_json["audeng_mp3"]["getpos"];
  int audeng_mp3__seek = input_json["audeng_mp3"]["seek"];
  int audeng_mp3__stop = input_json["audeng_mp3"]["stop"];
  int audeng_mp3__resume = input_json["audeng_mp3"]["resume"];
  int audeng_mp3__pause = input_json["audeng_mp3"]["pause"];
  int audeng_mp3__play = input_json["audeng_mp3"]["play"];
  audeng_mp3 = {audeng_mp3__getlen, audeng_mp3__getpos, audeng_mp3__seek, audeng_mp3__stop, audeng_mp3__resume, audeng_mp3__pause, audeng_mp3__play};
  audeng_mp3_getlen = input_json["audeng_mp3_getlen"];
  audeng_mp3_getpos = input_json["audeng_mp3_getpos"];
  audeng_mp3_pause = input_json["audeng_mp3_pause"];
  audeng_mp3_play = input_json["audeng_mp3_play"];
  audeng_mp3_resume = input_json["audeng_mp3_resume"];
  audeng_mp3_seek = input_json["audeng_mp3_seek"];
  audeng_mp3_stop = input_json["audeng_mp3_stop"];
  clock_t begin = clock();
  audeng_mp3_init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}