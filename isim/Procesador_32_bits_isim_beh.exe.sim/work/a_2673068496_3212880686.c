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
static const char *ng0 = "C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/DIV.vhd";
extern char *IEEE_P_1242562249;
extern char *WORK_P_3481514428;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_2110339434_1035706684(char *, char *, char *, char *, char *);
char *work_p_3481514428_sub_3685960934_2823265935(char *, char *, char *, char *, char *, char *);


static void work_a_2673068496_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4184);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4056);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2673068496_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4248);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4072);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2673068496_3212880686_p_2(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t14;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6600U);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t3 = (t0 + 6616U);
    t5 = ieee_p_1242562249_sub_2110339434_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6600U);
    t5 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t5 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6616U);
    t5 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t5 != 0)
        goto LAB7;

LAB8:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6600U);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t3 = (t0 + 6616U);
    t6 = work_p_3481514428_sub_3685960934_2823265935(WORK_P_3481514428, t13, t2, t1, t4, t3);
    t7 = (t13 + 12U);
    t14 = *((unsigned int *)t7);
    t14 = (t14 * 1U);
    t5 = (4U != t14);
    if (t5 == 1)
        goto LAB9;

LAB10:    t8 = (t0 + 4312);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 4U);
    xsi_driver_first_trans_delta(t8, 4U, 4U, 0LL);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 6704);
    t5 = (4U != 4U);
    if (t5 == 1)
        goto LAB11;

LAB12:    t3 = (t0 + 4312);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_delta(t3, 0U, 4U, 0LL);

LAB3:    t1 = (t0 + 4088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t6 = (t0 + 6680);
    t8 = (t0 + 4312);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB3;

LAB5:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 6688);
    t6 = (t0 + 4312);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB7:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 6696);
    t6 = (t0 + 4312);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB9:    xsi_size_not_matching(4U, t14, 0);
    goto LAB10;

LAB11:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB12;

}

static void work_a_2673068496_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(83, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4104);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2673068496_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2673068496_3212880686_p_0,(void *)work_a_2673068496_3212880686_p_1,(void *)work_a_2673068496_3212880686_p_2,(void *)work_a_2673068496_3212880686_p_3};
	xsi_register_didat("work_a_2673068496_3212880686", "isim/Procesador_32_bits_isim_beh.exe.sim/work/a_2673068496_3212880686.didat");
	xsi_register_executes(pe);
}
