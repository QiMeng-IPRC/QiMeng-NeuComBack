#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct rbtree {int /*<<< orphan*/  free; int /*<<< orphan*/  alloc; } ;
typedef  int /*<<< orphan*/  rb_free_func_t ;
typedef  int /*<<< orphan*/  rb_alloc_func_t ;

/* Variables and functions */
extern "C" { void rb_set_allocator(struct rbtree *rb, rb_alloc_func_t alloc, rb_free_func_t free);
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

void write_output(struct rbtree* rb, int alloc, int free) {
  json output_json;
  struct rbtree output_temp_1 = *rb;
  json output_temp_2;

  output_temp_2["free"] = output_temp_1.free;

  output_temp_2["alloc"] = output_temp_1.alloc;
  output_json["rb"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rb_pointer__free = input_json["rb"]["free"];
  int rb_pointer__alloc = input_json["rb"]["alloc"];
  struct rbtree rb_pointer = {rb_pointer__free, rb_pointer__alloc};
  struct rbtree* rb = &rb_pointer;
  int alloc = input_json["alloc"];
  int free = input_json["free"];
  clock_t begin = clock();
  rb_set_allocator(rb, alloc, free);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rb, alloc, free);
}