#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct connection_domain {int end; int begin; } ;

/* Variables and functions */
extern "C" { void rnn_set_connection ( int size, struct connection_domain *connection, const int *has_connection);
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

void write_output(int size, struct connection_domain* connection, int* has_connection) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct connection_domain output_temp_5 = connection[i4];
    json output_temp_6;

    output_temp_6["end"] = output_temp_5.end;

    output_temp_6["begin"] = output_temp_5.begin;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["connection"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    int output_temp_9 = has_connection[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["has_connection"] = output_temp_7;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int size = input_json["size"];
  std::vector<struct connection_domain> input_temp_1_vec;
  for (auto& elem : input_json["connection"]) {
    int input_temp_1_inner__end = elem["end"];
    int input_temp_1_inner__begin = elem["begin"];
    struct connection_domain input_temp_1_inner = {input_temp_1_inner__end, input_temp_1_inner__begin};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct connection_domain* connection = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["has_connection"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* has_connection = &input_temp_2_vec[0];
  clock_t begin = clock();
  rnn_set_connection(size, connection, has_connection);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(size, connection, has_connection);
}