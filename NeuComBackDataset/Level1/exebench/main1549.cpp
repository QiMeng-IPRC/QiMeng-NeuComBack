#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int start_src; int scan_begin_src; int convert_src; int scan_end_src; int stop_src; scalar_t__ start_arg; int scan_begin_arg; int convert_arg; int chanlist_len; int stop_arg; int scan_end_arg; } ;
struct TYPE_2__ {int ui_MinDelaytimeNs; int ui_MinAcquisitiontimeNs; int i_AiChannelList; } ;

/* Variables and functions */
extern  int TRIG_COUNT ; 
extern  int TRIG_EXT ; 
extern  int TRIG_FOLLOW ; 
extern  int TRIG_NONE ; 
extern  int TRIG_NOW ; 
extern  int TRIG_TIMER ; 
extern  TYPE_1__* this_board ; 
extern "C" { int i_APCI3120_CommandTestAnalogInput(struct comedi_device *dev, struct comedi_subdevice *s, struct comedi_cmd *cmd);
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

void write_output(struct comedi_device* dev, struct comedi_subdevice* s, struct comedi_cmd* cmd, int returnv) {
  json output_json;
  std::vector<json> output_temp_3;
  for (unsigned int i4 = 0; i4 < 32; i4++) {
    struct comedi_device output_temp_5 = dev[i4];
    json output_temp_6;

    output_temp_6["dummy"] = output_temp_5.dummy;
    output_temp_3.push_back(output_temp_6);
  }
  output_json["dev"] = output_temp_3;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    struct comedi_subdevice output_temp_9 = s[i8];
    json output_temp_10;

    output_temp_10["dummy"] = output_temp_9.dummy;
    output_temp_7.push_back(output_temp_10);
  }
  output_json["s"] = output_temp_7;
  struct comedi_cmd output_temp_11 = *cmd;
  json output_temp_12;

  output_temp_12["start_src"] = output_temp_11.start_src;

  output_temp_12["scan_begin_src"] = output_temp_11.scan_begin_src;

  output_temp_12["convert_src"] = output_temp_11.convert_src;

  output_temp_12["scan_end_src"] = output_temp_11.scan_end_src;

  output_temp_12["stop_src"] = output_temp_11.stop_src;

  output_temp_12["start_arg"] = output_temp_11.start_arg;

  output_temp_12["scan_begin_arg"] = output_temp_11.scan_begin_arg;

  output_temp_12["convert_arg"] = output_temp_11.convert_arg;

  output_temp_12["chanlist_len"] = output_temp_11.chanlist_len;

  output_temp_12["stop_arg"] = output_temp_11.stop_arg;

  output_temp_12["scan_end_arg"] = output_temp_11.scan_end_arg;
  output_json["cmd"] = output_temp_12;

  output_json["TRIG_COUNT"] = TRIG_COUNT;

  output_json["TRIG_EXT"] = TRIG_EXT;

  output_json["TRIG_FOLLOW"] = TRIG_FOLLOW;

  output_json["TRIG_NONE"] = TRIG_NONE;

  output_json["TRIG_NOW"] = TRIG_NOW;

  output_json["TRIG_TIMER"] = TRIG_TIMER;
  TYPE_1__ output_temp_13 = *this_board;
  json output_temp_14;

  output_temp_14["ui_MinDelaytimeNs"] = output_temp_13.ui_MinDelaytimeNs;

  output_temp_14["ui_MinAcquisitiontimeNs"] = output_temp_13.ui_MinAcquisitiontimeNs;

  output_temp_14["i_AiChannelList"] = output_temp_13.i_AiChannelList;
  output_json["this_board"] = output_temp_14;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct comedi_device> input_temp_1_vec;
  for (auto& elem : input_json["dev"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct comedi_device input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct comedi_device* dev = &input_temp_1_vec[0];
  std::vector<struct comedi_subdevice> input_temp_2_vec;
  for (auto& elem : input_json["s"]) {
    int input_temp_2_inner__dummy = elem["dummy"];
    struct comedi_subdevice input_temp_2_inner = {input_temp_2_inner__dummy};
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  struct comedi_subdevice* s = &input_temp_2_vec[0];
  int cmd_pointer__start_src = input_json["cmd"]["start_src"];
  int cmd_pointer__scan_begin_src = input_json["cmd"]["scan_begin_src"];
  int cmd_pointer__convert_src = input_json["cmd"]["convert_src"];
  int cmd_pointer__scan_end_src = input_json["cmd"]["scan_end_src"];
  int cmd_pointer__stop_src = input_json["cmd"]["stop_src"];
  long int cmd_pointer__start_arg = input_json["cmd"]["start_arg"];
  int cmd_pointer__scan_begin_arg = input_json["cmd"]["scan_begin_arg"];
  int cmd_pointer__convert_arg = input_json["cmd"]["convert_arg"];
  int cmd_pointer__chanlist_len = input_json["cmd"]["chanlist_len"];
  int cmd_pointer__stop_arg = input_json["cmd"]["stop_arg"];
  int cmd_pointer__scan_end_arg = input_json["cmd"]["scan_end_arg"];
  struct comedi_cmd cmd_pointer = {cmd_pointer__start_src, cmd_pointer__scan_begin_src, cmd_pointer__convert_src, cmd_pointer__scan_end_src, cmd_pointer__stop_src, cmd_pointer__start_arg, cmd_pointer__scan_begin_arg, cmd_pointer__convert_arg, cmd_pointer__chanlist_len, cmd_pointer__stop_arg, cmd_pointer__scan_end_arg};
  struct comedi_cmd* cmd = &cmd_pointer;
  TRIG_COUNT = input_json["TRIG_COUNT"];
  TRIG_EXT = input_json["TRIG_EXT"];
  TRIG_FOLLOW = input_json["TRIG_FOLLOW"];
  TRIG_NONE = input_json["TRIG_NONE"];
  TRIG_NOW = input_json["TRIG_NOW"];
  TRIG_TIMER = input_json["TRIG_TIMER"];
  int this_board_pointer__ui_MinDelaytimeNs = input_json["this_board"]["ui_MinDelaytimeNs"];
  int this_board_pointer__ui_MinAcquisitiontimeNs = input_json["this_board"]["ui_MinAcquisitiontimeNs"];
  int this_board_pointer__i_AiChannelList = input_json["this_board"]["i_AiChannelList"];
  TYPE_1__ this_board_pointer = {this_board_pointer__ui_MinDelaytimeNs, this_board_pointer__ui_MinAcquisitiontimeNs, this_board_pointer__i_AiChannelList};
  this_board = &this_board_pointer;
  clock_t begin = clock();
  int returnv = i_APCI3120_CommandTestAnalogInput(dev, s, cmd);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(dev, s, cmd, returnv);
}