#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  double Lambert_False_Easting ; 
extern  double Lambert_False_Northing ; 
extern  double Lambert_Origin_Lat ; 
extern  double Lambert_Origin_Long ; 
extern  double Lambert_Std_Parallel_1 ; 
extern  double Lambert_Std_Parallel_2 ; 
extern  double Lambert_a ; 
extern  double Lambert_f ; 
extern "C" { void Get_Lambert_2_Parameters(double *a, double *f, double *Origin_Latitude, double *Central_Meridian, double *Std_Parallel_1, double *Std_Parallel_2, double *False_Easting, double *False_Northing);
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

void write_output(double* a, double* f, double* Origin_Latitude, double* Central_Meridian, double* Std_Parallel_1, double* Std_Parallel_2, double* False_Easting, double* False_Northing) {
  json output_json;
  std::vector<json> output_temp_9;
  for (unsigned int i10 = 0; i10 < 32; i10++) {
    double output_temp_11 = a[i10];

    output_temp_9.push_back(output_temp_11);
  }
  output_json["a"] = output_temp_9;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    double output_temp_14 = f[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["f"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    double output_temp_17 = Origin_Latitude[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["Origin_Latitude"] = output_temp_15;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    double output_temp_20 = Central_Meridian[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["Central_Meridian"] = output_temp_18;
  std::vector<json> output_temp_21;
  for (unsigned int i22 = 0; i22 < 32; i22++) {
    double output_temp_23 = Std_Parallel_1[i22];

    output_temp_21.push_back(output_temp_23);
  }
  output_json["Std_Parallel_1"] = output_temp_21;
  std::vector<json> output_temp_24;
  for (unsigned int i25 = 0; i25 < 32; i25++) {
    double output_temp_26 = Std_Parallel_2[i25];

    output_temp_24.push_back(output_temp_26);
  }
  output_json["Std_Parallel_2"] = output_temp_24;
  std::vector<json> output_temp_27;
  for (unsigned int i28 = 0; i28 < 32; i28++) {
    double output_temp_29 = False_Easting[i28];

    output_temp_27.push_back(output_temp_29);
  }
  output_json["False_Easting"] = output_temp_27;
  std::vector<json> output_temp_30;
  for (unsigned int i31 = 0; i31 < 32; i31++) {
    double output_temp_32 = False_Northing[i31];

    output_temp_30.push_back(output_temp_32);
  }
  output_json["False_Northing"] = output_temp_30;

  output_json["Lambert_False_Easting"] = Lambert_False_Easting;

  output_json["Lambert_False_Northing"] = Lambert_False_Northing;

  output_json["Lambert_Origin_Lat"] = Lambert_Origin_Lat;

  output_json["Lambert_Origin_Long"] = Lambert_Origin_Long;

  output_json["Lambert_Std_Parallel_1"] = Lambert_Std_Parallel_1;

  output_json["Lambert_Std_Parallel_2"] = Lambert_Std_Parallel_2;

  output_json["Lambert_a"] = Lambert_a;

  output_json["Lambert_f"] = Lambert_f;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<double> input_temp_1_vec;
  for (auto& elem : input_json["a"]) {
    double input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  double* a = &input_temp_1_vec[0];
  std::vector<double> input_temp_2_vec;
  for (auto& elem : input_json["f"]) {
    double input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  double* f = &input_temp_2_vec[0];
  std::vector<double> input_temp_3_vec;
  for (auto& elem : input_json["Origin_Latitude"]) {
    double input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  double* Origin_Latitude = &input_temp_3_vec[0];
  std::vector<double> input_temp_4_vec;
  for (auto& elem : input_json["Central_Meridian"]) {
    double input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  double* Central_Meridian = &input_temp_4_vec[0];
  std::vector<double> input_temp_5_vec;
  for (auto& elem : input_json["Std_Parallel_1"]) {
    double input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  double* Std_Parallel_1 = &input_temp_5_vec[0];
  std::vector<double> input_temp_6_vec;
  for (auto& elem : input_json["Std_Parallel_2"]) {
    double input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  double* Std_Parallel_2 = &input_temp_6_vec[0];
  std::vector<double> input_temp_7_vec;
  for (auto& elem : input_json["False_Easting"]) {
    double input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  double* False_Easting = &input_temp_7_vec[0];
  std::vector<double> input_temp_8_vec;
  for (auto& elem : input_json["False_Northing"]) {
    double input_temp_8_inner = elem;
    input_temp_8_vec.push_back(input_temp_8_inner);
  }
  double* False_Northing = &input_temp_8_vec[0];
  Lambert_False_Easting = input_json["Lambert_False_Easting"];
  Lambert_False_Northing = input_json["Lambert_False_Northing"];
  Lambert_Origin_Lat = input_json["Lambert_Origin_Lat"];
  Lambert_Origin_Long = input_json["Lambert_Origin_Long"];
  Lambert_Std_Parallel_1 = input_json["Lambert_Std_Parallel_1"];
  Lambert_Std_Parallel_2 = input_json["Lambert_Std_Parallel_2"];
  Lambert_a = input_json["Lambert_a"];
  Lambert_f = input_json["Lambert_f"];
  clock_t begin = clock();
  Get_Lambert_2_Parameters(a, f, Origin_Latitude, Central_Meridian, Std_Parallel_1, Std_Parallel_2, False_Easting, False_Northing);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, f, Origin_Latitude, Central_Meridian, Std_Parallel_1, Std_Parallel_2, False_Easting, False_Northing);
}