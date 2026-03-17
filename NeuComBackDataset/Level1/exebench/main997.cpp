#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int DDRA ; 
extern  int DDRB ; 
extern  int DDRC ; 
extern  int DDRD ; 
extern  int PORTC ; 
extern  int PORTD ; 
extern "C" { void DRAM_Init(void);
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

  output_json["DDRA"] = DDRA;

  output_json["DDRB"] = DDRB;

  output_json["DDRC"] = DDRC;

  output_json["DDRD"] = DDRD;

  output_json["PORTC"] = PORTC;

  output_json["PORTD"] = PORTD;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  DDRA = input_json["DDRA"];
  DDRB = input_json["DDRB"];
  DDRC = input_json["DDRC"];
  DDRD = input_json["DDRD"];
  PORTC = input_json["PORTC"];
  PORTD = input_json["PORTD"];
  clock_t begin = clock();
  DRAM_Init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}