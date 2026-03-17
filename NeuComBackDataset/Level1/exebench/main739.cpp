#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  double Orth_False_Easting ; 
extern  double Orth_False_Northing ; 
extern  double Orth_Origin_Lat ; 
extern  double Orth_Origin_Long ; 
extern  double Orth_a ; 
extern  double Orth_f ; 
extern "C" { void Get_Orthographic_Parameters(double *a, double *f, double *Origin_Latitude, double *Central_Meridian, double *False_Easting, double *False_Northing);
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

void write_output(double* a, double* f, double* Origin_Latitude, double* Central_Meridian, double* False_Easting, double* False_Northing) {
  json output_json;
  std::vector<json> output_temp_7;
  for (unsigned int i8 = 0; i8 < 32; i8++) {
    double output_temp_9 = a[i8];

    output_temp_7.push_back(output_temp_9);
  }
  output_json["a"] = output_temp_7;
  std::vector<json> output_temp_10;
  for (unsigned int i11 = 0; i11 < 32; i11++) {
    double output_temp_12 = f[i11];

    output_temp_10.push_back(output_temp_12);
  }
  output_json["f"] = output_temp_10;
  std::vector<json> output_temp_13;
  for (unsigned int i14 = 0; i14 < 32; i14++) {
    double output_temp_15 = Origin_Latitude[i14];

    output_temp_13.push_back(output_temp_15);
  }
  output_json["Origin_Latitude"] = output_temp_13;
  std::vector<json> output_temp_16;
  for (unsigned int i17 = 0; i17 < 32; i17++) {
    double output_temp_18 = Central_Meridian[i17];

    output_temp_16.push_back(output_temp_18);
  }
  output_json["Central_Meridian"] = output_temp_16;
  std::vector<json> output_temp_19;
  for (unsigned int i20 = 0; i20 < 32; i20++) {
    double output_temp_21 = False_Easting[i20];

    output_temp_19.push_back(output_temp_21);
  }
  output_json["False_Easting"] = output_temp_19;
  std::vector<json> output_temp_22;
  for (unsigned int i23 = 0; i23 < 32; i23++) {
    double output_temp_24 = False_Northing[i23];

    output_temp_22.push_back(output_temp_24);
  }
  output_json["False_Northing"] = output_temp_22;

  output_json["Orth_False_Easting"] = Orth_False_Easting;

  output_json["Orth_False_Northing"] = Orth_False_Northing;

  output_json["Orth_Origin_Lat"] = Orth_Origin_Lat;

  output_json["Orth_Origin_Long"] = Orth_Origin_Long;

  output_json["Orth_a"] = Orth_a;

  output_json["Orth_f"] = Orth_f;
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
  for (auto& elem : input_json["False_Easting"]) {
    double input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  double* False_Easting = &input_temp_5_vec[0];
  std::vector<double> input_temp_6_vec;
  for (auto& elem : input_json["False_Northing"]) {
    double input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  double* False_Northing = &input_temp_6_vec[0];
  Orth_False_Easting = input_json["Orth_False_Easting"];
  Orth_False_Northing = input_json["Orth_False_Northing"];
  Orth_Origin_Lat = input_json["Orth_Origin_Lat"];
  Orth_Origin_Long = input_json["Orth_Origin_Long"];
  Orth_a = input_json["Orth_a"];
  Orth_f = input_json["Orth_f"];
  clock_t begin = clock();
  Get_Orthographic_Parameters(a, f, Origin_Latitude, Central_Meridian, False_Easting, False_Northing);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(a, f, Origin_Latitude, Central_Meridian, False_Easting, False_Northing);
}