#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_status ;

/* Variables and functions */
extern  int /*<<< orphan*/  LDNS_STATUS_DDD_OVERFLOW ; 
extern  int /*<<< orphan*/  LDNS_STATUS_EMPTY_LABEL ; 
extern  int /*<<< orphan*/  LDNS_STATUS_OK ; 
extern "C" { ldns_status ldns_octet(char *word, size_t *length);
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

void write_output(char* word, unsigned long int* length, int returnv) {
  json output_json;

  output_json["word"] = word;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    unsigned long int output_temp_4 = length[i3];

    output_temp_2.push_back(output_temp_4);
  }
  output_json["length"] = output_temp_2;

  output_json["LDNS_STATUS_DDD_OVERFLOW"] = LDNS_STATUS_DDD_OVERFLOW;

  output_json["LDNS_STATUS_EMPTY_LABEL"] = LDNS_STATUS_EMPTY_LABEL;

  output_json["LDNS_STATUS_OK"] = LDNS_STATUS_OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* word = strdup(input_json["word"].get<std::string>().c_str());
  std::vector<unsigned long int> input_temp_1_vec;
  for (auto& elem : input_json["length"]) {
    unsigned long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  unsigned long int* length = &input_temp_1_vec[0];
  LDNS_STATUS_DDD_OVERFLOW = input_json["LDNS_STATUS_DDD_OVERFLOW"];
  LDNS_STATUS_EMPTY_LABEL = input_json["LDNS_STATUS_EMPTY_LABEL"];
  LDNS_STATUS_OK = input_json["LDNS_STATUS_OK"];
  clock_t begin = clock();
  int returnv = ldns_octet(word, length);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(word, length, returnv);
}