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
  scalar_t__ count;
  scalar_t__ letter;
};

/* Variables and functions */
TYPE_1__ *diagram;
TYPE_1__ temp;

void sort_letter_diagram() {
  int first_index = 0;
  int second_index = 0;

  for (first_index = 0; first_index < 26; first_index++) {
    for (second_index = 0; second_index < 26; second_index++) {
      if (diagram[second_index].count < diagram[second_index + 1].count) {
        temp = diagram[second_index];
        diagram[second_index] = diagram[second_index + 1];
        diagram[second_index + 1] = temp;
      }

      if (diagram[second_index].count == diagram[second_index + 1].count) {
        if (diagram[second_index].letter > diagram[second_index + 1].letter) {
          temp = diagram[second_index];
          diagram[second_index] = diagram[second_index + 1];
          diagram[second_index + 1] = temp;
        }
      }
    }
  }
}