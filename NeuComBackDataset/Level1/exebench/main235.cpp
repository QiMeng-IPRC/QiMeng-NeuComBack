#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* currentLexem; char* endOfBuffer; char* beginningOfBuffer; char* macroName; int /*<<< orphan*/  inputType; } ;
typedef  TYPE_1__ S_lexInput ;
typedef  int /*<<< orphan*/  InputType ;

/* Variables and functions */
extern "C" { void fillLexInput(S_lexInput *lexInput, char *currentLexem, char *endOfBuffer, char *beginningOfBuffer, char *macroName, InputType margExpFlag);
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

void write_output(TYPE_1__* lexInput, char* currentLexem, char* endOfBuffer, char* beginningOfBuffer, char* macroName, int margExpFlag) {
  json output_json;
  TYPE_1__ output_temp_1 = *lexInput;
  json output_temp_2;

  output_temp_2["currentLexem"] = output_temp_1.currentLexem;

  output_temp_2["endOfBuffer"] = output_temp_1.endOfBuffer;

  output_temp_2["beginningOfBuffer"] = output_temp_1.beginningOfBuffer;

  output_temp_2["macroName"] = output_temp_1.macroName;

  output_temp_2["inputType"] = output_temp_1.inputType;
  output_json["lexInput"] = output_temp_2;

  output_json["currentLexem"] = currentLexem;

  output_json["endOfBuffer"] = endOfBuffer;

  output_json["beginningOfBuffer"] = beginningOfBuffer;

  output_json["macroName"] = macroName;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* lexInput_pointer__currentLexem = strdup(input_json["lexInput"]["currentLexem"].get<std::string>().c_str());
  char* lexInput_pointer__endOfBuffer = strdup(input_json["lexInput"]["endOfBuffer"].get<std::string>().c_str());
  char* lexInput_pointer__beginningOfBuffer = strdup(input_json["lexInput"]["beginningOfBuffer"].get<std::string>().c_str());
  char* lexInput_pointer__macroName = strdup(input_json["lexInput"]["macroName"].get<std::string>().c_str());
  int lexInput_pointer__inputType = input_json["lexInput"]["inputType"];
  TYPE_1__ lexInput_pointer = {lexInput_pointer__currentLexem, lexInput_pointer__endOfBuffer, lexInput_pointer__beginningOfBuffer, lexInput_pointer__macroName, lexInput_pointer__inputType};
  TYPE_1__* lexInput = &lexInput_pointer;
  char* currentLexem = strdup(input_json["currentLexem"].get<std::string>().c_str());
  char* endOfBuffer = strdup(input_json["endOfBuffer"].get<std::string>().c_str());
  char* beginningOfBuffer = strdup(input_json["beginningOfBuffer"].get<std::string>().c_str());
  char* macroName = strdup(input_json["macroName"].get<std::string>().c_str());
  int margExpFlag = input_json["margExpFlag"];
  clock_t begin = clock();
  fillLexInput(lexInput, currentLexem, endOfBuffer, beginningOfBuffer, macroName, margExpFlag);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(lexInput, currentLexem, endOfBuffer, beginningOfBuffer, macroName, margExpFlag);
}