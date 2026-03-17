#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long max_resp_len; } ;
typedef  TYPE_1__ OCSP_REQ_CTX ;

/* Variables and functions */
extern  unsigned long OCSP_MAX_RESP_LENGTH ; 
extern "C" { void OCSP_set_max_response_length(OCSP_REQ_CTX *rctx, unsigned long len);
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

void write_output(TYPE_1__* rctx, unsigned long int len) {
  json output_json;
  TYPE_1__ output_temp_1 = *rctx;
  json output_temp_2;

  output_temp_2["max_resp_len"] = output_temp_1.max_resp_len;
  output_json["rctx"] = output_temp_2;

  output_json["OCSP_MAX_RESP_LENGTH"] = OCSP_MAX_RESP_LENGTH;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned long int rctx_pointer__max_resp_len = input_json["rctx"]["max_resp_len"];
  TYPE_1__ rctx_pointer = {rctx_pointer__max_resp_len};
  TYPE_1__* rctx = &rctx_pointer;
  unsigned long int len = input_json["len"];
  OCSP_MAX_RESP_LENGTH = input_json["OCSP_MAX_RESP_LENGTH"];
  clock_t begin = clock();
  OCSP_set_max_response_length(rctx, len);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(rctx, len);
}