#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int capacity; int size; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ members; } ;
typedef  TYPE_2__ int_array ;

/* Variables and functions */
extern  int /*<<< orphan*/  malloc (int) ; 
extern  int /*<<< orphan*/  realloc (int /*<<< orphan*/ ,int) ; 
extern "C" { void int_array_double_capacity_if_full(int_array *vector);
 }int realloc__bench (int d, int e) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
}

int malloc__bench (int b) {
	int returnv;
	int temp_variable = 86;
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

void write_output(TYPE_2__* vector) {
  json output_json;
  TYPE_2__ output_temp_1 = *vector;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["capacity"] = output_temp_1.members.capacity;

  output_temp_3["size"] = output_temp_1.members.size;

  output_temp_3["data"] = output_temp_1.members.data;
  output_temp_2["members"] = output_temp_3;
  output_json["vector"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int vector_pointer__members__capacity = input_json["vector"]["members"]["capacity"];
  int vector_pointer__members__size = input_json["vector"]["members"]["size"];
  int vector_pointer__members__data = input_json["vector"]["members"]["data"];
  TYPE_1__ vector_pointer__members = {vector_pointer__members__capacity, vector_pointer__members__size, vector_pointer__members__data};
  TYPE_2__ vector_pointer = {vector_pointer__members};
  TYPE_2__* vector = &vector_pointer;
  clock_t begin = clock();
  int_array_double_capacity_if_full(vector);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(vector);
}