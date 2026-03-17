#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_3__ TYPE_1__;

/* Type definitions */
typedef scalar_t__ tSfPolicyId;
struct TYPE_3__ {
  scalar_t__ numAllocatedPolicies;
  scalar_t__ defaultPolicyId;
};
typedef TYPE_1__ tSfPolicyConfig;

/* Variables and functions */

void sfSetDefaultPolicy(tSfPolicyConfig *config, tSfPolicyId policyId) {
  if ((config == NULL) || (policyId >= config->numAllocatedPolicies))
    return;

  config->defaultPolicyId = policyId;
}