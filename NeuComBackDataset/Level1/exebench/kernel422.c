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
struct TYPE_4__ {
  int id;
  scalar_t__ enabled;
  int /*<<< orphan*/ *description;
};
struct TYPE_3__ {
  scalar_t__ netFlowPeerAS;
  scalar_t__ disableNetFlowScale;
};

/* Variables and functions */
int IP_extension_mask;
scalar_t__ Num_enabled_extensions;
TYPE_2__ *extension_descriptor;
TYPE_1__ sfConfig;
int *sflow_extensions;

void Init_sflow(void) {
  int i, id;

  sfConfig.disableNetFlowScale = 0;
  sfConfig.netFlowPeerAS = 0;

  i = 0;
  Num_enabled_extensions = 0;
  while ((id = sflow_extensions[i]) != 0) {
    if (extension_descriptor[id].enabled) {
      ;
      Num_enabled_extensions++;
    }
    i++;
  }

  IP_extension_mask = 0;
  i = 0;
  while (extension_descriptor[i].description != NULL) {
    switch (extension_descriptor[i].id) {
    case 9:

      if (extension_descriptor[i].enabled) {
        (IP_extension_mask |= 1);
        Num_enabled_extensions++;
      }
      break;
    case 11:

      if (extension_descriptor[i].enabled) {
        (IP_extension_mask |= 2);
        Num_enabled_extensions++;
      }
      break;
    case 23:

      if (extension_descriptor[i].enabled) {
        (IP_extension_mask |= 4);
        Num_enabled_extensions++;
      }
      break;
    }
    i++;
  }

  ;
}