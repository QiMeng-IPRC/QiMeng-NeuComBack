#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int real ;
typedef  scalar_t__ integer ;
struct TYPE_3__ {int a11; int a12; int a13; int a21; int a22; int a23; int a31; int a32; int a33; } ;
struct TYPE_4__ {TYPE_1__ _8; } ;

/* Variables and functions */
extern  TYPE_2__ geopack1_ ; 
extern "C" { int geogsm_(real *xgeo, real *ygeo, real *zgeo, real *xgsm, real *ygsm, real *zgsm, integer *j);
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

void write_output(int* xgeo, int* ygeo, int* zgeo, int* xgsm, int* ygsm, int* zgsm, long int* j, int returnv) {
  json output_json;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = xgeo[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["xgeo"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    int output_temp_13 = ygeo[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["ygeo"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    int output_temp_16 = zgeo[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["zgeo"] = output_temp_14;
  std::vector<json> output_temp_17;
  for (unsigned int i18 = 0; i18 < 32; i18++) {
    int output_temp_19 = xgsm[i18];

    output_temp_17.push_back(output_temp_19);
  }
  output_json["xgsm"] = output_temp_17;
  std::vector<json> output_temp_20;
  for (unsigned int i21 = 0; i21 < 32; i21++) {
    int output_temp_22 = ygsm[i21];

    output_temp_20.push_back(output_temp_22);
  }
  output_json["ygsm"] = output_temp_20;
  std::vector<json> output_temp_23;
  for (unsigned int i24 = 0; i24 < 32; i24++) {
    int output_temp_25 = zgsm[i24];

    output_temp_23.push_back(output_temp_25);
  }
  output_json["zgsm"] = output_temp_23;
  std::vector<json> output_temp_26;
  for (unsigned int i27 = 0; i27 < 32; i27++) {
    long int output_temp_28 = j[i27];

    output_temp_26.push_back(output_temp_28);
  }
  output_json["j"] = output_temp_26;
  json output_temp_29;
  json output_temp_30;

  output_temp_30["a11"] = geopack1_._8.a11;

  output_temp_30["a12"] = geopack1_._8.a12;

  output_temp_30["a13"] = geopack1_._8.a13;

  output_temp_30["a21"] = geopack1_._8.a21;

  output_temp_30["a22"] = geopack1_._8.a22;

  output_temp_30["a23"] = geopack1_._8.a23;

  output_temp_30["a31"] = geopack1_._8.a31;

  output_temp_30["a32"] = geopack1_._8.a32;

  output_temp_30["a33"] = geopack1_._8.a33;
  output_temp_29["_8"] = output_temp_30;
  output_json["geopack1_"] = output_temp_29;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<int> input_temp_1_vec;
  for (auto& elem : input_json["xgeo"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* xgeo = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["ygeo"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* ygeo = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["zgeo"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* zgeo = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["xgsm"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* xgsm = &input_temp_4_vec[0];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["ygsm"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  int* ygsm = &input_temp_5_vec[0];
  std::vector<int> input_temp_6_vec;
  for (auto& elem : input_json["zgsm"]) {
    int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  int* zgsm = &input_temp_6_vec[0];
  std::vector<long int> input_temp_7_vec;
  for (auto& elem : input_json["j"]) {
    long int input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  long int* j = &input_temp_7_vec[0];
  int geopack1____8__a11 = input_json["geopack1_"]["_8"]["a11"];
  int geopack1____8__a12 = input_json["geopack1_"]["_8"]["a12"];
  int geopack1____8__a13 = input_json["geopack1_"]["_8"]["a13"];
  int geopack1____8__a21 = input_json["geopack1_"]["_8"]["a21"];
  int geopack1____8__a22 = input_json["geopack1_"]["_8"]["a22"];
  int geopack1____8__a23 = input_json["geopack1_"]["_8"]["a23"];
  int geopack1____8__a31 = input_json["geopack1_"]["_8"]["a31"];
  int geopack1____8__a32 = input_json["geopack1_"]["_8"]["a32"];
  int geopack1____8__a33 = input_json["geopack1_"]["_8"]["a33"];
  TYPE_1__ geopack1____8 = {geopack1____8__a11, geopack1____8__a12, geopack1____8__a13, geopack1____8__a21, geopack1____8__a22, geopack1____8__a23, geopack1____8__a31, geopack1____8__a32, geopack1____8__a33};
  geopack1_ = {geopack1____8};
  clock_t begin = clock();
  int returnv = geogsm_(xgeo, ygeo, zgeo, xgsm, ygsm, zgsm, j);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(xgeo, ygeo, zgeo, xgsm, ygsm, zgsm, j, returnv);
}