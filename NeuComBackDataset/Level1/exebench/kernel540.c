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
  int keylen;
  int vallen;
};
typedef TYPE_1__ hash_table_t;

/* Variables and functions */

void hash_table_entry_len(hash_table_t *t, int keylen, int vallen) {

  t->keylen = keylen;
  t->vallen = vallen;
}