#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ file_pos; scalar_t__ eof; scalar_t__ in_block_pos; scalar_t__ in_cluster_block; int /*<<< orphan*/  start_cluster; int /*<<< orphan*/  cluster; } ;
typedef  TYPE_1__ mfat_stream_t ;

/* Variables and functions */
extern "C" { void mfat_rewind_stream ( mfat_stream_t *p );
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

void write_output(TYPE_1__* p) {
  json output_json;
  TYPE_1__ output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["file_pos"] = output_temp_1.file_pos;

  output_temp_2["eof"] = output_temp_1.eof;

  output_temp_2["in_block_pos"] = output_temp_1.in_block_pos;

  output_temp_2["in_cluster_block"] = output_temp_1.in_cluster_block;

  output_temp_2["start_cluster"] = output_temp_1.start_cluster;

  output_temp_2["cluster"] = output_temp_1.cluster;
  output_json["p"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int p_pointer__file_pos = input_json["p"]["file_pos"];
  long int p_pointer__eof = input_json["p"]["eof"];
  long int p_pointer__in_block_pos = input_json["p"]["in_block_pos"];
  long int p_pointer__in_cluster_block = input_json["p"]["in_cluster_block"];
  int p_pointer__start_cluster = input_json["p"]["start_cluster"];
  int p_pointer__cluster = input_json["p"]["cluster"];
  TYPE_1__ p_pointer = {p_pointer__file_pos, p_pointer__eof, p_pointer__in_block_pos, p_pointer__in_cluster_block, p_pointer__start_cluster, p_pointer__cluster};
  TYPE_1__* p = &p_pointer;
  clock_t begin = clock();
  mfat_rewind_stream(p);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p);
}