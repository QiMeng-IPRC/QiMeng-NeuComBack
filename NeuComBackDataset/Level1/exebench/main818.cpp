#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__* CosTable2 ; 
extern  double ObjPX ; 
extern  int ObjPX1 ; 
extern  int ObjPX2 ; 
extern  double ObjPY ; 
extern  double ObjPY1 ; 
extern  int ObjPY2 ; 
extern  double ObjPZ ; 
extern  double ObjPZ1 ; 
extern  int ObjPZ2 ; 
extern  int Op02AAS ; 
extern  int Op02AZS ; 
extern  double Op02FX ; 
extern  double Op02FY ; 
extern  double Op02FZ ; 
extern  int Op02LES ; 
extern  int Op02LFE ; 
extern  short Op06H ; 
extern  int Op06S ; 
extern  int Op06V ; 
extern  double Op06X ; 
extern  double Op06Y ; 
extern  double Op06Z ; 
extern  scalar_t__* SinTable2 ; 
extern  size_t tanval2 ; 
extern "C" { void DSPOp06();
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
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    long int output_temp_5 = CosTable2[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["CosTable2"] = output_temp_3;

  output_json["ObjPX"] = ObjPX;

  output_json["ObjPX1"] = ObjPX1;

  output_json["ObjPX2"] = ObjPX2;

  output_json["ObjPY"] = ObjPY;

  output_json["ObjPY1"] = ObjPY1;

  output_json["ObjPY2"] = ObjPY2;

  output_json["ObjPZ"] = ObjPZ;

  output_json["ObjPZ1"] = ObjPZ1;

  output_json["ObjPZ2"] = ObjPZ2;

  output_json["Op02AAS"] = Op02AAS;

  output_json["Op02AZS"] = Op02AZS;

  output_json["Op02FX"] = Op02FX;

  output_json["Op02FY"] = Op02FY;

  output_json["Op02FZ"] = Op02FZ;

  output_json["Op02LES"] = Op02LES;

  output_json["Op02LFE"] = Op02LFE;

  output_json["Op06H"] = Op06H;

  output_json["Op06S"] = Op06S;

  output_json["Op06V"] = Op06V;

  output_json["Op06X"] = Op06X;

  output_json["Op06Y"] = Op06Y;

  output_json["Op06Z"] = Op06Z;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    long int output_temp_8 = SinTable2[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["SinTable2"] = output_temp_6;

  output_json["tanval2"] = tanval2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["CosTable2"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  CosTable2 = &input_temp_1_vec[0];
  ObjPX = input_json["ObjPX"];
  ObjPX1 = input_json["ObjPX1"];
  ObjPX2 = input_json["ObjPX2"];
  ObjPY = input_json["ObjPY"];
  ObjPY1 = input_json["ObjPY1"];
  ObjPY2 = input_json["ObjPY2"];
  ObjPZ = input_json["ObjPZ"];
  ObjPZ1 = input_json["ObjPZ1"];
  ObjPZ2 = input_json["ObjPZ2"];
  Op02AAS = input_json["Op02AAS"];
  Op02AZS = input_json["Op02AZS"];
  Op02FX = input_json["Op02FX"];
  Op02FY = input_json["Op02FY"];
  Op02FZ = input_json["Op02FZ"];
  Op02LES = input_json["Op02LES"];
  Op02LFE = input_json["Op02LFE"];
  Op06H = input_json["Op06H"];
  Op06S = input_json["Op06S"];
  Op06V = input_json["Op06V"];
  Op06X = input_json["Op06X"];
  Op06Y = input_json["Op06Y"];
  Op06Z = input_json["Op06Z"];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["SinTable2"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  SinTable2 = &input_temp_2_vec[0];
  tanval2 = input_json["tanval2"];
  clock_t begin = clock();
  DSPOp06();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}