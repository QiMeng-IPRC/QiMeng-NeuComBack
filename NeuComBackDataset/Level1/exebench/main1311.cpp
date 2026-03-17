#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct picolParser {char* start; char* p; char* end; int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
extern  int PICOL_OK ; 
extern  int /*<<< orphan*/  PT_EOL ; 
extern "C" { int picolParseEol(struct picolParser *p);
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

void write_output(struct picolParser* p, int returnv) {
  json output_json;
  struct picolParser output_temp_1 = *p;
  json output_temp_2;

  output_temp_2["start"] = output_temp_1.start;

  output_temp_2["p"] = output_temp_1.p;

  output_temp_2["end"] = output_temp_1.end;

  output_temp_2["type"] = output_temp_1.type;

  output_temp_2["len"] = output_temp_1.len;
  output_json["p"] = output_temp_2;

  output_json["PICOL_OK"] = PICOL_OK;

  output_json["PT_EOL"] = PT_EOL;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  char* p_pointer__start = strdup(input_json["p"]["start"].get<std::string>().c_str());
  char* p_pointer__p = strdup(input_json["p"]["p"].get<std::string>().c_str());
  char* p_pointer__end = strdup(input_json["p"]["end"].get<std::string>().c_str());
  int p_pointer__type = input_json["p"]["type"];
  int p_pointer__len = input_json["p"]["len"];
  struct picolParser p_pointer = {p_pointer__start, p_pointer__p, p_pointer__end, p_pointer__type, p_pointer__len};
  struct picolParser* p = &p_pointer;
  PICOL_OK = input_json["PICOL_OK"];
  PT_EOL = input_json["PT_EOL"];
  clock_t begin = clock();
  int returnv = picolParseEol(p);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(p, returnv);
}