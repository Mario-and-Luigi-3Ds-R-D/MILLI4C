PUSH            {R4,LR}
MOV             R2, R1
VPUSH           {D8}
VMOV.F32        S16, S0
MOV             R4, R0
MOV             R1, R0
LDR             R0, =unk_6EB568
BL              sub_20175C
VSTR            S16, [R4,#0x44]
VPOP            {D8}
POP             {R4,PC}
