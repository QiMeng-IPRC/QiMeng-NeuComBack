#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int in_init; int /*<<< orphan*/  hand_state; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {TYPE_1__ statem; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
extern  int /*<<< orphan*/  MSG_FLOW_UNINITED ; 
extern  int /*<<< orphan*/  TLS_ST_SR_CLNT_HELLO ; 
extern "C" { void ossl_statem_set_hello_verify_done(SSL *s);
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

  output_temp_3["hand_state"] = output_temp_1.statem.hand_state;

  output_temp_3["state"] = output_temp_1.statem.state;
  output_temp_2["statem"] = output_temp_3;
  output_json["s"] = output_temp_2;

  output_json["MSG_FLOW_UNINITED"] = MSG_FLOW_UNINITED;

  output_json["TLS_ST_SR_CLNT_HELLO"] = TLS_ST_SR_CLNT_HELLO;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int s_pointer__statem__in_init = input_json["s"]["statem"]["in_init"];
  int s_pointer__statem__hand_state = input_json["s"]["statem"]["hand_state"];
  int s_pointer__statem__state = input_json["s"]["statem"]["state"];
  TYPE_1__ s_pointer__statem = {s_pointer__statem__in_init, s_pointer__statem__hand_state, s_pointer__statem__state};
  TYPE_2__ s_pointer = {s_pointer__statem};
  TYPE_2__* s = &s_pointer;
  MSG_FLOW_UNINITED = input_json["MSG_FLOW_UNINITED"];
  TLS_ST_SR_CLNT_HELLO = input_json["TLS_ST_SR_CLNT_HELLO"];
  clock_t begin = clock();
  ossl_statem_set_hello_verify_done(s);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(s);
}