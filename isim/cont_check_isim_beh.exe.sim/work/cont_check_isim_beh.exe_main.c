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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002148380593_3805054574_init();
    work_m_00000000001554731470_0822313272_init();
    work_m_00000000002221591416_0521331795_init();
    work_m_00000000002247369356_3092946469_init();
    work_m_00000000000361576976_1947911762_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000361576976_1947911762");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
