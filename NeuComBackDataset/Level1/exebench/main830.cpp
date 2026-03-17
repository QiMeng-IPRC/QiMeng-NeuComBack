#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct conv {int bps; int nch; int shift; unsigned int bias; int bfirst; int bnext; int snext; } ;
struct aparams {int bps; int bits; scalar_t__ le; scalar_t__ sig; scalar_t__ msb; } ;

/* Variables and functions */
extern "C" { void dec_init(struct conv *p, struct aparams *par, int nch);
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

void write_output(struct conv* p, struct aparams* par, int nch) {
  json output_json;
  struct conv output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["bps"] = output_temp_1.bps;

  output_temp_2["nch"] = output_temp_1.nch;

  output_temp_2["shift"] = output_temp_1.shift;

  output_temp_2["bias"] = output_temp_1.bias;

  output_temp_2["bfirst"] = output_temp_1.bfirst;

  output_temp_2["bnext"] = output_temp_1.bnext;

  output_temp_2["snext"] = output_temp_1.snext;
  output_json["p"] = output_temp_2;
  struct aparams output_temp_3 = *par;
  json output_temp_4;

  output_temp_4["bps"] = output_temp_3.bps;

  output_temp_4["bits"] = output_temp_3.bits;

  output_temp_4["le"] = output_temp_3.le;

  output_temp_4["sig"] = output_temp_3.sig;

  output_temp_4["msb"] = output_temp_3.msb;
  output_json["par"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__bps = input_json["p"]["bps"];
  int p_pointer__nch = input_json["p"]["nch"];
  int p_pointer__shift = input_json["p"]["shift"];
  unsigned int p_pointer__bias = input_json["p"]["bias"];
  int p_pointer__bfirst = input_json["p"]["bfirst"];
  int p_pointer__bnext = input_json["p"]["bnext"];
  int p_pointer__snext = input_json["p"]["snext"];
  struct conv p_pointer = {p_pointer__bps, p_pointer__nch, p_pointer__shift, p_pointer__bias, p_pointer__bfirst, p_pointer__bnext, p_pointer__snext};
  struct conv* p = &p_pointer;
  int par_pointer__bps = input_json["par"]["bps"];
  int par_pointer__bits = input_json["par"]["bits"];
  long int par_pointer__le = input_json["par"]["le"];
  long int par_pointer__sig = input_json["par"]["sig"];
  long int par_pointer__msb = input_json["par"]["msb"];
  struct aparams par_pointer = {par_pointer__bps, par_pointer__bits, par_pointer__le, par_pointer__sig, par_pointer__msb};
  struct aparams* par = &par_pointer;
  int nch = input_json["nch"];
  clock_t begin = clock();
  dec_init(p, par, nch);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, par, nch);
}