#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
int Bad;
int Bitx;
long Rune1;
int Rune2;
int Rune3;
int Rune4;
int T2;
int T3;
int T4;
int T5;
int Testx;
int Tx;

int chartorune(int *rune, char *str) {
  int c, c1, c2, c3;
  long l;

  c = *(unsigned char *)str;
  if (c < Tx) {
    *rune = c;
    return 1;
  }

  c1 = *(unsigned char *)(str + 1) ^ Tx;
  if (c1 & Testx)
    goto bad;
  if (c < T3) {
    if (c < T2)
      goto bad;
    l = ((c << Bitx) | c1) & Rune2;
    if (l <= Rune1)
      goto bad;
    *rune = l;
    return 2;
  }

  c2 = *(unsigned char *)(str + 2) ^ Tx;
  if (c2 & Testx)
    goto bad;
  if (c < T4) {
    l = ((((c << Bitx) | c1) << Bitx) | c2) & Rune3;
    if (l <= Rune2)
      goto bad;
    *rune = l;
    return 3;
  }

  c3 = *(unsigned char *)(str + 3) ^ Tx;
  if (c3 & Testx)
    goto bad;
  if (c < T5) {
    l = ((((((c << Bitx) | c1) << Bitx) | c2) << Bitx) | c3) & Rune4;
    if (l <= Rune3)
      goto bad;
    *rune = l;
    return 4;
  }
# 180 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/Asido/MuPDF/refs/heads/master/jni/mupdf/scripts/../fitz/base_string.c"
bad:
  *rune = Bad;
  return 1;
}