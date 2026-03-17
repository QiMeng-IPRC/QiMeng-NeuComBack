#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* grid ;
typedef  int /*<<< orphan*/ * comp ;
struct TYPE_5__ {int nz_l; int nz_r; int num_z; int ny_l; int ny_r; int num_y; int nx_l; int nx_r; int num_x; } ;
struct TYPE_4__ {int nz; int ny; int nx; } ;

/* Variables and functions */
extern  TYPE_3__* _pos ; 
extern  int /*<<< orphan*/  spars_comp ; 
extern  TYPE_1__ spars_grd ; 
extern "C" { void get_local();
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
  TYPE_3__ output_temp_1 = *_pos;
  json output_temp_2;

  output_temp_2["nz_l"] = output_temp_1.nz_l;

  output_temp_2["nz_r"] = output_temp_1.nz_r;

  output_temp_2["num_z"] = output_temp_1.num_z;

  output_temp_2["ny_l"] = output_temp_1.ny_l;

  output_temp_2["ny_r"] = output_temp_1.ny_r;

  output_temp_2["num_y"] = output_temp_1.num_y;

  output_temp_2["nx_l"] = output_temp_1.nx_l;

  output_temp_2["nx_r"] = output_temp_1.nx_r;

  output_temp_2["num_x"] = output_temp_1.num_x;
  output_json["_pos"] = output_temp_2;

  output_json["spars_comp"] = spars_comp;
  json output_temp_3;

  output_temp_3["nz"] = spars_grd.nz;

  output_temp_3["ny"] = spars_grd.ny;

  output_temp_3["nx"] = spars_grd.nx;
  output_json["spars_grd"] = output_temp_3;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int _pos_pointer__nz_l = input_json["_pos"]["nz_l"];
  int _pos_pointer__nz_r = input_json["_pos"]["nz_r"];
  int _pos_pointer__num_z = input_json["_pos"]["num_z"];
  int _pos_pointer__ny_l = input_json["_pos"]["ny_l"];
  int _pos_pointer__ny_r = input_json["_pos"]["ny_r"];
  int _pos_pointer__num_y = input_json["_pos"]["num_y"];
  int _pos_pointer__nx_l = input_json["_pos"]["nx_l"];
  int _pos_pointer__nx_r = input_json["_pos"]["nx_r"];
  int _pos_pointer__num_x = input_json["_pos"]["num_x"];
  TYPE_3__ _pos_pointer = {_pos_pointer__nz_l, _pos_pointer__nz_r, _pos_pointer__num_z, _pos_pointer__ny_l, _pos_pointer__ny_r, _pos_pointer__num_y, _pos_pointer__nx_l, _pos_pointer__nx_r, _pos_pointer__num_x};
  _pos = &_pos_pointer;
  spars_comp = input_json["spars_comp"];
  int spars_grd__nz = input_json["spars_grd"]["nz"];
  int spars_grd__ny = input_json["spars_grd"]["ny"];
  int spars_grd__nx = input_json["spars_grd"]["nx"];
  spars_grd = {spars_grd__nz, spars_grd__ny, spars_grd__nx};
  clock_t begin = clock();
  get_local();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}