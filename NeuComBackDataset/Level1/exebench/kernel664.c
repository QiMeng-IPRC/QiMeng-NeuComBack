#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */
typedef struct TYPE_7__ TYPE_3__;
typedef struct TYPE_6__ TYPE_2__;
typedef struct TYPE_5__ TYPE_1__;

/* Type definitions */
typedef int /*<<< orphan*/ int32;
struct TYPE_7__ {
  int /*<<< orphan*/ Z;
  int /*<<< orphan*/ Y;
  int /*<<< orphan*/ X;
};
struct TYPE_5__ {
  scalar_t__ bIsSpriteActor;
};
struct TYPE_6__ {
  int /*<<< orphan*/ Z;
  int /*<<< orphan*/ Y;
  int /*<<< orphan*/ X;
  scalar_t__ speed;
  TYPE_1__ staticFlags;
  int /*<<< orphan*/ positionInMoveScript;
};
typedef TYPE_2__ ActorStruct;

/* Variables and functions */
size_t currentScriptValue;
int /*<<< orphan*/ destX;
int /*<<< orphan*/ destY;
int /*<<< orphan*/ destZ;
TYPE_3__ *sceneTracks;
size_t *scriptPtr;

int32 mPOS_POINT(int32 actorIdx, ActorStruct *actor) {
  actor->positionInMoveScript++;
  currentScriptValue = *(scriptPtr);

  destX = sceneTracks[currentScriptValue].X;
  destY = sceneTracks[currentScriptValue].Y;
  destZ = sceneTracks[currentScriptValue].Z;

  if (actor->staticFlags.bIsSpriteActor) {
    actor->speed = 0;
  }

  actor->X = destX;
  actor->Y = destY;
  actor->Z = destZ;

  return 0;
}