#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct record {int phone; } ;

/* Variables and functions */
extern  int REC_NOT_FOUND_ERR ; 
extern  int SUCCESS ; 
extern  struct record* bArray ; 
extern  int rCnt ; 
extern "C" { int searchRec(int phone,struct record *prec);
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

void write_output(int phone, struct record* prec, int returnv) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct record output_temp_5 = prec[i4];
    json output_temp_6;

    output_temp_6["phone"] = output_temp_5.phone;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["prec"] = output_temp_3;

  output_json["REC_NOT_FOUND_ERR"] = REC_NOT_FOUND_ERR;

  output_json["SUCCESS"] = SUCCESS;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    struct record output_temp_9 = bArray[i8];
    json output_temp_10;

    output_temp_10["phone"] = output_temp_9.phone;
    output_temp_7.push_back(output_temp_10);
  }
  output_json["bArray"] = output_temp_7;

  output_json["rCnt"] = rCnt;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int phone = input_json["phone"];
  std::vector<struct record> input_temp_1_vec;
  for (auto& elem : input_json["prec"]) {
    int input_temp_1_inner__phone = elem["phone"];
    struct record input_temp_1_inner = {input_temp_1_inner__phone};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct record* prec = &input_temp_1_vec[0];
  REC_NOT_FOUND_ERR = input_json["REC_NOT_FOUND_ERR"];
  SUCCESS = input_json["SUCCESS"];
  std::vector<struct record> input_temp_2_vec;
  for (auto& elem : input_json["bArray"]) {
    int input_temp_2_inner__phone = elem["phone"];
    struct record input_temp_2_inner = {input_temp_2_inner__phone};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  bArray = &input_temp_2_vec[0];
  rCnt = input_json["rCnt"];
  clock_t begin = clock();
  int returnv = searchRec(phone, prec);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(phone, prec, returnv);
}