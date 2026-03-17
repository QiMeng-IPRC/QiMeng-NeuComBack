#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct buffer {size_t reserved; scalar_t__ data; } ;

/* Variables and functions */
extern  scalar_t__ realloc (scalar_t__,size_t) ; 
extern "C" { int buffer_grow(struct buffer* self, size_t new_size);
 }long int realloc__bench (long int b, unsigned long int d) {
	long int returnv;
	long int temp_variable = 45;
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

void write_output(struct buffer* self, unsigned long int new_size, int returnv) {
  json output_json;
  struct buffer output_temp_1 = *self;
  json output_temp_2;

  output_temp_2["reserved"] = output_temp_1.reserved;

  output_temp_2["data"] = output_temp_1.data;
  output_json["self"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int self_pointer__reserved = input_json["self"]["reserved"];
  long int self_pointer__data = input_json["self"]["data"];
  struct buffer self_pointer = {self_pointer__reserved, self_pointer__data};
  struct buffer* self = &self_pointer;
  unsigned long int new_size = input_json["new_size"];
  clock_t begin = clock();
  int returnv = buffer_grow(self, new_size);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self, new_size, returnv);
}