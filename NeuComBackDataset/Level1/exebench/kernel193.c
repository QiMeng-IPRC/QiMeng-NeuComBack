#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
struct TYPE_3__ {
  int multi;
  int set94;
  unsigned char fin;
  unsigned char charset;
};

/* Variables and functions */
int allow_unify;
TYPE_1__ *iTable;
TYPE_1__ *iTableCache;
int iTableCacheIndex;
int *iTableCacheUsed;

unsigned char ItableLookup(unsigned char fin, int multi, int set94) {
  int i;

  for (i = iTableCacheIndex; i >= 0; i--) {
    if (1 == iTableCacheUsed[i] && multi == iTableCache[i].multi &&
        set94 == iTableCache[i].set94 && fin == iTableCache[i].fin)
      return iTableCache[i].charset;
  }
  for (i = 4 - 1; i > iTableCacheIndex; i--) {
    if (1 == iTableCacheUsed[i] && multi == iTableCache[i].multi &&
        set94 == iTableCache[i].set94 && fin == iTableCache[i].fin)
      return iTableCache[i].charset;
  }
  for (i = 0; i < 35; i++) {
    if (multi == iTable[i].multi && set94 == iTable[i].set94 &&
        fin == iTable[i].fin) {
      iTableCacheIndex++;
      if (iTableCacheIndex >= 4)
        iTableCacheIndex = 0;
      iTableCache[iTableCacheIndex] = iTable[i];
      iTableCacheUsed[iTableCacheIndex] = 1;

      return i;
    }
  }
  if (1 == allow_unify) {
    if (0 == multi && 1 == set94)
      return 0;
  }
  return 40;
}