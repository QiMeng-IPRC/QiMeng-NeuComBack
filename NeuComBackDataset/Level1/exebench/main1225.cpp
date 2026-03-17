#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int /*<<< orphan*/  IPv6_buf ; 
extern  int /*<<< orphan*/  IPv6_length ; 
extern  scalar_t__ Sending_Packet_TAG ; 
extern  int /*<<< orphan*/  Sending_buf ; 
extern  int /*<<< orphan*/  Sending_length ; 
extern  scalar_t__ Sending_sent_offset ; 
extern "C" { void init_frag();
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

  output_json["IPv6_buf"] = IPv6_buf;

  output_json["IPv6_length"] = IPv6_length;

  output_json["Sending_Packet_TAG"] = Sending_Packet_TAG;

  output_json["Sending_buf"] = Sending_buf;

  output_json["Sending_length"] = Sending_length;

  output_json["Sending_sent_offset"] = Sending_sent_offset;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  IPv6_buf = input_json["IPv6_buf"];
  IPv6_length = input_json["IPv6_length"];
  Sending_Packet_TAG = input_json["Sending_Packet_TAG"];
  Sending_buf = input_json["Sending_buf"];
  Sending_length = input_json["Sending_length"];
  Sending_sent_offset = input_json["Sending_sent_offset"];
  clock_t begin = clock();
  init_frag();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}