#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* stats; } ;
struct TYPE_8__ {float fov; TYPE_1__ pmove; } ;
struct TYPE_12__ {TYPE_2__ predictedPlayerState; } ;
struct TYPE_11__ {int value; } ;
struct TYPE_10__ {size_t playerNum; TYPE_3__* clientInfo; int /*<<< orphan*/  demoPlaying; } ;
struct TYPE_9__ {float fov; } ;

/* Variables and functions */
extern  size_t PM_STAT_ZOOMTIME ; 
extern  TYPE_6__ cg ; 
extern  TYPE_5__* cg_zoomSens ; 
extern  TYPE_4__ cgs ; 
extern "C" { float CG_SetSensitivityScale( const float sens );
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

void write_output(float sens, float returnv) {
  json output_json;

  output_json["PM_STAT_ZOOMTIME"] = PM_STAT_ZOOMTIME;
  json output_temp_3;
  json output_temp_4;

  output_temp_4["fov"] = cg.predictedPlayerState.fov;
  json output_temp_5;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    long int output_temp_8 = cg.predictedPlayerState.pmove.stats[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_temp_5["stats"] = output_temp_6;
  output_temp_4["pmove"] = output_temp_5;
  output_temp_3["predictedPlayerState"] = output_temp_4;
  output_json["cg"] = output_temp_3;
  TYPE_5__ output_temp_9 = *cg_zoomSens;
  json output_temp_10;

  output_temp_10["value"] = output_temp_9.value;
  output_json["cg_zoomSens"] = output_temp_10;
  json output_temp_11;

  output_temp_11["playerNum"] = cgs.playerNum;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    TYPE_3__ output_temp_14 = cgs.clientInfo[i13];
    json output_temp_15;

    output_temp_15["fov"] = output_temp_14.fov;
    output_temp_12.push_back(output_temp_15);
  }
  output_temp_11["clientInfo"] = output_temp_12;

  output_temp_11["demoPlaying"] = cgs.demoPlaying;
  output_json["cgs"] = output_temp_11;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float sens = input_json["sens"];
  PM_STAT_ZOOMTIME = input_json["PM_STAT_ZOOMTIME"];
  float cg__predictedPlayerState__fov = input_json["cg"]["predictedPlayerState"]["fov"];
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["cg"]["predictedPlayerState"]["pmove"]["stats"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  long int* cg__predictedPlayerState__pmove__stats = &input_temp_1_vec[0];
  TYPE_1__ cg__predictedPlayerState__pmove = {cg__predictedPlayerState__pmove__stats};
  TYPE_2__ cg__predictedPlayerState = {cg__predictedPlayerState__fov, cg__predictedPlayerState__pmove};
  cg = {cg__predictedPlayerState};
  int cg_zoomSens_pointer__value = input_json["cg_zoomSens"]["value"];
  TYPE_5__ cg_zoomSens_pointer = {cg_zoomSens_pointer__value};
  cg_zoomSens = &cg_zoomSens_pointer;
  unsigned long int cgs__playerNum = input_json["cgs"]["playerNum"];
  std::vector<TYPE_3__> input_temp_2_vec;
  for (auto& elem : input_json["cgs"]["clientInfo"]) {
    float input_temp_2_inner__fov = elem["fov"];
    TYPE_3__ input_temp_2_inner = {input_temp_2_inner__fov};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  TYPE_3__* cgs__clientInfo = &input_temp_2_vec[0];
  int cgs__demoPlaying = input_json["cgs"]["demoPlaying"];
  cgs = {cgs__playerNum, cgs__clientInfo, cgs__demoPlaying};
  clock_t begin = clock();
  float returnv = CG_SetSensitivityScale(sens);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sens, returnv);
}