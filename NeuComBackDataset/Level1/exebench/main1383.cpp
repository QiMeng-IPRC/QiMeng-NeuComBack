#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct runsummary {int dummy; } ;
struct suitereport {struct runsummary summary; } ;

/* Variables and functions */
extern "C" { void suitereport_add_summary(struct suitereport *self, const struct runsummary *summary);
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

void write_output(struct suitereport* self, struct runsummary* summary) {
  json output_json;
  struct suitereport output_temp_2 = *self;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["dummy"] = output_temp_2.summary.dummy;
  output_temp_3["summary"] = output_temp_4;
  output_json["self"] = output_temp_3;
  std::vector<json> output_temp_5;
  for (unsigned int i6 = 0; i6 < 32; i6++) {
    struct runsummary output_temp_7 = summary[i6];
    json output_temp_8;

    output_temp_8["dummy"] = output_temp_7.dummy;
    output_temp_5.push_back(output_temp_8);
  }
  output_json["summary"] = output_temp_5;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int self_pointer__summary__dummy = input_json["self"]["summary"]["dummy"];
  struct runsummary self_pointer__summary = {self_pointer__summary__dummy};
  struct suitereport self_pointer = {self_pointer__summary};
  struct suitereport* self = &self_pointer;
  std::vector<struct runsummary> input_temp_1_vec;
  for (auto& elem : input_json["summary"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct runsummary input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct runsummary* summary = &input_temp_1_vec[0];
  clock_t begin = clock();
  suitereport_add_summary(self, summary);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(self, summary);
}