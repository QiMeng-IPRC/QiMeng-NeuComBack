#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  word ;
typedef  int rbool ;
typedef  int /*<<< orphan*/  integer ;
struct TYPE_2__ {int cnum; int vcode; int /*<<< orphan*/  miobj; int /*<<< orphan*/  mprep; int /*<<< orphan*/  mdobj; int /*<<< orphan*/  mactor; int /*<<< orphan*/  prep; int /*<<< orphan*/  vb; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  prep ; 
extern  int subcnt ; 
extern  TYPE_1__* substack ; 
extern  int /*<<< orphan*/  vb ; 
extern "C" { rbool pop_subcall_grammar(integer *m_actor,int *vcode, integer *m_dobj,word *m_prep,integer *m_iobj, int *cnum);
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

void write_output(int* m_actor, int* vcode, int* m_dobj, int* m_prep, int* m_iobj, int* cnum, int returnv) {
  json output_json;
  std::vector<json> output_temp_8;
  for (unsigned int i9 = 0; i9 < 32; i9++) {
    int output_temp_10 = m_actor[i9];

    output_temp_8.push_back(output_temp_10);
  }
  output_json["m_actor"] = output_temp_8;
  std::vector<json> output_temp_11;
  for (unsigned int i12 = 0; i12 < 32; i12++) {
    int output_temp_13 = vcode[i12];

    output_temp_11.push_back(output_temp_13);
  }
  output_json["vcode"] = output_temp_11;
  std::vector<json> output_temp_14;
  for (unsigned int i15 = 0; i15 < 32; i15++) {
    int output_temp_16 = m_dobj[i15];

    output_temp_14.push_back(output_temp_16);
  }
  output_json["m_dobj"] = output_temp_14;
  std::vector<json> output_temp_17;
  for (unsigned int i18 = 0; i18 < 32; i18++) {
    int output_temp_19 = m_prep[i18];

    output_temp_17.push_back(output_temp_19);
  }
  output_json["m_prep"] = output_temp_17;
  std::vector<json> output_temp_20;
  for (unsigned int i21 = 0; i21 < 32; i21++) {
    int output_temp_22 = m_iobj[i21];

    output_temp_20.push_back(output_temp_22);
  }
  output_json["m_iobj"] = output_temp_20;
  std::vector<json> output_temp_23;
  for (unsigned int i24 = 0; i24 < 32; i24++) {
    int output_temp_25 = cnum[i24];

    output_temp_23.push_back(output_temp_25);
  }
  output_json["cnum"] = output_temp_23;

  output_json["prep"] = prep;

  output_json["subcnt"] = subcnt;
  std::vector<json> output_temp_26;
  for (unsigned int i27 = 0; i27 < 32; i27++) {
    TYPE_1__ output_temp_28 = substack[i27];
    json output_temp_29;

    output_temp_29["cnum"] = output_temp_28.cnum;

    output_temp_29["vcode"] = output_temp_28.vcode;

    output_temp_29["miobj"] = output_temp_28.miobj;

    output_temp_29["mprep"] = output_temp_28.mprep;

    output_temp_29["mdobj"] = output_temp_28.mdobj;

    output_temp_29["mactor"] = output_temp_28.mactor;

    output_temp_29["prep"] = output_temp_28.prep;

    output_temp_29["vb"] = output_temp_28.vb;
    output_temp_26.push_back(output_temp_29);
  }
  output_json["substack"] = output_temp_26;

  output_json["vb"] = vb;

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
  for (auto& elem : input_json["m_actor"]) {
    int input_temp_1_inner = elem;
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  int* m_actor = &input_temp_1_vec[0];
  std::vector<int> input_temp_2_vec;
  for (auto& elem : input_json["vcode"]) {
    int input_temp_2_inner = elem;
    input_temp_2_vec.push_back(input_temp_2_inner);
  }
  int* vcode = &input_temp_2_vec[0];
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["m_dobj"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  int* m_dobj = &input_temp_3_vec[0];
  std::vector<int> input_temp_4_vec;
  for (auto& elem : input_json["m_prep"]) {
    int input_temp_4_inner = elem;
    input_temp_4_vec.push_back(input_temp_4_inner);
  }
  int* m_prep = &input_temp_4_vec[0];
  std::vector<int> input_temp_5_vec;
  for (auto& elem : input_json["m_iobj"]) {
    int input_temp_5_inner = elem;
    input_temp_5_vec.push_back(input_temp_5_inner);
  }
  int* m_iobj = &input_temp_5_vec[0];
  std::vector<int> input_temp_6_vec;
  for (auto& elem : input_json["cnum"]) {
    int input_temp_6_inner = elem;
    input_temp_6_vec.push_back(input_temp_6_inner);
  }
  int* cnum = &input_temp_6_vec[0];
  prep = input_json["prep"];
  subcnt = input_json["subcnt"];
  std::vector<TYPE_1__> input_temp_7_vec;
  for (auto& elem : input_json["substack"]) {
    int input_temp_7_inner__cnum = elem["cnum"];
    int input_temp_7_inner__vcode = elem["vcode"];
    int input_temp_7_inner__miobj = elem["miobj"];
    int input_temp_7_inner__mprep = elem["mprep"];
    int input_temp_7_inner__mdobj = elem["mdobj"];
    int input_temp_7_inner__mactor = elem["mactor"];
    int input_temp_7_inner__prep = elem["prep"];
    int input_temp_7_inner__vb = elem["vb"];
    TYPE_1__ input_temp_7_inner = {input_temp_7_inner__cnum, input_temp_7_inner__vcode, input_temp_7_inner__miobj, input_temp_7_inner__mprep, input_temp_7_inner__mdobj, input_temp_7_inner__mactor, input_temp_7_inner__prep, input_temp_7_inner__vb};
    input_temp_7_vec.push_back(input_temp_7_inner);
  }
  substack = &input_temp_7_vec[0];
  vb = input_json["vb"];
  clock_t begin = clock();
  int returnv = pop_subcall_grammar(m_actor, vcode, m_dobj, m_prep, m_iobj, cnum);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(m_actor, vcode, m_dobj, m_prep, m_iobj, cnum, returnv);
}