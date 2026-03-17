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
struct TYPE_8__ {int maxclients; scalar_t__ alliedPlayers; TYPE_3__* clients; scalar_t__ axisPlayers; } ;
struct TYPE_5__ {scalar_t__ sessionTeam; } ;
struct TYPE_6__ {scalar_t__ connected; } ;
struct TYPE_7__ {TYPE_1__ sess; TYPE_2__ pers; } ;

/* Variables and functions */
extern  scalar_t__ CON_CONNECTED ; 
extern  scalar_t__ TEAM_BLUE ; 
extern  scalar_t__ TEAM_RED ; 
extern  TYPE_4__ level ; 
extern "C" { void sortedActivePlayers( void );
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

  output_json["CON_CONNECTED"] = CON_CONNECTED;

  output_json["TEAM_BLUE"] = TEAM_BLUE;

  output_json["TEAM_RED"] = TEAM_RED;
  json output_temp_2;

  output_temp_2["maxclients"] = level.maxclients;

  output_temp_2["alliedPlayers"] = level.alliedPlayers;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    TYPE_3__ output_temp_5 = level.clients[i4];
    json output_temp_6;
    json output_temp_7;

    output_temp_7["sessionTeam"] = output_temp_5.sess.sessionTeam;
    output_temp_6["sess"] = output_temp_7;
    json output_temp_8;

    output_temp_8["connected"] = output_temp_5.pers.connected;
    output_temp_6["pers"] = output_temp_8;
    output_temp_3.push_back(output_temp_6);
  }
  output_temp_2["clients"] = output_temp_3;

  output_temp_2["axisPlayers"] = level.axisPlayers;
  output_json["level"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  CON_CONNECTED = input_json["CON_CONNECTED"];
  TEAM_BLUE = input_json["TEAM_BLUE"];
  TEAM_RED = input_json["TEAM_RED"];
  int level__maxclients = input_json["level"]["maxclients"];
  long int level__alliedPlayers = input_json["level"]["alliedPlayers"];
  std::vector<TYPE_3__> input_temp_1_vec;
  for (auto& elem : input_json["level"]["clients"]) {
    long int input_temp_1_inner__sess__sessionTeam = elem["sess"]["sessionTeam"];
    TYPE_1__ input_temp_1_inner__sess = {input_temp_1_inner__sess__sessionTeam};
    long int input_temp_1_inner__pers__connected = elem["pers"]["connected"];
    TYPE_2__ input_temp_1_inner__pers = {input_temp_1_inner__pers__connected};
    TYPE_3__ input_temp_1_inner = {input_temp_1_inner__sess, input_temp_1_inner__pers};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  TYPE_3__* level__clients = &input_temp_1_vec[0];
  long int level__axisPlayers = input_json["level"]["axisPlayers"];
  level = {level__maxclients, level__alliedPlayers, level__clients, level__axisPlayers};
  clock_t begin = clock();
  sortedActivePlayers();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}