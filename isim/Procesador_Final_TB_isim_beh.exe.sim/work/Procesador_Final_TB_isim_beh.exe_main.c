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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *WORK_P_3481514428;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_3481514428_init();
    work_a_2619636542_3212880686_init();
    work_a_4107293976_3212880686_init();
    work_a_0363583175_3212880686_init();
    work_a_3562972921_3212880686_init();
    work_a_2791113298_3212880686_init();
    work_a_1191945572_3212880686_init();
    work_a_3023506563_3212880686_init();
    work_a_2705282672_3212880686_init();
    work_a_3430011751_3212880686_init();
    work_a_2806367638_3212880686_init();
    work_a_2762461955_3212880686_init();
    work_a_1532746213_3212880686_init();
    work_a_1214224676_3212880686_init();
    work_a_0658177086_3212880686_init();
    work_a_2741510695_3212880686_init();
    work_a_4163910571_3212880686_init();
    work_a_1408876419_3212880686_init();
    work_a_0008123659_3212880686_init();
    work_a_1866237571_3212880686_init();
    work_a_1414157056_3212880686_init();
    work_a_1907386726_3212880686_init();
    work_a_3081956114_3212880686_init();
    work_a_1564937543_3212880686_init();
    work_a_2675538944_3212880686_init();
    work_a_1018148408_3212880686_init();
    work_a_1764634293_3212880686_init();
    work_a_0409205903_3212880686_init();
    work_a_3603081001_3212880686_init();
    work_a_1937919420_3212880686_init();
    work_a_2527818590_3212880686_init();
    work_a_2706714276_3212880686_init();
    work_a_3763241642_3212880686_init();
    work_a_2257217366_3212880686_init();
    work_a_2757113944_3212880686_init();
    work_a_0348538223_3212880686_init();
    work_a_2517733829_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_2779334651_3212880686_init();
    work_a_3172547475_3212880686_init();
    work_a_1704472215_3212880686_init();
    work_a_1116484411_2372691052_init();


    xsi_register_tops("work_a_1116484411_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_3481514428 = xsi_get_engine_memory("work_p_3481514428");

    return xsi_run_simulation(argc, argv);

}
