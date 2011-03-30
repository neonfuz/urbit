/* j/6/find.c
**
** This file is in the public domain.
*/
#include "all.h"
#include "../pit.h"

/* logic
*/
  static u2_noun
  _find_in(u2_wire wir_r,
           u2_noun van,
           u2_noun sut,
           u2_noun way,
           u2_noun cog,
           u2_noun gil)
  {
    u2_noun p_sut, q_sut;

    if ( u2_yes == u2_stud(sut) ) {
      return u2_nul;
    }
    else switch ( u2_h(sut) ) {
      default: return u2_nul;

      case c3__cell: {
        if ( (u2_no == u2_as_trel(sut, 0, &p_sut, &q_sut)) ) {
          return u2_bl_bail(wir_r);
        } else {
          u2_noun taf = _find_in(wir_r, van, p_sut, way, cog, gil);

          if ( u2_nul == taf ) {
            u2_noun bov = _find_in(wir_r, van, q_sut, way, cog, gil);

            if ( u2_nul == bov ) {
              return u2_nul;
            } else {
              u2_noun p_bov, q_bov, r_bov;
              u2_noun pro;

              u2_mean(bov, 6, &p_bov, 14, &q_bov, 15, &r_bov, 0);
              pro = u2_bq
                (wir_r, u2_nul,
                        j2_mbc(Pit, peg)(wir_r, 3, p_bov),
                        u2_rx(wir_r, q_bov),
                        u2_rx(wir_r, r_bov));

              u2_rl_lose(wir_r, bov);
              return pro;
            }
          } else {
            u2_noun p_taf, q_taf, r_taf;
            u2_noun pro;

            u2_mean(taf, 6, &p_taf, 14, &q_taf, 15, &r_taf, 0);
            pro = u2_bq
              (wir_r, u2_nul,
                      j2_mbc(Pit, peg)(wir_r, 2, p_taf),
                      u2_rx(wir_r, q_taf),
                      u2_rx(wir_r, r_taf));

            u2_rl_lose(wir_r, taf);
            return pro;
          }
        }
      }
      case c3__core: {
        u2_noun pq_sut, qq_sut, rq_sut;
        u2_noun prq_sut, qrq_sut;

        if ( (u2_no == u2_as_trel(sut, 0, &p_sut, &q_sut)) ||
             (u2_no == u2_as_trel(q_sut, &pq_sut, &qq_sut, &rq_sut)) ||
             (u2_no == u2_as_cell(rq_sut, &prq_sut, &qrq_sut)) )
        {
          return u2_bl_bail(wir_r);
        } else {
          u2_noun zem = j2_mby(Pit, look)(wir_r, cog, qrq_sut);

          if ( u2_nul == zem ) {
            u2_noun taf = _find_in(wir_r, van, p_sut, way, cog, gil);

            if ( u2_nul == taf ) {
              return u2_nul;
            } else {
              u2_noun p_taf, q_taf, r_taf;
              u2_noun pro;

              u2_mean(taf, 6, &p_taf, 14, &q_taf, 15, &r_taf, 0);

              if ( u2_no == j2_mcy(Pit, ut, park)(wir_r, van, sut, way, p_taf) )              {
                return u2_bl_bail(wir_r);
              }
              else {
                pro = u2_bq
                  (wir_r, u2_nul,
                          j2_mbc(Pit, peg)(wir_r, 2, p_taf),
                          u2_rx(wir_r, q_taf),
                          u2_rx(wir_r, r_taf));

                u2_rl_lose(wir_r, taf);
                return pro;
              }
            }
          }
          else {
            u2_noun p_zem, q_zem;
            u2_noun pro;

            u2_mean(zem, 6, &p_zem, 7, &q_zem, 0);

            pro = u2_bq
              (wir_r, u2_nul,
                      _1,
                      u2_bt(wir_r, u2_nul, 
                                   j2_mbc(Pit, peg)(wir_r, 3, p_zem),
                                   u2_bc(wir_r, u2_rx(wir_r, q_zem), u2_nul)),
                      u2_rx(wir_r, sut));

            u2_rl_lose(wir_r, zem);
            return pro;
          }
        }
      }
      case c3__face: {
        if ( (u2_no == u2_as_trel(sut, 0, &p_sut, &q_sut)) ) {
          return u2_bl_bail(wir_r);
        } else { 
          if ( u2_no == u2_sing(cog, p_sut) ) {
            return u2_nul;
          } else {
            return u2_bq(wir_r, u2_nul, _1, u2_nul, u2_rx(wir_r, q_sut));
          }
        }
      }
      case c3__fork: {
        if ( (u2_no == u2_as_trel(sut, 0, &p_sut, &q_sut)) ) {
          return u2_bl_bail(wir_r);
        }
        else {
          u2_noun hax = _find_in(wir_r, van, p_sut, way, cog, gil);
          u2_noun yor = _find_in(wir_r, van, q_sut, way, cog, gil);
          u2_noun p_hax, q_hax, r_hax;
          u2_noun p_yor, q_yor, r_yor;
          u2_noun pro;

          if ( u2_nul == hax ) {
            if ( u2_nul == yor ) {
              return u2_nul;
            } else return u2_bl_bail(wir_r);
          }
          else {
            if ( u2_nul == hax ) {
              return u2_bl_bail(wir_r);
            }
            else {
              if ( u2_yes == u2_sing(hax, yor) ) {
                u2_rl_lose(wir_r, yor);

                return hax;
              } else {
                u2_mean(hax, 6, &p_hax, 14, &q_hax, 15, &r_hax, 0);
                u2_mean(yor, 6, &p_yor, 14, &q_yor, 15, &r_yor, 0);

                if ( u2_no == u2_sing(p_hax, p_yor) ) {
                  return u2_bl_bail(wir_r);
                }
                else if ( (u2_nul == q_hax) && (u2_nul == q_yor) ) {
                  pro = u2_bq
                    (wir_r, 
                     u2_nul,
                     u2_rx(wir_r, p_hax),
                     u2_nul,
                     j2_mby(Pit, fork)
                        (wir_r, u2_rx(wir_r, r_hax), u2_rx(wir_r, r_yor)));

                  u2_rl_lose(wir_r, hax);
                  u2_rl_lose(wir_r, yor);

                  return pro;
                }
                else if ( (u2_nul == q_hax) || (u2_nul == q_yor) ) {
                  return u2_bl_bail(wir_r);
                }
                else {

                }
              }
            }
          }
        }
      } 
      case c3__hold: {
        if ( (u2_no == u2_as_trel(sut, 0, &p_sut, &q_sut)) ) {
          return u2_bl_bail(wir_r);
        }
        else {
          if ( (u2_yes == j2_mcc(Pit, in, has)(wir_r, gil, sut)) ) {
            return u2_nul;
          } 
          else {
            u2_noun zoc = j2_mcc(Pit, in, put)(wir_r, gil, sut);
            u2_type fop = j2_mcy(Pit, ut, repo)(wir_r, van, sut);
            u2_noun pro = _find_in(wir_r, van, fop, way, cog, zoc);

            u2_rl_lose(wir_r, fop);
            u2_rl_lose(wir_r, zoc);

            return pro;
          }
        }
      }
    }
  }

  u2_noun                                                         //  transfer
  j2_mcx(Pit, ut, find)(u2_wire wir_r, 
                        u2_noun van,                              //  retain
                        u2_noun sut,                              //  retain
                        u2_noun way,                              //  retain
                        u2_noun cog)                              //  retain
  {
    u2_noun fin = _find_in(wir_r, van, sut, way, cog, u2_nul);

    if ( u2_nul == fin ) {
      u2_err(wir_r, "cog", cog);
      j2_mcy(Pit, ut, dupt)(wir_r, van, "sut", sut);

      return u2_bl_bail(wir_r);
    } else {
      u2_noun pro = u2_rx(wir_r, u2_t(fin));

      u2_rl_lose(wir_r, fin);
      return pro;
    }
  }

