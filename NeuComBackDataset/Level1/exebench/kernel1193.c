#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ myreg;
struct TYPE_2__ {
  int /*<<< orphan*/ member_2;
  int /*<<< orphan*/ member_1;
  int /*<<< orphan*/ member_0;
};
typedef size_t SANE_Int;
typedef int /*<<< orphan*/ SANE_Byte;

/* Variables and functions */
int /*<<< orphan*/ CCD_SENSOR;
int /*<<< orphan*/ CIS_SENSOR;
int /*<<< orphan*/ USB11;
int /*<<< orphan*/ USB20;

void hp3970_refvoltages(SANE_Int usb, SANE_Int sensor, SANE_Byte *vrts,
                        SANE_Byte *vrms, SANE_Byte *vrbs) {

  struct st_reg {
    SANE_Int usb;
    SANE_Int sensor;
    SANE_Byte values[3];
  };

  struct st_reg myreg[] = {

      {USB20, CCD_SENSOR, {0, 0, 0}},
      {USB11, CCD_SENSOR, {0, 0, 0}},
      {USB20, CIS_SENSOR, {0, 0, 0}},
      {USB11, CIS_SENSOR, {0, 0, 0}}};

  if ((vrts != NULL) && (vrms != NULL) && (vrbs != NULL)) {
    SANE_Int a;
    SANE_Int count = sizeof(myreg) / sizeof(struct st_reg);

    *vrts = *vrms = *vrbs = 0;

    for (a = 0; a < count; a++) {
      if ((myreg[a].usb == usb) && (myreg[a].sensor == sensor)) {
        *vrts = myreg[a].values[0];
        *vrms = myreg[a].values[1];
        *vrbs = myreg[a].values[2];
      }
    }
  }
}