/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/bouzerea/Documents/4A/Autom/processeur/Processeur/InstruMUX.vhd";



static void work_a_2872447405_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (36 - 4);
    t4 = (t3 - 1);
    t5 = (35 - t4);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = (t0 + 4376);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 16U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4248);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2872447405_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (36 - 4);
    t4 = (t3 - 16);
    t5 = (t4 - 1);
    t6 = (35 - t5);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = (t0 + 4440);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 16U);
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 4264);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2872447405_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (36 - 4);
    t4 = (t3 - 1);
    t5 = (35 - t4);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = (t0 + 4504);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 16U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4280);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2872447405_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (36 - 1);
    t4 = (35 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 4568);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 4296);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2872447405_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2872447405_3212880686_p_0,(void *)work_a_2872447405_3212880686_p_1,(void *)work_a_2872447405_3212880686_p_2,(void *)work_a_2872447405_3212880686_p_3};
	xsi_register_didat("work_a_2872447405_3212880686", "isim/processeur_test_compteur_instru_isim_beh.exe.sim/work/a_2872447405_3212880686.didat");
	xsi_register_executes(pe);
}
