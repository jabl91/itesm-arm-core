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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/RegisterBank.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4107293976_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned char t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    xsi_set_current_line(165, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(166, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t3 = (t0 + 10494);
    t6 = xsi_mem_cmp(t3, t4, 4U);
    if (t6 == 1)
        goto LAB6;

LAB17:    t7 = (t0 + 10498);
    t9 = xsi_mem_cmp(t7, t4, 4U);
    if (t9 == 1)
        goto LAB7;

LAB18:    t10 = (t0 + 10502);
    t12 = xsi_mem_cmp(t10, t4, 4U);
    if (t12 == 1)
        goto LAB8;

LAB19:    t13 = (t0 + 10506);
    t15 = xsi_mem_cmp(t13, t4, 4U);
    if (t15 == 1)
        goto LAB9;

LAB20:    t16 = (t0 + 10510);
    t18 = xsi_mem_cmp(t16, t4, 4U);
    if (t18 == 1)
        goto LAB10;

LAB21:    t19 = (t0 + 10514);
    t21 = xsi_mem_cmp(t19, t4, 4U);
    if (t21 == 1)
        goto LAB11;

LAB22:    t22 = (t0 + 10518);
    t24 = xsi_mem_cmp(t22, t4, 4U);
    if (t24 == 1)
        goto LAB12;

LAB23:    t25 = (t0 + 10522);
    t27 = xsi_mem_cmp(t25, t4, 4U);
    if (t27 == 1)
        goto LAB13;

LAB24:    t28 = (t0 + 10526);
    t30 = xsi_mem_cmp(t28, t4, 4U);
    if (t30 == 1)
        goto LAB14;

LAB25:    t31 = (t0 + 10530);
    t33 = xsi_mem_cmp(t31, t4, 4U);
    if (t33 == 1)
        goto LAB15;

LAB26:
LAB16:    xsi_set_current_line(198, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 5152);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(199, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 5216);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t4);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(168, ng0);
    t34 = xsi_get_transient_memory(32U);
    memset(t34, 0, 32U);
    t35 = t34;
    memset(t35, (unsigned char)2, 32U);
    t36 = (t0 + 1512U);
    t37 = *((char **)t36);
    t38 = *((unsigned char *)t37);
    t39 = (0 - 31);
    t40 = (t39 * -1);
    t41 = (1U * t40);
    t36 = (t35 + t41);
    *((unsigned char *)t36) = t38;
    t42 = (t0 + 5152);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memcpy(t46, t34, 32U);
    xsi_driver_first_trans_fast(t42);
    xsi_set_current_line(169, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(171, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (1 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(172, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(174, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (2 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(175, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(177, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (3 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(178, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(180, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (4 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(181, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(183, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (5 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(184, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB12:    xsi_set_current_line(186, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (6 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(187, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB13:    xsi_set_current_line(189, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (7 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(190, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB14:    xsi_set_current_line(192, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (8 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(193, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB15:    xsi_set_current_line(195, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t3 = t1;
    memset(t3, (unsigned char)2, 32U);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t2 = *((unsigned char *)t5);
    t6 = (9 - 31);
    t40 = (t6 * -1);
    t41 = (1U * t40);
    t4 = (t3 + t41);
    *((unsigned char *)t4) = t2;
    t7 = (t0 + 5152);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(196, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t1 = (t0 + 5216);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB27:;
}


extern void work_a_4107293976_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4107293976_3212880686_p_0};
	xsi_register_didat("work_a_4107293976_3212880686", "isim/RegisterBank_TB_isim_beh.exe.sim/work/a_4107293976_3212880686.didat");
	xsi_register_executes(pe);
}
