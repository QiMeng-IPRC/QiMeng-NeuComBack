#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int flags; } ;

/* Variables and functions */
extern "C" { int clear_extent_buffer_uptodate(struct extent_io_tree *tree, struct extent_buffer *eb);
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

void write_output(struct extent_io_tree* tree, struct extent_buffer* eb, int returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct extent_io_tree output_temp_4 = tree[i3];
    json output_temp_5;

    output_temp_5["dummy"] = output_temp_4.dummy;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["tree"] = output_temp_2;
  struct extent_buffer output_temp_6 = *eb;
  json output_temp_7;

  output_temp_7["flags"] = output_temp_6.flags;
  output_json["eb"] = output_temp_7;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct extent_io_tree> input_temp_1_vec;
  for (auto& elem : input_json["tree"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct extent_io_tree input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct extent_io_tree* tree = &input_temp_1_vec[0];
  int eb_pointer__flags = input_json["eb"]["flags"];
  struct extent_buffer eb_pointer = {eb_pointer__flags};
  struct extent_buffer* eb = &eb_pointer;
  clock_t begin = clock();
  int returnv = clear_extent_buffer_uptodate(tree, eb);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tree, eb, returnv);
}