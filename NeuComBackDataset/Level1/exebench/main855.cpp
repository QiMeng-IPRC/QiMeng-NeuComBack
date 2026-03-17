#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct conn_info {int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  POLLOUT ; 
extern  int /*<<< orphan*/  memset (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
extern  TYPE_1__* pending_list ; 
extern  size_t pending_queries ; 
extern "C" { void wait_for_connected(struct conn_info *conn);
 }int memset__bench (TYPE_1__ * b, int d, int e) {
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

void write_output(struct conn_info* conn) {
  json output_json;
  struct conn_info output_temp_2 = *conn;
  json output_temp_3;

  output_temp_3["fd"] = output_temp_2.fd;
  output_json["conn"] = output_temp_3;

  output_json["POLLOUT"] = POLLOUT;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_1__ output_temp_6 = pending_list[i5];
    json output_temp_7;

    output_temp_7["events"] = output_temp_6.events;

    output_temp_7["fd"] = output_temp_6.fd;
    output_temp_4.push_back(output_temp_7);
  }
  output_json["pending_list"] = output_temp_4;

  output_json["pending_queries"] = pending_queries;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int conn_pointer__fd = input_json["conn"]["fd"];
  struct conn_info conn_pointer = {conn_pointer__fd};
  struct conn_info* conn = &conn_pointer;
  POLLOUT = input_json["POLLOUT"];
  std::vector<TYPE_1__> input_temp_1_vec;
  for (auto& elem : input_json["pending_list"]) {
    int input_temp_1_inner__events = elem["events"];
    int input_temp_1_inner__fd = elem["fd"];
    TYPE_1__ input_temp_1_inner = {input_temp_1_inner__events, input_temp_1_inner__fd};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  pending_list = &input_temp_1_vec[0];
  pending_queries = input_json["pending_queries"];
  clock_t begin = clock();
  wait_for_connected(conn);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(conn);
}