PUSH            {R0-R11,LR}
MOV             R4, #0
MOV             R6, R1
MOV             R8, R2
LDR             R0, =0x44A58
VPUSH           {D8-D9}
ADD             R7, R1, R0
SUB             SP, SP, #0x4C
LDRB            R0, [R7]
CMP             R0, #0
BLE             loc_200BE4
LDR             R0, =0x44A5C
MOV             R1, #0x60000000
VLDR            S17, =1.0
ADD             R0, R0, R6
STR             R0, [SP,#0x90+var_68]
AND             R0, R1, R3,LSL#29
STR             R0, [SP,#0x90+var_6C]
LDR             R0, [SP,#0x90+var_68]
VLDR            S18, =1.6777e7
ADD             R0, R0, #0x5800
STR             R0, [SP,#0x90+var_5C]
ADD             R0, R6, #0x13800
ADD             R0, R0, #0x2EC
STR             R0, [SP,#0x90+var_60]
ADD             R0, R6, #0x4A000
STR             R0, [SP,#0x90+var_70]
LDR             R0, =0x1D07
MUL             R0, R4, R0
ADD             R0, R6, R0,LSL#2
ADD             R9, R0, #0x27400
ADD             R0, R0, #0x2CC00
ADD             R0, R0, #0x208
ADD             R9, R9, #0x1D8
LDR             R0, [R0]
TST             R0, #1
BEQ             loc_200BD4
LDR             R0, =0x7418
LDR             R1, [R0,R9]
CMP             R1, R8
BEQ             loc_200A08
LDR             R2, =0x401
CMP             R1, R2
CMPNE           R8, R2
BEQ             loc_200BD4
SUB             R0, R1, #0x400
SUBS            R0, R0, #1
VMOVNE          S16, R6
LDR             R0, [SP,#0x90+var_34]
VLDREQ          S16, [SP,#0x90+var_60]
ADD             R1, R9, #0x5800
BIC             R2, R10, #0x60000000
VSTR            S16, [R0,#0x54]
STR             R1, [SP,#0x90+var_78]
VLDR            S0, [R1,#0x54]
ORR             R1, R2, #0x80000000
LDR             R2, [SP,#0x90+var_6C]
VADD.F32        S0, S0, S17
LDR             R3, =0xE000001F
ORR             R1, R1, R2
MOV             R2, #0x1FFFFFFF
AND             R3, R3, R1
MOV             R11, #2
VMUL.F32        S0, S0, S18
VCVT.U32.F32    S0, S0
VMOV            R1, S0
AND             R1, R2, R1,LSL#5
ORR             R1, R1, R3
BIC             R1, R1, #0x1F
ORR             R10, R1, #8
LDR             R1, [R0,#0x14]
LDR             R3, [R0,#8]
LDR             R2, [R0,#0x10]
RSB             R12, R1, R1,LSL#3
ADD             R5, R3, R12,LSL#2
STR             R5, [R2,R1,LSL#2]
LDR             R1, [R0,#0x14]
ADD             R1, R1, #1
STR             R1, [R0,#0x14]
LDR             R0, [R0,#0x20]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
STRB            R11, [R5]
STR             R0, [R5,#0x18]
STR             R9, [R5,#8]
STR             R10, [R5,#4]
MOV             R1, #0
VSTR            S16, [R5,#0xC]
STR             R1, [R5,#0x10]
STR             R1, [R5,#0x14]
LDR             R0, [SP,#0x90+var_70]
LDRB            R0, [R0,#0x2E4]
CMP             R0, R4
BNE             loc_200BD4
LDR             R0, =byte_6CEE28
LDRB            R0, [R0]
CMP             R0, #1
BNE             loc_200BD4
LDR             R0, [SP,#0x90+var_78]
LDR             R12, [SP,#0x90+var_70]
LDR             R9, [SP,#0x90+var_34]
LDR             R5, [SP,#0x90+var_68]
LDR             R11, [R0,#0x50]
LDR             R0, [SP,#0x90+var_58]
LDR             R1, =0xE000001F
STR             R11, [R12,#0x2AC]
LDR             R12, [SP,#0x90+var_6C]
BIC             R3, R0, #0x60000000
ORR             R3, R3, #0x80000000
ORR             R3, R3, R12
LDR             R12, [SP,#0x90+var_78]
AND             R3, R3, R1
MOV             R2, #0x1FFFFFFF
MOV             LR, #2
LDR             R0, [R12,#0x54]
LDR             R12, [SP,#0x90+var_70]
STR             R0, [R12,#0x2B0]
VSTR            S16, [R9,#0x54]
LDR             R0, [SP,#0x90+var_5C]
VLDR            S0, [R0,#0x54]
STR             R5, [SP,#0x90+var_7C]
VADD.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VCVT.U32.F32    S0, S0
VMOV            R1, S0
AND             R0, R2, R1,LSL#5
ORR             R0, R0, R3
BIC             R0, R0, #0x1F
ORR             R11, R0, #9
MOV             R0, #0
STR             R0, [SP,#0x90+var_4C]
STR             R11, [SP,#0x90+var_58]
STR             R0, [SP,#0x90+var_78]
LDR             R1, [R9,#0x14]
LDR             R3, [R9,#8]
LDR             R2, [R9,#0x10]
RSB             R12, R1, R1,LSL#3
ADD             R5, R3, R12,LSL#2
STR             R5, [R2,R1,LSL#2]
LDR             R1, [R9,#0x14]
ADD             R1, R1, #1
STR             R1, [R9,#0x14]
STR             LR, [SP,#0x90+var_8C]
LDR             R0, [R9,#0x20]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
MOV             R9, R0
LDR             R0, [SP,#0x90+var_8C]
LDR             R1, [SP,#0x90+var_7C]
LDR             R12, [SP,#0x90+var_78]
LDR             R3, [SP,#0x90+var_4C]
STRB            R0, [R5]
STR             R1, [R5,#8]
STR             R9, [R5,#0x18]
STR             R11, [R5,#4]
VSTR            S16, [R5,#0xC]
STR             R3, [R5,#0x10]
STR             R12, [R5,#0x14]
LDRB            R0, [R7]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_2009C0
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8-D9}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
