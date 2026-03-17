#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct conn_sslcon {int state; int ssl_want_write; scalar_t__ ssl_want_read; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  close (int /*<<< orphan*/ ) ; 
extern "C" { int conn_closecon(struct conn_sslcon *con);
 }int close (int b) {
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

void write_output(struct conn_sslcon* con, int returnv) {
  json output_json;
  struct conn_sslcon output_temp_1 = *con;
  json output_temp_2;

  output_temp_2["state"] = output_temp_1.state;

  output_temp_2["ssl_want_write"] = output_temp_1.ssl_want_write;

  output_temp_2["ssl_want_read"] = output_temp_1.ssl_want_read;

  output_temp_2["fd"] = output_temp_1.fd;
  output_json["con"] = output_temp_2;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int con_pointer__state = input_json["con"]["state"];
  int con_pointer__ssl_want_write = input_json["con"]["ssl_want_write"];
  long int con_pointer__ssl_want_read = input_json["con"]["ssl_want_read"];
  int con_pointer__fd = input_json["con"]["fd"];
  struct conn_sslcon con_pointer = {con_pointer__state, con_pointer__ssl_want_write, con_pointer__ssl_want_read, con_pointer__fd};
  struct conn_sslcon* con = &con_pointer;
  clock_t begin = clock();
  int returnv = conn_closecon(con);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(con, returnv);
}