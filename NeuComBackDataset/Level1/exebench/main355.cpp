#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dglInt32_t ;
struct TYPE_3__ {int iErrno; int Version; } ;
typedef  TYPE_1__ dglGraph_s ;

/* Variables and functions */
extern "C" { dglInt32_t dglNodeGet_Status(dglGraph_s * pGraph, dglInt32_t * pnNode);
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

void write_output(TYPE_1__* pGraph, int* pnNode, int returnv) {
  json output_json;
  TYPE_1__ output_temp_2 = *pGraph;
  json output_temp_3;

  output_temp_3["iErrno"] = output_temp_2.iErrno;

  output_temp_3["Version"] = output_temp_2.Version;
  output_json["pGraph"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    int output_temp_6 = pnNode[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["pnNode"] = output_temp_4;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pGraph_pointer__iErrno = input_json["pGraph"]["iErrno"];
  int pGraph_pointer__Version = input_json["pGraph"]["Version"];
  TYPE_1__ pGraph_pointer = {pGraph_pointer__iErrno, pGraph_pointer__Version};
  TYPE_1__* pGraph = &pGraph_pointer;
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["pnNode"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* pnNode = &input_temp_1_vec[0];
  clock_t begin = clock();
  int returnv = dglNodeGet_Status(pGraph, pnNode);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pGraph, pnNode, returnv);
}