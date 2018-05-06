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
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/SUM_32.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3603081001_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 2332);
    t5 = (t0 + 5268U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 32U);
    t7 = (33U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 2988);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 33U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 2904);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t6, 0);
    goto LAB6;

}

static void work_a_3603081001_3212880686_p_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 2332);
    t5 = (t0 + 5284U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 32U);
    t7 = (33U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 3024);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 33U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 2912);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t6, 0);
    goto LAB6;

}

static void work_a_3603081001_3212880686_p_2(char *t0)
{
    char t6[16];
    char t8[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 5585);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 2332);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 31;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (31 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t3 = xsi_base_array_concat(t3, t6, t7, (char)97, t1, t8, (char)99, t5, (char)101);
    t12 = (32U + 1U);
    t13 = (33U != t12);
    if (t13 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3060);
    t14 = (t10 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 33U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t18 = (t0 + 2920);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t12, 0);
    goto LAB6;

}

static void work_a_3603081001_3212880686_p_3(char *t0)
{
    char t1[16];
    char t2[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t3 = (t0 + 5316U);
    t5 = (t0 + 1144U);
    t6 = *((char **)t5);
    t5 = (t0 + 5332U);
    t7 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t2, t4, t3, t6, t5);
    t8 = (t0 + 1236U);
    t9 = *((char **)t8);
    t8 = (t0 + 5348U);
    t10 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t1, t7, t2, t9, t8);
    t11 = (t0 + 3096);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 33U);
    xsi_driver_first_trans_fast(t11);
    t3 = (t0 + 2928);
    *((int *)t3) = 1;

LAB1:    return;
}

static void work_a_3603081001_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t3 = (32 - 32);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3132);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 2936);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3603081001_3212880686_p_5(char *t0)
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

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t3 = (32 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3168);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2944);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3603081001_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3603081001_3212880686_p_0,(void *)work_a_3603081001_3212880686_p_1,(void *)work_a_3603081001_3212880686_p_2,(void *)work_a_3603081001_3212880686_p_3,(void *)work_a_3603081001_3212880686_p_4,(void *)work_a_3603081001_3212880686_p_5};
	xsi_register_didat("work_a_3603081001_3212880686", "isim/Procesador_32_bits_isim_beh.exe.sim/work/a_3603081001_3212880686.didat");
	xsi_register_executes(pe);
}
