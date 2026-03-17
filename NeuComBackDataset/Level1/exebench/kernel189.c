#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ listener_t;
typedef int error_t;
struct TYPE_2__ {
  int size;
  int /*<<< orphan*/ *listeners;
};

/* Variables and functions */
TYPE_1__ event_listeners;

error_t add_mouse_listener(listener_t listener) {

  if (event_listeners.size >= 32) {
    return 1;
  }

  event_listeners.listeners[event_listeners.size++] = listener;

  return 0;
}