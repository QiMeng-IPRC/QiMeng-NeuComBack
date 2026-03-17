#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  command; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_6__ {int /*<<< orphan*/  ioByte; } ;
struct TYPE_7__ {TYPE_2__ data; } ;

/* Variables and functions */
extern  TYPE_4__ vdma1 ; 
extern  TYPE_3__ vport ; 
extern "C" { void io_write_0008();
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

void write_output() {
  json output_json;
  json output_temp_1;
  json output_temp_2;

  output_temp_2["command"] = vdma1.data.command;
  output_temp_1["data"] = output_temp_2;
  output_json["vdma1"] = output_temp_1;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["ioByte"] = vport.data.ioByte;
  output_temp_3["data"] = output_temp_4;
  output_json["vport"] = output_temp_3;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int vdma1__data__command = input_json["vdma1"]["data"]["command"];
  TYPE_1__ vdma1__data = {vdma1__data__command};
  vdma1 = {vdma1__data};
  int vport__data__ioByte = input_json["vport"]["data"]["ioByte"];
  TYPE_2__ vport__data = {vport__data__ioByte};
  vport = {vport__data};
  clock_t begin = clock();
  io_write_0008();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}