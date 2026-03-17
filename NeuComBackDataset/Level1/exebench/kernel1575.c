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
  int g;
  int h;
  int processID;
  scalar_t__ discarded;
  scalar_t__ bytesRead;
  scalar_t__ bytesWritten;
  scalar_t__ currentPart;
  scalar_t__ baseSize;
};
typedef TYPE_1__ File;

/* Variables and functions */

void file_init(File *file, int nprocessID) {
  file->g = -1;
  file->h = -1;
  file->processID = nprocessID;
  file->baseSize = 0;
  file->currentPart = 0;
  file->bytesWritten = 0;
  file->bytesRead = 0;
  file->discarded = 0;
}