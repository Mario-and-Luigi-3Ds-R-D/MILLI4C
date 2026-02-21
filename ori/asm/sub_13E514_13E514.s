PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8}
VMOV.F32        S16, S0
BL              sub_13DF78
CMP             R0, #0
BEQ             loc_13E568
LDR             R0, =0x131A
LDRH            R0, [R0,R4]
AND             R0, R0, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#5
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xB0]
VSTR            S16, [R0,#0x34]
LDR             R1, [R0]
ORR             R1, R1, #0x40000
STR             R1, [R0]
MOV             R0, #1
VPOP            {D8}
POP             {R4-R6,PC}
