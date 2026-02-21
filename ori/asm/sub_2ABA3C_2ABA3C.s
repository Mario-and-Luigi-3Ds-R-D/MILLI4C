PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R0,#0x94]
UXTH            R0, R0
BL              sub_2AF718
LDR             R1, [R4,#0xC]
LDR             R0, [R0]
MOV             R2, #0xFFFFFFFF
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x108
MOV             R3, R0,LSL#17
LDR             R0, [R1]
ADD             R1, R2, R3,LSR#26
MOV             R2, R1,LSL#1
LDR             R0, [R0,#0xA4]
MOV             R1, #0
LDR             R0, [R0,#8]
LDR             R3, [R0,#0xC0]!
CMP             R3, #0
ADDNE           R0, R0, R3
MOVEQ           R0, R1
CMP             R0, #0
MOVEQ           R1, #0
BEQ             loc_2ABAB4
ADD             R0, R0, R2,LSL#4
LDR             R2, [R0,#0x28]!
CMP             R2, #0
ADDNE           R1, R2, R0
ADD             R0, R1, #0x24 ; '$'
VLDR            S16, =1.0
STR             R0, [SP,#0x28+var_1C]
ADD             R0, R1, #0x74 ; 't'
VMOV.F32        S3, S16
VLDM            R0, {S0-S2}
ADD             R0, SP, #0x28+var_1C
BL              sub_4BEAEC
VLDR            S0, =0.0
ADD             R5, R4, #0x3C ; '<'
VSTR            S0, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
VSTR            S16, [SP,#0x28+var_20]
MOV             R0, R5
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VLDR            S1, =0.4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R1, SP
VLDR            S2, =1.25
VSTR            S1, [SP,#0x28+var_28]
VSTR            S16, [SP,#0x28+var_24]
VLDR            S0, =6.0
VSTR            S2, [SP,#0x28+var_20]
ADD             R0, R4, #0x3C ; '<'
BL              sub_5A1FC8
LDR             R0, =off_67DA24
LDR             R1, [R0,#(off_67DA34 - 0x67DA24)]; sub_2ABB84
LDR             R0, [R0,#(dword_67DA38 - 0x67DA24)]
STR             R0, [R4,#8]
TST             R0, #1
STR             R1, [R4,#4]
LDREQ           R1, [R4,#4]
ADD             R0, R4, R0,ASR#1
BEQ             loc_2ABB58
LDR             R1, [R0]
LDR             R2, [R4,#4]
LDR             R1, [R1,R2]
NOP
BLX             R1
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4,R5,PC}
