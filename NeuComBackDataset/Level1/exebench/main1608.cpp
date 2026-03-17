#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  int RXEN0 ; 
extern  int RXEN1 ; 
extern  int TXEN0 ; 
extern  int TXEN1 ; 
extern  unsigned long UBRR0H ; 
extern  unsigned long UBRR0L ; 
extern  unsigned long UBRR1H ; 
extern  unsigned long UBRR1L ; 
extern  int UCSR0B ; 
extern  int UCSR0C ; 
extern  int UCSR1B ; 
extern  int UCSR1C ; 
extern  int UCSZ00 ; 
extern  int UCSZ01 ; 
extern  int UCSZ10 ; 
extern  int UCSZ11 ; 
extern "C" { void initUSART(unsigned char usartNum);
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

void write_output(unsigned char usartNum) {
  json output_json;

  output_json["RXEN0"] = RXEN0;

  output_json["RXEN1"] = RXEN1;

  output_json["TXEN0"] = TXEN0;

  output_json["TXEN1"] = TXEN1;

  output_json["UBRR0H"] = UBRR0H;

  output_json["UBRR0L"] = UBRR0L;

  output_json["UBRR1H"] = UBRR1H;

  output_json["UBRR1L"] = UBRR1L;

  output_json["UCSR0B"] = UCSR0B;

  output_json["UCSR0C"] = UCSR0C;

  output_json["UCSR1B"] = UCSR1B;

  output_json["UCSR1C"] = UCSR1C;

  output_json["UCSZ00"] = UCSZ00;

  output_json["UCSZ01"] = UCSZ01;

  output_json["UCSZ10"] = UCSZ10;

  output_json["UCSZ11"] = UCSZ11;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned char usartNum = input_json["usartNum"];
  RXEN0 = input_json["RXEN0"];
  RXEN1 = input_json["RXEN1"];
  TXEN0 = input_json["TXEN0"];
  TXEN1 = input_json["TXEN1"];
  UBRR0H = input_json["UBRR0H"];
  UBRR0L = input_json["UBRR0L"];
  UBRR1H = input_json["UBRR1H"];
  UBRR1L = input_json["UBRR1L"];
  UCSR0B = input_json["UCSR0B"];
  UCSR0C = input_json["UCSR0C"];
  UCSR1B = input_json["UCSR1B"];
  UCSR1C = input_json["UCSR1C"];
  UCSZ00 = input_json["UCSZ00"];
  UCSZ01 = input_json["UCSZ01"];
  UCSZ10 = input_json["UCSZ10"];
  UCSZ11 = input_json["UCSZ11"];
  clock_t begin = clock();
  initUSART(usartNum);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(usartNum);
}