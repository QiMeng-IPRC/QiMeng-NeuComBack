#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct termios {int c_iflag; int c_lflag; int c_cflag; int /*<<< orphan*/  c_oflag; } ;

/* Variables and functions */
extern  int BRKINT ; 
extern  int CS8 ; 
extern  int CSIZE ; 
extern  int ECHO ; 
extern  int ECHONL ; 
extern  int ICANON ; 
extern  int ICRNL ; 
extern  int IEXTEN ; 
extern  int IGNBRK ; 
extern  int IGNCR ; 
extern  int INLCR ; 
extern  int ISIG ; 
extern  int ISTRIP ; 
extern  int IXON ; 
extern  int /*<<< orphan*/  OPOST ; 
extern  int PARENB ; 
extern  int PARMRK ; 
extern "C" { void cfmakeraw(struct termios *tiosp);
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

void write_output(struct termios* tiosp) {
  json output_json;
  struct termios output_temp_1 = *tiosp;
  json output_temp_2;

  output_temp_2["c_iflag"] = output_temp_1.c_iflag;

  output_temp_2["c_lflag"] = output_temp_1.c_lflag;

  output_temp_2["c_cflag"] = output_temp_1.c_cflag;

  output_temp_2["c_oflag"] = output_temp_1.c_oflag;
  output_json["tiosp"] = output_temp_2;

  output_json["BRKINT"] = BRKINT;

  output_json["CS8"] = CS8;

  output_json["CSIZE"] = CSIZE;

  output_json["ECHO"] = ECHO;

  output_json["ECHONL"] = ECHONL;

  output_json["ICANON"] = ICANON;

  output_json["ICRNL"] = ICRNL;

  output_json["IEXTEN"] = IEXTEN;

  output_json["IGNBRK"] = IGNBRK;

  output_json["IGNCR"] = IGNCR;

  output_json["INLCR"] = INLCR;

  output_json["ISIG"] = ISIG;

  output_json["ISTRIP"] = ISTRIP;

  output_json["IXON"] = IXON;

  output_json["OPOST"] = OPOST;

  output_json["PARENB"] = PARENB;

  output_json["PARMRK"] = PARMRK;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int tiosp_pointer__c_iflag = input_json["tiosp"]["c_iflag"];
  int tiosp_pointer__c_lflag = input_json["tiosp"]["c_lflag"];
  int tiosp_pointer__c_cflag = input_json["tiosp"]["c_cflag"];
  int tiosp_pointer__c_oflag = input_json["tiosp"]["c_oflag"];
  struct termios tiosp_pointer = {tiosp_pointer__c_iflag, tiosp_pointer__c_lflag, tiosp_pointer__c_cflag, tiosp_pointer__c_oflag};
  struct termios* tiosp = &tiosp_pointer;
  BRKINT = input_json["BRKINT"];
  CS8 = input_json["CS8"];
  CSIZE = input_json["CSIZE"];
  ECHO = input_json["ECHO"];
  ECHONL = input_json["ECHONL"];
  ICANON = input_json["ICANON"];
  ICRNL = input_json["ICRNL"];
  IEXTEN = input_json["IEXTEN"];
  IGNBRK = input_json["IGNBRK"];
  IGNCR = input_json["IGNCR"];
  INLCR = input_json["INLCR"];
  ISIG = input_json["ISIG"];
  ISTRIP = input_json["ISTRIP"];
  IXON = input_json["IXON"];
  OPOST = input_json["OPOST"];
  PARENB = input_json["PARENB"];
  PARMRK = input_json["PARMRK"];
  clock_t begin = clock();
  cfmakeraw(tiosp);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(tiosp);
}