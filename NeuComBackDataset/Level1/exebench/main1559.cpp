#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int uchar ;

/* Variables and functions */
extern  int T3CM ; 
extern  int /*<<< orphan*/  TF1 ; 
extern  int TH1 ; 
extern  int TH3 ; 
extern  int TL1 ; 
extern  int TL3 ; 
extern  int TR1 ; 
extern  int* port_handle ; 
extern "C" { void SetBaudCOM(int portnum, uchar new_baud);
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

void write_output(int portnum, int new_baud) {
  json output_json;

  output_json["T3CM"] = T3CM;

  output_json["TF1"] = TF1;

  output_json["TH1"] = TH1;

  output_json["TH3"] = TH3;

  output_json["TL1"] = TL1;

  output_json["TL3"] = TL3;

  output_json["TR1"] = TR1;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = port_handle[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["port_handle"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int portnum = input_json["portnum"];
  int new_baud = input_json["new_baud"];
  T3CM = input_json["T3CM"];
  TF1 = input_json["TF1"];
  TH1 = input_json["TH1"];
  TH3 = input_json["TH3"];
  TL1 = input_json["TL1"];
  TL3 = input_json["TL3"];
  TR1 = input_json["TR1"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["port_handle"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  port_handle = &input_temp_1_vec[0];
  clock_t begin = clock();
  SetBaudCOM(portnum, new_baud);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(portnum, new_baud);
}