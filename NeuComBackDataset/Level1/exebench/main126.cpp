#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  io_connect_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  global_conn ; 
extern  scalar_t__ inputScalarCnt ; 
extern  scalar_t__ inputStructCnt ; 
extern  int outputScalarCnt ; 
extern  int outputStructCnt ; 
extern  int selector ; 
extern "C" { void set_params(io_connect_t conn);
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

void write_output(int conn) {
  json output_json;

  output_json["global_conn"] = global_conn;

  output_json["inputScalarCnt"] = inputScalarCnt;

  output_json["inputStructCnt"] = inputStructCnt;

  output_json["outputScalarCnt"] = outputScalarCnt;

  output_json["outputStructCnt"] = outputStructCnt;

  output_json["selector"] = selector;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int conn = input_json["conn"];
  global_conn = input_json["global_conn"];
  inputScalarCnt = input_json["inputScalarCnt"];
  inputStructCnt = input_json["inputStructCnt"];
  outputScalarCnt = input_json["outputScalarCnt"];
  outputStructCnt = input_json["outputStructCnt"];
  selector = input_json["selector"];
  clock_t begin = clock();
  set_params(conn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(conn);
}