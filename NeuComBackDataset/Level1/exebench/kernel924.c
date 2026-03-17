#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_2__;
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ pcm_io_func;
typedef int /*<<< orphan*/ dev_st;
struct TYPE_4__ {
  int /*<<< orphan*/ *pcm_write;
  int /*<<< orphan*/ *pdevice_st;
};
struct TYPE_3__ {
  int /*<<< orphan*/ *pcm_read;
  int /*<<< orphan*/ *pdevice_st;
};

/* Variables and functions */
TYPE_2__ dst_dev;
TYPE_1__ src_dev;

unsigned int pcm_device_init(const dev_st *const src, const dev_st *const dst,
                             const pcm_io_func *const pcm_read,
                             const pcm_io_func *const pcm_write) {
  src_dev.pdevice_st = src;
  src_dev.pcm_read = pcm_read;

  dst_dev.pdevice_st = dst;
  dst_dev.pcm_write = pcm_write;

  return 0;
}