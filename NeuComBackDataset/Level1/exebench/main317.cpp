#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_19__ ;
typedef  struct TYPE_27__   TYPE_17__ ;
typedef  struct TYPE_26__   TYPE_16__ ;
typedef  struct TYPE_25__   TYPE_15__ ;
typedef  struct TYPE_24__   TYPE_14__ ;
typedef  struct TYPE_23__   TYPE_13__ ;
typedef  struct TYPE_22__   TYPE_12__ ;
typedef  struct TYPE_21__   TYPE_11__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct TYPE_27__ {int /*<<< orphan*/  cache_time_2; int /*<<< orphan*/  speed_2; int /*<<< orphan*/  frame_interval_2; int /*<<< orphan*/  contrast_2; int /*<<< orphan*/  bright_2; int /*<<< orphan*/  solution_y_2; int /*<<< orphan*/  solution_x_2; int /*<<< orphan*/  cache_time_1; int /*<<< orphan*/  speed_1; int /*<<< orphan*/  frame_interval_1; int /*<<< orphan*/  contrast_1; int /*<<< orphan*/  bright_1; int /*<<< orphan*/  solution_y_1; int /*<<< orphan*/  solution_x_1; int /*<<< orphan*/  rtv_num; } ;
typedef  TYPE_17__ s_var_video ;
struct TYPE_37__ {int /*<<< orphan*/  var; } ;
struct TYPE_36__ {int /*<<< orphan*/  var; } ;
struct TYPE_35__ {int /*<<< orphan*/  var; } ;
struct TYPE_34__ {int /*<<< orphan*/  var; } ;
struct TYPE_33__ {int /*<<< orphan*/  var; } ;
struct TYPE_32__ {int /*<<< orphan*/  var; } ;
struct TYPE_31__ {int /*<<< orphan*/  var; } ;
struct TYPE_30__ {int /*<<< orphan*/  var; } ;
struct TYPE_29__ {int /*<<< orphan*/  var; } ;
struct TYPE_25__ {int /*<<< orphan*/  var; } ;
struct TYPE_24__ {int /*<<< orphan*/  var; } ;
struct TYPE_23__ {int /*<<< orphan*/  var; } ;
struct TYPE_22__ {int /*<<< orphan*/  var; } ;
struct TYPE_21__ {int /*<<< orphan*/  var; } ;
struct TYPE_20__ {int /*<<< orphan*/  var; } ;
struct TYPE_26__ {TYPE_15__ cache_time_2; TYPE_14__ speed_2; TYPE_13__ frame_interval_2; TYPE_12__ contrast_2; TYPE_11__ bright_2; TYPE_10__ solution_y_2; TYPE_9__ solution_x_2; TYPE_8__ cache_time_1; TYPE_7__ speed_1; TYPE_6__ frame_interval_1; TYPE_5__ contrast_1; TYPE_4__ bright_1; TYPE_3__ solution_y_1; TYPE_2__ solution_x_1; TYPE_1__ rtv_num; } ;
struct TYPE_28__ {TYPE_16__ video; } ;

