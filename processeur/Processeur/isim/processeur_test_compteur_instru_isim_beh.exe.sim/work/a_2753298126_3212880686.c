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
static const char *ng0 = "/home/bouzerea/Documents/4A/Autom/processeur/Processeur/BR.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);
int ieee_p_1242562249_sub_1871261289446890672_1035706684(char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);


static void work_a_2753298126_3212880686_p_0(char *t0)
{
    char t25[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 1)
        goto LAB13;

LAB14:    t17 = (unsigned char)0;

LAB15:    if (t17 == 1)
        goto LAB10;

LAB11:    t16 = (unsigned char)0;

LAB12:    if (t16 != 0)
        goto LAB8;

LAB9:
LAB16:    t47 = xsi_get_transient_memory(16U);
    memset(t47, 0, 16U);
    t48 = t47;
    memset(t48, (unsigned char)2, 16U);
    t49 = (t0 + 4752);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    memcpy(t53, t47, 16U);
    xsi_driver_first_trans_fast_port(t49);

LAB2:    t54 = (t0 + 4640);
    *((int *)t54) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 1832U);
    t11 = *((char **)t10);
    t10 = (t0 + 4752);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t2 = (t0 + 7696U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 7712U);
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t8, t7);
    t1 = t9;
    goto LAB7;

LAB8:    t34 = (t0 + 2312U);
    t35 = *((char **)t34);
    t34 = (t0 + 1512U);
    t36 = *((char **)t34);
    t34 = (t0 + 7712U);
    t37 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t36, t34);
    t38 = (t37 - 15);
    t29 = (t38 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t37);
    t39 = (16U * t29);
    t40 = (0 + t39);
    t41 = (t35 + t40);
    t42 = (t0 + 4752);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t41, 16U);
    xsi_driver_first_trans_fast_port(t42);
    goto LAB2;

LAB10:    t27 = (t0 + 1512U);
    t31 = *((char **)t27);
    t27 = (t0 + 7712U);
    t32 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t31, t27);
    t33 = (t32 < 16);
    t16 = t33;
    goto LAB12;

LAB13:    t18 = (t0 + 1512U);
    t22 = *((char **)t18);
    t18 = (t0 + 7712U);
    t23 = (t0 + 8142);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 0;
    t27 = (t26 + 4U);
    *((int *)t27) = 0;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (0 - 0);
    t29 = (t28 * 1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t30 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t22, t18, t23, t25);
    t17 = t30;
    goto LAB15;

LAB17:    goto LAB2;

}

static void work_a_2753298126_3212880686_p_1(char *t0)
{
    char t25[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t20 = *((unsigned char *)t19);
    t21 = (t20 == (unsigned char)2);
    if (t21 == 1)
        goto LAB13;

LAB14:    t17 = (unsigned char)0;

LAB15:    if (t17 == 1)
        goto LAB10;

LAB11:    t16 = (unsigned char)0;

LAB12:    if (t16 != 0)
        goto LAB8;

LAB9:
LAB16:    t47 = xsi_get_transient_memory(16U);
    memset(t47, 0, 16U);
    t48 = t47;
    memset(t48, (unsigned char)2, 16U);
    t49 = (t0 + 4816);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    memcpy(t53, t47, 16U);
    xsi_driver_first_trans_fast_port(t49);

LAB2:    t54 = (t0 + 4656);
    *((int *)t54) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 1832U);
    t11 = *((char **)t10);
    t10 = (t0 + 4816);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 16U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t2 = (t0 + 7696U);
    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t7 = (t0 + 7728U);
    t9 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t8, t7);
    t1 = t9;
    goto LAB7;

LAB8:    t34 = (t0 + 2312U);
    t35 = *((char **)t34);
    t34 = (t0 + 1672U);
    t36 = *((char **)t34);
    t34 = (t0 + 7728U);
    t37 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t36, t34);
    t38 = (t37 - 15);
    t29 = (t38 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t37);
    t39 = (16U * t29);
    t40 = (0 + t39);
    t41 = (t35 + t40);
    t42 = (t0 + 4816);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t41, 16U);
    xsi_driver_first_trans_fast_port(t42);
    goto LAB2;

LAB10:    t27 = (t0 + 1672U);
    t31 = *((char **)t27);
    t27 = (t0 + 7728U);
    t32 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t31, t27);
    t33 = (t32 < 16);
    t16 = t33;
    goto LAB12;

LAB13:    t18 = (t0 + 1672U);
    t22 = *((char **)t18);
    t18 = (t0 + 7728U);
    t23 = (t0 + 8143);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 0;
    t27 = (t26 + 4U);
    *((int *)t27) = 0;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (0 - 0);
    t29 = (t28 * 1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t30 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t22, t18, t23, t25);
    t17 = t30;
    goto LAB15;

LAB17:    goto LAB2;

}

static void work_a_2753298126_3212880686_p_2(char *t0)
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

LAB0:    t1 = (t0 + 4320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);

LAB6:    t2 = (t0 + 4672);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 4672);
    *((int *)t6) = 0;
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1032U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB2;

LAB5:    t4 = (t0 + 1152U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 1352U);
    t7 = *((char **)t2);
    t2 = (t0 + 7696U);
    t10 = ieee_p_1242562249_sub_1871261289446890672_1035706684(IEEE_P_1242562249, t7, t2);
    t11 = (t10 - 15);
    t12 = (t11 * -1);
    t13 = (16U * t12);
    t14 = (0U + t13);
    t15 = (t0 + 4880);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 16U);
    xsi_driver_first_trans_delta(t15, t14, 16U, 0LL);
    goto LAB12;

}


extern void work_a_2753298126_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2753298126_3212880686_p_0,(void *)work_a_2753298126_3212880686_p_1,(void *)work_a_2753298126_3212880686_p_2};
	xsi_register_didat("work_a_2753298126_3212880686", "isim/processeur_test_compteur_instru_isim_beh.exe.sim/work/a_2753298126_3212880686.didat");
	xsi_register_executes(pe);
}
