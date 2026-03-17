#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fsdp_sendrecv_mode_t ;
typedef  int /*<<< orphan*/  fsdp_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  a_sendrecv_mode; } ;
typedef  TYPE_1__ fsdp_description_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  FSDPE_INVALID_PARAMETER ; 
extern  int /*<<< orphan*/  FSDPE_OK ; 
extern "C" { fsdp_error_t fsdp_set_sendrecv(fsdp_description_t *dsc, fsdp_sendrecv_mode_t mode);
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

void write_output(TYPE_1__* dsc, int mode, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *dsc;
  json output_temp_2;

  output_temp_2["a_sendrecv_mode"] = output_temp_1.a_sendrecv_mode;
  output_json["dsc"] = output_temp_2;

  output_json["FSDPE_INVALID_PARAMETER"] = FSDPE_INVALID_PARAMETER;

  output_json["FSDPE_OK"] = FSDPE_OK;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int dsc_pointer__a_sendrecv_mode = input_json["dsc"]["a_sendrecv_mode"];
  TYPE_1__ dsc_pointer = {dsc_pointer__a_sendrecv_mode};
  TYPE_1__* dsc = &dsc_pointer;
  int mode = input_json["mode"];
  FSDPE_INVALID_PARAMETER = input_json["FSDPE_INVALID_PARAMETER"];
  FSDPE_OK = input_json["FSDPE_OK"];
  clock_t begin = clock();
  int returnv = fsdp_set_sendrecv(dsc, mode);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dsc, mode, returnv);
}