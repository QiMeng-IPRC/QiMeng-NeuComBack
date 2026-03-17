#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct wsock_table {int flag_exit; int flag_running; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  usleep (int) ; 
extern "C" { void wsock_release_tcp_table(struct wsock_table *table, int element_count, int buff_size, int timeout);
 }int usleep (int b) {
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

void write_output(struct wsock_table* table, int element_count, int buff_size, int timeout) {
  json output_json;
  struct wsock_table output_temp_1 = *table;
  json output_temp_2;

  output_temp_2["flag_exit"] = output_temp_1.flag_exit;

  output_temp_2["flag_running"] = output_temp_1.flag_running;
  output_json["table"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int table_pointer__flag_exit = input_json["table"]["flag_exit"];
  int table_pointer__flag_running = input_json["table"]["flag_running"];
  struct wsock_table table_pointer = {table_pointer__flag_exit, table_pointer__flag_running};
  struct wsock_table* table = &table_pointer;
  int element_count = input_json["element_count"];
  int buff_size = input_json["buff_size"];
  int timeout = input_json["timeout"];
  clock_t begin = clock();
  wsock_release_tcp_table(table, element_count, buff_size, timeout);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(table, element_count, buff_size, timeout);
}