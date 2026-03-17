#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sql_state; } ;
typedef  TYPE_1__ SQL_SOCK_NODE ;

/* Variables and functions */
extern  int /*<<< orphan*/  DB_DISCONN ; 
extern "C" { void check_sql_sock_normal(SQL_SOCK_NODE * n);
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

void write_output(TYPE_1__* n) {
  json output_json;
  TYPE_1__ output_temp_1 = *n;
  json output_temp_2;

  output_temp_2["sql_state"] = output_temp_1.sql_state;
  output_json["n"] = output_temp_2;

  output_json["DB_DISCONN"] = DB_DISCONN;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int n_pointer__sql_state = input_json["n"]["sql_state"];
  TYPE_1__ n_pointer = {n_pointer__sql_state};
  TYPE_1__* n = &n_pointer;
  DB_DISCONN = input_json["DB_DISCONN"];
  clock_t begin = clock();
  check_sql_sock_normal(n);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(n);
}