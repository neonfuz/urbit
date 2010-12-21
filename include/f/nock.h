/* include/nock.h
**
** This file is in the public domain.
*/
  /** Functions.
  **/
    /* u2_nk_nock():
    **
    **   Compute `(nock bus fol)`.
    */
      u2_weak                                                     //  transfer
      u2_nk_nock(u2_wire wir_r,
                 u2_weak bus,                                     //  transfer
                 u2_weak fol);                                    //  retain

    /* u2_nk_mung():
    **
    **   Compute `(nock gat(-< sam) +.gat)`.
    */
      u2_weak                                                     //  transfer
      u2_nk_mung(u2_wire wir_r,
                 u2_weak gat,                                     //  retain
                 u2_weak sam);                                    //  transfer

    /* u2_nk_kick():
    **
    **   Fire `gat` without changing the sample.
    */
      u2_weak                                                     //  transfer
      u2_nk_kick(u2_wire wir_r,
                 u2_weak gat);                                    //  retain
