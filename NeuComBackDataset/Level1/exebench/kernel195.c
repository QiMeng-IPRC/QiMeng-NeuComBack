#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_13__ TYPE_5__;
typedef struct TYPE_12__ TYPE_4__;
typedef struct TYPE_11__ TYPE_3__;
typedef struct TYPE_10__ TYPE_2__;
typedef struct TYPE_9__ TYPE_1__;

/* Type definitions */
struct TYPE_12__ {
  scalar_t__ len;
};
struct TYPE_11__ {
  scalar_t__ len;
};
struct TYPE_10__ {
  scalar_t__ len;
};
struct TYPE_9__ {
  char *buf;
  scalar_t__ len;
};
struct TYPE_13__ {
  int /*<<< orphan*/ fragment;
  TYPE_4__ scheme;
  TYPE_3__ authority;
  TYPE_2__ query;
  TYPE_1__ path;
  TYPE_1__ path_base;
};
typedef TYPE_5__ SerdURI;

/* Variables and functions */

void serd_uri_resolve(const SerdURI *r, const SerdURI *base, SerdURI *t) {

  t->path_base.buf = NULL;
  t->path_base.len = 0;
  if (r->scheme.len) {
    *t = *r;
  } else {
    if (r->authority.len) {
      t->authority = r->authority;
      t->path = r->path;
      t->query = r->query;
    } else {
      t->path = r->path;
      if (!r->path.len) {
        t->path_base = base->path;
        if (r->query.len) {
          t->query = r->query;
        } else {
          t->query = base->query;
        }
      } else {
        if (r->path.buf[0] != '/') {
          t->path_base = base->path;
        }
        t->query = r->query;
      }
      t->authority = base->authority;
    }
    t->scheme = base->scheme;
    t->fragment = r->fragment;
  }
# 2695 "/scratch/repos/new/home/jordi_armengol_estape/c-scraper/outputs/2022-01-22/02-19-57/repos/kasei/serd-perl/refs/heads/master/serd.c"
}