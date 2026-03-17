#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */


/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  downLeft; int /*<<< orphan*/  downRight; int /*<<< orphan*/  upRight; int /*<<< orphan*/  upLeft; int /*<<< orphan*/  right; int /*<<< orphan*/  left; int /*<<< orphan*/  down; int /*<<< orphan*/  up; int /*<<< orphan*/  quickLoad; int /*<<< orphan*/  quickSave; int /*<<< orphan*/  status; int /*<<< orphan*/  fire; int /*<<< orphan*/  pogo; int /*<<< orphan*/  jump; } ;

/* Variables and functions */
extern  int /*<<< orphan*/  IN_SC_Alt ; 
extern  int /*<<< orphan*/  IN_SC_Control ; 
extern  int /*<<< orphan*/  IN_SC_DownArrow ; 
extern  int /*<<< orphan*/  IN_SC_End ; 
extern  int /*<<< orphan*/  IN_SC_Enter ; 
extern  int /*<<< orphan*/  IN_SC_F5 ; 
extern  int /*<<< orphan*/  IN_SC_F9 ; 
extern  int /*<<< orphan*/  IN_SC_Home ; 
extern  int /*<<< orphan*/  IN_SC_LeftArrow ; 
extern  int /*<<< orphan*/  IN_SC_PgDown ; 
extern  int /*<<< orphan*/  IN_SC_PgUp ; 
extern  int /*<<< orphan*/  IN_SC_RightArrow ; 
extern  int /*<<< orphan*/  IN_SC_Space ; 
extern  int /*<<< orphan*/  IN_SC_UpArrow ; 
extern  TYPE_1__ in_kbdControls ; 
extern "C" { void INL_SetupKbdControls();
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

  output_json["IN_SC_Alt"] = IN_SC_Alt;

  output_json["IN_SC_Control"] = IN_SC_Control;

  output_json["IN_SC_DownArrow"] = IN_SC_DownArrow;

  output_json["IN_SC_End"] = IN_SC_End;

  output_json["IN_SC_Enter"] = IN_SC_Enter;

  output_json["IN_SC_F5"] = IN_SC_F5;

  output_json["IN_SC_F9"] = IN_SC_F9;

  output_json["IN_SC_Home"] = IN_SC_Home;

  output_json["IN_SC_LeftArrow"] = IN_SC_LeftArrow;

  output_json["IN_SC_PgDown"] = IN_SC_PgDown;

  output_json["IN_SC_PgUp"] = IN_SC_PgUp;

  output_json["IN_SC_RightArrow"] = IN_SC_RightArrow;

  output_json["IN_SC_Space"] = IN_SC_Space;

  output_json["IN_SC_UpArrow"] = IN_SC_UpArrow;
  json output_temp_1;

  output_temp_1["downLeft"] = in_kbdControls.downLeft;

  output_temp_1["downRight"] = in_kbdControls.downRight;

  output_temp_1["upRight"] = in_kbdControls.upRight;

  output_temp_1["upLeft"] = in_kbdControls.upLeft;

  output_temp_1["right"] = in_kbdControls.right;

  output_temp_1["left"] = in_kbdControls.left;

  output_temp_1["down"] = in_kbdControls.down;

  output_temp_1["up"] = in_kbdControls.up;

  output_temp_1["quickLoad"] = in_kbdControls.quickLoad;

  output_temp_1["quickSave"] = in_kbdControls.quickSave;

  output_temp_1["status"] = in_kbdControls.status;

  output_temp_1["fire"] = in_kbdControls.fire;

  output_temp_1["pogo"] = in_kbdControls.pogo;

  output_temp_1["jump"] = in_kbdControls.jump;
  output_json["in_kbdControls"] = output_temp_1;
  std::ofstream out_str(output_file);
  out_str << std::setw(4) << output_json << std::endl;
}
int main(int argc, char** argv) {
  char* inpname = argv[1];
  output_file = argv[2];

  std::ifstream ifs(inpname);
  json input_json = json::parse(ifs);
  IN_SC_Alt = input_json["IN_SC_Alt"];
  IN_SC_Control = input_json["IN_SC_Control"];
  IN_SC_DownArrow = input_json["IN_SC_DownArrow"];
  IN_SC_End = input_json["IN_SC_End"];
  IN_SC_Enter = input_json["IN_SC_Enter"];
  IN_SC_F5 = input_json["IN_SC_F5"];
  IN_SC_F9 = input_json["IN_SC_F9"];
  IN_SC_Home = input_json["IN_SC_Home"];
  IN_SC_LeftArrow = input_json["IN_SC_LeftArrow"];
  IN_SC_PgDown = input_json["IN_SC_PgDown"];
  IN_SC_PgUp = input_json["IN_SC_PgUp"];
  IN_SC_RightArrow = input_json["IN_SC_RightArrow"];
  IN_SC_Space = input_json["IN_SC_Space"];
  IN_SC_UpArrow = input_json["IN_SC_UpArrow"];
  int in_kbdControls__downLeft = input_json["in_kbdControls"]["downLeft"];
  int in_kbdControls__downRight = input_json["in_kbdControls"]["downRight"];
  int in_kbdControls__upRight = input_json["in_kbdControls"]["upRight"];
  int in_kbdControls__upLeft = input_json["in_kbdControls"]["upLeft"];
  int in_kbdControls__right = input_json["in_kbdControls"]["right"];
  int in_kbdControls__left = input_json["in_kbdControls"]["left"];
  int in_kbdControls__down = input_json["in_kbdControls"]["down"];
  int in_kbdControls__up = input_json["in_kbdControls"]["up"];
  int in_kbdControls__quickLoad = input_json["in_kbdControls"]["quickLoad"];
  int in_kbdControls__quickSave = input_json["in_kbdControls"]["quickSave"];
  int in_kbdControls__status = input_json["in_kbdControls"]["status"];
  int in_kbdControls__fire = input_json["in_kbdControls"]["fire"];
  int in_kbdControls__pogo = input_json["in_kbdControls"]["pogo"];
  int in_kbdControls__jump = input_json["in_kbdControls"]["jump"];
  in_kbdControls = {in_kbdControls__downLeft, in_kbdControls__downRight, in_kbdControls__upRight, in_kbdControls__upLeft, in_kbdControls__right, in_kbdControls__left, in_kbdControls__down, in_kbdControls__up, in_kbdControls__quickLoad, in_kbdControls__quickSave, in_kbdControls__status, in_kbdControls__fire, in_kbdControls__pogo, in_kbdControls__jump};
  clock_t begin = clock();
  INL_SetupKbdControls();
  clock_t end = clock();
  std::cout << "Time: " << (double)(end - begin) / CLOCKS_PER_SEC << std::endl;
  std::cout << "AccTime: " << (double)AcceleratorTotalNanos / CLOCKS_PER_SEC << std::endl;
  write_output();
}