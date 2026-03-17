#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pmove_frame; int /*<<< orphan*/  pmove_flags; int /*<<< orphan*/  netpmove_flags; int /*<<< orphan*/  velocity; int /*<<< orphan*/  netvelocity; int /*<<< orphan*/  angles; int /*<<< orphan*/  netangles; int /*<<< orphan*/  origin; int /*<<< orphan*/  netorigin; } ;

/* Variables and functions */
extern  TYPE_1__ self ; 
extern  scalar_t__ servercommandframe ; 
extern "C" { void Player_PostUpdate( void );
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

  output_temp_1["pmove_frame"] = self.pmove_frame;

  output_temp_1["pmove_flags"] = self.pmove_flags;

  output_temp_1["netpmove_flags"] = self.netpmove_flags;

  output_temp_1["velocity"] = self.velocity;

  output_temp_1["netvelocity"] = self.netvelocity;

  output_temp_1["angles"] = self.angles;

  output_temp_1["netangles"] = self.netangles;

  output_temp_1["origin"] = self.origin;

  output_temp_1["netorigin"] = self.netorigin;
  output_json["self"] = output_temp_1;

  output_json["servercommandframe"] = servercommandframe;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int self__pmove_frame = input_json["self"]["pmove_frame"];
  int self__pmove_flags = input_json["self"]["pmove_flags"];
  int self__netpmove_flags = input_json["self"]["netpmove_flags"];
  int self__velocity = input_json["self"]["velocity"];
  int self__netvelocity = input_json["self"]["netvelocity"];
  int self__angles = input_json["self"]["angles"];
  int self__netangles = input_json["self"]["netangles"];
  int self__origin = input_json["self"]["origin"];
  int self__netorigin = input_json["self"]["netorigin"];
  self = {self__pmove_frame, self__pmove_flags, self__netpmove_flags, self__velocity, self__netvelocity, self__angles, self__netangles, self__origin, self__netorigin};
  servercommandframe = input_json["servercommandframe"];
  clock_t begin = clock();
  Player_PostUpdate();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}