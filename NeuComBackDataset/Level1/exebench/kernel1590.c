#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef int u8;

/* Variables and functions */
int *S0;
int *S1;
int *S2;
int *S3;
int *S4;
int *S5;
int *S6;
int *S7;

void OneRound(u8 x[8], u8 k[4]) {
  u8 t[4], tmp[4];

  tmp[0] = x[4];
  tmp[1] = x[5];
  tmp[2] = x[6];
  tmp[3] = x[7];

  x[4] = x[4] ^ k[0];
  x[5] = x[5] ^ k[1];
  x[6] = x[6] ^ k[2];
  x[7] = x[7] ^ k[3];

  x[4] = ((S1[((x[4]) >> 4) & 0x0F]) << 4) ^ S0[(x[4] & 0x0F)];
  x[5] = ((S3[((x[5]) >> 4) & 0x0F]) << 4) ^ S2[(x[5] & 0x0F)];
  x[6] = ((S5[((x[6]) >> 4) & 0x0F]) << 4) ^ S4[(x[6] & 0x0F)];
  x[7] = ((S7[((x[7]) >> 4) & 0x0F]) << 4) ^ S6[(x[7] & 0x0F)];

  t[0] = ((x[4] >> 4) & 0x0F) ^ (x[5] & 0xF0);
  t[1] = (x[4] & 0x0F) ^ ((x[5] & 0x0F) << 4);
  t[2] = ((x[6] >> 4) & 0x0F) ^ (x[7] & 0xF0);
  t[3] = (x[6] & 0x0F) ^ ((x[7] & 0x0F) << 4);

  x[4] = x[3] ^ t[0];
  x[5] = x[0] ^ t[1];
  x[6] = x[1] ^ t[2];
  x[7] = x[2] ^ t[3];

  x[0] = tmp[0];
  x[1] = tmp[1];
  x[2] = tmp[2];
  x[3] = tmp[3];
}