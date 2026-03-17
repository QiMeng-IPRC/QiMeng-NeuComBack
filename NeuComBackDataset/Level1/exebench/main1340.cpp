#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int claw_num ;
typedef  int /*<<< orphan*/  claw_error ;

/* Variables and functions */
extern  int /*<<< orphan*/  CLAW_ERR_NONE ; 
extern "C" { claw_error claw_maths_itl(claw_num valx, claw_num valy, claw_num* res);
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

void write_output(int valx, int valy, int* res, int returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = res[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["res"] = output_temp_2;

  output_json["CLAW_ERR_NONE"] = CLAW_ERR_NONE;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int valx = input_json["valx"];
  int valy = input_json["valy"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["res"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* res = &input_temp_1_vec[0];
  CLAW_ERR_NONE = input_json["CLAW_ERR_NONE"];
  clock_t begin = clock();
  int returnv = claw_maths_itl(valx, valy, res);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(valx, valy, res, returnv);
}