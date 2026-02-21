PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6CDF98
VPUSH           {D8-D9}
SUB             SP, SP, #0x44
LDR             R0, [R0,#4]
LDR             R1, [R5]
LDRB            R2, [R0,#0x68]
LDR             R0, [R1,#0x124]
CMP             R2, #5; switch 5 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_26F5B8; jumptable 0026F5B8 default case
DCD loc_26F5D4; jump table for switch statement
VLDR            S18, [R0,#0x3E0]; jumptable 0026F5B8 case 0
VLDR            S17, [R0,#0x3E4]
B               def_26F5B8; jumptable 0026F5B8 default case
VLDR            S18, [R0,#0x3E8]; jumptable 0026F5B8 case 1
VLDR            S17, [R0,#0x3EC]
B               def_26F5B8; jumptable 0026F5B8 default case
VLDR            S18, [R0,#0x3F0]; jumptable 0026F5B8 case 2
VLDR            S17, [R0,#0x3F4]
B               def_26F5B8; jumptable 0026F5B8 default case
VLDR            S18, [R0,#0x3F8]; jumptable 0026F5B8 cases 3,4
VLDR            S17, [R0,#0x3FC]
MOV             R0, R1; jumptable 0026F5B8 default case
VMOV.F32        S0, S17
BL              sub_279048
LDR             R0, [R5]
ADD             R1, SP, #0x60+var_54
BL              sub_5CC8EC
LDR             R0, [R4,#4]
ADD             R5, R4, #8
ADD             R2, R0, #0x400
ADD             R2, R2, #0x198
LDR             R0, [R0,#0x5A0]
LDM             R2, {R1,R2}
STR             R0, [SP,#0x60+var_58]
MOV             R0, R5
STMEA           SP, {R1,R2}
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
ADD             R1, SP, #0x60+var_40
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_40]
STR             R2, [SP,#0x60+var_44]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_3C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_44]
ADD             R1, SP, #0x60+var_38
BL              sub_5CCFE8
LDR             R1, [SP,#0x60+var_3C]
ADD             R0, SP, #0x60+var_40
CMP             R1, R0
BNE             loc_26F6B4
LDR             R0, [SP,#0x60+var_44]
CMP             R0, #0
BEQ             loc_26F6B4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_40]
VLDR            S16, =0.0
MOV             R5, #0
MOV             R2, SP
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [SP,#0x60+var_60]
VLDR            S1, [SP,#0x60+var_38]
VLDR            S2, [SP,#0x60+var_54]
VLDR            S3, [SP,#0x60+var_58]
VADD.F32        S0, S0, S1
VLDR            S1, [SP,#0x60+var_4C]
MOV             R1, R5
ADD             R0, R4, #8
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S2, S0
VSTR            S0, [SP,#0x60+var_60]
VMOV.F32        S0, S17
VSTR            S1, [SP,#0x60+var_58]
VSTR            S16, [SP,#0x60+var_5C]
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x60+var_2C]
VSTR            S0, [SP,#0x60+var_28]
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VSTR            S16, [SP,#0x60+var_24]
ADD             R2, SP, #0x60+var_2C
VLDR            S0, [SP,#0x60+var_50]
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_5A28C4
STRB            R5, [R4,#0xB0]
VSTR            S16, [R4,#0xB4]
VSTR            S16, [R4,#0xB8]
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R3, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, =0x300D6
MOV             R2, #0
LDR             R3, [R3]
SUB             R0, R3, R0
BL              sub_503414
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8-D9}
POP             {R4,R5,PC}
