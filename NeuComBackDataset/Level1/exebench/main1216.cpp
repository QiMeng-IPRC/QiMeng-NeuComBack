#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int sector; int cfg_spt; scalar_t__ head; scalar_t__ cfg_hpc; int /*<<< orphan*/  cylinder; int /*<<< orphan*/  lba_addr; scalar_t__ lba; } ;
typedef  TYPE_1__ ide_t ;

/* Variables and functions */
extern "C" { void ide_next_sector(ide_t *ide);
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

void write_output(TYPE_1__* ide) {
  json output_json;
  TYPE_1__ output_temp_1 = *ide;
  json output_temp_2;

  output_temp_2["sector"] = output_temp_1.sector;

  output_temp_2["cfg_spt"] = output_temp_1.cfg_spt;

  output_temp_2["head"] = output_temp_1.head;

  output_temp_2["cfg_hpc"] = output_temp_1.cfg_hpc;

  output_temp_2["cylinder"] = output_temp_1.cylinder;

  output_temp_2["lba_addr"] = output_temp_1.lba_addr;

  output_temp_2["lba"] = output_temp_1.lba;
  output_json["ide"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int ide_pointer__sector = input_json["ide"]["sector"];
  int ide_pointer__cfg_spt = input_json["ide"]["cfg_spt"];
  long int ide_pointer__head = input_json["ide"]["head"];
  long int ide_pointer__cfg_hpc = input_json["ide"]["cfg_hpc"];
  int ide_pointer__cylinder = input_json["ide"]["cylinder"];
  int ide_pointer__lba_addr = input_json["ide"]["lba_addr"];
  long int ide_pointer__lba = input_json["ide"]["lba"];
  TYPE_1__ ide_pointer = {ide_pointer__sector, ide_pointer__cfg_spt, ide_pointer__head, ide_pointer__cfg_hpc, ide_pointer__cylinder, ide_pointer__lba_addr, ide_pointer__lba};
  TYPE_1__* ide = &ide_pointer;
  clock_t begin = clock();
  ide_next_sector(ide);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ide);
}