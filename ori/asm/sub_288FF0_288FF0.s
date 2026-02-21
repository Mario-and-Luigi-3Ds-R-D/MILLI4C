PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R0, #6
VPUSH           {D8}
SUB             SP, SP, #4
VMOV.F32        S16, S0
STRB            R0, [R4]
MOV             R1, #0
ADD             R0, R4, #0x10
BL              sub_14C3E8
MOV             R5, #0
VLDR            S0, =0.0
STRB            R5, [R4,#0x102]
VSTR            S0, [R4,#0x3AC]
LDR             R0, =off_6CE970
VSTR            S16, [R4,#0x3B0]
LDR             R1, [R4,#0x688]
MOV             R3, #1
LDR             R0, [R0]
ADD             R2, R1, #4
LDR             R1, =0x1AB
STR             R5, [SP,#0x18+var_18]
BL              sub_52AEA8
STR             R0, [R4,#0x680]
STRH            R5, [R0,#0xA]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4,R5,PC}
