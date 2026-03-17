#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct in_addr {int dummy; } ;
struct ncpaddr {struct in_addr ncpaddr_ip4addr; int /*<<< orphan*/  ncpaddr_family; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  AF_INET ; 
extern "C" { void ncpaddr_setip4(struct ncpaddr *addr, struct in_addr ip);
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

void write_output(struct ncpaddr* addr, struct in_addr ip) {
  json output_json;
  struct ncpaddr output_temp_1 = *addr;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["dummy"] = output_temp_1.ncpaddr_ip4addr.dummy;
  output_temp_2["ncpaddr_ip4addr"] = output_temp_3;

  output_temp_2["ncpaddr_family"] = output_temp_1.ncpaddr_family;
  output_json["addr"] = output_temp_2;

  output_json["AF_INET"] = AF_INET;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int addr_pointer__ncpaddr_ip4addr__dummy = input_json["addr"]["ncpaddr_ip4addr"]["dummy"];
  struct in_addr addr_pointer__ncpaddr_ip4addr = {addr_pointer__ncpaddr_ip4addr__dummy};
  int addr_pointer__ncpaddr_family = input_json["addr"]["ncpaddr_family"];
  struct ncpaddr addr_pointer = {addr_pointer__ncpaddr_ip4addr, addr_pointer__ncpaddr_family};
  struct ncpaddr* addr = &addr_pointer;
  int ip__dummy = input_json["ip"]["dummy"];
  struct in_addr ip = {ip__dummy};
  AF_INET = input_json["AF_INET"];
  clock_t begin = clock();
  ncpaddr_setip4(addr, ip);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(addr, ip);
}