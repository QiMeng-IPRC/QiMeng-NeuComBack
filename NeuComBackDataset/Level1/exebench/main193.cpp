#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int multi; int set94; unsigned char fin; unsigned char charset; } ;

/* Variables and functions */
extern  int allow_unify ; 
extern  TYPE_1__* iTable ; 
extern  TYPE_1__* iTableCache ; 
extern  int iTableCacheIndex ; 
extern  int* iTableCacheUsed ; 
extern "C" { unsigned char ItableLookup( unsigned char fin, int multi, int set94 );
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

void write_output(unsigned char fin, int multi, int set94, unsigned char returnv) {
  json output_json;

  output_json["allow_unify"] = allow_unify;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_1__ output_temp_6 = iTable[i5];
    json output_temp_7;

    output_temp_7["multi"] = output_temp_6.multi;

    output_temp_7["set94"] = output_temp_6.set94;

    output_temp_7["fin"] = output_temp_6.fin;

    output_temp_7["charset"] = output_temp_6.charset;
    output_temp_4.push_back(output_temp_7);
  }
  output_json["iTable"] = output_temp_4;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    TYPE_1__ output_temp_10 = iTableCache[i9];
    json output_temp_11;

    output_temp_11["multi"] = output_temp_10.multi;

    output_temp_11["set94"] = output_temp_10.set94;

    output_temp_11["fin"] = output_temp_10.fin;

    output_temp_11["charset"] = output_temp_10.charset;
    output_temp_8.push_back(output_temp_11);
  }
  output_json["iTableCache"] = output_temp_8;

  output_json["iTableCacheIndex"] = iTableCacheIndex;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = iTableCacheUsed[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["iTableCacheUsed"] = output_temp_12;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned char fin = input_json["fin"];
  int multi = input_json["multi"];
  int set94 = input_json["set94"];
  allow_unify = input_json["allow_unify"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["iTable"]) {
    int input_temp_1_inner__multi = elem["multi"];
    int input_temp_1_inner__set94 = elem["set94"];
    unsigned char input_temp_1_inner__fin = elem["fin"];
    unsigned char input_temp_1_inner__charset = elem["charset"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__multi, input_temp_1_inner__set94, input_temp_1_inner__fin, input_temp_1_inner__charset};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  iTable = &input_temp_1_vec[0];
  std::vector<TYPE_1__> input_temp_2_vec;
  for (auto& elem : input_json["iTableCache"]) {
    int input_temp_2_inner__multi = elem["multi"];
    int input_temp_2_inner__set94 = elem["set94"];
    unsigned char input_temp_2_inner__fin = elem["fin"];
    unsigned char input_temp_2_inner__charset = elem["charset"];
    TYPE_1__ input_temp_2_inner = {input_temp_2_inner__multi, input_temp_2_inner__set94, input_temp_2_inner__fin, input_temp_2_inner__charset};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  iTableCache = &input_temp_2_vec[0];
  iTableCacheIndex = input_json["iTableCacheIndex"];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["iTableCacheUsed"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  iTableCacheUsed = &input_temp_3_vec[0];
  clock_t begin = clock();
  unsigned char returnv = ItableLookup(fin, multi, set94);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(fin, multi, set94, returnv);
}