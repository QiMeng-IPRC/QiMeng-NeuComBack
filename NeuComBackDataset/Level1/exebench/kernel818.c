#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
scalar_t__ *CosTable2;
double ObjPX;
int ObjPX1;
int ObjPX2;
double ObjPY;
double ObjPY1;
int ObjPY2;
double ObjPZ;
double ObjPZ1;
int ObjPZ2;
int Op02AAS;
int Op02AZS;
double Op02FX;
double Op02FY;
double Op02FZ;
int Op02LES;
int Op02LFE;
short Op06H;
int Op06S;
int Op06V;
double Op06X;
double Op06Y;
double Op06Z;
scalar_t__ *SinTable2;
size_t tanval2;

void DSPOp06() {

  ObjPX = Op06X - Op02FX;
  ObjPY = Op06Y - Op02FY;
  ObjPZ = Op06Z - Op02FZ;

  tanval2 = (((-Op02AAS + 32768) / (65536 / 2048)) & (2048 - 1));

  ObjPX1 = (ObjPX * ((double)CosTable2[tanval2]) +
            ObjPY * -((double)SinTable2[tanval2]));
  ObjPY1 = (ObjPX * ((double)SinTable2[tanval2]) +
            ObjPY * ((double)CosTable2[tanval2]));
  ObjPZ1 = ObjPZ;

  tanval2 = (((-Op02AZS) / (65536 / 2048)) & (2048 - 1));

  ObjPX2 = ObjPX1;
  ObjPY2 = (ObjPY1 * ((double)CosTable2[tanval2]) +
            ObjPZ1 * -((double)SinTable2[tanval2]));
  ObjPZ2 = (ObjPY1 * ((double)SinTable2[tanval2]) +
            ObjPZ1 * ((double)CosTable2[tanval2]));

  ObjPZ2 = ObjPZ2 - Op02LFE;

  if (ObjPZ2 < 0) {
    Op06H = (short)(-ObjPX2 * Op02LES / -(ObjPZ2));
    Op06V = (short)(-ObjPY2 * Op02LES / -(ObjPZ2));
    Op06S = (unsigned short)(256 * (double)Op02LES / -ObjPZ2);
  } else {
    Op06H = 0;
    Op06V = 14 * 16;
    Op06S = 0xFFFF;
  }
}