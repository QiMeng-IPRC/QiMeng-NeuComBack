#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ LATB11; } ;
struct TYPE_5__ {scalar_t__ LATD4; } ;
struct TYPE_4__ {scalar_t__ LATG15; scalar_t__ LATG6; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  ANSELA ; 
extern  int /*<<< orphan*/  ANSELB ; 
extern  int ANSELG ; 
extern  int /*<<< orphan*/  BIT11 ; 
extern  int BIT15 ; 
extern  int /*<<< orphan*/  BIT4 ; 
extern  int /*<<< orphan*/  BIT5 ; 
extern  int BIT6 ; 
extern  TYPE_3__ LATBbits ; 
extern  TYPE_2__ LATDbits ; 
extern  TYPE_1__ LATGbits ; 
extern  int /*<<< orphan*/  TRISA ; 
extern  int /*<<< orphan*/  TRISB ; 
extern  int /*<<< orphan*/  TRISD ; 
extern  int TRISG ; 
extern "C" { void InitApp(void);
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

  output_json["ANSELA"] = ANSELA;

  output_json["ANSELB"] = ANSELB;

  output_json["ANSELG"] = ANSELG;

  output_json["BIT11"] = BIT11;

  output_json["BIT15"] = BIT15;

  output_json["BIT4"] = BIT4;

  output_json["BIT5"] = BIT5;

  output_json["BIT6"] = BIT6;
  json output_temp_1;

  output_temp_1["LATB11"] = LATBbits.LATB11;
  output_json["LATBbits"] = output_temp_1;
  json output_temp_2;

  output_temp_2["LATD4"] = LATDbits.LATD4;
  output_json["LATDbits"] = output_temp_2;
  json output_temp_3;

  output_temp_3["LATG15"] = LATGbits.LATG15;

  output_temp_3["LATG6"] = LATGbits.LATG6;
  output_json["LATGbits"] = output_temp_3;

  output_json["TRISA"] = TRISA;

  output_json["TRISB"] = TRISB;

  output_json["TRISD"] = TRISD;

  output_json["TRISG"] = TRISG;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  ANSELA = input_json["ANSELA"];
  ANSELB = input_json["ANSELB"];
  ANSELG = input_json["ANSELG"];
  BIT11 = input_json["BIT11"];
  BIT15 = input_json["BIT15"];
  BIT4 = input_json["BIT4"];
  BIT5 = input_json["BIT5"];
  BIT6 = input_json["BIT6"];
  long int LATBbits__LATB11 = input_json["LATBbits"]["LATB11"];
  LATBbits = {LATBbits__LATB11};
  long int LATDbits__LATD4 = input_json["LATDbits"]["LATD4"];
  LATDbits = {LATDbits__LATD4};
  long int LATGbits__LATG15 = input_json["LATGbits"]["LATG15"];
  long int LATGbits__LATG6 = input_json["LATGbits"]["LATG6"];
  LATGbits = {LATGbits__LATG15, LATGbits__LATG6};
  TRISA = input_json["TRISA"];
  TRISB = input_json["TRISB"];
  TRISD = input_json["TRISD"];
  TRISG = input_json["TRISG"];
  clock_t begin = clock();
  InitApp();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}