/* boilerplate
*/
  u2_ho_jet 
  j2_mcj(Pit, ut, find)[];

  u2_noun                                                         //  transfer
  j2_mc(Pit, ut, find)(u2_wire wir_r, 
                       u2_noun cor)                               //  retain
  {
    u2_noun sut, way, cog, van;

    if ( (u2_no == u2_mean(cor, u2_cv_sam_2, &way, 
                                u2_cv_sam_3, &cog, 
                                u2_cv_con, &van, 
                                0)) ||
         (u2_none == (sut = u2_frag(u2_cv_sam, van))) )
    {
      return u2_bl_bail(wir_r);
    } else {
      return j2_mcx(Pit, ut, find)(wir_r, van, sut, way, cog);
    }
  }

  u2_weak                                                         //  transfer
  j2_mci(Pit, ut, find)(u2_wire wir_r,
                        u2_noun van,                              //  retain
                        u2_noun sut,                              //  retain 
                        u2_noun way,                              //  retain
                        u2_noun cog)                              //  retain
  {
    u2_weak hoc = u2_sh_look(wir_r, van, "find");

    if ( u2_none == hoc ) {
      c3_assert(!"register find");
      return u2_none;
    } else {
      u2_weak von = u2_rl_molt(wir_r, van, u2_cv_sam, u2_rx(wir_r, sut), 0);
      u2_weak gat = u2_nk_soft(wir_r, von, hoc);
      u2_weak cor = u2_rl_molt(wir_r, gat, 
                                      u2_cv_sam_2, u2_rx(wir_r, way), 
                                      u2_cv_sam_3, u2_rx(wir_r, cog), 
                                      0);

      if ( (u2_none == j2_mcj(Pit, ut, find)[0].xip) ) {
        u2_noun xip = u2_sh_find(wir_r, cor);
     
        c3_assert(u2_none != xip);
        j2_mcj(Pit, ut, find)[0].xip = xip;
      }
      u2_rl_lose(wir_r, gat);
      return cor;
    }
  }

  u2_noun                                                         //  transfer
  j2_mcy(Pit, ut, find)(u2_wire wir_r,
                        u2_noun van,                              //  retain
                        u2_noun sut,                              //  retain
                        u2_noun way,                              //  retain
                        u2_noun cog)                              //  retain
  {
    u2_ho_jet *jet_j = &j2_mcj(Pit, ut, find)[0];

    if ( (jet_j->sat_s & u2_jet_live) && !(jet_j->sat_s & u2_jet_test) ) {
      if ( !(jet_j->sat_s & u2_jet_memo) ) {
        return j2_mcx(Pit, ut, find)(wir_r, van, sut, way, cog);
      }
      else {
        c3_m    fun_m = (0x7fffffff & (c3_w)jet_j);
        u2_noun pro   = u2_rl_find_trel(wir_r, fun_m, sut, way, cog);

        if ( u2_none != pro ) {
          return pro;
        }
        else {
          pro = j2_mcx(Pit, ut, find)(wir_r, van, sut, way, cog);

          return u2_rl_save_trel(wir_r, fun_m, sut, way, cog, pro);
        }
      }
    }
    else {
      u2_noun cor, fol, xip, pro;

      cor = j2_mci(Pit, ut, find)(wir_r, van, sut, way, cog);
      fol = u2_t(cor);
      xip = j2_mcj(Pit, ut, find)[0].xip;

      pro = u2_ho_punt(wir_r, xip, cor, fol);
      c3_assert(pro != u2_none);

      u2_rz(wir_r, cor);
      u2_rz(wir_r, fol);

      return pro;
    }
  }

  u2_weak
  j2_mck(Pit, ut, find)(u2_wire wir_r,
                        u2_noun cor)
  {
    u2_noun sut, way, cog, van;

    if ( (u2_no == u2_mean(cor, u2_cv_sam_2, &way, 
                                u2_cv_sam_3, &cog,
                                u2_cv_con, &van, 
                                0)) ||
         (u2_none == (sut = u2_frag(u2_cv_sam, van))) )
    {
      return u2_none;
    } else {
      return u2_rt
        (wir_r, u2_rx(wir_r, sut), u2_rx(wir_r, way), u2_rx(wir_r, cog));
    }
  }

/* structures
*/
  u2_ho_jet 
  j2_mcj(Pit, ut, find)[] = {
    { ".3", c3__hevy, 
        j2_mc(Pit, ut, find), 
        Tier6_b_memo,
        u2_none, u2_none,
        j2_mck(Pit, ut, find)
    },
    { }
  };
