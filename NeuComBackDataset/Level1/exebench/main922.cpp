#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int in_init; int /*<<< orphan*/  request_state; } ;
struct TYPE_5__ {TYPE_1__ statem; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
extern  int /*<<< orphan*/  TLS_ST_SW_HELLO_REQ ; 
extern "C" { void ossl_statem_set_renegotiate(SSL *s);
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

void write_output(TYPE_2__* s) {
  json output_json;
  TYPE_2__ output_temp_1 = *s;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["in_init"] = output_temp_1.statem.in_init;

  output_temp_3["request_state"] = output_temp_1.statem.request_state;
  output_temp_2["statem"] = output_temp_3;
  output_json["s"] = output_temp_2;

  output_json["TLS_ST_SW_HELLO_REQ"] = TLS_ST_SW_HELLO_REQ;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int s_pointer__statem__in_init = input_json["s"]["statem"]["in_init"];
  int s_pointer__statem__request_state = input_json["s"]["statem"]["request_state"];
  TYPE_1__ s_pointer__statem = {s_pointer__statem__in_init, s_pointer__statem__request_state};
  TYPE_2__ s_pointer = {s_pointer__statem};
  TYPE_2__* s = &s_pointer;
  TLS_ST_SW_HELLO_REQ = input_json["TLS_ST_SW_HELLO_REQ"];
  clock_t begin = clock();
  ossl_statem_set_renegotiate(s);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s);
}