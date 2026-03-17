#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; char* ainodeText; int /*<<< orphan*/  ainode; scalar_t__ give_health_time; } ;
typedef  TYPE_1__ bot_state_t ;

/* Variables and functions */
extern  int /*<<< orphan*/  AINode_MP_MedicGiveHealth ; 
extern "C" { void AIEnter_MP_MedicGiveHealth(bot_state_t *bs);
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

void write_output(TYPE_1__* bs) {
  json output_json;
  TYPE_1__ output_temp_1 = *bs;
  json output_temp_2;

  output_temp_2["flags"] = output_temp_1.flags;

  output_temp_2["ainodeText"] = output_temp_1.ainodeText;

  output_temp_2["ainode"] = output_temp_1.ainode;

  output_temp_2["give_health_time"] = output_temp_1.give_health_time;
  output_json["bs"] = output_temp_2;

  output_json["AINode_MP_MedicGiveHealth"] = AINode_MP_MedicGiveHealth;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int bs_pointer__flags = input_json["bs"]["flags"];
  char* bs_pointer__ainodeText = strdup(input_json["bs"]["ainodeText"].get<std::string>().c_str());
  int bs_pointer__ainode = input_json["bs"]["ainode"];
  long int bs_pointer__give_health_time = input_json["bs"]["give_health_time"];
  TYPE_1__ bs_pointer = {bs_pointer__flags, bs_pointer__ainodeText, bs_pointer__ainode, bs_pointer__give_health_time};
  TYPE_1__* bs = &bs_pointer;
  AINode_MP_MedicGiveHealth = input_json["AINode_MP_MedicGiveHealth"];
  clock_t begin = clock();
  AIEnter_MP_MedicGiveHealth(bs);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(bs);
}