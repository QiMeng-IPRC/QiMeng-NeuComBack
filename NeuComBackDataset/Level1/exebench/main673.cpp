#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int frame; } ;
struct TYPE_6__ {scalar_t__ nextthink; TYPE_1__ s; int /*<<< orphan*/  takedamage; } ;
typedef  TYPE_2__ edict_t ;
struct TYPE_7__ {scalar_t__ time; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  DAMAGE_NO ; 
extern  int /*<<< orphan*/  DAMAGE_YES ; 
extern  TYPE_4__ level ; 
extern  int red_team_score ; 
extern "C" { void redspidernode_think (edict_t *ent);
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

void write_output(TYPE_2__* ent) {
  json output_json;
  TYPE_2__ output_temp_1 = *ent;
  json output_temp_2;

  output_temp_2["nextthink"] = output_temp_1.nextthink;
  json output_temp_3;

  output_temp_3["frame"] = output_temp_1.s.frame;
  output_temp_2["s"] = output_temp_3;

  output_temp_2["takedamage"] = output_temp_1.takedamage;
  output_json["ent"] = output_temp_2;

  output_json["DAMAGE_NO"] = DAMAGE_NO;

  output_json["DAMAGE_YES"] = DAMAGE_YES;
  json output_temp_4;

  output_temp_4["time"] = level.time;
  output_json["level"] = output_temp_4;

  output_json["red_team_score"] = red_team_score;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  long int ent_pointer__nextthink = input_json["ent"]["nextthink"];
  int ent_pointer__s__frame = input_json["ent"]["s"]["frame"];
  TYPE_1__ ent_pointer__s = {ent_pointer__s__frame};
  int ent_pointer__takedamage = input_json["ent"]["takedamage"];
  TYPE_2__ ent_pointer = {ent_pointer__nextthink, ent_pointer__s, ent_pointer__takedamage};
  TYPE_2__* ent = &ent_pointer;
  DAMAGE_NO = input_json["DAMAGE_NO"];
  DAMAGE_YES = input_json["DAMAGE_YES"];
  long int level__time = input_json["level"]["time"];
  level = {level__time};
  red_team_score = input_json["red_team_score"];
  clock_t begin = clock();
  redspidernode_think(ent);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(ent);
}