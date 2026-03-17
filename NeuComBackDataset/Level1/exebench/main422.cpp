#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int id; scalar_t__ enabled; int /*<<< orphan*/ * description; } ;
struct TYPE_3__ {scalar_t__ netFlowPeerAS; scalar_t__ disableNetFlowScale; } ;

/* Variables and functions */
extern  int IP_extension_mask ; 
extern  scalar_t__ Num_enabled_extensions ; 
extern  TYPE_2__* extension_descriptor ; 
extern  TYPE_1__ sfConfig ; 
extern  int* sflow_extensions ; 
extern "C" { void Init_sflow(void);
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

  output_json["IP_extension_mask"] = IP_extension_mask;

  output_json["Num_enabled_extensions"] = Num_enabled_extensions;
  std::vector<json> output_temp_4;
  for (unsigned int i5 = 0; i5 < 32; i5++) {
    TYPE_2__ output_temp_6 = extension_descriptor[i5];
    json output_temp_7;

    output_temp_7["id"] = output_temp_6.id;

    output_temp_7["enabled"] = output_temp_6.enabled;
    std::vector<json> output_temp_8;
    for (unsigned int i9 = 0; i9 < 32; i9++) {
      int output_temp_10 = output_temp_6.description[i9];

      output_temp_8.push_back(output_temp_10);
    }
    output_temp_7["description"] = output_temp_8;
    output_temp_4.push_back(output_temp_7);
  }
  output_json["extension_descriptor"] = output_temp_4;
  json output_temp_11;

  output_temp_11["netFlowPeerAS"] = sfConfig.netFlowPeerAS;

  output_temp_11["disableNetFlowScale"] = sfConfig.disableNetFlowScale;
  output_json["sfConfig"] = output_temp_11;
  std::vector<json> output_temp_12;
  for (unsigned int i13 = 0; i13 < 32; i13++) {
    int output_temp_14 = sflow_extensions[i13];

    output_temp_12.push_back(output_temp_14);
  }
  output_json["sflow_extensions"] = output_temp_12;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  IP_extension_mask = input_json["IP_extension_mask"];
  Num_enabled_extensions = input_json["Num_enabled_extensions"];
  std::vector<TYPE_2__> input_temp_1_vec;
  for (auto& elem : input_json["extension_descriptor"]) {
    int input_temp_1_inner__id = elem["id"];
    long int input_temp_1_inner__enabled = elem["enabled"];
    std::vector<int> input_temp_2_vec;
    for (auto& elem : elem["description"]) {
      int input_temp_2_inner = elem;
      input_temp_2_vec.push_back(input_temp_2_inner);
    }
    int* input_temp_1_inner__description = &input_temp_2_vec[0];
    TYPE_2__ input_temp_1_inner = {input_temp_1_inner__id, input_temp_1_inner__enabled, input_temp_1_inner__description};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  extension_descriptor = &input_temp_1_vec[0];
  long int sfConfig__netFlowPeerAS = input_json["sfConfig"]["netFlowPeerAS"];
  long int sfConfig__disableNetFlowScale = input_json["sfConfig"]["disableNetFlowScale"];
  sfConfig = {sfConfig__netFlowPeerAS, sfConfig__disableNetFlowScale};
  std::vector<int> input_temp_3_vec;
  for (auto& elem : input_json["sflow_extensions"]) {
    int input_temp_3_inner = elem;
    input_temp_3_vec.push_back(input_temp_3_inner);
  }
  sflow_extensions = &input_temp_3_vec[0];
  clock_t begin = clock();
  Init_sflow();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}