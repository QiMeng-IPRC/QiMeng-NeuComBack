#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct of_geom {int dummy; } ;
typedef  int /*<<< orphan*/  FTYPE ;

/* Variables and functions */
extern  int PRIMECOORDS ; 
extern  int WHICHVEL ; 
extern "C" { int init_atmosphere(int *whichvel, int*whichcoord,int i, int j, int k, FTYPE *pr);
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

void write_output(int* whichvel, int* whichcoord, int i, int j, int k, int* pr, int returnv) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = whichvel[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["whichvel"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = whichcoord[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["whichcoord"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = pr[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["pr"] = output_temp_10;

  output_json["PRIMECOORDS"] = PRIMECOORDS;

  output_json["WHICHVEL"] = WHICHVEL;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["whichvel"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* whichvel = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["whichcoord"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* whichcoord = &input_temp_2_vec[0];
  int i = input_json["i"];
  int j = input_json["j"];
  int k = input_json["k"];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["pr"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* pr = &input_temp_3_vec[0];
  PRIMECOORDS = input_json["PRIMECOORDS"];
  WHICHVEL = input_json["WHICHVEL"];
  clock_t begin = clock();
  int returnv = init_atmosphere(whichvel, whichcoord, i, j, k, pr);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(whichvel, whichcoord, i, j, k, pr, returnv);
}