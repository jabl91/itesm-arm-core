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
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/sub_32.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_2757113944_3212880686_p_0(char *t0)
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
    t5 = (t0 + 5092U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 32U);
    t7 = (33U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 2888);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 33U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 2812);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t6, 0);
    goto LAB6;

}

static void work_a_2757113944_3212880686_p_1(char *t0)
{
    char t1[16];
    char t4[16];
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t5 = ((IEEE_P_2592010699) + 2332);
    t6 = (t0 + 5108U);
    t2 = xsi_base_array_concat(t2, t4, t5, (char)99, (unsigned char)2, (char)97, t3, t6, (char)101);
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t1, t2, t4);
    t8 = (t1 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (33U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 2924);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 33U);
    xsi_driver_first_trans_fast(t12);

LAB2:    t17 = (t0 + 2820);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t10, 0);
    goto LAB6;

}

static void work_a_2757113944_3212880686_p_2(char *t0)
{
    char t4[16];
    char t6[16];
    char *t1;
    char *t3;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 5408);
    t5 = ((IEEE_P_2592010699) + 2332);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 31;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (31 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t3 = xsi_base_array_concat(t3, t4, t5, (char)97, t1, t6, (char)99, (unsigned char)3, (char)101);
    t10 = (32U + 1U);
    t11 = (33U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 2960);
    t12 = (t8 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 33U);
    xsi_driver_first_trans_fast(t8);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(33U, t10, 0);
    goto LAB6;

}

static void work_a_2757113944_3212880686_p_3(char *t0)
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
    t3 = (t0 + 960U);
    t4 = *((char **)t3);
    t3 = (t0 + 5140U);
    t5 = (t0 + 1052U);
    t6 = *((char **)t5);
    t5 = (t0 + 5156U);
    t7 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t2, t4, t3, t6, t5);
    t8 = (t0 + 1144U);
    t9 = *((char **)t8);
    t8 = (t0 + 5172U);
    t10 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t1, t7, t2, t9, t8);
    t11 = (t0 + 2996);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 33U);
    xsi_driver_first_trans_fast(t11);
    t3 = (t0 + 2828);
    *((int *)t3) = 1;

LAB1:    return;
}

static void work_a_2757113944_3212880686_p_4(char *t0)
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

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (32 - 32);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3032);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 2836);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2757113944_3212880686_p_5(char *t0)
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

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (32 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3068);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2844);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2757113944_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2757113944_3212880686_p_0,(void *)work_a_2757113944_3212880686_p_1,(void *)work_a_2757113944_3212880686_p_2,(void *)work_a_2757113944_3212880686_p_3,(void *)work_a_2757113944_3212880686_p_4,(void *)work_a_2757113944_3212880686_p_5};
	xsi_register_didat("work_a_2757113944_3212880686", "isim/Procesador_Final_TB_isim_beh.exe.sim/work/a_2757113944_3212880686.didat");
	xsi_register_executes(pe);
}
