#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int UInt32 ;
struct TYPE_3__ {int level; int dictSize; int reduceSize; int lc; scalar_t__ lp; int pb; int algo; int fb; int btMode; int numHashBytes; int mc; int numThreads; } ;
typedef  TYPE_1__ CLzmaEncProps ;

/* Variables and functions */
extern "C" { void LzmaEncProps_Normalize(CLzmaEncProps *p);
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

void write_output(TYPE_1__* p) {
  json output_json;
  TYPE_1__ output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["level"] = output_temp_1.level;

  output_temp_2["dictSize"] = output_temp_1.dictSize;

  output_temp_2["reduceSize"] = output_temp_1.reduceSize;

  output_temp_2["lc"] = output_temp_1.lc;

  output_temp_2["lp"] = output_temp_1.lp;

  output_temp_2["pb"] = output_temp_1.pb;

  output_temp_2["algo"] = output_temp_1.algo;

  output_temp_2["fb"] = output_temp_1.fb;

  output_temp_2["btMode"] = output_temp_1.btMode;

  output_temp_2["numHashBytes"] = output_temp_1.numHashBytes;

  output_temp_2["mc"] = output_temp_1.mc;

  output_temp_2["numThreads"] = output_temp_1.numThreads;
  output_json["p"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__level = input_json["p"]["level"];
  int p_pointer__dictSize = input_json["p"]["dictSize"];
  int p_pointer__reduceSize = input_json["p"]["reduceSize"];
  int p_pointer__lc = input_json["p"]["lc"];
  long int p_pointer__lp = input_json["p"]["lp"];
  int p_pointer__pb = input_json["p"]["pb"];
  int p_pointer__algo = input_json["p"]["algo"];
  int p_pointer__fb = input_json["p"]["fb"];
  int p_pointer__btMode = input_json["p"]["btMode"];
  int p_pointer__numHashBytes = input_json["p"]["numHashBytes"];
  int p_pointer__mc = input_json["p"]["mc"];
  int p_pointer__numThreads = input_json["p"]["numThreads"];
  TYPE_1__ p_pointer = {p_pointer__level, p_pointer__dictSize, p_pointer__reduceSize, p_pointer__lc, p_pointer__lp, p_pointer__pb, p_pointer__algo, p_pointer__fb, p_pointer__btMode, p_pointer__numHashBytes, p_pointer__mc, p_pointer__numThreads};
  TYPE_1__* p = &p_pointer;
  clock_t begin = clock();
  LzmaEncProps_Normalize(p);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p);
}