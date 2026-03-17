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
struct TYPE_6__ {unsigned int x; unsigned int y; unsigned int w; unsigned int h; } ;
struct TYPE_5__ {unsigned int w; unsigned int h; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {unsigned int w_w; unsigned int w_h; unsigned int w; unsigned int h; scalar_t__ y; scalar_t__ x; scalar_t__ w_y; scalar_t__ w_x; } ;

/* Variables and functions */
extern  TYPE_3__ overlay ; 
extern  TYPE_2__ scaler_dst ; 
extern  TYPE_1__ scaler_src ; 
extern  scalar_t__ sequence_type ; 
extern  unsigned int source_format ; 
extern  unsigned int video_height ; 
extern  unsigned int video_width ; 
extern "C" { void tcc_set_video_output( unsigned int uiOutWidth, unsigned int uiOutHeight, unsigned int uiSrcStride, unsigned int uiDstStartH, unsigned int uiDstStartV, unsigned int uiDstWidth, unsigned int uiDstHeight, unsigned int uiSrcFormat, int interlaced);
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

void write_output(unsigned int uiOutWidth, unsigned int uiOutHeight, unsigned int uiSrcStride, unsigned int uiDstStartH, unsigned int uiDstStartV, unsigned int uiDstWidth, unsigned int uiDstHeight, unsigned int uiSrcFormat, int interlaced) {
  json output_json;
  json output_temp_1;

  output_temp_1["x"] = overlay.x;

  output_temp_1["y"] = overlay.y;

  output_temp_1["w"] = overlay.w;

  output_temp_1["h"] = overlay.h;
  output_json["overlay"] = output_temp_1;
  json output_temp_2;

  output_temp_2["w"] = scaler_dst.w;

  output_temp_2["h"] = scaler_dst.h;

  output_temp_2["y"] = scaler_dst.y;

  output_temp_2["x"] = scaler_dst.x;
  output_json["scaler_dst"] = output_temp_2;
  json output_temp_3;

  output_temp_3["w_w"] = scaler_src.w_w;

  output_temp_3["w_h"] = scaler_src.w_h;

  output_temp_3["w"] = scaler_src.w;

  output_temp_3["h"] = scaler_src.h;

  output_temp_3["y"] = scaler_src.y;

  output_temp_3["x"] = scaler_src.x;

  output_temp_3["w_y"] = scaler_src.w_y;

  output_temp_3["w_x"] = scaler_src.w_x;
  output_json["scaler_src"] = output_temp_3;

  output_json["sequence_type"] = sequence_type;

  output_json["source_format"] = source_format;

  output_json["video_height"] = video_height;

  output_json["video_width"] = video_width;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  unsigned int uiOutWidth = input_json["uiOutWidth"];
  unsigned int uiOutHeight = input_json["uiOutHeight"];
  unsigned int uiSrcStride = input_json["uiSrcStride"];
  unsigned int uiDstStartH = input_json["uiDstStartH"];
  unsigned int uiDstStartV = input_json["uiDstStartV"];
  unsigned int uiDstWidth = input_json["uiDstWidth"];
  unsigned int uiDstHeight = input_json["uiDstHeight"];
  unsigned int uiSrcFormat = input_json["uiSrcFormat"];
  int interlaced = input_json["interlaced"];
  unsigned int overlay__x = input_json["overlay"]["x"];
  unsigned int overlay__y = input_json["overlay"]["y"];
  unsigned int overlay__w = input_json["overlay"]["w"];
  unsigned int overlay__h = input_json["overlay"]["h"];
  overlay = {overlay__x, overlay__y, overlay__w, overlay__h};
  unsigned int scaler_dst__w = input_json["scaler_dst"]["w"];
  unsigned int scaler_dst__h = input_json["scaler_dst"]["h"];
  long int scaler_dst__y = input_json["scaler_dst"]["y"];
  long int scaler_dst__x = input_json["scaler_dst"]["x"];
  scaler_dst = {scaler_dst__w, scaler_dst__h, scaler_dst__y, scaler_dst__x};
  unsigned int scaler_src__w_w = input_json["scaler_src"]["w_w"];
  unsigned int scaler_src__w_h = input_json["scaler_src"]["w_h"];
  unsigned int scaler_src__w = input_json["scaler_src"]["w"];
  unsigned int scaler_src__h = input_json["scaler_src"]["h"];
  long int scaler_src__y = input_json["scaler_src"]["y"];
  long int scaler_src__x = input_json["scaler_src"]["x"];
  long int scaler_src__w_y = input_json["scaler_src"]["w_y"];
  long int scaler_src__w_x = input_json["scaler_src"]["w_x"];
  scaler_src = {scaler_src__w_w, scaler_src__w_h, scaler_src__w, scaler_src__h, scaler_src__y, scaler_src__x, scaler_src__w_y, scaler_src__w_x};
  sequence_type = input_json["sequence_type"];
  source_format = input_json["source_format"];
  video_height = input_json["video_height"];
  video_width = input_json["video_width"];
  clock_t begin = clock();
  tcc_set_video_output(uiOutWidth, uiOutHeight, uiSrcStride, uiDstStartH, uiDstStartV, uiDstWidth, uiDstHeight, uiSrcFormat, interlaced);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(uiOutWidth, uiOutHeight, uiSrcStride, uiDstStartH, uiDstStartV, uiDstWidth, uiDstHeight, uiSrcFormat, interlaced);
}