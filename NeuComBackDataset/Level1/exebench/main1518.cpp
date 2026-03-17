#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  show_context; } ;
typedef  TYPE_1__ PGconn ;
typedef  int /*<<< orphan*/  PGContextVisibility ;

/* Variables and functions */
extern  int /*<<< orphan*/  PQSHOW_CONTEXT_ERRORS ; 
extern "C" { PGContextVisibility PQsetErrorContextVisibility(PGconn *conn, PGContextVisibility show_context);
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

void write_output(TYPE_1__* conn, int show_context, int returnv) {
  json output_json;
  TYPE_1__ output_temp_1 = *conn;
  json output_temp_2;

  output_temp_2["show_context"] = output_temp_1.show_context;
  output_json["conn"] = output_temp_2;

  output_json["PQSHOW_CONTEXT_ERRORS"] = PQSHOW_CONTEXT_ERRORS;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int conn_pointer__show_context = input_json["conn"]["show_context"];
  TYPE_1__ conn_pointer = {conn_pointer__show_context};
  TYPE_1__* conn = &conn_pointer;
  int show_context = input_json["show_context"];
  PQSHOW_CONTEXT_ERRORS = input_json["PQSHOW_CONTEXT_ERRORS"];
  clock_t begin = clock();
  int returnv = PQsetErrorContextVisibility(conn, show_context);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(conn, show_context, returnv);
}