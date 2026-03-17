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
  double m_duration;
  double m_timeToAverage;
  float m_currentFPS;
  scalar_t__ m_frameCounter;
};
typedef TYPE_1__ JBKFPSCounter;

/* Variables and functions */

void JBKFPSCounter_Update(JBKFPSCounter *inst, double deltaTime) {
  inst->m_frameCounter++;
  inst->m_duration += deltaTime;

  if (inst->m_duration >= inst->m_timeToAverage) {
    inst->m_currentFPS =
        (float)((double)inst->m_frameCounter / inst->m_duration);

    inst->m_frameCounter = 0;
    inst->m_duration = 0.0;
  }
}