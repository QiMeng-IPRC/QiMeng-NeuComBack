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
  float a_framerate;
};
typedef TYPE_1__ fsdp_media_description_t;

/* Variables and functions */

float fsdp_get_media_framerate(const fsdp_media_description_t *dsc) {
  if ((NULL == dsc))
    return 0;
  return dsc->a_framerate;
}