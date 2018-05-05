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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/rom_mod.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_1866237571_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
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

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1224U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t3 = *((char **)t1);
    t1 = (t0 + 4904U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 127, 1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 2628);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast(t10);
    t1 = (t0 + 2552);
    *((int *)t1) = 1;

LAB1:    return;
}

static void work_a_1866237571_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (31 - 12);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2664);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2560);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1866237571_3212880686_p_2(char *t0)
{
    char t12[16];
    char t14[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t20;
    int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (31 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1052U);
    t7 = *((char **)t6);
    t8 = (31 - 7);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t6 = (t7 + t10);
    t13 = ((IEEE_P_2592010699) + 2332);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 15;
    t16 = (t15 + 4U);
    *((int *)t16) = 13;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (13 - 15);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 7;
    t20 = (t16 + 4U);
    *((int *)t20) = 4;
    t20 = (t16 + 8U);
    *((int *)t20) = -1;
    t21 = (4 - 7);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t1, t14, (char)97, t6, t19, (char)101);
    t18 = (3U + 4U);
    t22 = (7U != t18);
    if (t22 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 2700);
    t23 = (t20 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 7U);
    xsi_driver_first_trans_fast_port(t20);

LAB2:    t27 = (t0 + 2568);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(7U, t18, 0);
    goto LAB6;

}

static void work_a_1866237571_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(81, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (31 - 3);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2736);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2576);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1866237571_3212880686_p_4(char *t0)
{
    char t11[16];
    char t13[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t10;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(82, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 9175);
    t12 = ((IEEE_P_2592010699) + 2332);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 2;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (2 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, t7, (char)97, t8, t13, (char)101);
    t17 = (1U + 3U);
    t18 = (4U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 2772);
    t19 = (t15 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t10, 4U);
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t23 = (t0 + 2584);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t17, 0);
    goto LAB6;

}


extern void work_a_1866237571_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1866237571_3212880686_p_0,(void *)work_a_1866237571_3212880686_p_1,(void *)work_a_1866237571_3212880686_p_2,(void *)work_a_1866237571_3212880686_p_3,(void *)work_a_1866237571_3212880686_p_4};
	xsi_register_didat("work_a_1866237571_3212880686", "isim/Procesador_Final_TB_isim_beh.exe.sim/work/a_1866237571_3212880686.didat");
	xsi_register_executes(pe);
}
