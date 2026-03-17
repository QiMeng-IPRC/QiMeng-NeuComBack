#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef scalar_t__ PFN_CAP_CALLBACK;
typedef int /*<<< orphan*/ INT32;
typedef scalar_t__ E_CAP_INT_TYPE;

/* Variables and functions */
int /*<<< orphan*/ E_CAP_INVALID_INT;
scalar_t__ eCAP_ADDRMINTF;
scalar_t__ eCAP_MDINTF;
scalar_t__ eCAP_MEINTF;
scalar_t__ eCAP_VINTF;
scalar_t__ *pfnCAP_IntHandlerTable;

INT32
CAP_InstallCallback(E_CAP_INT_TYPE eIntType, PFN_CAP_CALLBACK pfnCallback,
                    PFN_CAP_CALLBACK *pfnOldCallback) {
  if (eIntType == eCAP_VINTF) {
    *pfnOldCallback = pfnCAP_IntHandlerTable[0];
    pfnCAP_IntHandlerTable[0] = (PFN_CAP_CALLBACK)(pfnCallback);
  } else if (eIntType == eCAP_ADDRMINTF) {
    *pfnOldCallback = pfnCAP_IntHandlerTable[1];
    pfnCAP_IntHandlerTable[1] = (PFN_CAP_CALLBACK)(pfnCallback);
  } else if (eIntType == eCAP_MEINTF) {
    *pfnOldCallback = pfnCAP_IntHandlerTable[2];
    pfnCAP_IntHandlerTable[2] = (PFN_CAP_CALLBACK)(pfnCallback);
  } else if (eIntType == eCAP_MDINTF) {
    *pfnOldCallback = pfnCAP_IntHandlerTable[3];
    pfnCAP_IntHandlerTable[3] = (PFN_CAP_CALLBACK)(pfnCallback);
  } else
    return E_CAP_INVALID_INT;
  return 0;
}