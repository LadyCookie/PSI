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
static const char *ng0 = "/home/bouzerea/Documents/4A/Autom/processeur/Processeur/MEM.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
int ieee_p_1242562249_sub_1871261289446890672_1035706684(char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);


static void work_a_3645262291_3212880686_p_0(char *t0)
{
    char t10[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB11:    t32 = xsi_get_transient_memory(16U);
    memset(t32, 0, 16U);
    t33 = t32;
    memset(t33, (unsigned char)2, 16U);
    t34 = (t0 + 4008);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t32, 16U);
    xsi_driver_first_trans_fast_port(t34);

LAB2:    t39 = (t0 + 3912);
    *((int *)t39) = 1;

LAB1:    return;
LAB3:    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t19 = (t0 + 1032U);
    t21 = *((char **)t19);
    t19 = (t0 + 6576U);
    t22 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t21, t19);
    t23 = (t22 - 99);
    t14 = (t23 * -1);
    xsi_vhdl_check_range_of_index(99, 0, -1, t22);
    t24 = (16U * t14);
    t25 = (0 + t24);
    t26 = (t20 + t25);
    t27 = (t0 + 4008);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t26, 16U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB2;

LAB5:    t12 = (t0 + 1032U);
    t16 = *((char **)t12);
    t12 = (t0 + 6576U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t16, t12);
    t18 = (t17 < 100);
    t1 = t18;
    goto LAB7;

LAB8:    t3 = (t0 + 1032U);
    t7 = *((char **)t3);
    t3 = (t0 + 6576U);
    t8 = (t0 + 8310);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (0 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t7, t3, t8, t10);
    t2 = t15;
    goto LAB10;

LAB12:    goto LAB2;

}

static void work_a_3645262291_3212880686_p_1(char *t0)
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
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);

LAB6:    t2 = (t0 + 3928);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 3928);
    *((int *)t6) = 0;
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB5:    t4 = (t0 + 1312U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t2 = (t0 + 6576U);
    t10 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t7, t2);
    t11 = (t10 - 99);
    t12 = (t11 * -1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t15 = (t0 + 4072);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 16U);
    xsi_driver_first_trans_delta(t15, t14, 16U, 0LL);
    goto LAB12;

}


extern void work_a_3645262291_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3645262291_3212880686_p_0,(void *)work_a_3645262291_3212880686_p_1};
	xsi_register_didat("work_a_3645262291_3212880686", "isim/processeur_test_compteur_instru_isim_beh.exe.sim/work/a_3645262291_3212880686.didat");
	xsi_register_executes(pe);
}
