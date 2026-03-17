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
  int /*<<< orphan*/ handle_waitpid;
  int /*<<< orphan*/ handle_trigger;
  int /*<<< orphan*/ handle_subrequest;
  int /*<<< orphan*/ handle_subrequest_start;
  int /*<<< orphan*/ handle_uri_clean;
  int /*<<< orphan*/ handle_request_reset;
  int /*<<< orphan*/ set_defaults;
  int /*<<< orphan*/ cleanup;
  int /*<<< orphan*/ init;
  int /*<<< orphan*/ version;
};
typedef TYPE_1__ plugin;

/* Variables and functions */
int /*<<< orphan*/ LIGHTTPD_VERSION_ID;
int /*<<< orphan*/ gw_free;
int /*<<< orphan*/ gw_handle_request_reset;
int /*<<< orphan*/ gw_handle_subrequest;
int /*<<< orphan*/ gw_handle_trigger;
int /*<<< orphan*/ gw_handle_waitpid_cb;
int /*<<< orphan*/ gw_init;
int /*<<< orphan*/ mod_scgi_set_defaults;
int /*<<< orphan*/ scgi_check_extension_1;
int /*<<< orphan*/ scgi_check_extension_2;

int mod_scgi_plugin_init(plugin *p) {
  p->version = LIGHTTPD_VERSION_ID;
  p->name = "scgi";

  p->init = gw_init;
  p->cleanup = gw_free;
  p->set_defaults = mod_scgi_set_defaults;
  p->handle_request_reset = gw_handle_request_reset;
  p->handle_uri_clean = scgi_check_extension_1;
  p->handle_subrequest_start = scgi_check_extension_2;
  p->handle_subrequest = gw_handle_subrequest;
  p->handle_trigger = gw_handle_trigger;
  p->handle_waitpid = gw_handle_waitpid_cb;

  return 0;
}