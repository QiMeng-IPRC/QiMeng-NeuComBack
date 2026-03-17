#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int x; int y; } ;
struct TYPE_6__ {int num_lives; int num_bombs; int /*<<< orphan*/  avatar_velocity; TYPE_1__ avatar_position; } ;
typedef  TYPE_2__ az_play_state_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  AZ_VZERO ; 
extern  int /*<<< orphan*/  memset (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
extern "C" { void az_init_play_state(az_play_state_t *state);
 }int memset__bench (TYPE_2__ * b, int d, int e) {
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

void write_output(TYPE_2__* state) {
  json output_json;
  TYPE_2__ output_temp_1 = *state;
  json output_temp_2;

  output_temp_2["num_lives"] = output_temp_1.num_lives;

  output_temp_2["num_bombs"] = output_temp_1.num_bombs;

  output_temp_2["avatar_velocity"] = output_temp_1.avatar_velocity;
  json output_temp_3;

  output_temp_3["x"] = output_temp_1.avatar_position.x;

  output_temp_3["y"] = output_temp_1.avatar_position.y;
  output_temp_2["avatar_position"] = output_temp_3;
  output_json["state"] = output_temp_2;

  output_json["AZ_VZERO"] = AZ_VZERO;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int state_pointer__num_lives = input_json["state"]["num_lives"];
  int state_pointer__num_bombs = input_json["state"]["num_bombs"];
  int state_pointer__avatar_velocity = input_json["state"]["avatar_velocity"];
  int state_pointer__avatar_position__x = input_json["state"]["avatar_position"]["x"];
  int state_pointer__avatar_position__y = input_json["state"]["avatar_position"]["y"];
  TYPE_1__ state_pointer__avatar_position = {state_pointer__avatar_position__x, state_pointer__avatar_position__y};
  TYPE_2__ state_pointer = {state_pointer__num_lives, state_pointer__num_bombs, state_pointer__avatar_velocity, state_pointer__avatar_position};
  TYPE_2__* state = &state_pointer;
  AZ_VZERO = input_json["AZ_VZERO"];
  clock_t begin = clock();
  az_init_play_state(state);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(state);
}