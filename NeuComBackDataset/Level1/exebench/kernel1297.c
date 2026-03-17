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
  int *V;
  int Opcode;
  int Pc;
};

/* Variables and functions */
TYPE_1__ Chip8;

void op_xxx5() {
  if (Chip8.V[(Chip8.Opcode & 0x0F00) >> 8] >
      Chip8.V[(Chip8.Opcode & 0x00F0) >> 4]) {
    Chip8.V[0xF] = 1;
  } else {
    Chip8.V[0xF] = 0;
  }
  Chip8.V[(Chip8.Opcode & 0x0F00) >> 8] =
      Chip8.V[(Chip8.Opcode & 0x0F00) >> 8] -
      Chip8.V[(Chip8.Opcode & 0x00F0) >> 4];
  Chip8.Pc += 2;
}