#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ reg;
struct TYPE_2__ {
  int member_0;
  int member_1;
};
typedef size_t SANE_Int;

/* Variables and functions */

void hp3800_vrefs(SANE_Int res, SANE_Int *ser, SANE_Int *ler) {
  struct st_reg {
    SANE_Int resolution;
    SANE_Int vref[2];
  };

  struct st_reg reg[] = {

      {150, {25, 50}},
      {300, {50, 101}},
      {600, {102, 202}},
      {1200, {204, 404}},
      {2400, {408, 808}}};

  if ((ser != NULL) && (ler != NULL)) {
    SANE_Int a;
    SANE_Int count = sizeof(reg) / sizeof(struct st_reg);

    *ser = *ler = 0;

    for (a = 0; a < count; a++) {
      if (reg[a].resolution == res) {
        *ser = reg[a].vref[0];
        *ler = reg[a].vref[1];
        break;
      }
    }
  }
}