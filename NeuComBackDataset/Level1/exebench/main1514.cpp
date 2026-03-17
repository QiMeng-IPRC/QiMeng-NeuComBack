#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* buffer; scalar_t__ position; } ;
typedef  TYPE_1__ YLispLexer ;

/* Variables and functions */
extern "C" { void ylisp_init_lexer(YLispLexer *lexer, char *buf);
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

void write_output(TYPE_1__* lexer, char* buf) {
  json output_json;
  TYPE_1__ output_temp_1 = *lexer;
  json output_temp_2;

  output_temp_2["buffer"] = output_temp_1.buffer;

  output_temp_2["position"] = output_temp_1.position;
  output_json["lexer"] = output_temp_2;

  output_json["buf"] = buf;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* lexer_pointer__buffer = strdup(input_json["lexer"]["buffer"].get<std::string>().c_str());
  long int lexer_pointer__position = input_json["lexer"]["position"];
  TYPE_1__ lexer_pointer = {lexer_pointer__buffer, lexer_pointer__position};
  TYPE_1__* lexer = &lexer_pointer;
  char* buf = strdup(input_json["buf"].get<std::string>().c_str());
  clock_t begin = clock();
  ylisp_init_lexer(lexer, buf);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(lexer, buf);
}