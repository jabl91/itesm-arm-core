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
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/phase_gen.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2791113298_3212880686_p_0(char *t0)
{
    char t23[16];
    char t24[16];
    char t30[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    int t25;
    unsigned int t26;
    int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3400);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5631);
    t6 = (t0 + 3496);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5635);
    t6 = (t0 + 3496);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB7:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 5639);
    t4 = 1;
    if (4U == 4U)
        goto LAB12;

LAB13:    t4 = 0;

LAB14:    if (t4 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t17 = (2 - 3);
    t11 = (t17 * -1);
    t18 = (1U * t11);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 1672U);
    t6 = *((char **)t5);
    t20 = (3 - 1);
    t21 = (t20 * 1U);
    t22 = (0 + t21);
    t5 = (t6 + t22);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t24 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 1;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t25 = (0 - 1);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t26;
    t7 = xsi_base_array_concat(t7, t23, t8, (char)99, t3, (char)97, t5, t24, (char)101);
    t10 = (t0 + 1672U);
    t12 = *((char **)t10);
    t27 = (3 - 3);
    t26 = (t27 * -1);
    t28 = (1U * t26);
    t29 = (0 + t28);
    t10 = (t12 + t29);
    t4 = *((unsigned char *)t10);
    t14 = ((IEEE_P_2592010699) + 4024);
    t13 = xsi_base_array_concat(t13, t30, t14, (char)97, t7, t23, (char)99, t4, (char)101);
    t31 = (1U + 2U);
    t32 = (t31 + 1U);
    t33 = (4U != t32);
    if (t33 == 1)
        goto LAB18;

LAB19:    t15 = (t0 + 3496);
    t16 = (t15 + 56U);
    t34 = *((char **)t16);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t13, 4U);
    xsi_driver_first_trans_fast(t15);

LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(54, ng0);
    t9 = (t0 + 5643);
    t12 = (t0 + 3496);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB10;

LAB12:    t11 = 0;

LAB15:    if (t11 < 4U)
        goto LAB16;
    else
        goto LAB14;

LAB16:    t7 = (t5 + t11);
    t8 = (t2 + t11);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB13;

LAB17:    t11 = (t11 + 1);
    goto LAB15;

LAB18:    xsi_size_not_matching(4U, t32, 0);
    goto LAB19;

}

static void work_a_2791113298_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3560);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3416);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2791113298_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2791113298_3212880686_p_0,(void *)work_a_2791113298_3212880686_p_1};
	xsi_register_didat("work_a_2791113298_3212880686", "isim/Procesador_Final_TB_isim_beh.exe.sim/work/a_2791113298_3212880686.didat");
	xsi_register_executes(pe);
}
