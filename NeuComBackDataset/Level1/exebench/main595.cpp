#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ num; int /*<<< orphan*/  state; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  QE_SNUM_STATE_FREE ; 
extern  int qe_num_of_snum ; 
extern  TYPE_1__* snums ; 
extern "C" { void qe_put_snum(u8 snum);
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

void write_output(long int snum) {
  json output_json;

  output_json["QE_SNUM_STATE_FREE"] = QE_SNUM_STATE_FREE;

  output_json["qe_num_of_snum"] = qe_num_of_snum;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = snums[i3];
    json output_temp_5;

    output_temp_5["num"] = output_temp_4.num;

    output_temp_5["state"] = output_temp_4.state;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["snums"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int snum = input_json["snum"];
  QE_SNUM_STATE_FREE = input_json["QE_SNUM_STATE_FREE"];
  qe_num_of_snum = input_json["qe_num_of_snum"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["snums"]) {
    long int input_temp_1_inner__num = elem["num"];
    int input_temp_1_inner__state = elem["state"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__num, input_temp_1_inner__state};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  snums = &input_temp_1_vec[0];
  clock_t begin = clock();
  qe_put_snum(snum);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(snum);
}