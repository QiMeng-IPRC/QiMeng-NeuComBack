#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int disptoggle; } ;
struct TYPE_17__ {scalar_t__ ColorMode; } ;
struct TYPE_14__ {int all; } ;
struct TYPE_13__ {int all; } ;
struct TYPE_12__ {int all; } ;
struct TYPE_11__ {int all; } ;
struct TYPE_10__ {int all; } ;
struct TYPE_16__ {int TVMD; int EXTEN; int TVSTAT; int VRSIZE; int RAMCTL; int BGON; int CHCTLA; int CHCTLB; int BMPNA; int MPOFN; int MPABN2; int MPCDN2; int SCXIN0; int SCXDN0; int SCYIN0; int SCYDN0; int SCXIN1; int SCXDN1; int SCYIN1; int SCYDN1; int SCXN2; int SCYN2; int SCXN3; int SCYN3; int ZMCTL; int SCRCTL; int BKTAU; int BKTAL; int RPMD; int RPRCTL; int KTCTL; int KTAOF; int OVPNRA; int OVPNRB; int WPSX0; int WPSY0; int WPEX0; int WPEY0; int WPSX1; int WPSY1; int WPEX1; int WPEY1; int WCTLA; int WCTLB; int WCTLC; int WCTLD; int SPCTL; int SDCTL; int CRAOFA; int CRAOFB; int LNCLEN; int SFPRMD; int CCCTL; int SFCCMD; int PRISA; int PRISB; int PRISC; int PRISD; int PRINA; int PRINB; int PRIR; int CCRNA; int CCRNB; int CLOFEN; int CLOFSL; int COAR; int COAG; int COAB; int COBR; int COBG; int COBB; TYPE_5__ VCSTA; TYPE_4__ ZMYN1; TYPE_3__ ZMXN1; TYPE_2__ ZMYN0; TYPE_1__ ZMXN0; } ;
struct TYPE_15__ {int VBlankLineCount; } ;