/* Variables and functions */
extern  TYPE_19__ g_config ; 
extern "C" { int xxx2varxxx_video(s_var_video *var_video);
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

void write_output(TYPE_17__* var_video, int returnv) {
  json output_json;
  TYPE_17__ output_temp_1 = *var_video;
  json output_temp_2;

  output_temp_2["cache_time_2"] = output_temp_1.cache_time_2;

  output_temp_2["speed_2"] = output_temp_1.speed_2;

  output_temp_2["frame_interval_2"] = output_temp_1.frame_interval_2;

  output_temp_2["contrast_2"] = output_temp_1.contrast_2;

  output_temp_2["bright_2"] = output_temp_1.bright_2;

  output_temp_2["solution_y_2"] = output_temp_1.solution_y_2;

  output_temp_2["solution_x_2"] = output_temp_1.solution_x_2;

  output_temp_2["cache_time_1"] = output_temp_1.cache_time_1;

  output_temp_2["speed_1"] = output_temp_1.speed_1;

  output_temp_2["frame_interval_1"] = output_temp_1.frame_interval_1;

  output_temp_2["contrast_1"] = output_temp_1.contrast_1;

  output_temp_2["bright_1"] = output_temp_1.bright_1;

  output_temp_2["solution_y_1"] = output_temp_1.solution_y_1;

  output_temp_2["solution_x_1"] = output_temp_1.solution_x_1;

  output_temp_2["rtv_num"] = output_temp_1.rtv_num;
  output_json["var_video"] = output_temp_2;
  json output_temp_3;
  json output_temp_4;
  json output_temp_5;

  output_temp_5["var"] = g_config.video.cache_time_2.var;
  output_temp_4["cache_time_2"] = output_temp_5;
  json output_temp_6;

  output_temp_6["var"] = g_config.video.speed_2.var;
  output_temp_4["speed_2"] = output_temp_6;
  json output_temp_7;

  output_temp_7["var"] = g_config.video.frame_interval_2.var;
  output_temp_4["frame_interval_2"] = output_temp_7;
  json output_temp_8;

  output_temp_8["var"] = g_config.video.contrast_2.var;
  output_temp_4["contrast_2"] = output_temp_8;
  json output_temp_9;

  output_temp_9["var"] = g_config.video.bright_2.var;
  output_temp_4["bright_2"] = output_temp_9;
  json output_temp_10;

  output_temp_10["var"] = g_config.video.solution_y_2.var;
  output_temp_4["solution_y_2"] = output_temp_10;
  json output_temp_11;

  output_temp_11["var"] = g_config.video.solution_x_2.var;
  output_temp_4["solution_x_2"] = output_temp_11;
  json output_temp_12;

  output_temp_12["var"] = g_config.video.cache_time_1.var;
  output_temp_4["cache_time_1"] = output_temp_12;
  json output_temp_13;

  output_temp_13["var"] = g_config.video.speed_1.var;
  output_temp_4["speed_1"] = output_temp_13;
  json output_temp_14;

  output_temp_14["var"] = g_config.video.frame_interval_1.var;
  output_temp_4["frame_interval_1"] = output_temp_14;
  json output_temp_15;

  output_temp_15["var"] = g_config.video.contrast_1.var;
  output_temp_4["contrast_1"] = output_temp_15;
  json output_temp_16;

  output_temp_16["var"] = g_config.video.bright_1.var;
  output_temp_4["bright_1"] = output_temp_16;
  json output_temp_17;

  output_temp_17["var"] = g_config.video.solution_y_1.var;
  output_temp_4["solution_y_1"] = output_temp_17;
  json output_temp_18;

  output_temp_18["var"] = g_config.video.solution_x_1.var;
  output_temp_4["solution_x_1"] = output_temp_18;
  json output_temp_19;

  output_temp_19["var"] = g_config.video.rtv_num.var;
  output_temp_4["rtv_num"] = output_temp_19;
  output_temp_3["video"] = output_temp_4;
  output_json["g_config"] = output_temp_3;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int var_video_pointer__cache_time_2 = input_json["var_video"]["cache_time_2"];
  int var_video_pointer__speed_2 = input_json["var_video"]["speed_2"];
  int var_video_pointer__frame_interval_2 = input_json["var_video"]["frame_interval_2"];
  int var_video_pointer__contrast_2 = input_json["var_video"]["contrast_2"];
  int var_video_pointer__bright_2 = input_json["var_video"]["bright_2"];
  int var_video_pointer__solution_y_2 = input_json["var_video"]["solution_y_2"];
  int var_video_pointer__solution_x_2 = input_json["var_video"]["solution_x_2"];
  int var_video_pointer__cache_time_1 = input_json["var_video"]["cache_time_1"];
  int var_video_pointer__speed_1 = input_json["var_video"]["speed_1"];
  int var_video_pointer__frame_interval_1 = input_json["var_video"]["frame_interval_1"];
  int var_video_pointer__contrast_1 = input_json["var_video"]["contrast_1"];
  int var_video_pointer__bright_1 = input_json["var_video"]["bright_1"];
  int var_video_pointer__solution_y_1 = input_json["var_video"]["solution_y_1"];
  int var_video_pointer__solution_x_1 = input_json["var_video"]["solution_x_1"];
  int var_video_pointer__rtv_num = input_json["var_video"]["rtv_num"];
  TYPE_17__ var_video_pointer = {var_video_pointer__cache_time_2, var_video_pointer__speed_2, var_video_pointer__frame_interval_2, var_video_pointer__contrast_2, var_video_pointer__bright_2, var_video_pointer__solution_y_2, var_video_pointer__solution_x_2, var_video_pointer__cache_time_1, var_video_pointer__speed_1, var_video_pointer__frame_interval_1, var_video_pointer__contrast_1, var_video_pointer__bright_1, var_video_pointer__solution_y_1, var_video_pointer__solution_x_1, var_video_pointer__rtv_num};
  TYPE_17__* var_video = &var_video_pointer;
  int g_config__video__cache_time_2__var = input_json["g_config"]["video"]["cache_time_2"]["var"];
  TYPE_15__ g_config__video__cache_time_2 = {g_config__video__cache_time_2__var};
  int g_config__video__speed_2__var = input_json["g_config"]["video"]["speed_2"]["var"];
  TYPE_14__ g_config__video__speed_2 = {g_config__video__speed_2__var};
  int g_config__video__frame_interval_2__var = input_json["g_config"]["video"]["frame_interval_2"]["var"];
  TYPE_13__ g_config__video__frame_interval_2 = {g_config__video__frame_interval_2__var};
  int g_config__video__contrast_2__var = input_json["g_config"]["video"]["contrast_2"]["var"];
  TYPE_12__ g_config__video__contrast_2 = {g_config__video__contrast_2__var};
  int g_config__video__bright_2__var = input_json["g_config"]["video"]["bright_2"]["var"];
  TYPE_11__ g_config__video__bright_2 = {g_config__video__bright_2__var};
  int g_config__video__solution_y_2__var = input_json["g_config"]["video"]["solution_y_2"]["var"];
  TYPE_10__ g_config__video__solution_y_2 = {g_config__video__solution_y_2__var};
  int g_config__video__solution_x_2__var = input_json["g_config"]["video"]["solution_x_2"]["var"];
  TYPE_9__ g_config__video__solution_x_2 = {g_config__video__solution_x_2__var};
  int g_config__video__cache_time_1__var = input_json["g_config"]["video"]["cache_time_1"]["var"];
  TYPE_8__ g_config__video__cache_time_1 = {g_config__video__cache_time_1__var};
  int g_config__video__speed_1__var = input_json["g_config"]["video"]["speed_1"]["var"];
  TYPE_7__ g_config__video__speed_1 = {g_config__video__speed_1__var};
  int g_config__video__frame_interval_1__var = input_json["g_config"]["video"]["frame_interval_1"]["var"];
  TYPE_6__ g_config__video__frame_interval_1 = {g_config__video__frame_interval_1__var};
  int g_config__video__contrast_1__var = input_json["g_config"]["video"]["contrast_1"]["var"];
  TYPE_5__ g_config__video__contrast_1 = {g_config__video__contrast_1__var};
  int g_config__video__bright_1__var = input_json["g_config"]["video"]["bright_1"]["var"];
  TYPE_4__ g_config__video__bright_1 = {g_config__video__bright_1__var};
  int g_config__video__solution_y_1__var = input_json["g_config"]["video"]["solution_y_1"]["var"];
  TYPE_3__ g_config__video__solution_y_1 = {g_config__video__solution_y_1__var};
  int g_config__video__solution_x_1__var = input_json["g_config"]["video"]["solution_x_1"]["var"];
  TYPE_2__ g_config__video__solution_x_1 = {g_config__video__solution_x_1__var};
  int g_config__video__rtv_num__var = input_json["g_config"]["video"]["rtv_num"]["var"];
  TYPE_1__ g_config__video__rtv_num = {g_config__video__rtv_num__var};
  TYPE_16__ g_config__video = {g_config__video__cache_time_2, g_config__video__speed_2, g_config__video__frame_interval_2, g_config__video__contrast_2, g_config__video__bright_2, g_config__video__solution_y_2, g_config__video__solution_x_2, g_config__video__cache_time_1, g_config__video__speed_1, g_config__video__frame_interval_1, g_config__video__contrast_1, g_config__video__bright_1, g_config__video__solution_y_1, g_config__video__solution_x_1, g_config__video__rtv_num};
  g_config = {g_config__video};
  clock_t begin = clock();
  int returnv = xxx2varxxx_video(var_video);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(var_video, returnv);
}