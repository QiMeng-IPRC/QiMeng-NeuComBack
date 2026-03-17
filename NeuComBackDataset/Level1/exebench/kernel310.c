#define NULL ((void *)0)
typedef unsigned long size_t; // Customize by platform.
typedef long intptr_t;
typedef unsigned long uintptr_t;
typedef long scalar_t__; // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */

/* Forward declarations */

/* Type definitions */
typedef unsigned int sgl_floating_point;
typedef int result;
typedef scalar_t__ opnd3;
typedef scalar_t__ opnd2;
typedef scalar_t__ opnd1;
typedef int dest_exponent;
typedef scalar_t__ boolean;

/* Variables and functions */

int sgl_fmpy(sgl_floating_point *srcptr1, sgl_floating_point *srcptr2,
             sgl_floating_point *dstptr, unsigned int *status) {
  register unsigned int opnd1, opnd2, opnd3, result;
  register int dest_exponent, count;
  register boolean inexact = 0, guardbit = 0, stickybit = 0;
  boolean is_tiny;

  opnd1 = *srcptr1;
  opnd2 = *srcptr2;
  if (((opnd1) >> (32 - (0) - (1)) & ((unsigned)-1 >> (32 - (1)))) ^
      ((opnd2) >> (32 - (0) - (1)) & ((unsigned)-1 >> (32 - (1)))))
    (result) = (unsigned int)1 << 31;
  else
    (result) = 0;
  if ((((opnd1) >> (32 - (1) - (8)) & ((unsigned)-1 >> (32 - (8)))) ==
       (127 + 127 + 1))) {
    if ((((opnd1) & (((unsigned)-1 >> (32 - 23)) << (32 - 9 - 23))) == 0)) {
      if ((((opnd2) >> (32 - (1) - (8)) & ((unsigned)-1 >> (32 - (8)))) !=
               (127 + 127 + 1) ||
           ((opnd2) & (((unsigned)-1 >> (32 - 23)) << (32 - 9 - 23))) == 0)) {
        if ((((opnd2) & (((unsigned)-1 >> (32 - 31)) << (32 - 1 - 31))) == 0)) {
          if ((((*status)) >> (32 - (27) - (1)) & ((unsigned)-1 >> (32 - (1)))))
            return (0x20);
          (*status) =
              (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) |
              (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 0 - 1));
          (result) =
              ((127 + 127) + 1) << (32 - (1 + 8)) | (1 << (32 - (1 + 8 + 2)));
          *dstptr = result;
          return (0x0);
        }
        result = ((result) & ~(((unsigned)-1 >> (32 - 31)) << (32 - 1 - 31))) |
                 (((((127 + 127 + 1) << (32 - (1 + 8)))) &
                   ((unsigned)-1 >> (32 - 31)))
                  << (32 - 1 - 31));
        *dstptr = result;
        return (0x0);
      }
    } else {
      if ((((opnd1) & (((unsigned)-1 >> (32 - 1)) << (32 - 9 - 1))) != 0)) {

        if ((((*status)) >> (32 - (27) - (1)) & ((unsigned)-1 >> (32 - (1)))))
          return (0x20);

        (*status) =
            (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) |
            (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 0 - 1));
        opnd1 = ((opnd1) & ~(((unsigned)-1 >> (32 - 2)) << (32 - 9 - 2))) |
                (((1) & ((unsigned)-1 >> (32 - 2))) << (32 - 9 - 2));
      } else if ((((opnd2) >> (32 - (1) - (9)) &
                   ((unsigned)-1 >> (32 - (9)))) == 0x1ff)) {

        if ((((*status)) >> (32 - (27) - (1)) & ((unsigned)-1 >> (32 - (1)))))
          return (0x20);

        (*status) =
            (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) |
            (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 0 - 1));
        opnd2 = ((opnd2) & ~(((unsigned)-1 >> (32 - 2)) << (32 - 9 - 2))) |
                (((1) & ((unsigned)-1 >> (32 - 2))) << (32 - 9 - 2));
        *dstptr = opnd2;
        return (0x0);
      }
      *dstptr = opnd1;
      return (0x0);
    }
  }
  if ((((opnd2) >> (32 - (1) - (8)) & ((unsigned)-1 >> (32 - (8)))) ==
       (127 + 127 + 1))) {
    if ((((opnd2) & (((unsigned)-1 >> (32 - 23)) << (32 - 9 - 23))) == 0)) {
      if ((((opnd1) & (((unsigned)-1 >> (32 - 31)) << (32 - 1 - 31))) == 0)) {

        if ((((*status)) >> (32 - (27) - (1)) & ((unsigned)-1 >> (32 - (1)))))
          return (0x20);
        (*status) =
            (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) |
            (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 0 - 1));
        (opnd2) =
            ((127 + 127) + 1) << (32 - (1 + 8)) | (1 << (32 - (1 + 8 + 2)));
        *dstptr = opnd2;
        return (0x0);
      }
      result =
          ((result) & ~(((unsigned)-1 >> (32 - 31)) << (32 - 1 - 31))) |
          (((((127 + 127 + 1) << (32 - (1 + 8)))) & ((unsigned)-1 >> (32 - 31)))
           << (32 - 1 - 31));
      *dstptr = result;
      return (0x0);
    }
    if ((((opnd2) & (((unsigned)-1 >> (32 - 1)) << (32 - 9 - 1))) != 0)) {

      if ((((*status)) >> (32 - (27) - (1)) & ((unsigned)-1 >> (32 - (1)))))
        return (0x20);

      (*status) =
          (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) |
          (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 0 - 1));
      opnd2 = ((opnd2) & ~(((unsigned)-1 >> (32 - 2)) << (32 - 9 - 2))) |
              (((1) & ((unsigned)-1 >> (32 - 2))) << (32 - 9 - 2));
    }
    *dstptr = opnd2;
    return (0x0);
  }
  dest_exponent = ((opnd1) >> (32 - (1) - (8)) & ((unsigned)-1 >> (32 - (8)))) +
                  ((opnd2) >> (32 - (1) - (8)) & ((unsigned)-1 >> (32 - (8)))) -
                  127;

  if ((((opnd1) >> (32 - (1) - (8)) & ((unsigned)-1 >> (32 - (8)))) != 0)) {

    opnd1 = ((opnd1) & ~(((unsigned)-1 >> (32 - 9)) << (32 - 0 - 9))) |
            (((1) & ((unsigned)-1 >> (32 - 9))) << (32 - 0 - 9));
  } else {

    if ((((opnd1) & (((unsigned)-1 >> (32 - 23)) << (32 - 9 - 23))) == 0)) {
      (result) &= 0x80000000;
      *dstptr = result;
      return (0x0);
    }

    (opnd1) &= 0x007fffff;
    (opnd1) <<= 1;
    while (
        (((opnd1) >> (32 - (8) - (8)) & ((unsigned)-1 >> (32 - (8)))) == 0)) {
      (opnd1) <<= 8;
      dest_exponent -= 8;
    }
    if ((((opnd1) >> (32 - (8) - (4)) & ((unsigned)-1 >> (32 - (4)))) == 0)) {
      (opnd1) <<= 4;
      dest_exponent -= 4;
    }
    while ((((opnd1) & (((unsigned)-1 >> (32 - 1)) << (32 - 8 - 1))) == 0)) {
      (opnd1) <<= 1;
      dest_exponent -= 1;
    };
  }

  if ((((opnd2) >> (32 - (1) - (8)) & ((unsigned)-1 >> (32 - (8)))) != 0)) {
    opnd2 = ((opnd2) & ~(((unsigned)-1 >> (32 - 9)) << (32 - 0 - 9))) |
            (((1) & ((unsigned)-1 >> (32 - 9))) << (32 - 0 - 9));
  } else {

    if ((((opnd2) & (((unsigned)-1 >> (32 - 23)) << (32 - 9 - 23))) == 0)) {
      (result) &= 0x80000000;
      *dstptr = result;
      return (0x0);
    }

    (opnd2) &= 0x007fffff;
    (opnd2) <<= 1;
    while (
        (((opnd2) >> (32 - (8) - (8)) & ((unsigned)-1 >> (32 - (8)))) == 0)) {
      (opnd2) <<= 8;
      dest_exponent -= 8;
    }
    if ((((opnd2) >> (32 - (8) - (4)) & ((unsigned)-1 >> (32 - (4)))) == 0)) {
      (opnd2) <<= 4;
      dest_exponent -= 4;
    }
    while ((((opnd2) & (((unsigned)-1 >> (32 - 1)) << (32 - 8 - 1))) == 0)) {
      (opnd2) <<= 1;
      dest_exponent -= 1;
    };
  }

  (opnd2) <<= 4;
  (opnd3) = 0;
  for (count = 1; count < 24; count += 4) {
    stickybit |= ((opnd3) & (((unsigned)-1 >> (32 - 4)) << (32 - 28 - 4)));
    (opnd3) >>= 4;
    if (((opnd1) >> (32 - (28) - (1)) & ((unsigned)-1 >> (32 - (1)))))
      (opnd3) += ((opnd2) << 3);
    if (((opnd1) >> (32 - (29) - (1)) & ((unsigned)-1 >> (32 - (1)))))
      (opnd3) += ((opnd2) << 2);
    if (((opnd1) >> (32 - (30) - (1)) & ((unsigned)-1 >> (32 - (1)))))
      (opnd3) += ((opnd2) << 1);
    if (((opnd1) & (((unsigned)-1 >> (32 - 1)) << (32 - 31 - 1))))
      (opnd3) += (opnd2);
    (opnd1) >>= 4;
  }

  if ((((opnd3) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) == 0)) {
    (opnd3) <<= 1;
  } else {

    dest_exponent++;
  }

  while ((((opnd3) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) == 0)) {
    (opnd3) <<= 1;
    dest_exponent--;
  }
  stickybit |= (opnd3) << (32 - 8 + 1);
  guardbit = ((opnd3) >> (32 - (24) - (1)) & ((unsigned)-1 >> (32 - (1))));
  inexact = guardbit | stickybit;

  (opnd3) >>= 8;

  if (inexact && (dest_exponent > 0 || (((*status)) >> (32 - (30) - (1)) &
                                        ((unsigned)-1 >> (32 - (1)))))) {
    (opnd3) &= 0x007fffff;
    switch ((((*status)) >> (32 - (21) - (2)) & ((unsigned)-1 >> (32 - (2))))) {
    case 2:
      if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) == 0))
        (opnd3) += 1;
      break;
    case 3:
      if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) != 0))
        (opnd3) += 1;
      break;
    case 0:
      if (guardbit) {
        if (stickybit ||
            (((opnd3) & (((unsigned)-1 >> (32 - 1)) << (32 - 31 - 1))) != 0))
          (opnd3) += 1;
      }
    }
    if ((((opnd3) >> (32 - (8) - (1)) & ((unsigned)-1 >> (32 - (1))))))
      dest_exponent++;
  }
  result = ((result) & ~(((unsigned)-1 >> (32 - 23)) << (32 - 9 - 23))) |
           (((opnd3) & ((unsigned)-1 >> (32 - 23))) << (32 - 9 - 23));

  if (dest_exponent >= (127 + 127 + 1)) {

    if ((((*status)) >> (32 - (29) - (1)) & ((unsigned)-1 >> (32 - (1))))) {
      result = ((result) & ~(((unsigned)-1 >> (32 - 8)) << (32 - 1 - 8))) |
               ((((dest_exponent - 192)) & ((unsigned)-1 >> (32 - 8)))
                << (32 - 1 - 8));
      *dstptr = result;
      if (inexact)
        if ((((*status)) >> (32 - (31) - (1)) & ((unsigned)-1 >> (32 - (1)))))
          return (0x08 | 0x02);
        else
          (*status) =
              (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 4 - 1))) |
              (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 4 - 1));
      return (0x08);
    }
    inexact = (!0);
    (*status) = (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 2 - 1))) |
                (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 2 - 1));

    switch ((((*status)) >> (32 - (21) - (2)) & ((unsigned)-1 >> (32 - (2))))) {
    case 2:
      if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) != 0)) {
        (result) = ((127 + 127) << (32 - (1 + 8))) |
                   ((1 << (32 - (1 + 8))) - 1) | ((unsigned int)1 << 31);
      } else {
        (result) = ((127 + 127 + 1) << (32 - (1 + 8)));
      }
      break;
    case 3:
      if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) == 0)) {
        (result) =
            ((127 + 127) << (32 - (1 + 8))) | ((1 << (32 - (1 + 8))) - 1);
      } else {
        (result) =
            ((127 + 127 + 1) << (32 - (1 + 8))) | ((unsigned int)1 << 31);
      }
      break;
    case 0:
      result =
          ((result) & ~(((unsigned)-1 >> (32 - 31)) << (32 - 1 - 31))) |
          (((((127 + 127 + 1) << (32 - (1 + 8)))) & ((unsigned)-1 >> (32 - 31)))
           << (32 - 1 - 31));
      break;
    case 1:
      (result) =
          (result) & ((unsigned int)1 << 31) |
          (((127 + 127) << (32 - (1 + 8))) | ((1 << (32 - (1 + 8))) - 1));
    };
  } else if (dest_exponent <= 0) {

    if ((((*status)) >> (32 - (30) - (1)) & ((unsigned)-1 >> (32 - (1))))) {
      result = ((result) & ~(((unsigned)-1 >> (32 - 8)) << (32 - 1 - 8))) |
               ((((dest_exponent + 192)) & ((unsigned)-1 >> (32 - 8)))
                << (32 - 1 - 8));
      *dstptr = result;
      if (inexact)
        if ((((*status)) >> (32 - (31) - (1)) & ((unsigned)-1 >> (32 - (1)))))
          return (0x04 | 0x02);
        else
          (*status) =
              (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 4 - 1))) |
              (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 4 - 1));
      return (0x04);
    }

    is_tiny = (!0);
    if (dest_exponent == 0 && inexact) {
      switch (
          (((*status)) >> (32 - (21) - (2)) & ((unsigned)-1 >> (32 - (2))))) {
      case 2:
        if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) == 0)) {
          (opnd3) += 1;
          if ((((opnd3) & (((unsigned)-1 >> (32 - 1)) << (32 - 7 - 1))) != 0))
            is_tiny = 0;
          (opnd3) -= 1;
        }
        break;
      case 3:
        if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) != 0)) {
          (opnd3) += 1;
          if ((((opnd3) & (((unsigned)-1 >> (32 - 1)) << (32 - 7 - 1))) != 0))
            is_tiny = 0;
          (opnd3) -= 1;
        }
        break;
      case 0:
        if (guardbit && (stickybit || (((opnd3) & (((unsigned)-1 >> (32 - 1))
                                                   << (32 - 31 - 1))) != 0))) {
          (opnd3) += 1;
          if ((((opnd3) & (((unsigned)-1 >> (32 - 1)) << (32 - 7 - 1))) != 0))
            is_tiny = 0;
          (opnd3) -= 1;
        }
        break;
      }
    }

    stickybit = inexact;
    opnd3 = ((opnd3) & ~(((unsigned)-1 >> (32 - 9)) << (32 - 0 - 9))) |
            (((1) & ((unsigned)-1 >> (32 - 9))) << (32 - 0 - 9));
    if (dest_exponent >= (1 - 24)) {
      guardbit = ((opnd3) >> -dest_exponent) & 1;
      if (dest_exponent < 0)
        stickybit |= (opnd3) << (32 + dest_exponent);
      inexact = guardbit | stickybit;
      (opnd3) >>= (1 - dest_exponent);
    } else {
      guardbit = 0;
      stickybit |= (opnd3);
      inexact = stickybit;
      (opnd3) = 0;
    };

    if (inexact) {
      switch (
          (((*status)) >> (32 - (21) - (2)) & ((unsigned)-1 >> (32 - (2))))) {
      case 2:
        if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) == 0)) {
          (opnd3) += 1;
        }
        break;
      case 3:
        if ((((result) & (((unsigned)-1 >> (32 - 1)) << (32 - 0 - 1))) != 0)) {
          (opnd3) += 1;
        }
        break;
      case 0:
        if (guardbit && (stickybit || (((opnd3) & (((unsigned)-1 >> (32 - 1))
                                                   << (32 - 31 - 1))) != 0))) {
          (opnd3) += 1;
        }
        break;
      }
      if (is_tiny)
        (*status) =
            (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 3 - 1))) |
            (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 3 - 1));
    }
    result = ((result) & ~(((unsigned)-1 >> (32 - 31)) << (32 - 1 - 31))) |
             (((opnd3) & ((unsigned)-1 >> (32 - 31))) << (32 - 1 - 31));
  } else
    result = ((result) & ~(((unsigned)-1 >> (32 - 8)) << (32 - 1 - 8))) |
             (((dest_exponent) & ((unsigned)-1 >> (32 - 8))) << (32 - 1 - 8));
  *dstptr = result;

  if (inexact) {
    if ((((*status)) >> (32 - (31) - (1)) & ((unsigned)-1 >> (32 - (1)))))
      return (0x02);
    else
      (*status) =
          (((*status)) & ~(((unsigned)-1 >> (32 - 1)) << (32 - 4 - 1))) |
          (((1) & ((unsigned)-1 >> (32 - 1))) << (32 - 4 - 1));
  }
  return (0x0);
}