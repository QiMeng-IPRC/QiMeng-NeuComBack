#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef size_t CState;

/* Variables and functions */
size_t *kMatchNextStates;

void CStateUpdateMatch(CState *m_Index) {
  *m_Index = kMatchNextStates[*m_Index];
}