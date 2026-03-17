#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct connection {int /*<<< orphan*/  last_query_sent_time; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  precise_now ; 
extern "C" { int mcc_init_outbound (struct connection *c);
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

void write_output(struct connection* c, int returnv) {
  json output_json;
  struct connection output_temp_1 = *c;
  json output_temp_2;

  output_temp_2["last_query_sent_time"] = output_temp_1.last_query_sent_time;
  output_json["c"] = output_temp_2;

  output_json["precise_now"] = precise_now;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int c_pointer__last_query_sent_time = input_json["c"]["last_query_sent_time"];
  struct connection c_pointer = {c_pointer__last_query_sent_time};
  struct connection* c = &c_pointer;
  precise_now = input_json["precise_now"];
  clock_t begin = clock();
  int returnv = mcc_init_outbound(c);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(c, returnv);
}