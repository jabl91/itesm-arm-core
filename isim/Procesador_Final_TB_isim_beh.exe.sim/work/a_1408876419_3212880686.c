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
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/stkptr.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1408876419_3212880686_p_0(char *t0)
{
    char t12[16];
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
    unsigned char t11;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2052);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t5 = t1;
    memset(t5, (unsigned char)3, 5U);
    t6 = (t0 + 2104);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 776U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB12;

LAB14:
LAB13:    goto LAB3;

LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1052U);
    t6 = *((char **)t2);
    t2 = (t0 + 3760U);
    t7 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t12, t6, t2, 1);
    t8 = (t12 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    t15 = (5U != t14);
    if (t15 == 1)
        goto LAB10;

LAB11:    t9 = (t0 + 2104);
    t10 = (t9 + 32U);
    t16 = *((char **)t10);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 5U);
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

LAB10:    xsi_size_not_matching(5U, t14, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1052U);
    t5 = *((char **)t1);
    t1 = (t0 + 3760U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t5, t1, 1);
    t7 = (t12 + 12U);
    t13 = *((unsigned int *)t7);
    t14 = (1U * t13);
    t11 = (5U != t14);
    if (t11 == 1)
        goto LAB15;

LAB16:    t8 = (t0 + 2104);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t16 = (t10 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t6, 5U);
    xsi_driver_first_trans_fast(t8);
    goto LAB13;

LAB15:    xsi_size_not_matching(5U, t14, 0);
    goto LAB16;

}

static void work_a_1408876419_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 2140);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2060);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1408876419_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1408876419_3212880686_p_0,(void *)work_a_1408876419_3212880686_p_1};
	xsi_register_didat("work_a_1408876419_3212880686", "isim/Procesador_Final_TB_isim_beh.exe.sim/work/a_1408876419_3212880686.didat");
	xsi_register_executes(pe);
}
