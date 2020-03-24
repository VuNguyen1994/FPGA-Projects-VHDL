/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_284(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_277(char*, char *);
extern void execute_76(char*, char *);
extern void execute_87(char*, char *);
extern void execute_92(char*, char *);
extern void execute_99(char*, char *);
extern void execute_102(char*, char *);
extern void execute_108(char*, char *);
extern void execute_110(char*, char *);
extern void execute_112(char*, char *);
extern void execute_114(char*, char *);
extern void execute_118(char*, char *);
extern void execute_121(char*, char *);
extern void execute_126(char*, char *);
extern void execute_128(char*, char *);
extern void execute_130(char*, char *);
extern void execute_132(char*, char *);
extern void execute_274(char*, char *);
extern void execute_275(char*, char *);
extern void execute_146(char*, char *);
extern void execute_150(char*, char *);
extern void execute_149(char*, char *);
extern void execute_152(char*, char *);
extern void execute_157(char*, char *);
extern void execute_160(char*, char *);
extern void execute_162(char*, char *);
extern void execute_166(char*, char *);
extern void execute_169(char*, char *);
extern void execute_171(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_178(char*, char *);
extern void execute_181(char*, char *);
extern void execute_183(char*, char *);
extern void execute_187(char*, char *);
extern void execute_189(char*, char *);
extern void execute_195(char*, char *);
extern void execute_228(char*, char *);
extern void execute_229(char*, char *);
extern void execute_232(char*, char *);
extern void execute_223(char*, char *);
extern void execute_202(char*, char *);
extern void execute_205(char*, char *);
extern void execute_208(char*, char *);
extern void execute_212(char*, char *);
extern void execute_216(char*, char *);
extern void execute_222(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_220(char*, char *);
extern void execute_234(char*, char *);
extern void execute_236(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[60] = {(funcp)execute_286, (funcp)execute_287, (funcp)execute_61, (funcp)execute_62, (funcp)execute_284, (funcp)execute_94, (funcp)execute_95, (funcp)execute_277, (funcp)execute_76, (funcp)execute_87, (funcp)execute_92, (funcp)execute_99, (funcp)execute_102, (funcp)execute_108, (funcp)execute_110, (funcp)execute_112, (funcp)execute_114, (funcp)execute_118, (funcp)execute_121, (funcp)execute_126, (funcp)execute_128, (funcp)execute_130, (funcp)execute_132, (funcp)execute_274, (funcp)execute_275, (funcp)execute_146, (funcp)execute_150, (funcp)execute_149, (funcp)execute_152, (funcp)execute_157, (funcp)execute_160, (funcp)execute_162, (funcp)execute_166, (funcp)execute_169, (funcp)execute_171, (funcp)execute_172, (funcp)execute_173, (funcp)execute_178, (funcp)execute_181, (funcp)execute_183, (funcp)execute_187, (funcp)execute_189, (funcp)execute_195, (funcp)execute_228, (funcp)execute_229, (funcp)execute_232, (funcp)execute_223, (funcp)execute_202, (funcp)execute_205, (funcp)execute_208, (funcp)execute_212, (funcp)execute_216, (funcp)execute_222, (funcp)execute_218, (funcp)execute_219, (funcp)execute_220, (funcp)execute_234, (funcp)execute_236, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_29};
const int NumRelocateId= 60;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/acc_tb_behav/xsim.reloc",  (void **)funcTab, 60);
	iki_vhdl_file_variable_register(dp + 34328);
	iki_vhdl_file_variable_register(dp + 34384);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/acc_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/acc_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/acc_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/acc_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/acc_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
