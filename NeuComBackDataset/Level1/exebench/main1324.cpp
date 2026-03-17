#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  size_t DISSDUMPTYPE ; 
extern  scalar_t__ EVOLVEWITHVPOT ; 
extern  size_t FAILFLOORDUDUMPTYPE ; 
extern  scalar_t__ TRACKVPOT ; 
extern  size_t VPOTDUMPTYPE ; 
extern  int* dnumcolumns ; 
extern "C" { void set_rdump_content_dnumcolumns_dnumversion(int *numcolumns, int *numversion);
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

void write_output(int* numcolumns, int* numversion) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = numcolumns[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["numcolumns"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = numversion[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["numversion"] = output_temp_7;

  output_json["DISSDUMPTYPE"] = DISSDUMPTYPE;

  output_json["EVOLVEWITHVPOT"] = EVOLVEWITHVPOT;

  output_json["FAILFLOORDUDUMPTYPE"] = FAILFLOORDUDUMPTYPE;

  output_json["TRACKVPOT"] = TRACKVPOT;

  output_json["VPOTDUMPTYPE"] = VPOTDUMPTYPE;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    int output_temp_12 = dnumcolumns[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["dnumcolumns"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["numcolumns"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* numcolumns = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["numversion"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* numversion = &input_temp_2_vec[0];
  DISSDUMPTYPE = input_json["DISSDUMPTYPE"];
  EVOLVEWITHVPOT = input_json["EVOLVEWITHVPOT"];
  FAILFLOORDUDUMPTYPE = input_json["FAILFLOORDUDUMPTYPE"];
  TRACKVPOT = input_json["TRACKVPOT"];
  VPOTDUMPTYPE = input_json["VPOTDUMPTYPE"];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["dnumcolumns"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  dnumcolumns = &input_temp_3_vec[0];
  clock_t begin = clock();
  set_rdump_content_dnumcolumns_dnumversion(numcolumns, numversion);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(numcolumns, numversion);
}