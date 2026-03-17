#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float D; float Xst; int deltaXst; float Px; float E; float Yst; int deltaYst; float Py; float F; float Zst; float Pz; float ky; float dY; scalar_t__ Yp; } ;
typedef  TYPE_1__ vdp2rotationparameter_struct ;

/* Variables and functions */
extern "C" { int GenerateRotatedYPos(vdp2rotationparameter_struct *p, int x, int y);
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

void write_output(TYPE_1__* p, int x, int y, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["D"] = output_temp_1.D;

  output_temp_2["Xst"] = output_temp_1.Xst;

  output_temp_2["deltaXst"] = output_temp_1.deltaXst;

  output_temp_2["Px"] = output_temp_1.Px;

  output_temp_2["E"] = output_temp_1.E;

  output_temp_2["Yst"] = output_temp_1.Yst;

  output_temp_2["deltaYst"] = output_temp_1.deltaYst;

  output_temp_2["Py"] = output_temp_1.Py;

  output_temp_2["F"] = output_temp_1.F;

  output_temp_2["Zst"] = output_temp_1.Zst;

  output_temp_2["Pz"] = output_temp_1.Pz;

  output_temp_2["ky"] = output_temp_1.ky;

  output_temp_2["dY"] = output_temp_1.dY;

  output_temp_2["Yp"] = output_temp_1.Yp;
  output_json["p"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float p_pointer__D = input_json["p"]["D"];
  float p_pointer__Xst = input_json["p"]["Xst"];
  int p_pointer__deltaXst = input_json["p"]["deltaXst"];
  float p_pointer__Px = input_json["p"]["Px"];
  float p_pointer__E = input_json["p"]["E"];
  float p_pointer__Yst = input_json["p"]["Yst"];
  int p_pointer__deltaYst = input_json["p"]["deltaYst"];
  float p_pointer__Py = input_json["p"]["Py"];
  float p_pointer__F = input_json["p"]["F"];
  float p_pointer__Zst = input_json["p"]["Zst"];
  float p_pointer__Pz = input_json["p"]["Pz"];
  float p_pointer__ky = input_json["p"]["ky"];
  float p_pointer__dY = input_json["p"]["dY"];
  long int p_pointer__Yp = input_json["p"]["Yp"];
  TYPE_1__ p_pointer = {p_pointer__D, p_pointer__Xst, p_pointer__deltaXst, p_pointer__Px, p_pointer__E, p_pointer__Yst, p_pointer__deltaYst, p_pointer__Py, p_pointer__F, p_pointer__Zst, p_pointer__Pz, p_pointer__ky, p_pointer__dY, p_pointer__Yp};
  TYPE_1__* p = &p_pointer;
  int x = input_json["x"];
  int y = input_json["y"];
  clock_t begin = clock();
  int returnv = GenerateRotatedYPos(p, x, y);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, x, y, returnv);
}