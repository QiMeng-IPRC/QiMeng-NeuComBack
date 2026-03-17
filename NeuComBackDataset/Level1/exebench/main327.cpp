#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct mode_tree_data {int current; int line_size; int offset; int height; } ;

/* Variables and functions */
extern "C" { void mode_tree_down(struct mode_tree_data *mtd, int wrap);
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

void write_output(struct mode_tree_data* mtd, int wrap) {
  json output_json;
  struct mode_tree_data output_temp_1 = *mtd;
  json output_temp_2;

  output_temp_2["current"] = output_temp_1.current;

  output_temp_2["line_size"] = output_temp_1.line_size;

  output_temp_2["offset"] = output_temp_1.offset;

  output_temp_2["height"] = output_temp_1.height;
  output_json["mtd"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int mtd_pointer__current = input_json["mtd"]["current"];
  int mtd_pointer__line_size = input_json["mtd"]["line_size"];
  int mtd_pointer__offset = input_json["mtd"]["offset"];
  int mtd_pointer__height = input_json["mtd"]["height"];
  struct mode_tree_data mtd_pointer = {mtd_pointer__current, mtd_pointer__line_size, mtd_pointer__offset, mtd_pointer__height};
  struct mode_tree_data* mtd = &mtd_pointer;
  int wrap = input_json["wrap"];
  clock_t begin = clock();
  mode_tree_down(mtd, wrap);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(mtd, wrap);
}