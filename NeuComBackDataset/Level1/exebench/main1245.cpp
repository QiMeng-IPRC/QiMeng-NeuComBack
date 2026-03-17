#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */

/* Type definitions */
struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  ppt_psbend ; 
extern  int pte_internal ; 
extern  int ptps_psbend ; 
extern "C" { int pt_pkt_decode_psbend(struct pt_packet_decoder *decoder, struct pt_packet *packet);
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

void write_output(struct pt_packet_decoder* decoder, struct pt_packet* packet, int returnv) {
  json output_json;
  std::vector<json> output_temp_2;
  for (unsigned int i3 = 0; i3 < 32; i3++) {
    struct pt_packet_decoder output_temp_4 = decoder[i3];
    json output_temp_5;

    output_temp_5["dummy"] = output_temp_4.dummy;
    output_temp_2.push_back(output_temp_5);
  }
  output_json["decoder"] = output_temp_2;
  struct pt_packet output_temp_6 = *packet;
  json output_temp_7;

  output_temp_7["size"] = output_temp_6.size;

  output_temp_7["type"] = output_temp_6.type;
  output_json["packet"] = output_temp_7;

  output_json["ppt_psbend"] = ppt_psbend;

  output_json["pte_internal"] = pte_internal;

  output_json["ptps_psbend"] = ptps_psbend;

  output_json["returnv"] = returnv;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  std::vector<struct pt_packet_decoder> input_temp_1_vec;
  for (auto& elem : input_json["decoder"]) {
    int input_temp_1_inner__dummy = elem["dummy"];
    struct pt_packet_decoder input_temp_1_inner = {input_temp_1_inner__dummy};
    input_temp_1_vec.push_back(input_temp_1_inner);
  }
  struct pt_packet_decoder* decoder = &input_temp_1_vec[0];
  int packet_pointer__size = input_json["packet"]["size"];
  int packet_pointer__type = input_json["packet"]["type"];
  struct pt_packet packet_pointer = {packet_pointer__size, packet_pointer__type};
  struct pt_packet* packet = &packet_pointer;
  ppt_psbend = input_json["ppt_psbend"];
  pte_internal = input_json["pte_internal"];
  ptps_psbend = input_json["ptps_psbend"];
  clock_t begin = clock();
  int returnv = pt_pkt_decode_psbend(decoder, packet);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(decoder, packet, returnv);
}