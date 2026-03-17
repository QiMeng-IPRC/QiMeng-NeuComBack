#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  refcnt; } ;
typedef  TYPE_1__ CcsToken_t ;
typedef  int /*<<< orphan*/  CcsScanInput_t ;

/* Variables and functions */
extern "C" { void CcsScanInput_TokenIncRef(CcsScanInput_t * self, CcsToken_t * token);
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

void write_output(int* self, TYPE_1__* token) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = self[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["self"] = output_temp_2;
  TYPE_1__ output_temp_5 = *token;
  json output_temp_6;

  output_temp_6["refcnt"] = output_temp_5.refcnt;
  output_json["token"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["self"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* self = &input_temp_1_vec[0];
  int token_pointer__refcnt = input_json["token"]["refcnt"];
  TYPE_1__ token_pointer = {token_pointer__refcnt};
  TYPE_1__* token = &token_pointer;
  clock_t begin = clock();
  CcsScanInput_TokenIncRef(self, token);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self, token);
}