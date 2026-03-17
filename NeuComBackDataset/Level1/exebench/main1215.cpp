#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float r1X; float scl; float r1Y; float r1Z; float dX; float r2X; float r2Y; float r2Z; float dY; float r3X; float r3Y; float r3Z; float dZ; float trX; float trY; float trZ; float dW; } ;
typedef  TYPE_1__ trfm3D ;

/* Variables and functions */
extern "C" { void GetGLMatrixTrfm3D( const trfm3D *thisTrfm3D, float *glmatrix );
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

void write_output(TYPE_1__* thisTrfm3D, float* glmatrix) {
  json output_json;
  TYPE_1__ output_temp_2 = *thisTrfm3D;
  json output_temp_3;

  output_temp_3["r1X"] = output_temp_2.r1X;

  output_temp_3["scl"] = output_temp_2.scl;

  output_temp_3["r1Y"] = output_temp_2.r1Y;

  output_temp_3["r1Z"] = output_temp_2.r1Z;

  output_temp_3["dX"] = output_temp_2.dX;

  output_temp_3["r2X"] = output_temp_2.r2X;

  output_temp_3["r2Y"] = output_temp_2.r2Y;

  output_temp_3["r2Z"] = output_temp_2.r2Z;

  output_temp_3["dY"] = output_temp_2.dY;

  output_temp_3["r3X"] = output_temp_2.r3X;

  output_temp_3["r3Y"] = output_temp_2.r3Y;

  output_temp_3["r3Z"] = output_temp_2.r3Z;

  output_temp_3["dZ"] = output_temp_2.dZ;

  output_temp_3["trX"] = output_temp_2.trX;

  output_temp_3["trY"] = output_temp_2.trY;

  output_temp_3["trZ"] = output_temp_2.trZ;

  output_temp_3["dW"] = output_temp_2.dW;
  output_json["thisTrfm3D"] = output_temp_3;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    float output_temp_6 = glmatrix[i5];

    output_temp_4.push_back(output_temp_6);
  }
  output_json["glmatrix"] = output_temp_4;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  float thisTrfm3D_pointer__r1X = input_json["thisTrfm3D"]["r1X"];
  float thisTrfm3D_pointer__scl = input_json["thisTrfm3D"]["scl"];
  float thisTrfm3D_pointer__r1Y = input_json["thisTrfm3D"]["r1Y"];
  float thisTrfm3D_pointer__r1Z = input_json["thisTrfm3D"]["r1Z"];
  float thisTrfm3D_pointer__dX = input_json["thisTrfm3D"]["dX"];
  float thisTrfm3D_pointer__r2X = input_json["thisTrfm3D"]["r2X"];
  float thisTrfm3D_pointer__r2Y = input_json["thisTrfm3D"]["r2Y"];
  float thisTrfm3D_pointer__r2Z = input_json["thisTrfm3D"]["r2Z"];
  float thisTrfm3D_pointer__dY = input_json["thisTrfm3D"]["dY"];
  float thisTrfm3D_pointer__r3X = input_json["thisTrfm3D"]["r3X"];
  float thisTrfm3D_pointer__r3Y = input_json["thisTrfm3D"]["r3Y"];
  float thisTrfm3D_pointer__r3Z = input_json["thisTrfm3D"]["r3Z"];
  float thisTrfm3D_pointer__dZ = input_json["thisTrfm3D"]["dZ"];
  float thisTrfm3D_pointer__trX = input_json["thisTrfm3D"]["trX"];
  float thisTrfm3D_pointer__trY = input_json["thisTrfm3D"]["trY"];
  float thisTrfm3D_pointer__trZ = input_json["thisTrfm3D"]["trZ"];
  float thisTrfm3D_pointer__dW = input_json["thisTrfm3D"]["dW"];
  TYPE_1__ thisTrfm3D_pointer = {thisTrfm3D_pointer__r1X, thisTrfm3D_pointer__scl, thisTrfm3D_pointer__r1Y, thisTrfm3D_pointer__r1Z, thisTrfm3D_pointer__dX, thisTrfm3D_pointer__r2X, thisTrfm3D_pointer__r2Y, thisTrfm3D_pointer__r2Z, thisTrfm3D_pointer__dY, thisTrfm3D_pointer__r3X, thisTrfm3D_pointer__r3Y, thisTrfm3D_pointer__r3Z, thisTrfm3D_pointer__dZ, thisTrfm3D_pointer__trX, thisTrfm3D_pointer__trY, thisTrfm3D_pointer__trZ, thisTrfm3D_pointer__dW};
  TYPE_1__* thisTrfm3D = &thisTrfm3D_pointer;
  std::vector<float> input_temp_1_vec;
  for (auto& elem : input_json["glmatrix"]) {
    float input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  float* glmatrix = &input_temp_1_vec[0];
  clock_t begin = clock();
  GetGLMatrixTrfm3D(thisTrfm3D, glmatrix);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(thisTrfm3D, glmatrix);
}