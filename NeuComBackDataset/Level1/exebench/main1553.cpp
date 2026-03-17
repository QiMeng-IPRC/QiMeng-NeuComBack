#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int buttons; } ;
struct TYPE_6__ {TYPE_3__ cmd; } ;
struct TYPE_7__ {int /*<<< orphan*/  eFlags; } ;
struct TYPE_9__ {int oldbuttons; int buttons; int readyToExit; TYPE_1__ pers; TYPE_2__ ps; } ;
typedef  TYPE_4__ gclient_t ;

/* Variables and functions */
extern  int BUTTON_ATTACK ; 
extern  int BUTTON_USE_HOLDABLE ; 
extern  int /*<<< orphan*/  EF_FIRING ; 
extern  int /*<<< orphan*/  EF_TALK ; 
extern "C" { void ClientIntermissionThink( gclient_t *client );
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

void write_output(TYPE_4__* client) {
  json output_json;
  TYPE_4__ output_temp_1 = *client;
  json output_temp_2;

  output_temp_2["oldbuttons"] = output_temp_1.oldbuttons;

  output_temp_2["buttons"] = output_temp_1.buttons;

  output_temp_2["readyToExit"] = output_temp_1.readyToExit;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["buttons"] = output_temp_1.pers.cmd.buttons;
  output_temp_3["cmd"] = output_temp_4;
  output_temp_2["pers"] = output_temp_3;
  json output_temp_5;

  output_temp_5["eFlags"] = output_temp_1.ps.eFlags;
  output_temp_2["ps"] = output_temp_5;
  output_json["client"] = output_temp_2;

  output_json["BUTTON_ATTACK"] = BUTTON_ATTACK;

  output_json["BUTTON_USE_HOLDABLE"] = BUTTON_USE_HOLDABLE;

  output_json["EF_FIRING"] = EF_FIRING;

  output_json["EF_TALK"] = EF_TALK;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int client_pointer__oldbuttons = input_json["client"]["oldbuttons"];
  int client_pointer__buttons = input_json["client"]["buttons"];
  int client_pointer__readyToExit = input_json["client"]["readyToExit"];
  int client_pointer__pers__cmd__buttons = input_json["client"]["pers"]["cmd"]["buttons"];
  TYPE_3__ client_pointer__pers__cmd = {client_pointer__pers__cmd__buttons};
  TYPE_1__ client_pointer__pers = {client_pointer__pers__cmd};
  int client_pointer__ps__eFlags = input_json["client"]["ps"]["eFlags"];
  TYPE_2__ client_pointer__ps = {client_pointer__ps__eFlags};
  TYPE_4__ client_pointer = {client_pointer__oldbuttons, client_pointer__buttons, client_pointer__readyToExit, client_pointer__pers, client_pointer__ps};
  TYPE_4__* client = &client_pointer;
  BUTTON_ATTACK = input_json["BUTTON_ATTACK"];
  BUTTON_USE_HOLDABLE = input_json["BUTTON_USE_HOLDABLE"];
  EF_FIRING = input_json["EF_FIRING"];
  EF_TALK = input_json["EF_TALK"];
  clock_t begin = clock();
  ClientIntermissionThink(client);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(client);
}