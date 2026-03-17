#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  udpSockBufSize; } ;
typedef  TYPE_1__ rbudpBase_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  UDPSOCKBUF ; 
extern "C" { void setUDPBufSize(rbudpBase_t *rbudpBase, int nbytes );
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

void write_output(TYPE_1__* rbudpBase, int nbytes) {
  json output_json;
  TYPE_1__ output_temp_1 = *rbudpBase;
  json output_temp_2;

  output_temp_2["udpSockBufSize"] = output_temp_1.udpSockBufSize;
  output_json["rbudpBase"] = output_temp_2;

  output_json["UDPSOCKBUF"] = UDPSOCKBUF;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int rbudpBase_pointer__udpSockBufSize = input_json["rbudpBase"]["udpSockBufSize"];
  TYPE_1__ rbudpBase_pointer = {rbudpBase_pointer__udpSockBufSize};
  TYPE_1__* rbudpBase = &rbudpBase_pointer;
  int nbytes = input_json["nbytes"];
  UDPSOCKBUF = input_json["UDPSOCKBUF"];
  clock_t begin = clock();
  setUDPBufSize(rbudpBase, nbytes);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rbudpBase, nbytes);
}