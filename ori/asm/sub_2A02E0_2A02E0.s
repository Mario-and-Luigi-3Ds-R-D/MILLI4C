PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R8, R2
MOV             R10, #0x10
MOV             R11, R1
MOV             R5, R3
VPUSH           {D8}
SUB             SP, SP, #0x14
LDRB            R1, [R0,#0xB9]
LDR             R0, [R0,#0xB0]
ADD             R1, R1, R1,LSL#2
ADD             R1, R10, R1,LSL#2
LDR             R0, [R0,R1]
CMP             R0, #0
BEQ             loc_2A04C4
LDRB            R9, [R4,#0x133]
CMP             R5, #0
ADD             R7, R4, #0xF0
BNE             loc_2A0358
LDM             R7, {R0-R2}
MOV             R5, SP
VMOV            S0, R0
STMEA           SP, {R0-R2}
VLDR            S1, [R4,#0x90]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_40]
VMOV            S0, R1
VLDR            S1, [R4,#0x94]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_3C]
LDR             R6, [R4,#0x24]
MOV             R0, R6
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, [R5]
MOV             R0, R6
VCVT.F32.U32    S0, S0
VADD.F32        S16, S0, S1
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, [R5,#4]
ADD             R5, R4, #0x5800
LDR             R1, =0x59A4
ADD             R5, R5, #0x174
ADD             R0, R4, #0x174
VCVT.F32.U32    S0, S0
VSTR            S16, [R5,#0x2A4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R5,#0x2A8]
LDR             R1, [R1,R4]
TST             R1, #1
BEQ             loc_2A03C4
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
VLDR            S16, =0.0
VLDR            S0, [R7,#8]
CMP             R8, #0
ADD             R6, R4, #0x5800
BEQ             loc_2A041C
ADD             R1, R8, #0x54 ; 'T'
ADD             R0, R4, #0x174
VLDM            R1, {S1-S2}
VSTR            S0, [R5,#0x2AC]
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
VCMPNE.F32      S2, S16
VMRSNE          APSR_nzcv, FPSCR
BLNE            sub_2C292C
ADD             R0, R4, #0x5C00
MOV             R1, R8
VLDR            S0, [R0,#0x20]
ADD             R0, R4, #0x174
BL              sub_2C20F0
NOP
NOP
B               loc_2A0450
LDR             R0, =flt_658014
LDR             R1, =flt_658018
VLDR            S1, [R0]
VLDR            S2, [R1]
ADD             R0, R4, #0x174
VCMP.F32        S1, S16
VSTR            S0, [R5,#0x2AC]
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2A044C
VCMP.F32        S2, S16
VMRS            APSR_nzcv, FPSCR
BLNE            sub_2C292C
VSTR            S16, [R6,#0x1C4]
MOV             R0, R11
BL              sub_4A1234
LDR             R0, [R4,#0xE4]
MOV             R2, #1
ADD             R1, SP, #0x40+var_34
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R9,LSL#24
STR             R0, [SP,#0x40+var_34]
ADD             R0, R4, #0x174
BL              sub_2C2180
LDRD            R0, R1, [R4,#0xA0]
ADD             R6, R6, #0x18C
MOV             R3, #0
STM             R6, {R0,R1}
MOV             R2, R3
LDRB            R1, [R4,#0xB9]
LDR             R0, [R4,#0xB0]
ADD             R1, R1, R1,LSL#2
ADD             R1, R10, R1,LSL#2
LDR             R1, [R0,R1]
ADD             R0, R4, #0x174
BL              sub_2C0F9C
MOV             R2, #1
ADD             R1, R4, #0x174
MOV             R0, R11
BL              sub_2BEC88
MOV             R0, R11
NOP
BL              sub_4A1234
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
