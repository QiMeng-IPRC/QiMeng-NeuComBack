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
  int lang;
  int unknown;
  int nextOffset;
  int packedLen;
  int unpackedLen;
};
typedef TYPE_1__ TextComprInfo;

/* Variables and functions */

void es_textComprInfo(TextComprInfo *tci) {
  tci->lang = (sizeof(tci->lang) == 2
                   ? (((tci->lang) & 0xFF) << 8 | ((tci->lang) & 0xFF00) >> 8)
                   : (((tci->lang) & 0xFF) << 24 | ((tci->lang) & 0xFF00) << 8 |
                      ((tci->lang) & 0xFF0000) >> 8 |
                      ((tci->lang) & 0xFF000000) >> 24));
  tci->unknown =
      (sizeof(tci->unknown) == 2
           ? (((tci->unknown) & 0xFF) << 8 | ((tci->unknown) & 0xFF00) >> 8)
           : (((tci->unknown) & 0xFF) << 24 | ((tci->unknown) & 0xFF00) << 8 |
              ((tci->unknown) & 0xFF0000) >> 8 |
              ((tci->unknown) & 0xFF000000) >> 24));
  tci->nextOffset =
      (sizeof(tci->nextOffset) == 2 ? (((tci->nextOffset) & 0xFF) << 8 |
                                       ((tci->nextOffset) & 0xFF00) >> 8)
                                    : (((tci->nextOffset) & 0xFF) << 24 |
                                       ((tci->nextOffset) & 0xFF00) << 8 |
                                       ((tci->nextOffset) & 0xFF0000) >> 8 |
                                       ((tci->nextOffset) & 0xFF000000) >> 24));
  tci->packedLen =
      (sizeof(tci->packedLen) == 2
           ? (((tci->packedLen) & 0xFF) << 8 | ((tci->packedLen) & 0xFF00) >> 8)
           : (((tci->packedLen) & 0xFF) << 24 |
              ((tci->packedLen) & 0xFF00) << 8 |
              ((tci->packedLen) & 0xFF0000) >> 8 |
              ((tci->packedLen) & 0xFF000000) >> 24));
  tci->unpackedLen = (sizeof(tci->unpackedLen) == 2
                          ? (((tci->unpackedLen) & 0xFF) << 8 |
                             ((tci->unpackedLen) & 0xFF00) >> 8)
                          : (((tci->unpackedLen) & 0xFF) << 24 |
                             ((tci->unpackedLen) & 0xFF00) << 8 |
                             ((tci->unpackedLen) & 0xFF0000) >> 8 |
                             ((tci->unpackedLen) & 0xFF000000) >> 24));
}