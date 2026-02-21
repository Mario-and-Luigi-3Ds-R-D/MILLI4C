PUSH            {R4-R9,LR}
MOV             R6, R0
VPUSH           {D8-D13}
SUB             SP, SP, #4
LDRB            R0, [R0,#0x374]
TST             R0, #1
BEQ             loc_195918
ADD             R8, R6, #0x400
VLDR            S0, [R6,#8]
VLDR            S7, [R8,#0x18]
VLDR            S3, [R6,#4]
VLDR            S8, [R8,#0x14]
VMUL.F32        S0, S0, S7
ADD             R0, R6, #0x84
VMUL.F32        S3, S3, S8
VLDM            R0, {S4-S5}
ADD             R0, R6, #8
VLDR            S2, [R6,#0x36C]
VLDR            S6, [R6,#0x368]
VLDR            S1, [R6,#0x28]
ADD             R9, R6, #0x300
VLDM            R0, {S23-S24}
VMUL.F32        S26, S0, S5
VMUL.F32        S0, S0, S2
VMUL.F32        S16, S3, S4
VMUL.F32        S19, S3, S6
VLDR            S18, [R6,#0x2C]
VLDR            S22, [R6,#0x30]
VLDR            S21, [R6,#4]
MOV             R7, #0
VLDR            S25, =2.0
VADD.F32        S20, S26, S0
VADD.F32        S17, S1, S16
B               loc_19579C
CMP             R7, #0
BEQ             loc_19579C
CMP             R7, #1
LDRSBEQ         R1, [R9,#0x77]
BEQ             loc_1957A0
CMP             R7, #2
LDRSBEQ         R1, [R9,#0x78]
B               loc_1957A0
LDRSB           R1, [R9,#0x76]
ADD             R0, R7, R7,LSL#2
MOV             R2, #1
ADD             R5, R6, R0,LSL#4
ADD             R0, R5, #0x40 ; '@'
BL              sub_1E8CD4
ADD             R0, R5, #0x40 ; '@'
NOP
BL              sub_1E8A00
VSTR            S22, [R5,#0x70]
ADD             R0, R5, #0x68 ; 'h'
VSTM            R0, {S17-S18}
ADD             R0, R5, #0x40 ; '@'
VLDR            S0, [R8,#0x14]
VMUL.F32        S0, S21, S0
VSTR            S0, [R5,#0x44]
VLDR            S0, [R8,#0x18]
VMUL.F32        S0, S23, S0
VSTR            S0, [R5,#0x48]
VLDR            S0, [R8,#0x1C]
VMUL.F32        S0, S24, S0
VSTR            S0, [R5,#0x4C]
BL              sub_1E885C
VADD.F32        S17, S17, S19
VADD.F32        S18, S20, S18
LDRB            R0, [R6,#0x374]
TST             R0, #0x40
VMLA.F32        S17, S16, S25
BEQ             loc_195858
LDRB            R0, [R5,#0x8C]
MOV             R4, #0
CMP             R0, #0
BLE             loc_195858
LDR             R0, [R6,#0x3B8]
MOV             R2, SP
REV             R0, R0
STR             R0, [SP,#0x50+var_50]
RSB             R0, R4, R4,LSL#3
ADD             R1, R0, R4,LSL#6
LDR             R0, [R5,#0x78]
ADD             R0, R0, R1,LSL#2
MOV             R1, #1
BL              sub_12C9C4
LDRB            R0, [R5,#0x8C]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_195820
ADD             R7, R7, #1
CMP             R7, #3
BLT             loc_19577C
ADD             R0, R6, #0x28 ; '('
VLDR            S0, =1.5
VLDR            S3, =0.5
MOV             R4, #0
VMUL.F32        S0, S16, S0
VLDM            R0, {S1-S2}
VADD.F32        S18, S2, S26
VMLA.F32        S0, S19, S3
VADD.F32        S17, S0, S1
VLDR            S3, [R6,#4]
VLDR            S2, [R8,#0x14]
RSB             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#6
VMUL.F32        S2, S3, S2
ADD             R1, R6, R0,LSL#2
VMOV.F32        S0, S18
VMOV.F32        S1, S17
VADD.F32        S18, S20, S0
VSTR            S2, [R1,#0x150]
VLDR            S2, [R6,#8]
VLDR            S3, [R8,#0x18]
VADD.F32        S17, S1, S19
VMUL.F32        S2, S2, S3
VMLA.F32        S17, S16, S25
VSTR            S2, [R1,#0x164]
VLDR            S3, [R8,#0x1C]
VLDR            S2, [R6,#0xC]
VMUL.F32        S2, S2, S3
VSTR            S2, [R1,#0x178]
VSTR            S1, [R1,#0x15C]
VSTR            S0, [R1,#0x16C]
VSTR            S22, [R1,#0x17C]
LDRB            R0, [R6,#0x374]
TST             R0, #0x40
BEQ             loc_19590C
LDR             R0, [R6,#0x3B8]
MOV             R2, SP
REV             R0, R0
STR             R0, [SP,#0x50+var_50]
ADD             R0, R1, #0x130
MOV             R1, #1
BL              sub_12C9C4
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_195888
ADD             SP, SP, #4
VPOP            {D8-D13}
POP             {R4-R9,PC}
