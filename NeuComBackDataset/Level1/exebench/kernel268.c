#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_4__ TYPE_1__;

/* Type definitions */
struct TYPE_4__ {
  scalar_t__ ref_count;
};
typedef TYPE_1__ XdgMimeCache;

/* Variables and functions */
int /*<<< orphan*/
free(TYPE_1__ *);

void _xdg_mime_cache_unref(XdgMimeCache *cache) {
  cache->ref_count--;

  if (cache->ref_count == 0) {

    free(cache);
  }
}