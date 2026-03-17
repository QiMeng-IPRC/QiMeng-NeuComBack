#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ebx; unsigned int eax; } ;
typedef  TYPE_1__ context_t ;
struct TYPE_5__ {scalar_t__ egid; scalar_t__ gid; scalar_t__ euid; scalar_t__ uid; } ;

/* Variables and functions */
extern  size_t current_task ; 
extern  TYPE_2__* thread_table ; 
extern "C" { void syscall_query_ids (context_t *r);
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

void write_output(TYPE_1__* r) {
  json output_json;
  TYPE_1__ output_temp_2 = *r;
  json output_temp_3;

  output_temp_3["ebx"] = output_temp_2.ebx;

  output_temp_3["eax"] = output_temp_2.eax;
  output_json["r"] = output_temp_3;

  output_json["current_task"] = current_task;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_2__ output_temp_6 = thread_table[i5];
    json output_temp_7;

    output_temp_7["egid"] = output_temp_6.egid;

    output_temp_7["gid"] = output_temp_6.gid;

    output_temp_7["euid"] = output_temp_6.euid;

    output_temp_7["uid"] = output_temp_6.uid;
    output_temp_4.push_back(output_temp_7);
  }
  output_json["thread_table"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int r_pointer__ebx = input_json["r"]["ebx"];
  unsigned int r_pointer__eax = input_json["r"]["eax"];
  TYPE_1__ r_pointer = {r_pointer__ebx, r_pointer__eax};
  TYPE_1__* r = &r_pointer;
  current_task = input_json["current_task"];
  std::vector<TYPE_2__> input_temp_1_vec;
  for (auto& elem : input_json["thread_table"]) {
    long int input_temp_1_inner__egid = elem["egid"];
    long int input_temp_1_inner__gid = elem["gid"];
    long int input_temp_1_inner__euid = elem["euid"];
    long int input_temp_1_inner__uid = elem["uid"];
    TYPE_2__ input_temp_1_inner = {input_temp_1_inner__egid, input_temp_1_inner__gid, input_temp_1_inner__euid, input_temp_1_inner__uid};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  thread_table = &input_temp_1_vec[0];
  clock_t begin = clock();
  syscall_query_ids(r);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(r);
}