#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;

/* Variables and functions */
extern  int CKCON ; 
extern  int EA ; 
extern  int ES0 ; 
extern  int PCON ; 
extern  scalar_t__ RI ; 
extern  int SCON0 ; 
extern  scalar_t__ TF1 ; 
extern  int /*<<< orphan*/  TH1 ; 
extern  scalar_t__ TI ; 
extern  int /*<<< orphan*/  TL1 ; 
extern  int TMOD ; 
extern  int TR1 ; 
extern  scalar_t__ receiveHead0 ; 
extern  scalar_t__ receiveTail0 ; 
extern  scalar_t__ transmitIsBusy0 ; 
extern "C" { void serial0_init(uchar reload_value);
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

void write_output(int reload_value) {
  json output_json;

  output_json["CKCON"] = CKCON;

  output_json["EA"] = EA;

  output_json["ES0"] = ES0;

  output_json["PCON"] = PCON;

  output_json["RI"] = RI;

  output_json["SCON0"] = SCON0;

  output_json["TF1"] = TF1;

  output_json["TH1"] = TH1;

  output_json["TI"] = TI;

  output_json["TL1"] = TL1;

  output_json["TMOD"] = TMOD;

  output_json["TR1"] = TR1;

  output_json["receiveHead0"] = receiveHead0;

  output_json["receiveTail0"] = receiveTail0;

  output_json["transmitIsBusy0"] = transmitIsBusy0;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int reload_value = input_json["reload_value"];
  CKCON = input_json["CKCON"];
  EA = input_json["EA"];
  ES0 = input_json["ES0"];
  PCON = input_json["PCON"];
  RI = input_json["RI"];
  SCON0 = input_json["SCON0"];
  TF1 = input_json["TF1"];
  TH1 = input_json["TH1"];
  TI = input_json["TI"];
  TL1 = input_json["TL1"];
  TMOD = input_json["TMOD"];
  TR1 = input_json["TR1"];
  receiveHead0 = input_json["receiveHead0"];
  receiveTail0 = input_json["receiveTail0"];
  transmitIsBusy0 = input_json["transmitIsBusy0"];
  clock_t begin = clock();
  serial0_init(reload_value);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(reload_value);
}