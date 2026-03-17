#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct __user_cap_header_struct {int version; scalar_t__ pid; } ;
struct __user_cap_data_struct {unsigned long effective; unsigned long inheritable; unsigned long permitted; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  capget (struct __user_cap_header_struct*,struct __user_cap_data_struct*) ; 
extern  scalar_t__* clear1 ; 
extern  scalar_t__* clear2 ; 
extern "C" { void raise_cap(unsigned long *ts);
 }int capget (struct __user_cap_header_struct * b, struct __user_cap_data_struct * d) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
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

void write_output(unsigned long int* ts) {
  json output_json;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    unsigned long int output_temp_6 = ts[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["ts"] = output_temp_4;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    long int output_temp_9 = clear1[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["clear1"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    long int output_temp_12 = clear2[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["clear2"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<unsigned long int> input_temp_1_vec;
  for (auto& elem : input_json["ts"]) {
    unsigned long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned long int* ts = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["clear1"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  clear1 = &input_temp_2_vec[0];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["clear2"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  clear2 = &input_temp_3_vec[0];
  clock_t begin = clock();
  raise_cap(ts);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ts);
}