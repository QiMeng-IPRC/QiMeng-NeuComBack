#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct qbuf {int dummy; } ;

/* Variables and functions */
extern "C" { void qbuf_swap(struct qbuf* a, struct qbuf* b);
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

void write_output(struct qbuf* a, struct qbuf* b) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct qbuf output_temp_5 = a[i4];
    json output_temp_6;

    output_temp_6["dummy"] = output_temp_5.dummy;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["a"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    struct qbuf output_temp_9 = b[i8];
    json output_temp_10;

    output_temp_10["dummy"] = output_temp_9.dummy;
    output_temp_7.push_back(output_temp_10);
  }
  output_json["b"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct qbuf> input_temp_1_vec;
  for (auto& elem : input_json["a"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct qbuf input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct qbuf* a = &input_temp_1_vec[0];
  std::vector<struct qbuf> input_temp_2_vec;
  for (auto& elem : input_json["b"]) {
    int input_temp_2_inner__dummy = elem["dummy"];
    struct qbuf input_temp_2_inner = {input_temp_2_inner__dummy};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  struct qbuf* b = &input_temp_2_vec[0];
  clock_t begin = clock();
  qbuf_swap(a, b);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, b);
}