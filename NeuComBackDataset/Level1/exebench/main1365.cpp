#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char const value; int codepoint; int next; scalar_t__ more; } ;

/* Variables and functions */
extern  TYPE_1__* entities ; 
extern "C" { int html_named_entity_decode(const char* s, size_t len, size_t* consumed);
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

void write_output(char* s, unsigned long int len, unsigned long int* consumed, int returnv) {
  json output_json;

  output_json["s"] = s;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    unsigned long int output_temp_5 = consumed[i4];

    output_temp_3.push_back(output_temp_5);
  }
  output_json["consumed"] = output_temp_3;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    TYPE_1__ output_temp_8 = entities[i7];
    json output_temp_9;

    output_temp_9["value"] = output_temp_8.value;

    output_temp_9["codepoint"] = output_temp_8.codepoint;

    output_temp_9["next"] = output_temp_8.next;

    output_temp_9["more"] = output_temp_8.more;
    output_temp_6.push_back(output_temp_9);
  }
  output_json["entities"] = output_temp_6;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* s = strdup(input_json["s"].get<std::string>().c_str());
  unsigned long int len = input_json["len"];
  std::vector<unsigned long int> input_temp_1_vec;
  for (auto& elem : input_json["consumed"]) {
    unsigned long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned long int* consumed = &input_temp_1_vec[0];
  std::vector<TYPE_1__> input_temp_2_vec;
  for (auto& elem : input_json["entities"]) {
    char input_temp_2_inner__value = elem["value"].get<char>();
    int input_temp_2_inner__codepoint = elem["codepoint"];
    int input_temp_2_inner__next = elem["next"];
    long int input_temp_2_inner__more = elem["more"];
    TYPE_1__ input_temp_2_inner = {input_temp_2_inner__value, input_temp_2_inner__codepoint, input_temp_2_inner__next, input_temp_2_inner__more};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  entities = &input_temp_2_vec[0];
  clock_t begin = clock();
  int returnv = html_named_entity_decode(s, len, consumed);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, len, consumed, returnv);
}