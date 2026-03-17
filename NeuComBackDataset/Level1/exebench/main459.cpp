#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int opCode ;

/* Variables and functions */
extern  int* codes ; 
extern  size_t highLoc ; 
extern  size_t loc ; 
extern  int /*<<< orphan*/  memcpy (int*,int*,int) ; 
extern "C" { void emitJmp( opCode op, int arg1, int arg2, int arg3, int arg4 );
 }int memcpy__bench (int * b, int * d, int e) {
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

void write_output(int op, int arg1, int arg2, int arg3, int arg4) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    int output_temp_4 = codes[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["codes"] = output_temp_2;

  output_json["highLoc"] = highLoc;

  output_json["loc"] = loc;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int op = input_json["op"];
  int arg1 = input_json["arg1"];
  int arg2 = input_json["arg2"];
  int arg3 = input_json["arg3"];
  int arg4 = input_json["arg4"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["codes"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  codes = &input_temp_1_vec[0];
  highLoc = input_json["highLoc"];
  loc = input_json["loc"];
  clock_t begin = clock();
  emitJmp(op, arg1, arg2, arg3, arg4);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(op, arg1, arg2, arg3, arg4);
}