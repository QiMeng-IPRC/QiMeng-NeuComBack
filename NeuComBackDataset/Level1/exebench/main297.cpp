#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__ AltKeyMap ; 
extern  int Argument ; 
extern  int /*<<< orphan*/  CcKeyMap ; 
extern  int /*<<< orphan*/  CurrentKeyMap ; 
extern  int /*<<< orphan*/ * Cursor ; 
extern  scalar_t__ DoingArg ; 
extern  int /*<<< orphan*/  F_UNASSIGNED ; 
extern  scalar_t__ Hist_num ; 
extern  int INBUFSIZE ; 
extern  scalar_t__ IncMatchLen ; 
extern  int /*<<< orphan*/ * InputBuf ; 
extern  int /*<<< orphan*/ * InputLim ; 
extern  int /*<<< orphan*/ * LastChar ; 
extern  int /*<<< orphan*/  LastCmd ; 
extern  int MacroLvl ; 
extern  int /*<<< orphan*/ * Mark ; 
extern  scalar_t__ MarkIsSet ; 
extern  scalar_t__ MetaNext ; 
extern "C" { void ResetInLine(int macro);
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

void write_output(int macro) {
  json output_json;

  output_json["AltKeyMap"] = AltKeyMap;

  output_json["Argument"] = Argument;

  output_json["CcKeyMap"] = CcKeyMap;

  output_json["CurrentKeyMap"] = CurrentKeyMap;
  std::vector<json> output_temp_6;
  for (unsigned int i7 = 0; i7 < 32; i7++) {
    int output_temp_8 = Cursor[i7];

    output_temp_6.push_back(output_temp_8);
  }
  output_json["Cursor"] = output_temp_6;

  output_json["DoingArg"] = DoingArg;

  output_json["F_UNASSIGNED"] = F_UNASSIGNED;

  output_json["Hist_num"] = Hist_num;

  output_json["INBUFSIZE"] = INBUFSIZE;

  output_json["IncMatchLen"] = IncMatchLen;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    int output_temp_11 = InputBuf[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["InputBuf"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = InputLim[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["InputLim"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    int output_temp_17 = LastChar[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["LastChar"] = output_temp_15;

  output_json["LastCmd"] = LastCmd;

  output_json["MacroLvl"] = MacroLvl;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    int output_temp_20 = Mark[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["Mark"] = output_temp_18;

  output_json["MarkIsSet"] = MarkIsSet;

  output_json["MetaNext"] = MetaNext;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int macro = input_json["macro"];
  AltKeyMap = input_json["AltKeyMap"];
  Argument = input_json["Argument"];
  CcKeyMap = input_json["CcKeyMap"];
  CurrentKeyMap = input_json["CurrentKeyMap"];
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["Cursor"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  Cursor = &input_temp_1_vec[0];
  DoingArg = input_json["DoingArg"];
  F_UNASSIGNED = input_json["F_UNASSIGNED"];
  Hist_num = input_json["Hist_num"];
  INBUFSIZE = input_json["INBUFSIZE"];
  IncMatchLen = input_json["IncMatchLen"];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["InputBuf"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  InputBuf = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["InputLim"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  InputLim = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["LastChar"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  LastChar = &input_temp_4_vec[0];
  LastCmd = input_json["LastCmd"];
  MacroLvl = input_json["MacroLvl"];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["Mark"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  Mark = &input_temp_5_vec[0];
  MarkIsSet = input_json["MarkIsSet"];
  MetaNext = input_json["MetaNext"];
  clock_t begin = clock();
  ResetInLine(macro);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(macro);
}