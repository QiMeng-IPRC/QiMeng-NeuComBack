#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int iMinX; int iMinY; int iMaxX; int iMaxY; } ;
struct TYPE_9__ {int iX; int iY; } ;
struct TYPE_8__ {int iX; int iY; } ;
struct TYPE_7__ {int iX; int iY; } ;
struct TYPE_11__ {TYPE_4__ rec; TYPE_3__ p3; TYPE_2__ p2; TYPE_1__ p1; } ;
typedef  TYPE_5__ Triangle ;

/* Variables and functions */
extern "C" { void createRectBox(Triangle *pTri);
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

void write_output(TYPE_5__* pTri) {
  json output_json;
  TYPE_5__ output_temp_1 = *pTri;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["iMinX"] = output_temp_1.rec.iMinX;

  output_temp_3["iMinY"] = output_temp_1.rec.iMinY;

  output_temp_3["iMaxX"] = output_temp_1.rec.iMaxX;

  output_temp_3["iMaxY"] = output_temp_1.rec.iMaxY;
  output_temp_2["rec"] = output_temp_3;
  json output_temp_4;

  output_temp_4["iX"] = output_temp_1.p3.iX;

  output_temp_4["iY"] = output_temp_1.p3.iY;
  output_temp_2["p3"] = output_temp_4;
  json output_temp_5;

  output_temp_5["iX"] = output_temp_1.p2.iX;

  output_temp_5["iY"] = output_temp_1.p2.iY;
  output_temp_2["p2"] = output_temp_5;
  json output_temp_6;

  output_temp_6["iX"] = output_temp_1.p1.iX;

  output_temp_6["iY"] = output_temp_1.p1.iY;
  output_temp_2["p1"] = output_temp_6;
  output_json["pTri"] = output_temp_2;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int pTri_pointer__rec__iMinX = input_json["pTri"]["rec"]["iMinX"];
  int pTri_pointer__rec__iMinY = input_json["pTri"]["rec"]["iMinY"];
  int pTri_pointer__rec__iMaxX = input_json["pTri"]["rec"]["iMaxX"];
  int pTri_pointer__rec__iMaxY = input_json["pTri"]["rec"]["iMaxY"];
  TYPE_4__ pTri_pointer__rec = {pTri_pointer__rec__iMinX, pTri_pointer__rec__iMinY, pTri_pointer__rec__iMaxX, pTri_pointer__rec__iMaxY};
  int pTri_pointer__p3__iX = input_json["pTri"]["p3"]["iX"];
  int pTri_pointer__p3__iY = input_json["pTri"]["p3"]["iY"];
  TYPE_3__ pTri_pointer__p3 = {pTri_pointer__p3__iX, pTri_pointer__p3__iY};
  int pTri_pointer__p2__iX = input_json["pTri"]["p2"]["iX"];
  int pTri_pointer__p2__iY = input_json["pTri"]["p2"]["iY"];
  TYPE_2__ pTri_pointer__p2 = {pTri_pointer__p2__iX, pTri_pointer__p2__iY};
  int pTri_pointer__p1__iX = input_json["pTri"]["p1"]["iX"];
  int pTri_pointer__p1__iY = input_json["pTri"]["p1"]["iY"];
  TYPE_1__ pTri_pointer__p1 = {pTri_pointer__p1__iX, pTri_pointer__p1__iY};
  TYPE_5__ pTri_pointer = {pTri_pointer__rec, pTri_pointer__p3, pTri_pointer__p2, pTri_pointer__p1};
  TYPE_5__* pTri = &pTri_pointer;
  clock_t begin = clock();
  createRectBox(pTri);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(pTri);
}