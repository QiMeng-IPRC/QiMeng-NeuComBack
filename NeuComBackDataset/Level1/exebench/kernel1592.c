#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct fanotify_mark_inode {
  char *fhandle;
};

/* Variables and functions */

void copy_fhandle(char *tok, struct fanotify_mark_inode *inode) {
  int off = 0;

  while (*tok && (*tok > '0' || *tok < 'f')) {
    inode->fhandle[off++] = *tok++;
    if (off >= sizeof(inode->fhandle) - 1)
      break;
  }
  inode->fhandle[off] = '\0';
}