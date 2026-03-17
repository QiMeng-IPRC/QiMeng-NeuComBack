#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int es_vlan_caps; int /*<<< orphan*/  es_nvlangroups; } ;
struct TYPE_3__ {int /*<<< orphan*/  arswitch_hw_global_setup; int /*<<< orphan*/  arswitch_hw_setup; } ;
struct arswitch_softc {TYPE_2__ info; TYPE_1__ hal; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  AR8X16_MAX_VLANS ; 
extern  int ETHERSWITCH_VLAN_DOT1Q ; 
extern  int ETHERSWITCH_VLAN_DOUBLE_TAG ; 
extern  int ETHERSWITCH_VLAN_PORT ; 
extern  int /*<<< orphan*/  ar8316_hw_global_setup ; 
extern  int /*<<< orphan*/  ar8316_hw_setup ; 
extern "C" { void ar8316_attach(struct arswitch_softc *sc);
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

void write_output(struct arswitch_softc* sc) {
  json output_json;
  struct arswitch_softc output_temp_1 = *sc;
  json output_temp_2;
  json output_temp_3;

  output_temp_3["es_vlan_caps"] = output_temp_1.info.es_vlan_caps;

  output_temp_3["es_nvlangroups"] = output_temp_1.info.es_nvlangroups;
  output_temp_2["info"] = output_temp_3;
  json output_temp_4;

  output_temp_4["arswitch_hw_global_setup"] = output_temp_1.hal.arswitch_hw_global_setup;

  output_temp_4["arswitch_hw_setup"] = output_temp_1.hal.arswitch_hw_setup;
  output_temp_2["hal"] = output_temp_4;
  output_json["sc"] = output_temp_2;

  output_json["AR8X16_MAX_VLANS"] = AR8X16_MAX_VLANS;

  output_json["ETHERSWITCH_VLAN_DOT1Q"] = ETHERSWITCH_VLAN_DOT1Q;

  output_json["ETHERSWITCH_VLAN_DOUBLE_TAG"] = ETHERSWITCH_VLAN_DOUBLE_TAG;

  output_json["ETHERSWITCH_VLAN_PORT"] = ETHERSWITCH_VLAN_PORT;

  output_json["ar8316_hw_global_setup"] = ar8316_hw_global_setup;

  output_json["ar8316_hw_setup"] = ar8316_hw_setup;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int sc_pointer__info__es_vlan_caps = input_json["sc"]["info"]["es_vlan_caps"];
  int sc_pointer__info__es_nvlangroups = input_json["sc"]["info"]["es_nvlangroups"];
  TYPE_2__ sc_pointer__info = {sc_pointer__info__es_vlan_caps, sc_pointer__info__es_nvlangroups};
  int sc_pointer__hal__arswitch_hw_global_setup = input_json["sc"]["hal"]["arswitch_hw_global_setup"];
  int sc_pointer__hal__arswitch_hw_setup = input_json["sc"]["hal"]["arswitch_hw_setup"];
  TYPE_1__ sc_pointer__hal = {sc_pointer__hal__arswitch_hw_global_setup, sc_pointer__hal__arswitch_hw_setup};
  struct arswitch_softc sc_pointer = {sc_pointer__info, sc_pointer__hal};
  struct arswitch_softc* sc = &sc_pointer;
  AR8X16_MAX_VLANS = input_json["AR8X16_MAX_VLANS"];
  ETHERSWITCH_VLAN_DOT1Q = input_json["ETHERSWITCH_VLAN_DOT1Q"];
  ETHERSWITCH_VLAN_DOUBLE_TAG = input_json["ETHERSWITCH_VLAN_DOUBLE_TAG"];
  ETHERSWITCH_VLAN_PORT = input_json["ETHERSWITCH_VLAN_PORT"];
  ar8316_hw_global_setup = input_json["ar8316_hw_global_setup"];
  ar8316_hw_setup = input_json["ar8316_hw_setup"];
  clock_t begin = clock();
  ar8316_attach(sc);
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output(sc);
}