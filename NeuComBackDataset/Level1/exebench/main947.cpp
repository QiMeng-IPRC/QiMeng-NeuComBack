#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int Bad ; 
extern  int Bitx ; 
extern  long Rune1 ; 
extern  int Rune2 ; 
extern  int Rune3 ; 
extern  int Rune4 ; 
extern  int T2 ; 
extern  int T3 ; 
extern  int T4 ; 
extern  int T5 ; 
extern  int Testx ; 
extern  int Tx ; 
extern "C" { int chartorune(int *rune, char *str);
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

void write_output(int* rune, char* str, int returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = rune[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["rune"] = output_temp_2;

  output_json["str"] = str;

  output_json["Bad"] = Bad;

  output_json["Bitx"] = Bitx;

  output_json["Rune1"] = Rune1;

  output_json["Rune2"] = Rune2;

  output_json["Rune3"] = Rune3;

  output_json["Rune4"] = Rune4;

  output_json["T2"] = T2;

  output_json["T3"] = T3;

  output_json["T4"] = T4;

  output_json["T5"] = T5;

  output_json["Testx"] = Testx;

  output_json["Tx"] = Tx;

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
  for (auto& elem : input_json["rune"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* rune = &input_temp_1_vec[0];
  char* str = strdup(input_json["str"].get<std::string>().c_str());
  Bad = input_json["Bad"];
  Bitx = input_json["Bitx"];
  Rune1 = input_json["Rune1"];
  Rune2 = input_json["Rune2"];
  Rune3 = input_json["Rune3"];
  Rune4 = input_json["Rune4"];
  T2 = input_json["T2"];
  T3 = input_json["T3"];
  T4 = input_json["T4"];
  T5 = input_json["T5"];
  Testx = input_json["Testx"];
  Tx = input_json["Tx"];
  clock_t begin = clock();
  int returnv = chartorune(rune, str);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rune, str, returnv);
}