/* Variables and functions */
extern  TYPE_9__ Vdp2External ; 
extern  TYPE_8__ Vdp2Internal ; 
extern  TYPE_7__* Vdp2Regs ; 
extern  TYPE_6__ yabsys ; 
extern "C" { void Vdp2Reset(void);
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
  json output_temp_1;

  output_temp_1["disptoggle"] = Vdp2External.disptoggle;
  output_json["Vdp2External"] = output_temp_1;
  json output_temp_2;

  output_temp_2["ColorMode"] = Vdp2Internal.ColorMode;
  output_json["Vdp2Internal"] = output_temp_2;
  TYPE_7__ output_temp_3 = *Vdp2Regs;
  json output_temp_4;

  output_temp_4["TVMD"] = output_temp_3.TVMD;

  output_temp_4["EXTEN"] = output_temp_3.EXTEN;

  output_temp_4["TVSTAT"] = output_temp_3.TVSTAT;

  output_temp_4["VRSIZE"] = output_temp_3.VRSIZE;

  output_temp_4["RAMCTL"] = output_temp_3.RAMCTL;

  output_temp_4["BGON"] = output_temp_3.BGON;

  output_temp_4["CHCTLA"] = output_temp_3.CHCTLA;

  output_temp_4["CHCTLB"] = output_temp_3.CHCTLB;

  output_temp_4["BMPNA"] = output_temp_3.BMPNA;

  output_temp_4["MPOFN"] = output_temp_3.MPOFN;

  output_temp_4["MPABN2"] = output_temp_3.MPABN2;

  output_temp_4["MPCDN2"] = output_temp_3.MPCDN2;

  output_temp_4["SCXIN0"] = output_temp_3.SCXIN0;

  output_temp_4["SCXDN0"] = output_temp_3.SCXDN0;

  output_temp_4["SCYIN0"] = output_temp_3.SCYIN0;

  output_temp_4["SCYDN0"] = output_temp_3.SCYDN0;

  output_temp_4["SCXIN1"] = output_temp_3.SCXIN1;

  output_temp_4["SCXDN1"] = output_temp_3.SCXDN1;

  output_temp_4["SCYIN1"] = output_temp_3.SCYIN1;

  output_temp_4["SCYDN1"] = output_temp_3.SCYDN1;

  output_temp_4["SCXN2"] = output_temp_3.SCXN2;

  output_temp_4["SCYN2"] = output_temp_3.SCYN2;

  output_temp_4["SCXN3"] = output_temp_3.SCXN3;

  output_temp_4["SCYN3"] = output_temp_3.SCYN3;

  output_temp_4["ZMCTL"] = output_temp_3.ZMCTL;

  output_temp_4["SCRCTL"] = output_temp_3.SCRCTL;

  output_temp_4["BKTAU"] = output_temp_3.BKTAU;

  output_temp_4["BKTAL"] = output_temp_3.BKTAL;

  output_temp_4["RPMD"] = output_temp_3.RPMD;

  output_temp_4["RPRCTL"] = output_temp_3.RPRCTL;

  output_temp_4["KTCTL"] = output_temp_3.KTCTL;

  output_temp_4["KTAOF"] = output_temp_3.KTAOF;

  output_temp_4["OVPNRA"] = output_temp_3.OVPNRA;

  output_temp_4["OVPNRB"] = output_temp_3.OVPNRB;

  output_temp_4["WPSX0"] = output_temp_3.WPSX0;

  output_temp_4["WPSY0"] = output_temp_3.WPSY0;

  output_temp_4["WPEX0"] = output_temp_3.WPEX0;

  output_temp_4["WPEY0"] = output_temp_3.WPEY0;

  output_temp_4["WPSX1"] = output_temp_3.WPSX1;

  output_temp_4["WPSY1"] = output_temp_3.WPSY1;

  output_temp_4["WPEX1"] = output_temp_3.WPEX1;

  output_temp_4["WPEY1"] = output_temp_3.WPEY1;

  output_temp_4["WCTLA"] = output_temp_3.WCTLA;

  output_temp_4["WCTLB"] = output_temp_3.WCTLB;

  output_temp_4["WCTLC"] = output_temp_3.WCTLC;

  output_temp_4["WCTLD"] = output_temp_3.WCTLD;

  output_temp_4["SPCTL"] = output_temp_3.SPCTL;

  output_temp_4["SDCTL"] = output_temp_3.SDCTL;

  output_temp_4["CRAOFA"] = output_temp_3.CRAOFA;

  output_temp_4["CRAOFB"] = output_temp_3.CRAOFB;

  output_temp_4["LNCLEN"] = output_temp_3.LNCLEN;

  output_temp_4["SFPRMD"] = output_temp_3.SFPRMD;

  output_temp_4["CCCTL"] = output_temp_3.CCCTL;

  output_temp_4["SFCCMD"] = output_temp_3.SFCCMD;

  output_temp_4["PRISA"] = output_temp_3.PRISA;

  output_temp_4["PRISB"] = output_temp_3.PRISB;

  output_temp_4["PRISC"] = output_temp_3.PRISC;

  output_temp_4["PRISD"] = output_temp_3.PRISD;

  output_temp_4["PRINA"] = output_temp_3.PRINA;

  output_temp_4["PRINB"] = output_temp_3.PRINB;

  output_temp_4["PRIR"] = output_temp_3.PRIR;

  output_temp_4["CCRNA"] = output_temp_3.CCRNA;

  output_temp_4["CCRNB"] = output_temp_3.CCRNB;

  output_temp_4["CLOFEN"] = output_temp_3.CLOFEN;

  output_temp_4["CLOFSL"] = output_temp_3.CLOFSL;

  output_temp_4["COAR"] = output_temp_3.COAR;

  output_temp_4["COAG"] = output_temp_3.COAG;

  output_temp_4["COAB"] = output_temp_3.COAB;

  output_temp_4["COBR"] = output_temp_3.COBR;

  output_temp_4["COBG"] = output_temp_3.COBG;

  output_temp_4["COBB"] = output_temp_3.COBB;
  json output_temp_5;

  output_temp_5["all"] = output_temp_3.VCSTA.all;
  output_temp_4["VCSTA"] = output_temp_5;
  json output_temp_6;

  output_temp_6["all"] = output_temp_3.ZMYN1.all;
  output_temp_4["ZMYN1"] = output_temp_6;
  json output_temp_7;

  output_temp_7["all"] = output_temp_3.ZMXN1.all;
  output_temp_4["ZMXN1"] = output_temp_7;
  json output_temp_8;

  output_temp_8["all"] = output_temp_3.ZMYN0.all;
  output_temp_4["ZMYN0"] = output_temp_8;
  json output_temp_9;

  output_temp_9["all"] = output_temp_3.ZMXN0.all;
  output_temp_4["ZMXN0"] = output_temp_9;
  output_json["Vdp2Regs"] = output_temp_4;
  json output_temp_10;

  output_temp_10["VBlankLineCount"] = yabsys.VBlankLineCount;
  output_json["yabsys"] = output_temp_10;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  int Vdp2External__disptoggle = input_json["Vdp2External"]["disptoggle"];
  Vdp2External = {Vdp2External__disptoggle};
  long int Vdp2Internal__ColorMode = input_json["Vdp2Internal"]["ColorMode"];
  Vdp2Internal = {Vdp2Internal__ColorMode};
  int Vdp2Regs_pointer__TVMD = input_json["Vdp2Regs"]["TVMD"];
  int Vdp2Regs_pointer__EXTEN = input_json["Vdp2Regs"]["EXTEN"];
  int Vdp2Regs_pointer__TVSTAT = input_json["Vdp2Regs"]["TVSTAT"];
  int Vdp2Regs_pointer__VRSIZE = input_json["Vdp2Regs"]["VRSIZE"];
  int Vdp2Regs_pointer__RAMCTL = input_json["Vdp2Regs"]["RAMCTL"];
  int Vdp2Regs_pointer__BGON = input_json["Vdp2Regs"]["BGON"];
  int Vdp2Regs_pointer__CHCTLA = input_json["Vdp2Regs"]["CHCTLA"];
  int Vdp2Regs_pointer__CHCTLB = input_json["Vdp2Regs"]["CHCTLB"];
  int Vdp2Regs_pointer__BMPNA = input_json["Vdp2Regs"]["BMPNA"];
  int Vdp2Regs_pointer__MPOFN = input_json["Vdp2Regs"]["MPOFN"];
  int Vdp2Regs_pointer__MPABN2 = input_json["Vdp2Regs"]["MPABN2"];
  int Vdp2Regs_pointer__MPCDN2 = input_json["Vdp2Regs"]["MPCDN2"];
  int Vdp2Regs_pointer__SCXIN0 = input_json["Vdp2Regs"]["SCXIN0"];
  int Vdp2Regs_pointer__SCXDN0 = input_json["Vdp2Regs"]["SCXDN0"];
  int Vdp2Regs_pointer__SCYIN0 = input_json["Vdp2Regs"]["SCYIN0"];
  int Vdp2Regs_pointer__SCYDN0 = input_json["Vdp2Regs"]["SCYDN0"];
  int Vdp2Regs_pointer__SCXIN1 = input_json["Vdp2Regs"]["SCXIN1"];
  int Vdp2Regs_pointer__SCXDN1 = input_json["Vdp2Regs"]["SCXDN1"];
  int Vdp2Regs_pointer__SCYIN1 = input_json["Vdp2Regs"]["SCYIN1"];
  int Vdp2Regs_pointer__SCYDN1 = input_json["Vdp2Regs"]["SCYDN1"];
  int Vdp2Regs_pointer__SCXN2 = input_json["Vdp2Regs"]["SCXN2"];
  int Vdp2Regs_pointer__SCYN2 = input_json["Vdp2Regs"]["SCYN2"];
  int Vdp2Regs_pointer__SCXN3 = input_json["Vdp2Regs"]["SCXN3"];
  int Vdp2Regs_pointer__SCYN3 = input_json["Vdp2Regs"]["SCYN3"];
  int Vdp2Regs_pointer__ZMCTL = input_json["Vdp2Regs"]["ZMCTL"];
  int Vdp2Regs_pointer__SCRCTL = input_json["Vdp2Regs"]["SCRCTL"];
  int Vdp2Regs_pointer__BKTAU = input_json["Vdp2Regs"]["BKTAU"];
  int Vdp2Regs_pointer__BKTAL = input_json["Vdp2Regs"]["BKTAL"];
  int Vdp2Regs_pointer__RPMD = input_json["Vdp2Regs"]["RPMD"];
  int Vdp2Regs_pointer__RPRCTL = input_json["Vdp2Regs"]["RPRCTL"];
  int Vdp2Regs_pointer__KTCTL = input_json["Vdp2Regs"]["KTCTL"];
  int Vdp2Regs_pointer__KTAOF = input_json["Vdp2Regs"]["KTAOF"];
  int Vdp2Regs_pointer__OVPNRA = input_json["Vdp2Regs"]["OVPNRA"];
  int Vdp2Regs_pointer__OVPNRB = input_json["Vdp2Regs"]["OVPNRB"];
  int Vdp2Regs_pointer__WPSX0 = input_json["Vdp2Regs"]["WPSX0"];
  int Vdp2Regs_pointer__WPSY0 = input_json["Vdp2Regs"]["WPSY0"];
  int Vdp2Regs_pointer__WPEX0 = input_json["Vdp2Regs"]["WPEX0"];
  int Vdp2Regs_pointer__WPEY0 = input_json["Vdp2Regs"]["WPEY0"];
  int Vdp2Regs_pointer__WPSX1 = input_json["Vdp2Regs"]["WPSX1"];
  int Vdp2Regs_pointer__WPSY1 = input_json["Vdp2Regs"]["WPSY1"];
  int Vdp2Regs_pointer__WPEX1 = input_json["Vdp2Regs"]["WPEX1"];
  int Vdp2Regs_pointer__WPEY1 = input_json["Vdp2Regs"]["WPEY1"];
  int Vdp2Regs_pointer__WCTLA = input_json["Vdp2Regs"]["WCTLA"];
  int Vdp2Regs_pointer__WCTLB = input_json["Vdp2Regs"]["WCTLB"];
  int Vdp2Regs_pointer__WCTLC = input_json["Vdp2Regs"]["WCTLC"];
  int Vdp2Regs_pointer__WCTLD = input_json["Vdp2Regs"]["WCTLD"];
  int Vdp2Regs_pointer__SPCTL = input_json["Vdp2Regs"]["SPCTL"];
  int Vdp2Regs_pointer__SDCTL = input_json["Vdp2Regs"]["SDCTL"];
  int Vdp2Regs_pointer__CRAOFA = input_json["Vdp2Regs"]["CRAOFA"];
  int Vdp2Regs_pointer__CRAOFB = input_json["Vdp2Regs"]["CRAOFB"];
  int Vdp2Regs_pointer__LNCLEN = input_json["Vdp2Regs"]["LNCLEN"];
  int Vdp2Regs_pointer__SFPRMD = input_json["Vdp2Regs"]["SFPRMD"];
  int Vdp2Regs_pointer__CCCTL = input_json["Vdp2Regs"]["CCCTL"];
  int Vdp2Regs_pointer__SFCCMD = input_json["Vdp2Regs"]["SFCCMD"];
  int Vdp2Regs_pointer__PRISA = input_json["Vdp2Regs"]["PRISA"];
  int Vdp2Regs_pointer__PRISB = input_json["Vdp2Regs"]["PRISB"];
  int Vdp2Regs_pointer__PRISC = input_json["Vdp2Regs"]["PRISC"];
  int Vdp2Regs_pointer__PRISD = input_json["Vdp2Regs"]["PRISD"];
  int Vdp2Regs_pointer__PRINA = input_json["Vdp2Regs"]["PRINA"];
  int Vdp2Regs_pointer__PRINB = input_json["Vdp2Regs"]["PRINB"];
  int Vdp2Regs_pointer__PRIR = input_json["Vdp2Regs"]["PRIR"];
  int Vdp2Regs_pointer__CCRNA = input_json["Vdp2Regs"]["CCRNA"];
  int Vdp2Regs_pointer__CCRNB = input_json["Vdp2Regs"]["CCRNB"];
  int Vdp2Regs_pointer__CLOFEN = input_json["Vdp2Regs"]["CLOFEN"];
  int Vdp2Regs_pointer__CLOFSL = input_json["Vdp2Regs"]["CLOFSL"];
  int Vdp2Regs_pointer__COAR = input_json["Vdp2Regs"]["COAR"];
  int Vdp2Regs_pointer__COAG = input_json["Vdp2Regs"]["COAG"];
  int Vdp2Regs_pointer__COAB = input_json["Vdp2Regs"]["COAB"];
  int Vdp2Regs_pointer__COBR = input_json["Vdp2Regs"]["COBR"];
  int Vdp2Regs_pointer__COBG = input_json["Vdp2Regs"]["COBG"];
  int Vdp2Regs_pointer__COBB = input_json["Vdp2Regs"]["COBB"];
  int Vdp2Regs_pointer__VCSTA__all = input_json["Vdp2Regs"]["VCSTA"]["all"];
  TYPE_5__ Vdp2Regs_pointer__VCSTA = {Vdp2Regs_pointer__VCSTA__all};
  int Vdp2Regs_pointer__ZMYN1__all = input_json["Vdp2Regs"]["ZMYN1"]["all"];
  TYPE_4__ Vdp2Regs_pointer__ZMYN1 = {Vdp2Regs_pointer__ZMYN1__all};
  int Vdp2Regs_pointer__ZMXN1__all = input_json["Vdp2Regs"]["ZMXN1"]["all"];
  TYPE_3__ Vdp2Regs_pointer__ZMXN1 = {Vdp2Regs_pointer__ZMXN1__all};
  int Vdp2Regs_pointer__ZMYN0__all = input_json["Vdp2Regs"]["ZMYN0"]["all"];
  TYPE_2__ Vdp2Regs_pointer__ZMYN0 = {Vdp2Regs_pointer__ZMYN0__all};
  int Vdp2Regs_pointer__ZMXN0__all = input_json["Vdp2Regs"]["ZMXN0"]["all"];
  TYPE_1__ Vdp2Regs_pointer__ZMXN0 = {Vdp2Regs_pointer__ZMXN0__all};
  TYPE_7__ Vdp2Regs_pointer = {Vdp2Regs_pointer__TVMD, Vdp2Regs_pointer__EXTEN, Vdp2Regs_pointer__TVSTAT, Vdp2Regs_pointer__VRSIZE, Vdp2Regs_pointer__RAMCTL, Vdp2Regs_pointer__BGON, Vdp2Regs_pointer__CHCTLA, Vdp2Regs_pointer__CHCTLB, Vdp2Regs_pointer__BMPNA, Vdp2Regs_pointer__MPOFN, Vdp2Regs_pointer__MPABN2, Vdp2Regs_pointer__MPCDN2, Vdp2Regs_pointer__SCXIN0, Vdp2Regs_pointer__SCXDN0, Vdp2Regs_pointer__SCYIN0, Vdp2Regs_pointer__SCYDN0, Vdp2Regs_pointer__SCXIN1, Vdp2Regs_pointer__SCXDN1, Vdp2Regs_pointer__SCYIN1, Vdp2Regs_pointer__SCYDN1, Vdp2Regs_pointer__SCXN2, Vdp2Regs_pointer__SCYN2, Vdp2Regs_pointer__SCXN3, Vdp2Regs_pointer__SCYN3, Vdp2Regs_pointer__ZMCTL, Vdp2Regs_pointer__SCRCTL, Vdp2Regs_pointer__BKTAU, Vdp2Regs_pointer__BKTAL, Vdp2Regs_pointer__RPMD, Vdp2Regs_pointer__RPRCTL, Vdp2Regs_pointer__KTCTL, Vdp2Regs_pointer__KTAOF, Vdp2Regs_pointer__OVPNRA, Vdp2Regs_pointer__OVPNRB, Vdp2Regs_pointer__WPSX0, Vdp2Regs_pointer__WPSY0, Vdp2Regs_pointer__WPEX0, Vdp2Regs_pointer__WPEY0, Vdp2Regs_pointer__WPSX1, Vdp2Regs_pointer__WPSY1, Vdp2Regs_pointer__WPEX1, Vdp2Regs_pointer__WPEY1, Vdp2Regs_pointer__WCTLA, Vdp2Regs_pointer__WCTLB, Vdp2Regs_pointer__WCTLC, Vdp2Regs_pointer__WCTLD, Vdp2Regs_pointer__SPCTL, Vdp2Regs_pointer__SDCTL, Vdp2Regs_pointer__CRAOFA, Vdp2Regs_pointer__CRAOFB, Vdp2Regs_pointer__LNCLEN, Vdp2Regs_pointer__SFPRMD, Vdp2Regs_pointer__CCCTL, Vdp2Regs_pointer__SFCCMD, Vdp2Regs_pointer__PRISA, Vdp2Regs_pointer__PRISB, Vdp2Regs_pointer__PRISC, Vdp2Regs_pointer__PRISD, Vdp2Regs_pointer__PRINA, Vdp2Regs_pointer__PRINB, Vdp2Regs_pointer__PRIR, Vdp2Regs_pointer__CCRNA, Vdp2Regs_pointer__CCRNB, Vdp2Regs_pointer__CLOFEN, Vdp2Regs_pointer__CLOFSL, Vdp2Regs_pointer__COAR, Vdp2Regs_pointer__COAG, Vdp2Regs_pointer__COAB, Vdp2Regs_pointer__COBR, Vdp2Regs_pointer__COBG, Vdp2Regs_pointer__COBB, Vdp2Regs_pointer__VCSTA, Vdp2Regs_pointer__ZMYN1, Vdp2Regs_pointer__ZMXN1, Vdp2Regs_pointer__ZMYN0, Vdp2Regs_pointer__ZMXN0};
  Vdp2Regs = &Vdp2Regs_pointer;
  int yabsys__VBlankLineCount = input_json["yabsys"]["VBlankLineCount"];
  yabsys = {yabsys__VBlankLineCount};
  clock_t begin = clock();
  Vdp2Reset();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}