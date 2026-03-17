#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* test_name_; int /*<<< orphan*/ * test_clnup_; int /*<<< orphan*/  test_func_; int /*<<< orphan*/ * test_setup_; } ;

/* Variables and functions */
extern  size_t CURR_TEST_ ; 
extern  TYPE_1__* TESTS_ ; 
extern  int /*<<< orphan*/ * test_clnup_test_case ; 
extern  int /*<<< orphan*/  test_func_fail_test_test_false ; 
extern  int /*<<< orphan*/  test_func_fail_test_test_true ; 
extern  int /*<<< orphan*/  test_func_pass_test ; 
extern  int /*<<< orphan*/  test_func_test_case ; 
extern  int /*<<< orphan*/ * test_setup_test_case ; 
extern "C" { void SetupTests(void);
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

void write_output() {
  json output_json;

  output_json["CURR_TEST_"] = CURR_TEST_;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    TYPE_1__ output_temp_8 = TESTS_[i7];
    json output_temp_9;

    output_temp_9["test_name_"] = output_temp_8.test_name_;
    std::vector<json> output_temp_10;
    for (unsigned int i11 = 0; i11 < 32; i11++) {
      int output_temp_12 = output_temp_8.test_clnup_[i11];

      output_temp_10.push_back(output_temp_12);
    }
    output_temp_9["test_clnup_"] = output_temp_10;

    output_temp_9["test_func_"] = output_temp_8.test_func_;
    std::vector<json> output_temp_13;
    for (unsigned int i14 = 0; i14 < 32; i14++) {
      int output_temp_15 = output_temp_8.test_setup_[i14];

      output_temp_13.push_back(output_temp_15);
    }
    output_temp_9["test_setup_"] = output_temp_13;
    output_temp_6.push_back(output_temp_9);
  }
  output_json["TESTS_"] = output_temp_6;
  std::vector<json> output_temp_16;
  for (unsigned int i17 = 0; i17 < 32; i17++) {
    int output_temp_18 = test_clnup_test_case[i17];

    output_temp_16.push_back(output_temp_18);
  }
  output_json["test_clnup_test_case"] = output_temp_16;

  output_json["test_func_fail_test_test_false"] = test_func_fail_test_test_false;

  output_json["test_func_fail_test_test_true"] = test_func_fail_test_test_true;

  output_json["test_func_pass_test"] = test_func_pass_test;

  output_json["test_func_test_case"] = test_func_test_case;
  std::vector<json> output_temp_19;
  for (unsigned int i20 = 0; i20 < 32; i20++) {
    int output_temp_21 = test_setup_test_case[i20];

    output_temp_19.push_back(output_temp_21);
  }
  output_json["test_setup_test_case"] = output_temp_19;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  CURR_TEST_ = input_json["CURR_TEST_"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["TESTS_"]) {
    char* input_temp_1_inner__test_name_ = strdup(elem["test_name_"].get<std::string>().c_str());
    std::vector<int> input_temp_2_vec;
    for (auto& elem : elem["test_clnup_"]) {
      int input_temp_2_inner = elem;
      input_temp_2_vec.push_back(input_temp_2_inner);
    }
    int* input_temp_1_inner__test_clnup_ = &input_temp_2_vec[0];
    int input_temp_1_inner__test_func_ = elem["test_func_"];
    std::vector<int> input_temp_3_vec;
    for (auto& elem : elem["test_setup_"]) {
      int input_temp_3_inner = elem;
      input_temp_3_vec.push_back(input_temp_3_inner);
    }
    int* input_temp_1_inner__test_setup_ = &input_temp_3_vec[0];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__test_name_, input_temp_1_inner__test_clnup_, input_temp_1_inner__test_func_, input_temp_1_inner__test_setup_};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TESTS_ = &input_temp_1_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["test_clnup_test_case"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  test_clnup_test_case = &input_temp_4_vec[0];
  test_func_fail_test_test_false = input_json["test_func_fail_test_test_false"];
  test_func_fail_test_test_true = input_json["test_func_fail_test_test_true"];
  test_func_pass_test = input_json["test_func_pass_test"];
  test_func_test_case = input_json["test_func_test_case"];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["test_setup_test_case"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  test_setup_test_case = &input_temp_5_vec[0];
  clock_t begin = clock();
  SetupTests();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}