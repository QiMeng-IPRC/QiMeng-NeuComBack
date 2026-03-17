#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  im; int /*<<< orphan*/  re; } ;
struct TYPE_6__ {int /*<<< orphan*/  im; int /*<<< orphan*/  re; } ;
struct TYPE_8__ {TYPE_2__ beta; TYPE_1__ alpha; } ;
typedef  TYPE_3__ tf_qcs_qubit ;

/* Variables and functions */
extern "C" { void qcs_1q_not_gate(tf_qcs_qubit *in_qubit, tf_qcs_qubit *out_qubit);
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

void write_output(TYPE_3__* in_qubit, TYPE_3__* out_qubit) {
  json output_json;
  TYPE_3__ output_temp_1 = *in_qubit;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["im"] = output_temp_1.beta.im;

  output_temp_3["re"] = output_temp_1.beta.re;
  output_temp_2["beta"] = output_temp_3;
  json output_temp_4;

  output_temp_4["im"] = output_temp_1.alpha.im;

  output_temp_4["re"] = output_temp_1.alpha.re;
  output_temp_2["alpha"] = output_temp_4;
  output_json["in_qubit"] = output_temp_2;
  TYPE_3__ output_temp_5 = *out_qubit;
  json output_temp_6;
  json output_temp_7;

  output_temp_7["im"] = output_temp_5.beta.im;

  output_temp_7["re"] = output_temp_5.beta.re;
  output_temp_6["beta"] = output_temp_7;
  json output_temp_8;

  output_temp_8["im"] = output_temp_5.alpha.im;

  output_temp_8["re"] = output_temp_5.alpha.re;
  output_temp_6["alpha"] = output_temp_8;
  output_json["out_qubit"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int in_qubit_pointer__beta__im = input_json["in_qubit"]["beta"]["im"];
  int in_qubit_pointer__beta__re = input_json["in_qubit"]["beta"]["re"];
  TYPE_2__ in_qubit_pointer__beta = {in_qubit_pointer__beta__im, in_qubit_pointer__beta__re};
  int in_qubit_pointer__alpha__im = input_json["in_qubit"]["alpha"]["im"];
  int in_qubit_pointer__alpha__re = input_json["in_qubit"]["alpha"]["re"];
  TYPE_1__ in_qubit_pointer__alpha = {in_qubit_pointer__alpha__im, in_qubit_pointer__alpha__re};
  TYPE_3__ in_qubit_pointer = {in_qubit_pointer__beta, in_qubit_pointer__alpha};
  TYPE_3__* in_qubit = &in_qubit_pointer;
  int out_qubit_pointer__beta__im = input_json["out_qubit"]["beta"]["im"];
  int out_qubit_pointer__beta__re = input_json["out_qubit"]["beta"]["re"];
  TYPE_2__ out_qubit_pointer__beta = {out_qubit_pointer__beta__im, out_qubit_pointer__beta__re};
  int out_qubit_pointer__alpha__im = input_json["out_qubit"]["alpha"]["im"];
  int out_qubit_pointer__alpha__re = input_json["out_qubit"]["alpha"]["re"];
  TYPE_1__ out_qubit_pointer__alpha = {out_qubit_pointer__alpha__im, out_qubit_pointer__alpha__re};
  TYPE_3__ out_qubit_pointer = {out_qubit_pointer__beta, out_qubit_pointer__alpha};
  TYPE_3__* out_qubit = &out_qubit_pointer;
  clock_t begin = clock();
  qcs_1q_not_gate(in_qubit, out_qubit);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(in_qubit, out_qubit);
}