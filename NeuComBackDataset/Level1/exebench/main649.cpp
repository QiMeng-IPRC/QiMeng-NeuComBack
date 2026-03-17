#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ cssl_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  CSSL_ERROR_NOTSTARTED ; 
extern  int /*<<< orphan*/  CSSL_ERROR_NULLPOINTER ; 
extern  int /*<<< orphan*/  cssl_error ; 
extern  int /*<<< orphan*/  cssl_started ; 
extern  int /*<<< orphan*/  tcdrain (int /*<<< orphan*/ ) ; 
extern "C" { void cssl_drain(cssl_t *serial);
 }int tcdrain (int b) {
	int returnv;
	int temp_variable = 45;
	returnv = temp_variable;
	return returnv;
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

void write_output(TYPE_1__* serial) {
  json output_json;
  TYPE_1__ output_temp_1 = *serial;
  json output_temp_2;

  output_temp_2["fd"] = output_temp_1.fd;
  output_json["serial"] = output_temp_2;

  output_json["CSSL_ERROR_NOTSTARTED"] = CSSL_ERROR_NOTSTARTED;

  output_json["CSSL_ERROR_NULLPOINTER"] = CSSL_ERROR_NULLPOINTER;

  output_json["cssl_error"] = cssl_error;

  output_json["cssl_started"] = cssl_started;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int serial_pointer__fd = input_json["serial"]["fd"];
  TYPE_1__ serial_pointer = {serial_pointer__fd};
  TYPE_1__* serial = &serial_pointer;
  CSSL_ERROR_NOTSTARTED = input_json["CSSL_ERROR_NOTSTARTED"];
  CSSL_ERROR_NULLPOINTER = input_json["CSSL_ERROR_NULLPOINTER"];
  cssl_error = input_json["cssl_error"];
  cssl_started = input_json["cssl_started"];
  clock_t begin = clock();
  cssl_drain(serial);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(serial);
}