#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t thread_id ;
struct TYPE_2__ {size_t prev; size_t next; int state; } ;

/* Variables and functions */
extern  TYPE_1__* thread_table ; 
extern "C" { void add_to_ready_queue (thread_id t);
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

void write_output(unsigned long int t) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = thread_table[i3];
    json output_temp_5;

    output_temp_5["prev"] = output_temp_4.prev;

    output_temp_5["next"] = output_temp_4.next;

    output_temp_5["state"] = output_temp_4.state;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["thread_table"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int t = input_json["t"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["thread_table"]) {
    unsigned long int input_temp_1_inner__prev = elem["prev"];
    unsigned long int input_temp_1_inner__next = elem["next"];
    int input_temp_1_inner__state = elem["state"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__prev, input_temp_1_inner__next, input_temp_1_inner__state};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  thread_table = &input_temp_1_vec[0];
  clock_t begin = clock();
  add_to_ready_queue(t);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(t);
}