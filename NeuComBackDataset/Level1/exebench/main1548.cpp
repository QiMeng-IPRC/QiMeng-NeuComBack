#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct zsMicVar {scalar_t__ m; scalar_t__ nBytes; int /*<<< orphan*/  k1; int /*<<< orphan*/  right; int /*<<< orphan*/  k0; int /*<<< orphan*/  left; } ;

/* Variables and functions */
extern "C" { void zfMicClear(struct zsMicVar* pMic);
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

void write_output(struct zsMicVar* pMic) {
  json output_json;
  struct zsMicVar output_temp_1 = *pMic;
  json output_temp_2;

  output_temp_2["m"] = output_temp_1.m;

  output_temp_2["nBytes"] = output_temp_1.nBytes;

  output_temp_2["k1"] = output_temp_1.k1;

  output_temp_2["right"] = output_temp_1.right;

  output_temp_2["k0"] = output_temp_1.k0;

  output_temp_2["left"] = output_temp_1.left;
  output_json["pMic"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int pMic_pointer__m = input_json["pMic"]["m"];
  long int pMic_pointer__nBytes = input_json["pMic"]["nBytes"];
  int pMic_pointer__k1 = input_json["pMic"]["k1"];
  int pMic_pointer__right = input_json["pMic"]["right"];
  int pMic_pointer__k0 = input_json["pMic"]["k0"];
  int pMic_pointer__left = input_json["pMic"]["left"];
  struct zsMicVar pMic_pointer = {pMic_pointer__m, pMic_pointer__nBytes, pMic_pointer__k1, pMic_pointer__right, pMic_pointer__k0, pMic_pointer__left};
  struct zsMicVar* pMic = &pMic_pointer;
  clock_t begin = clock();
  zfMicClear(pMic);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pMic);
}