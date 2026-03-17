#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_6__ TYPE_3__;
typedef struct TYPE_5__ TYPE_2__;
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_6__ {
  scalar_t__ LATB11;
};
struct TYPE_5__ {
  scalar_t__ LATD4;
};
struct TYPE_4__ {
  scalar_t__ LATG15;
  scalar_t__ LATG6;
};

/* Variables and functions */
int /*<<< orphan*/ ANSELA;
int /*<<< orphan*/ ANSELB;
int ANSELG;
int /*<<< orphan*/ BIT11;
int BIT15;
int /*<<< orphan*/ BIT4;
int /*<<< orphan*/ BIT5;
int BIT6;
TYPE_3__ LATBbits;
TYPE_2__ LATDbits;
TYPE_1__ LATGbits;
int /*<<< orphan*/ TRISA;
int /*<<< orphan*/ TRISB;
int /*<<< orphan*/ TRISD;
int TRISG;

void InitApp(void) {

  ANSELG &= ~(BIT6 | BIT15);

  ANSELB &= ~BIT11;

  TRISG &= ~(BIT6 | BIT15);

  TRISD &= ~BIT4;

  TRISB &= ~BIT11;

  LATGbits.LATG6 = 0;
  LATDbits.LATD4 = 0;
  LATBbits.LATB11 = 0;
  LATGbits.LATG15 = 0;

  ANSELA &= ~BIT5;

  TRISA |= BIT5;

  TRISA |= BIT4;
# 58 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/kpi-keoa/TheConnectedMCU_Labs/refs/heads/master/bkarachok/lab1-BasicIO/user.c"
}