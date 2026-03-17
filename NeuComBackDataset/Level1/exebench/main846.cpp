#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct btrfs_super_block {int /*<<< orphan*/  chunk_root_level; } ;

/* Variables and functions */
extern "C" { void btrfs_set_super_chunk_root_level(struct btrfs_super_block *s, u8 val);
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

void write_output(struct btrfs_super_block* s, int val) {
  json output_json;
  struct btrfs_super_block output_temp_1 = *s;
  json output_temp_2;

  output_temp_2["chunk_root_level"] = output_temp_1.chunk_root_level;
  output_json["s"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int s_pointer__chunk_root_level = input_json["s"]["chunk_root_level"];
  struct btrfs_super_block s_pointer = {s_pointer__chunk_root_level};
  struct btrfs_super_block* s = &s_pointer;
  int val = input_json["val"];
  clock_t begin = clock();
  btrfs_set_super_chunk_root_level(s, val);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, val);
}