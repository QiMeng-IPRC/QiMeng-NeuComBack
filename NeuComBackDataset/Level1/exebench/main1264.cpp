#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct tlsv1_client {int disable_time_checks; } ;

/* Variables and functions */
extern "C" { void tlsv1_client_set_time_checks(struct tlsv1_client *conn, int enabled);
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

void write_output(struct tlsv1_client* conn, int enabled) {
  json output_json;
  struct tlsv1_client output_temp_1 = *conn;
  json output_temp_2;

  output_temp_2["disable_time_checks"] = output_temp_1.disable_time_checks;
  output_json["conn"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int conn_pointer__disable_time_checks = input_json["conn"]["disable_time_checks"];
  struct tlsv1_client conn_pointer = {conn_pointer__disable_time_checks};
  struct tlsv1_client* conn = &conn_pointer;
  int enabled = input_json["enabled"];
  clock_t begin = clock();
  tlsv1_client_set_time_checks(conn, enabled);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(conn, enabled);
}