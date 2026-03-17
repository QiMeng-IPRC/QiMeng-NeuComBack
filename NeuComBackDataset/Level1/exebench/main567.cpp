#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qdata ;
struct TYPE_2__ {size_t _tail; size_t _head; int /*<<< orphan*/ * _data; } ;

/* Variables and functions */
extern  TYPE_1__ que ; 
extern "C" { void queue_pop(qdata* _data);
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

void write_output(int* _data) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    int output_temp_5 = _data[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["_data"] = output_temp_3;
  json output_temp_6;

  output_temp_6["_tail"] = que._tail;

  output_temp_6["_head"] = que._head;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = que._data[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_temp_6["_data"] = output_temp_7;
  output_json["que"] = output_temp_6;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["_data"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* _data = &input_temp_1_vec[0];
  unsigned long int que___tail = input_json["que"]["_tail"];
  unsigned long int que___head = input_json["que"]["_head"];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["que"]["_data"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* que___data = &input_temp_2_vec[0];
  que = {que___tail, que___head, que___data};
  clock_t begin = clock();
  queue_pop(_data);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(_data);
}