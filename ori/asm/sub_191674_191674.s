PUSH            {R3,LR}
VMOV.F32        S1, S0
LDR             R12, [SP,#8+arg_0]
STR             R12, [SP,#8+var_8]
LDR             R12, [R0]
VLDR            S0, [R0,#0xA8]
LDR             R12, [R12,#0x258]
BLX             R12
POP             {R3,PC}
