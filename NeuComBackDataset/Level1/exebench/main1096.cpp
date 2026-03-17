#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  load_ssl_client_cert; } ;
typedef  int /*<<< orphan*/  ENGINE_SSL_CLIENT_CERT_PTR ;
typedef  TYPE_1__ ENGINE ;

/* Variables and functions */
extern "C" { int ENGINE_set_load_ssl_client_cert_function(ENGINE *e, ENGINE_SSL_CLIENT_CERT_PTR loadssl_f);
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

void write_output(TYPE_1__* e, int loadssl_f, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *e;
  json output_temp_2;

  output_temp_2["load_ssl_client_cert"] = output_temp_1.load_ssl_client_cert;
  output_json["e"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int e_pointer__load_ssl_client_cert = input_json["e"]["load_ssl_client_cert"];
  TYPE_1__ e_pointer = {e_pointer__load_ssl_client_cert};
  TYPE_1__* e = &e_pointer;
  int loadssl_f = input_json["loadssl_f"];
  clock_t begin = clock();
  int returnv = ENGINE_set_load_ssl_client_cert_function(e, loadssl_f);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(e, loadssl_f, returnv);
}