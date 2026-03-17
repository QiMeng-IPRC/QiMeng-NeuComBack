#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* text; int http_size; } ;

/* Variables and functions */
extern  TYPE_1__* http_r ; 
extern  scalar_t__ http_resp_cout ; 
extern  scalar_t__ resp_index ; 
extern "C" { void set_http_cb(char *buf, int size);
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

void write_output(char* buf, int size) {
  json output_json;

  output_json["buf"] = buf;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    TYPE_1__ output_temp_4 = http_r[i3];
    json output_temp_5;

    output_temp_5["text"] = output_temp_4.text;

    output_temp_5["http_size"] = output_temp_4.http_size;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["http_r"] = output_temp_2;

  output_json["http_resp_cout"] = http_resp_cout;

  output_json["resp_index"] = resp_index;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* buf = strdup(input_json["buf"].get<std::string>().c_str());
  int size = input_json["size"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["http_r"]) {
    char* input_temp_1_inner__text = strdup(elem["text"].get<std::string>().c_str());
    int input_temp_1_inner__http_size = elem["http_size"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__text, input_temp_1_inner__http_size};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  http_r = &input_temp_1_vec[0];
  http_resp_cout = input_json["http_resp_cout"];
  resp_index = input_json["resp_index"];
  clock_t begin = clock();
  set_http_cb(buf, size);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(buf, size);
}