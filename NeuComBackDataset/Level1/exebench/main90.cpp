#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct _icmLuBase {int /*<<< orphan*/  blackPoint; int /*<<< orphan*/  whitePoint; } ;
typedef  int /*<<< orphan*/  icmXYZNumber ;

/* Variables and functions */
extern "C" { void icmLuWh_bk_points( struct _icmLuBase *p, icmXYZNumber *wht, icmXYZNumber *blk );
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

void write_output(struct _icmLuBase* p, int* wht, int* blk) {
  json output_json;
  struct _icmLuBase output_temp_3 = *p;
  json output_temp_4;

  output_temp_4["blackPoint"] = output_temp_3.blackPoint;

  output_temp_4["whitePoint"] = output_temp_3.whitePoint;
  output_json["p"] = output_temp_4;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    int output_temp_7 = wht[i6];

    output_temp_5.push_back(output_temp_7);
  }
  output_json["wht"] = output_temp_5;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = blk[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["blk"] = output_temp_8;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__blackPoint = input_json["p"]["blackPoint"];
  int p_pointer__whitePoint = input_json["p"]["whitePoint"];
  struct _icmLuBase p_pointer = {p_pointer__blackPoint, p_pointer__whitePoint};
  struct _icmLuBase* p = &p_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["wht"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* wht = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["blk"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* blk = &input_temp_2_vec[0];
  clock_t begin = clock();
  icmLuWh_bk_points(p, wht, blk);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, wht, blk);
}