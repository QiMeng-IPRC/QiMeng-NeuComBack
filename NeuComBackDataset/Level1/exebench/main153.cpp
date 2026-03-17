#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ netadr_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  NA_IP ; 
extern "C" { void SockadrToNetadr (struct sockaddr *s, netadr_t *a);
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

void write_output(struct sockaddr* s, TYPE_2__* a) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct sockaddr output_temp_4 = s[i3];
    json output_temp_5;

    output_temp_5["dummy"] = output_temp_4.dummy;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["s"] = output_temp_2;
  TYPE_2__ output_temp_6 = *a;
  json output_temp_7;

  output_temp_7["port"] = output_temp_6.port;

  output_temp_7["ip"] = output_temp_6.ip;

  output_temp_7["type"] = output_temp_6.type;
  output_json["a"] = output_temp_7;

  output_json["NA_IP"] = NA_IP;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct sockaddr> input_temp_1_vec;
  for (auto& elem : input_json["s"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct sockaddr input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct sockaddr* s = &input_temp_1_vec[0];
  int a_pointer__port = input_json["a"]["port"];
  int a_pointer__ip = input_json["a"]["ip"];
  int a_pointer__type = input_json["a"]["type"];
  TYPE_2__ a_pointer = {a_pointer__port, a_pointer__ip, a_pointer__type};
  TYPE_2__* a = &a_pointer;
  NA_IP = input_json["NA_IP"];
  clock_t begin = clock();
  SockadrToNetadr(s, a);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s, a);
}