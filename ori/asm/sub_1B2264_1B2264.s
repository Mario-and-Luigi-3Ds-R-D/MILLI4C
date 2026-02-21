PUSH            {R4-R11,LR}
SUB             SP, SP, #0x7C
MOV             R7, R0
ADD             R1, SP, #0xA0+var_58
ADD             R2, SP, #0xA0+var_8C
ADD             R5, SP, #0xA0+var_7C
ADD             R4, SP, #0xA0+var_60
BL              sub_1B1B9C
MOV             R2, R4
MOV             R1, R5
MOV             R0, R7
BL              sub_1AD930
VLDR            S0, [SP,#0xA0+var_8C]
VLDR            S1, =50.0
VLDR            S7, =24.0
VLDR            S8, =-24.0
VADD.F32        S4, S0, S1
VLDR            S2, =0.5
LDR             R8, =off_6D1648
MOV             R5, #2
VSTR            S4, [SP,#0xA0+var_8C]
VLDR            S6, [SP,#0xA0+var_60]
VLDR            S5, [SP,#0xA0+var_7C]
VLDR            S1, [SP,#0xA0+var_58]
VMUL.F32        S10, S6, S7
VMUL.F32        S3, S4, S6
VMUL.F32        S7, S5, S7
VMOV.F32        S11, S1
VMUL.F32        S6, S6, S8
VMUL.F32        S4, S4, S5
VLDR            S0, [SP,#0xA0+var_54]
VMUL.F32        S9, S5, S8
VMOV.F32        S8, S3
VMLA.F32        S3, S7, S2
VMLA.F32        S11, S7, S2
VMOV.F32        S7, S0
VMOV.F32        S5, S4
VMLA.F32        S4, S6, S2
VMLA.F32        S8, S9, S2
VMLA.F32        S7, S6, S2
VMOV.F32        S6, S1
VMLA.F32        S5, S10, S2
VMLA.F32        S6, S9, S2
VMOV.F32        S9, S0
VADD.F32        S5, S5, S0
VADD.F32        S0, S4, S0
VMLA.F32        S9, S10, S2
VADD.F32        S2, S8, S1
VADD.F32        S1, S3, S1
VSTR            S2, [SP,#0xA0+var_88]
VSTR            S5, [SP,#0xA0+var_84]
VSTR            S1, [SP,#0xA0+var_78]
VSTR            S0, [SP,#0xA0+var_74]
VSTR            S11, [SP,#0xA0+var_70]
VSTR            S7, [SP,#0xA0+var_6C]
VSTR            S6, [SP,#0xA0+var_68]
VSTR            S9, [SP,#0xA0+var_64]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R6, R1, R0
CMP             R6, #2
BLE             loc_1B25A0
ADD             R9, SP, #0xA0+var_88
ADD             R10, SP, #0xA0+var_78
ADD             R11, SP, #0xA0+var_70
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_1B23B8
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
B               loc_1B23D0
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R5, R2
ADD             R0, R0, R1,LSL#2
LDR             R4, [R0,#0x10]
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_1B2590; jumptable 001B23FC cases 0-4,6
LDR             R0, [R4,#0x648]
TST             R0, #4
BEQ             loc_1B2590; jumptable 001B23FC cases 0-4,6
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B23FC; jumptable 001B23FC default case, case 5
DCD loc_1B2590; jump table for switch statement
LDRB            R0, [R4,#0x648]; jumptable 001B23FC default case, case 5
CMP             R0, #0
BEQ             loc_1B2454
LDR             R0, [R4,#0x648]
TST             R0, #1
BEQ             loc_1B2454
LDR             R0, [R4,#0x640]
TST             R0, #7
BEQ             loc_1B2454
TST             R0, #3
BNE             loc_1B2460
MOVS            R0, R0,LSL#5
BPL             loc_1B2460
LDR             R0, [R4,#0x648]
TST             R0, #4
BEQ             loc_1B2590; jumptable 001B23FC cases 0-4,6
ADD             R0, R4, #0x400
VLDR            S1, [R4,#0x108]
VLDR            S3, [R0,#0x224]
VLDR            S0, [R4,#0x10C]
VLDR            S2, [R0,#0x234]
VADD.F32        S1, S1, S3
ADD             R2, R4, #0x108
VADD.F32        S0, S0, S2
ADD             R1, SP, #0xA0+var_68
ADD             R3, SP, #0xA0+var_38
VSTR            S1, [SP,#0xA0+var_48]
VSTR            S0, [SP,#0xA0+var_44]
VLDR            S1, [R4,#0x108]
VLDR            S3, [R0,#0x228]
VLDR            S0, [R4,#0x10C]
VLDR            S2, [R0,#0x234]
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S2
VSTR            S1, [SP,#0xA0+var_40]
VSTR            S0, [SP,#0xA0+var_3C]
VLDR            S2, [R0,#0x224]
VLDM            R2, {S0-S1}
ADD             R2, SP, #0xA0+var_38
VADD.F32        S0, S0, S2
VSTM            R2, {S0-S1}
ADD             R2, SP, #0xA0+var_30
VLDR            S1, [R0,#0x228]
VLDR            S0, [R4,#0x108]
LDR             R0, [R4,#0x10C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xA0+var_30]
STR             R0, [SP,#0xA0+var_2C]
STR             R1, [SP,#0xA0+var_94]
ADD             R1, SP, #0xA0+var_40
ADD             R0, SP, #0xA0+var_48
STMEA           SP, {R9-R11}
BL              sub_459B04
CMP             R0, #0
NOP
BEQ             loc_1B2590; jumptable 001B23FC cases 0-4,6
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7
BEQ             loc_1B2590; jumptable 001B23FC cases 0-4,6
LDR             R0, [R7,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_1B256C
LDR             R1, [R4,#0x4EC]
TST             R1, #0xE0
BNE             loc_1B2540
LDR             R2, [R0,#0x754]
CMP             R2, R4
BNE             loc_1B256C
AND             R2, R1, #0xE0
CMP             R2, #0x80
BNE             loc_1B2590; jumptable 001B23FC cases 0-4,6
LDR             R1, [R0,#0x754]
CMP             R1, R4
BNE             loc_1B256C
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_1B2590; jumptable 001B23FC cases 0-4,6
STR             R4, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x248
ORR             R3, R3, #0xFC0
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R1]
ADD             R0, R5, #1; jumptable 001B23FC cases 0-4,6
UXTH            R5, R0
CMP             R5, R6
BLT             loc_1B2380
ADD             SP, SP, #0x7C ; '|'
POP             {R4-R11,PC}
