#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int P1DIR ; 
extern  int P1SEL ; 
extern  int PERCFG ; 
extern  int U1BAUD ; 
extern  int U1CSR ; 
extern  int U1GCR ; 
extern  int U1UCR ; 
extern "C" { void usart_init(void);
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

  output_json["P1DIR"] = P1DIR;

  output_json["P1SEL"] = P1SEL;

  output_json["PERCFG"] = PERCFG;

  output_json["U1BAUD"] = U1BAUD;

  output_json["U1CSR"] = U1CSR;

  output_json["U1GCR"] = U1GCR;

  output_json["U1UCR"] = U1UCR;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  P1DIR = input_json["P1DIR"];
  P1SEL = input_json["P1SEL"];
  PERCFG = input_json["PERCFG"];
  U1BAUD = input_json["U1BAUD"];
  U1CSR = input_json["U1CSR"];
  U1GCR = input_json["U1GCR"];
  U1UCR = input_json["U1UCR"];
  clock_t begin = clock();
  usart_init();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}