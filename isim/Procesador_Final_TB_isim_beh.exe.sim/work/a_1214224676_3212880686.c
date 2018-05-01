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
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/Mux_MBR.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1214224676_3212880686_p_0(char *t0)
{
    char t10[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB7:
LAB6:    t1 = (t0 + 1724);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 684U);
    t5 = *((char **)t1);
    t1 = (t0 + 1768);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3172);
    t6 = (t0 + 592U);
    t7 = *((char **)t6);
    t8 = ((IEEE_P_2592010699) + 2332);
    t9 = (t11 + 0U);
    t12 = (t9 + 0U);
    *((int *)t12) = 0;
    t12 = (t9 + 4U);
    *((int *)t12) = 0;
    t12 = (t9 + 8U);
    *((int *)t12) = 1;
    t13 = (0 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t9 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 3100U);
    t6 = xsi_base_array_concat(t6, t10, t8, (char)97, t1, t11, (char)97, t7, t12, (char)101);
    t14 = (1U + 7U);
    t15 = (8U != t14);
    if (t15 == 1)
        goto LAB8;

LAB9:    t16 = (t0 + 1768);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 8U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB8:    xsi_size_not_matching(8U, t14, 0);
    goto LAB9;

}


extern void work_a_1214224676_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1214224676_3212880686_p_0};
	xsi_register_didat("work_a_1214224676_3212880686", "isim/Procesador_Final_TB_isim_beh.exe.sim/work/a_1214224676_3212880686.didat");
	xsi_register_executes(pe);
}
