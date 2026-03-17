#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct mdoc_node {int dummy; } ;
struct mdoc_meta {int dummy; } ;
struct html {int flags; } ;

/* Variables and functions */
extern "C" { void mdoc_pf_post(const struct mdoc_meta *meta, const struct mdoc_node *n, struct html *h);
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

void write_output(struct mdoc_meta* meta, struct mdoc_node* n, struct html* h) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct mdoc_meta output_temp_5 = meta[i4];
    json output_temp_6;

    output_temp_6["dummy"] = output_temp_5.dummy;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["meta"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    struct mdoc_node output_temp_9 = n[i8];
    json output_temp_10;

    output_temp_10["dummy"] = output_temp_9.dummy;
    output_temp_7.push_back(output_temp_10);
  }
  output_json["n"] = output_temp_7;
  struct html output_temp_11 = *h;
  json output_temp_12;

  output_temp_12["flags"] = output_temp_11.flags;
  output_json["h"] = output_temp_12;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct mdoc_meta> input_temp_1_vec;
  for (auto& elem : input_json["meta"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct mdoc_meta input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct mdoc_meta* meta = &input_temp_1_vec[0];
  std::vector<struct mdoc_node> input_temp_2_vec;
  for (auto& elem : input_json["n"]) {
    int input_temp_2_inner__dummy = elem["dummy"];
    struct mdoc_node input_temp_2_inner = {input_temp_2_inner__dummy};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  struct mdoc_node* n = &input_temp_2_vec[0];
  int h_pointer__flags = input_json["h"]["flags"];
  struct html h_pointer = {h_pointer__flags};
  struct html* h = &h_pointer;
  clock_t begin = clock();
  mdoc_pf_post(meta, n, h);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(meta, n, h);
}