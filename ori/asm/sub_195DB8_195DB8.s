PUSH            {R4,R5,LR}
MOV             R4, R0
ADD             R5, R4, #0x3BC
VPUSH           {D8}
SUB             SP, SP, #0xC
LDRB            R0, [R0,#0x374]
VLDR            S16, =1.0
ORR             R0, R0, #4
STRB            R0, [R4,#0x374]
VSTR            S16, [SP,#0x20+var_20]
VSTR            S16, [SP,#0x20+var_1C]
VSTR            S16, [SP,#0x20+var_18]
MOV             R0, R5
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VLDR            S1, =1.2
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R2, SP
VSTR            S1, [SP,#0x20+var_20]
VSTR            S1, [SP,#0x20+var_1C]
VLDR            S0, =2.0
VSTR            S16, [SP,#0x20+var_18]
MOV             R1, #0
ADD             R0, R4, #0x3BC
BL              sub_5A1EE8
LDR             R0, =off_67E4F0
LDR             R1, [R0,#(off_67E528 - 0x67E4F0)]; sub_195E7C
LDR             R0, [R0,#(dword_67E52C - 0x67E4F0)]
STR             R0, [R4,#0x3C]
TST             R0, #1
STR             R1, [R4,#0x38]
LDREQ           R1, [R4,#0x38]
ADD             R0, R4, R0,ASR#1
BEQ             loc_195E58
LDR             R1, [R0]
LDR             R2, [R4,#0x38]
LDR             R1, [R1,R2]
NOP
BLX             R1
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
