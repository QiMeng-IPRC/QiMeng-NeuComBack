#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int session_tickets; } ;
typedef  TYPE_1__ mbedtls_ssl_config ;

/* Variables and functions */
extern "C" { void mbedtls_ssl_conf_session_tickets( mbedtls_ssl_config *conf, int use_tickets );
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

void write_output(TYPE_1__* conf, int use_tickets) {
  json output_json;
  TYPE_1__ output_temp_1 = *conf;
  json output_temp_2;

  output_temp_2["session_tickets"] = output_temp_1.session_tickets;
  output_json["conf"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int conf_pointer__session_tickets = input_json["conf"]["session_tickets"];
  TYPE_1__ conf_pointer = {conf_pointer__session_tickets};
  TYPE_1__* conf = &conf_pointer;
  int use_tickets = input_json["use_tickets"];
  clock_t begin = clock();
  mbedtls_ssl_conf_session_tickets(conf, use_tickets);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(conf, use_tickets);
}