#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
struct fio_file {
  int flags;
};
typedef enum fio_file_flags { ____Placeholder_fio_file_flags } fio_file_flags;

/* Variables and functions */
int FIO_FILE_open;

void fio_file_set_open(struct fio_file *f) {
  (f)->flags = (enum fio_file_flags)((f)->flags | FIO_FILE_open);
}