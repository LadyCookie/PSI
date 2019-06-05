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
static const char *ng0 = "/home/bouzerea/Documents/4A/Autom/processeur/Processeur/Pipeline.vhd";



static void work_a_2798991474_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 4344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB6:    t2 = (t0 + 4664);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 4664);
    *((int *)t6) = 0;
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 4744);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t2 = (t0 + 4808);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 4872);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 4936);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 5000);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 5064);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 5128);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 5192);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

}


extern void work_a_2798991474_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2798991474_3212880686_p_0};
	xsi_register_didat("work_a_2798991474_3212880686", "isim/processeur_test_compteur_instru_isim_beh.exe.sim/work/a_2798991474_3212880686.didat");
	xsi_register_executes(pe);
}
