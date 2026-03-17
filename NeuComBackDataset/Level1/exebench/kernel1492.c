#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_2__ TYPE_1__;

/* Type definitions */
struct TYPE_2__ {
  int pTask;
  int Delay;
  int Period;
  char RunMe;
};

/* Variables and functions */
int Error_code;
TYPE_1__ *SCH_tasks;

char SCH_Delete_Task(const int TASK_INDEX) {
  char Return_code;
  if (SCH_tasks[TASK_INDEX].pTask == 0) {

    Error_code = 2;

    Return_code = -1;
  } else {
    Return_code = 0;
  }
  SCH_tasks[TASK_INDEX].pTask = 0x0000;
  SCH_tasks[TASK_INDEX].Delay = (int)0;
  SCH_tasks[TASK_INDEX].Period = (int)0;
  SCH_tasks[TASK_INDEX].RunMe = (char)0;
  return Return_code;
}