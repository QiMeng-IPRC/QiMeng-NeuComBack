#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int AMODE; int MODE; int CHEN; } ;
struct TYPE_11__ {int FORCE; } ;
struct TYPE_10__ {int AMODE; int MODE; int CHEN; } ;
struct TYPE_9__ {int /*<<< orphan*/  TXBufferOffset; } ;
struct TYPE_8__ {scalar_t__ StartOffset; scalar_t__ DMAOffset; scalar_t__ BlockLen; } ;
typedef  TYPE_1__ SD_Data_Block ;
typedef  TYPE_2__ SD_Card ;

/* Variables and functions */
extern  scalar_t__ DMA2CNT ; 
extern  TYPE_7__ DMA2CONbits ; 
extern  TYPE_6__ DMA2REQbits ; 
extern  int /*<<< orphan*/  DMA2STA ; 
extern  scalar_t__ DMA3CNT ; 
extern  TYPE_5__ DMA3CONbits ; 
extern  scalar_t__ DMA3STA ; 
extern  int SD_DMA_TXBuffer ; 
extern "C" { void SD_DMA_ReceiveBlock(SD_Card *card, SD_Data_Block *data);
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

void write_output(TYPE_2__* card, TYPE_1__* data) {
  json output_json;
  TYPE_2__ output_temp_1 = *card;
  json output_temp_2;

  output_temp_2["TXBufferOffset"] = output_temp_1.TXBufferOffset;
  output_json["card"] = output_temp_2;
  TYPE_1__ output_temp_3 = *data;
  json output_temp_4;

  output_temp_4["StartOffset"] = output_temp_3.StartOffset;

  output_temp_4["DMAOffset"] = output_temp_3.DMAOffset;

  output_temp_4["BlockLen"] = output_temp_3.BlockLen;
  output_json["data"] = output_temp_4;

  output_json["DMA2CNT"] = DMA2CNT;
  json output_temp_5;

  output_temp_5["AMODE"] = DMA2CONbits.AMODE;

  output_temp_5["MODE"] = DMA2CONbits.MODE;

  output_temp_5["CHEN"] = DMA2CONbits.CHEN;
  output_json["DMA2CONbits"] = output_temp_5;
  json output_temp_6;

  output_temp_6["FORCE"] = DMA2REQbits.FORCE;
  output_json["DMA2REQbits"] = output_temp_6;

  output_json["DMA2STA"] = DMA2STA;

  output_json["DMA3CNT"] = DMA3CNT;
  json output_temp_7;

  output_temp_7["AMODE"] = DMA3CONbits.AMODE;

  output_temp_7["MODE"] = DMA3CONbits.MODE;

  output_temp_7["CHEN"] = DMA3CONbits.CHEN;
  output_json["DMA3CONbits"] = output_temp_7;

  output_json["DMA3STA"] = DMA3STA;

  output_json["SD_DMA_TXBuffer"] = SD_DMA_TXBuffer;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int card_pointer__TXBufferOffset = input_json["card"]["TXBufferOffset"];
  TYPE_2__ card_pointer = {card_pointer__TXBufferOffset};
  TYPE_2__* card = &card_pointer;
  long int data_pointer__StartOffset = input_json["data"]["StartOffset"];
  long int data_pointer__DMAOffset = input_json["data"]["DMAOffset"];
  long int data_pointer__BlockLen = input_json["data"]["BlockLen"];
  TYPE_1__ data_pointer = {data_pointer__StartOffset, data_pointer__DMAOffset, data_pointer__BlockLen};
  TYPE_1__* data = &data_pointer;
  DMA2CNT = input_json["DMA2CNT"];
  int DMA2CONbits__AMODE = input_json["DMA2CONbits"]["AMODE"];
  int DMA2CONbits__MODE = input_json["DMA2CONbits"]["MODE"];
  int DMA2CONbits__CHEN = input_json["DMA2CONbits"]["CHEN"];
  DMA2CONbits = {DMA2CONbits__AMODE, DMA2CONbits__MODE, DMA2CONbits__CHEN};
  int DMA2REQbits__FORCE = input_json["DMA2REQbits"]["FORCE"];
  DMA2REQbits = {DMA2REQbits__FORCE};
  DMA2STA = input_json["DMA2STA"];
  DMA3CNT = input_json["DMA3CNT"];
  int DMA3CONbits__AMODE = input_json["DMA3CONbits"]["AMODE"];
  int DMA3CONbits__MODE = input_json["DMA3CONbits"]["MODE"];
  int DMA3CONbits__CHEN = input_json["DMA3CONbits"]["CHEN"];
  DMA3CONbits = {DMA3CONbits__AMODE, DMA3CONbits__MODE, DMA3CONbits__CHEN};
  DMA3STA = input_json["DMA3STA"];
  SD_DMA_TXBuffer = input_json["SD_DMA_TXBuffer"];
  clock_t begin = clock();
  SD_DMA_ReceiveBlock(card, data);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(card, data);
}