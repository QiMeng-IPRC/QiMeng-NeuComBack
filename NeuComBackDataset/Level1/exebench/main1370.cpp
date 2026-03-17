#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sip_msg {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ str ;

/* Variables and functions */
extern "C" { int xl_get_msg_buf(struct sip_msg *msg, str *res, str *hp, int hi);
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

void write_output(struct sip_msg* msg, TYPE_1__* res, TYPE_1__* hp, int hi, int returnv) {
  json output_json;
  struct sip_msg output_temp_2 = *msg;
  json output_temp_3;

  output_temp_3["len"] = output_temp_2.len;

  output_temp_3["buf"] = output_temp_2.buf;
  output_json["msg"] = output_temp_3;
  TYPE_1__ output_temp_4 = *res;
  json output_temp_5;

  output_temp_5["len"] = output_temp_4.len;

  output_temp_5["s"] = output_temp_4.s;
  output_json["res"] = output_temp_5;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    TYPE_1__ output_temp_8 = hp[i7];
    json output_temp_9;

    output_temp_9["len"] = output_temp_8.len;

    output_temp_9["s"] = output_temp_8.s;
    output_temp_6.push_back(output_temp_9);
  }
  output_json["hp"] = output_temp_6;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int msg_pointer__len = input_json["msg"]["len"];
  int msg_pointer__buf = input_json["msg"]["buf"];
  struct sip_msg msg_pointer = {msg_pointer__len, msg_pointer__buf};
  struct sip_msg* msg = &msg_pointer;
  int res_pointer__len = input_json["res"]["len"];
  int res_pointer__s = input_json["res"]["s"];
  TYPE_1__ res_pointer = {res_pointer__len, res_pointer__s};
  TYPE_1__* res = &res_pointer;
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["hp"]) {
    int input_temp_1_inner__len = elem["len"];
    int input_temp_1_inner__s = elem["s"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__len, input_temp_1_inner__s};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_1__* hp = &input_temp_1_vec[0];
  int hi = input_json["hi"];
  clock_t begin = clock();
  int returnv = xl_get_msg_buf(msg, res, hp, hi);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(msg, res, hp, hi, returnv);
}