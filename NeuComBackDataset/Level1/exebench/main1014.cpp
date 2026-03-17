#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcap_stat {int dummy; } ;
struct TYPE_4__ {struct pcap_stat stat; } ;
struct TYPE_5__ {TYPE_1__ md; } ;
typedef  TYPE_2__ pcap_t ;

/* Variables and functions */
extern "C" { int pcap_stats(pcap_t *p, struct pcap_stat *ps);
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

void write_output(TYPE_2__* p, struct pcap_stat* ps, int returnv) {
  json output_json;
  TYPE_2__ output_temp_2 = *p;
  json output_temp_3;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["dummy"] = output_temp_2.md.stat.dummy;
  output_temp_4["stat"] = output_temp_5;
  output_temp_3["md"] = output_temp_4;
  output_json["p"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    struct pcap_stat output_temp_8 = ps[i7];
    json output_temp_9;

    output_temp_9["dummy"] = output_temp_8.dummy;
    output_temp_6.push_back(output_temp_9);
  }
  output_json["ps"] = output_temp_6;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int p_pointer__md__stat__dummy = input_json["p"]["md"]["stat"]["dummy"];
  struct pcap_stat p_pointer__md__stat = {p_pointer__md__stat__dummy};
  TYPE_1__ p_pointer__md = {p_pointer__md__stat};
  TYPE_2__ p_pointer = {p_pointer__md};
  TYPE_2__* p = &p_pointer;
  std::vector<struct pcap_stat> input_temp_1_vec;
  for (auto& elem : input_json["ps"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct pcap_stat input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct pcap_stat* ps = &input_temp_1_vec[0];
  clock_t begin = clock();
  int returnv = pcap_stats(p, ps);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, ps, returnv);
}