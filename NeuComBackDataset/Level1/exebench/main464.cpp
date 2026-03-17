#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ stream; scalar_t__ stream_end; int eof; } ;
typedef  TYPE_1__ vorb ;
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
extern  int /*<<< orphan*/  memcpy (int /*<<< orphan*/ *,scalar_t__,int) ; 
extern "C" { int getn(vorb *z, uint8 *data, int n);
 }int memcpy__bench (int * c, long int d, int n) {
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

void write_output(TYPE_1__* z, int* data, int n, int returnv) {
  json output_json;
  TYPE_1__ output_temp_2 = *z;
  json output_temp_3;

  output_temp_3["stream"] = output_temp_2.stream;

  output_temp_3["stream_end"] = output_temp_2.stream_end;

  output_temp_3["eof"] = output_temp_2.eof;
  output_json["z"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = data[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["data"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int z_pointer__stream = input_json["z"]["stream"];
  long int z_pointer__stream_end = input_json["z"]["stream_end"];
  int z_pointer__eof = input_json["z"]["eof"];
  TYPE_1__ z_pointer = {z_pointer__stream, z_pointer__stream_end, z_pointer__eof};
  TYPE_1__* z = &z_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["data"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* data = &input_temp_1_vec[0];
  int n = input_json["n"];
  clock_t begin = clock();
  int returnv = getn(z, data, n);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(z, data, n, returnv);
}