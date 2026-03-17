#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int integer;
typedef int doublereal;

/* Variables and functions */

int dlaqr1_(integer *n, doublereal *h__, integer *ldh, doublereal *sr1,
            doublereal *si1, doublereal *sr2, doublereal *si2, doublereal *v) {

  integer h_dim1, h_offset;
  doublereal d__1, d__2, d__3;

  doublereal s, h21s, h31s;
# 134 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/alishakiba/libflame/refs/heads/master/src/map/lapack2flamec/f2c/c/dlaqr1.c"
  h_dim1 = *ldh;
  h_offset = 1 + h_dim1;
  h__ -= h_offset;
  --v;

  if (*n == 2) {
    s = (d__1 = h__[h_dim1 + 1] - *sr2, ((d__1) >= 0 ? (d__1) : -(d__1))) +
        ((*si2) >= 0 ? (*si2) : -(*si2)) +
        (d__2 = h__[h_dim1 + 2], ((d__2) >= 0 ? (d__2) : -(d__2)));
    if (s == 0.) {
      v[1] = 0.;
      v[2] = 0.;
    } else {
      h21s = h__[h_dim1 + 2] / s;
      v[1] = h21s * h__[(h_dim1 << 1) + 1] +
             (h__[h_dim1 + 1] - *sr1) * ((h__[h_dim1 + 1] - *sr2) / s) -
             *si1 * (*si2 / s);
      v[2] = h21s * (h__[h_dim1 + 1] + h__[(h_dim1 << 1) + 2] - *sr1 - *sr2);
    }
  } else {
    s = (d__1 = h__[h_dim1 + 1] - *sr2, ((d__1) >= 0 ? (d__1) : -(d__1))) +
        ((*si2) >= 0 ? (*si2) : -(*si2)) +
        (d__2 = h__[h_dim1 + 2], ((d__2) >= 0 ? (d__2) : -(d__2))) +
        (d__3 = h__[h_dim1 + 3], ((d__3) >= 0 ? (d__3) : -(d__3)));
    if (s == 0.) {
      v[1] = 0.;
      v[2] = 0.;
      v[3] = 0.;
    } else {
      h21s = h__[h_dim1 + 2] / s;
      h31s = h__[h_dim1 + 3] / s;
      v[1] = (h__[h_dim1 + 1] - *sr1) * ((h__[h_dim1 + 1] - *sr2) / s) -
             *si1 * (*si2 / s) + h__[(h_dim1 << 1) + 1] * h21s +
             h__[h_dim1 * 3 + 1] * h31s;
      v[2] = h21s * (h__[h_dim1 + 1] + h__[(h_dim1 << 1) + 2] - *sr1 - *sr2) +
             h__[h_dim1 * 3 + 2] * h31s;
      v[3] = h31s * (h__[h_dim1 + 1] + h__[h_dim1 * 3 + 3] - *sr1 - *sr2) +
             h21s * h__[(h_dim1 << 1) + 3];
    }
  }
  return 0;
}