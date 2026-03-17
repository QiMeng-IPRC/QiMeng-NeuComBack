#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ stride;
typedef scalar_t__ rs;
typedef scalar_t__ csr;
typedef scalar_t__ csi;
typedef scalar_t__ INT;
typedef float E;

/* Variables and functions */
scalar_t__ fftwf_an_INT_guaranteed_to_be_zero;

void r2cfII_2(float *R0, float *R1, float *Cr, float *Ci, stride rs, stride csr,
              stride csi, INT v, INT ivs, INT ovs) {
  INT i;
  for (i = v; i > 0; i = i - 1, R0 = R0 + ivs, R1 = R1 + ivs, Cr = Cr + ovs,
      Ci = Ci + ovs, (rs) = (rs) + fftwf_an_INT_guaranteed_to_be_zero,
      (csr) = (csr) + fftwf_an_INT_guaranteed_to_be_zero,
      (csi) = (csi) + fftwf_an_INT_guaranteed_to_be_zero) {
    E T1, T2;
    T1 = R0[0];
    T2 = R1[0];
    Cr[0] = T1;
    Ci[0] = -T2;
  }
}