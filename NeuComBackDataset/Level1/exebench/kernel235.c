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
  char *currentLexem;
  char *endOfBuffer;
  char *beginningOfBuffer;
  char *macroName;
  int /*<<< orphan*/ inputType;
};
typedef TYPE_1__ S_lexInput;
typedef int /*<<< orphan*/ InputType;

/* Variables and functions */

void fillLexInput(S_lexInput *lexInput, char *currentLexem, char *endOfBuffer,
                  char *beginningOfBuffer, char *macroName,
                  InputType margExpFlag) {
  lexInput->currentLexem = currentLexem;
  lexInput->endOfBuffer = endOfBuffer;
  lexInput->beginningOfBuffer = beginningOfBuffer;
  lexInput->macroName = macroName;
  lexInput->inputType = margExpFlag;
}