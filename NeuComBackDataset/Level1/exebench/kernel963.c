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
  char *name;
  int /*<<< orphan*/ cleanup;
  int /*<<< orphan*/ set_defaults;
  int /*<<< orphan*/ handle_uri_clean;
  int /*<<< orphan*/ init;
  int /*<<< orphan*/ version;
};
typedef TYPE_1__ plugin;

/* Variables and functions */
int /*<<< orphan*/ LIGHTTPD_VERSION_ID;
int /*<<< orphan*/ mod_redirect_free;
int /*<<< orphan*/ mod_redirect_init;
int /*<<< orphan*/ mod_redirect_set_defaults;
int /*<<< orphan*/ mod_redirect_uri_handler;

int mod_redirect_plugin_init(plugin *p) {
  p->version = LIGHTTPD_VERSION_ID;
  p->name = "redirect";

  p->init = mod_redirect_init;
  p->handle_uri_clean = mod_redirect_uri_handler;
  p->set_defaults = mod_redirect_set_defaults;
  p->cleanup = mod_redirect_free;

  return 0;
}