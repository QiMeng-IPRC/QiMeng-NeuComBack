#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */

/* Variables and functions */
extern  scalar_t__* accumc ; 
extern  scalar_t__* accumd ; 
extern  scalar_t__ ah1 ; 
extern  scalar_t__ ah2 ; 
extern  scalar_t__ al1 ; 
extern  scalar_t__ al2 ; 
extern  scalar_t__ dec_ah1 ; 
extern  scalar_t__ dec_ah2 ; 
extern  scalar_t__ dec_al1 ; 
extern  scalar_t__ dec_al2 ; 
extern  scalar_t__* dec_del_bph ; 
extern  scalar_t__* dec_del_bpl ; 
extern  scalar_t__* dec_del_dhx ; 
extern  scalar_t__* dec_del_dltx ; 
extern  int dec_deth ; 
extern  int dec_detl ; 
extern  scalar_t__ dec_nbh ; 
extern  scalar_t__ dec_nbl ; 
extern  scalar_t__ dec_ph1 ; 
extern  scalar_t__ dec_ph2 ; 
extern  scalar_t__ dec_plt1 ; 
extern  scalar_t__ dec_plt2 ; 
extern  scalar_t__ dec_rh1 ; 
extern  scalar_t__ dec_rh2 ; 
extern  scalar_t__ dec_rlt1 ; 
extern  scalar_t__ dec_rlt2 ; 
extern  scalar_t__* delay_bph ; 
extern  scalar_t__* delay_bpl ; 
extern  scalar_t__* delay_dhx ; 
extern  scalar_t__* delay_dltx ; 
extern  int deth ; 
extern  int detl ; 
extern  scalar_t__ nbh ; 
extern  scalar_t__ nbl ; 
extern  scalar_t__ ph1 ; 
extern  scalar_t__ ph2 ; 
extern  scalar_t__ plt1 ; 
extern  scalar_t__ plt2 ; 
extern  scalar_t__ rh1 ; 
extern  scalar_t__ rh2 ; 
extern  scalar_t__ rlt1 ; 
extern  scalar_t__ rlt2 ; 
extern  scalar_t__* tqmf ; 
extern "C" { void reset ();
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
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    long int output_temp_14 = accumc[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["accumc"] = output_temp_12;
  std::vector<json> output_temp_15;
  for (unsigned int i16 = 0; i16 < 32; i16++) {
    long int output_temp_17 = accumd[i16];

    output_temp_15.push_back(output_temp_17);
  }
  output_json["accumd"] = output_temp_15;

  output_json["ah1"] = ah1;

  output_json["ah2"] = ah2;

  output_json["al1"] = al1;

  output_json["al2"] = al2;

  output_json["dec_ah1"] = dec_ah1;

  output_json["dec_ah2"] = dec_ah2;

  output_json["dec_al1"] = dec_al1;

  output_json["dec_al2"] = dec_al2;
  std::vector<json> output_temp_18;
  for (unsigned int i19 = 0; i19 < 32; i19++) {
    long int output_temp_20 = dec_del_bph[i19];

    output_temp_18.push_back(output_temp_20);
  }
  output_json["dec_del_bph"] = output_temp_18;
  std::vector<json> output_temp_21;
  for (unsigned int i22 = 0; i22 < 32; i22++) {
    long int output_temp_23 = dec_del_bpl[i22];

    output_temp_21.push_back(output_temp_23);
  }
  output_json["dec_del_bpl"] = output_temp_21;
  std::vector<json> output_temp_24;
  for (unsigned int i25 = 0; i25 < 32; i25++) {
    long int output_temp_26 = dec_del_dhx[i25];

    output_temp_24.push_back(output_temp_26);
  }
  output_json["dec_del_dhx"] = output_temp_24;
  std::vector<json> output_temp_27;
  for (unsigned int i28 = 0; i28 < 32; i28++) {
    long int output_temp_29 = dec_del_dltx[i28];

    output_temp_27.push_back(output_temp_29);
  }
  output_json["dec_del_dltx"] = output_temp_27;

  output_json["dec_deth"] = dec_deth;

  output_json["dec_detl"] = dec_detl;

  output_json["dec_nbh"] = dec_nbh;

  output_json["dec_nbl"] = dec_nbl;

  output_json["dec_ph1"] = dec_ph1;

  output_json["dec_ph2"] = dec_ph2;

  output_json["dec_plt1"] = dec_plt1;

  output_json["dec_plt2"] = dec_plt2;

  output_json["dec_rh1"] = dec_rh1;

  output_json["dec_rh2"] = dec_rh2;

  output_json["dec_rlt1"] = dec_rlt1;

  output_json["dec_rlt2"] = dec_rlt2;
  std::vector<json> output_temp_30;
  for (unsigned int i31 = 0; i31 < 32; i31++) {
    long int output_temp_32 = delay_bph[i31];

    output_temp_30.push_back(output_temp_32);
  }
  output_json["delay_bph"] = output_temp_30;
  std::vector<json> output_temp_33;
  for (unsigned int i34 = 0; i34 < 32; i34++) {
    long int output_temp_35 = delay_bpl[i34];

    output_temp_33.push_back(output_temp_35);
  }
  output_json["delay_bpl"] = output_temp_33;
  std::vector<json> output_temp_36;
  for (unsigned int i37 = 0; i37 < 32; i37++) {
    long int output_temp_38 = delay_dhx[i37];

    output_temp_36.push_back(output_temp_38);
  }
  output_json["delay_dhx"] = output_temp_36;
  std::vector<json> output_temp_39;
  for (unsigned int i40 = 0; i40 < 32; i40++) {
    long int output_temp_41 = delay_dltx[i40];

    output_temp_39.push_back(output_temp_41);
  }
  output_json["delay_dltx"] = output_temp_39;

  output_json["deth"] = deth;

  output_json["detl"] = detl;

  output_json["nbh"] = nbh;

  output_json["nbl"] = nbl;

  output_json["ph1"] = ph1;

  output_json["ph2"] = ph2;

  output_json["plt1"] = plt1;

  output_json["plt2"] = plt2;

  output_json["rh1"] = rh1;

  output_json["rh2"] = rh2;

  output_json["rlt1"] = rlt1;

  output_json["rlt2"] = rlt2;
  std::vector<json> output_temp_42;
  for (unsigned int i43 = 0; i43 < 32; i43++) {
    long int output_temp_44 = tqmf[i43];

    output_temp_42.push_back(output_temp_44);
  }
  output_json["tqmf"] = output_temp_42;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<long int> input_temp_1_vec;
  for (auto& elem : input_json["accumc"]) {
    long int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  accumc = &input_temp_1_vec[0];
  std::vector<long int> input_temp_2_vec;
  for (auto& elem : input_json["accumd"]) {
    long int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  accumd = &input_temp_2_vec[0];
  ah1 = input_json["ah1"];
  ah2 = input_json["ah2"];
  al1 = input_json["al1"];
  al2 = input_json["al2"];
  dec_ah1 = input_json["dec_ah1"];
  dec_ah2 = input_json["dec_ah2"];
  dec_al1 = input_json["dec_al1"];
  dec_al2 = input_json["dec_al2"];
  std::vector<long int> input_temp_3_vec;
  for (auto& elem : input_json["dec_del_bph"]) {
    long int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  dec_del_bph = &input_temp_3_vec[0];
  std::vector<long int> input_temp_4_vec;
  for (auto& elem : input_json["dec_del_bpl"]) {
    long int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  dec_del_bpl = &input_temp_4_vec[0];
  std::vector<long int> input_temp_5_vec;
  for (auto& elem : input_json["dec_del_dhx"]) {
    long int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  dec_del_dhx = &input_temp_5_vec[0];
  std::vector<long int> input_temp_6_vec;
  for (auto& elem : input_json["dec_del_dltx"]) {
    long int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  dec_del_dltx = &input_temp_6_vec[0];
  dec_deth = input_json["dec_deth"];
  dec_detl = input_json["dec_detl"];
  dec_nbh = input_json["dec_nbh"];
  dec_nbl = input_json["dec_nbl"];
  dec_ph1 = input_json["dec_ph1"];
  dec_ph2 = input_json["dec_ph2"];
  dec_plt1 = input_json["dec_plt1"];
  dec_plt2 = input_json["dec_plt2"];
  dec_rh1 = input_json["dec_rh1"];
  dec_rh2 = input_json["dec_rh2"];
  dec_rlt1 = input_json["dec_rlt1"];
  dec_rlt2 = input_json["dec_rlt2"];
  std::vector<long int> input_temp_7_vec;
  for (auto& elem : input_json["delay_bph"]) {
    long int input_temp_7_inner = elem;
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  delay_bph = &input_temp_7_vec[0];
  std::vector<long int> input_temp_8_vec;
  for (auto& elem : input_json["delay_bpl"]) {
    long int input_temp_8_inner = elem;
    input_temp_8_vec.push_back(input_temp_8_inner);
  }
  delay_bpl = &input_temp_8_vec[0];
  std::vector<long int> input_temp_9_vec;
  for (auto& elem : input_json["delay_dhx"]) {
    long int input_temp_9_inner = elem;
    input_temp_9_vec.push_back(input_temp_9_inner);
  }
  delay_dhx = &input_temp_9_vec[0];
  std::vector<long int> input_temp_10_vec;
  for (auto& elem : input_json["delay_dltx"]) {
    long int input_temp_10_inner = elem;
    input_temp_10_vec.push_back(input_temp_10_inner);
  }
  delay_dltx = &input_temp_10_vec[0];
  deth = input_json["deth"];
  detl = input_json["detl"];
  nbh = input_json["nbh"];
  nbl = input_json["nbl"];
  ph1 = input_json["ph1"];
  ph2 = input_json["ph2"];
  plt1 = input_json["plt1"];
  plt2 = input_json["plt2"];
  rh1 = input_json["rh1"];
  rh2 = input_json["rh2"];
  rlt1 = input_json["rlt1"];
  rlt2 = input_json["rlt2"];
  std::vector<long int> input_temp_11_vec;
  for (auto& elem : input_json["tqmf"]) {
    long int input_temp_11_inner = elem;
    input_temp_11_vec.push_back(input_temp_11_inner);
  }
  tqmf = &input_temp_11_vec[0];
  clock_t begin = clock();
  reset();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}