#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* aFile; } ;
struct TYPE_3__ {int sz; scalar_t__ nRef; scalar_t__ a; scalar_t__ zFilename; } ;

/* Variables and functions */
extern  TYPE_2__ g ; 
extern "C" { void formatVfs(void);
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
  json output_temp_2;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    TYPE_1__ output_temp_5 = g.aFile[i4];
    json output_temp_6;

    output_temp_6["sz"] = output_temp_5.sz;

    output_temp_6["nRef"] = output_temp_5.nRef;

    output_temp_6["a"] = output_temp_5.a;

    output_temp_6["zFilename"] = output_temp_5.zFilename;
    output_temp_3.push_back(output_temp_6);
  }
  output_temp_2["aFile"] = output_temp_3;
  output_json["g"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["g"]["aFile"]) {
    int input_temp_1_inner__sz = elem["sz"];
    long int input_temp_1_inner__nRef = elem["nRef"];
    long int input_temp_1_inner__a = elem["a"];
    long int input_temp_1_inner__zFilename = elem["zFilename"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__sz, input_temp_1_inner__nRef, input_temp_1_inner__a, input_temp_1_inner__zFilename};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* g__aFile = &input_temp_1_vec[0];
  g = {g__aFile};
  clock_t begin = clock();
  formatVfs();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}