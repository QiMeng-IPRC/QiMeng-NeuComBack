#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int data_length; char* data; int /*<<< orphan*/  opcode; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ datagram_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  Command ; 
extern  int /*<<< orphan*/  GAP_TerminateLinkRequest ; 
extern "C" { int get_GAP_TerminateLinkRequest(datagram_t *datagram, long connHandle);
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

void write_output(TYPE_1__* datagram, long int connHandle, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *datagram;
  json output_temp_2;

  output_temp_2["data_length"] = output_temp_1.data_length;

  output_temp_2["data"] = output_temp_1.data;

  output_temp_2["opcode"] = output_temp_1.opcode;

  output_temp_2["type"] = output_temp_1.type;
  output_json["datagram"] = output_temp_2;

  output_json["Command"] = Command;

  output_json["GAP_TerminateLinkRequest"] = GAP_TerminateLinkRequest;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int datagram_pointer__data_length = input_json["datagram"]["data_length"];
  char* datagram_pointer__data = strdup(input_json["datagram"]["data"].get<std::string>().c_str());
  int datagram_pointer__opcode = input_json["datagram"]["opcode"];
  int datagram_pointer__type = input_json["datagram"]["type"];
  TYPE_1__ datagram_pointer = {datagram_pointer__data_length, datagram_pointer__data, datagram_pointer__opcode, datagram_pointer__type};
  TYPE_1__* datagram = &datagram_pointer;
  long int connHandle = input_json["connHandle"];
  Command = input_json["Command"];
  GAP_TerminateLinkRequest = input_json["GAP_TerminateLinkRequest"];
  clock_t begin = clock();
  int returnv = get_GAP_TerminateLinkRequest(datagram, connHandle);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(datagram, connHandle, returnv);
}