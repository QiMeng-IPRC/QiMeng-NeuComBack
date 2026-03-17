#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int activate; int yres_virtual; int yres; int yoffset; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  FBIOGET_VSCREENINFO ; 
extern  int FB_ACTIVATE_FORCE ; 
extern  int FB_ACTIVATE_NOW ; 
extern  int /*<<< orphan*/  fb ; 
extern  TYPE_1__ fb_var_info ; 
extern  int /*<<< orphan*/  ioctl (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
extern "C" { void lfb_refresh();
 }int ioctl (int b, int d, TYPE_1__ * e) {
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

void write_output() {
  json output_json;

  output_json["FBIOGET_VSCREENINFO"] = FBIOGET_VSCREENINFO;

  output_json["FB_ACTIVATE_FORCE"] = FB_ACTIVATE_FORCE;

  output_json["FB_ACTIVATE_NOW"] = FB_ACTIVATE_NOW;

  output_json["fb"] = fb;
  json output_temp_1;

  output_temp_1["activate"] = fb_var_info.activate;

  output_temp_1["yres_virtual"] = fb_var_info.yres_virtual;

  output_temp_1["yres"] = fb_var_info.yres;

  output_temp_1["yoffset"] = fb_var_info.yoffset;
  output_json["fb_var_info"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  FBIOGET_VSCREENINFO = input_json["FBIOGET_VSCREENINFO"];
  FB_ACTIVATE_FORCE = input_json["FB_ACTIVATE_FORCE"];
  FB_ACTIVATE_NOW = input_json["FB_ACTIVATE_NOW"];
  fb = input_json["fb"];
  int fb_var_info__activate = input_json["fb_var_info"]["activate"];
  int fb_var_info__yres_virtual = input_json["fb_var_info"]["yres_virtual"];
  int fb_var_info__yres = input_json["fb_var_info"]["yres"];
  int fb_var_info__yoffset = input_json["fb_var_info"]["yoffset"];
  fb_var_info = {fb_var_info__activate, fb_var_info__yres_virtual, fb_var_info__yres, fb_var_info__yoffset};
  clock_t begin = clock();
  lfb_refresh();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}