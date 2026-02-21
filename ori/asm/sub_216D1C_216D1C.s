PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R8, =off_6CE970
LDR             R3, =0x1213C4
VPUSH           {D8-D9}
SUB             SP, SP, #0xD4
LDR             R1, [R2,#4]
LDR             R0, [R8]
MOV             R2, #0
STR             R1, [SP,#0x108+var_E4]
LDR             R1, =sub_119850
ADD             R7, R0, #0x120000
ADD             R6, R0, R3; locret_1213C4
ADD             R5, R0, R1; sub_119850
LDR             R0, [R4]
ADD             R7, R7, #0x12C0
ADD             R1, SP, #0x108+var_A8
LDR             R3, [R0,#0x24]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x108+var_A8
LDR             R3, [R0,#0x24]
MOV             R0, R4
BLX             R3
VLDR            S0, [R0]
VLDR            S7, [R5,#(loc_11987C - 0x119850)]
VLDR            S6, [R0,#4]
VLDR            S2, [R5,#(loc_119880 - 0x119850)]
VSUB.F32        S0, S0, S7
VLDR            S8, [R5,#(loc_119870 - 0x119850)]
VSUB.F32        S2, S6, S2
VLDR            S1, [R0,#8]
VLDR            S5, [R5,#(loc_119884 - 0x119850)]
VLDR            S7, [R5,#(loc_119874 - 0x119850)]
VLDR            S6, [R5,#(loc_119878 - 0x119850)]
VSUB.F32        S1, S1, S5
VLDR            S5, [R5,#(loc_119868 - 0x119850)]
LDR             R1, =unk_6E2C8C
VMUL.F32        S0, S8, S0
VLDR            S16, =0.0
VLDM            R1, {S3-S4}
VMLA.F32        S0, S7, S2
VMLA.F32        S0, S6, S1
VCMPE.F32       S5, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_216DEC
VLDR            S1, [R5,#(loc_11986C - 0x119850)]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_216DF4
VMOV.F32        S0, S16
B               loc_216E20
VLDR            S1, [R5,#(loc_119864 - 0x119850)]
VLDR            S2, [R5,#(loc_119860 - 0x119850)]
VMUL.F32        S1, S1, S0
VDIV.F32        S0, S2, S1
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S0, S4
BGE             loc_216E20
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVLS.F32      S0, S3
VLDR            S2, [R4,#0x5C]
VLDR            S1, [R4,#0x60]
LDR             R0, [R4]
VLDR            S19, [R4,#0x64]
MOV             R2, #0
VMUL.F32        S17, S2, S0
VMUL.F32        S18, S1, S0
LDR             R3, [R0,#0x2C]
ADD             R1, SP, #0x108+var_F4
MOV             R0, R4
BLX             R3
MOV             R0, #0
VSTR            S17, [SP,#0x108+var_D8]
STR             R0, [SP,#0x108+var_D4]
STR             R0, [SP,#0x108+var_D0]
STR             R0, [SP,#0x108+var_C8]
VSTR            S18, [SP,#0x108+var_C4]
STR             R0, [SP,#0x108+var_C0]
STR             R0, [SP,#0x108+var_B8]
STR             R0, [SP,#0x108+var_B4]
VSTR            S19, [SP,#0x108+var_B0]
LDR             R0, [SP,#0x108+var_F4]
MOV             R9, #1
ADD             R2, SP, #0x108+var_F8
STR             R0, [SP,#0x108+var_CC]
LDR             R0, [SP,#0x108+var_F0]
MOV             R1, #0
STR             R0, [SP,#0x108+var_BC]
LDR             R0, [SP,#0x108+var_EC]
STR             R0, [SP,#0x108+var_AC]
MOV             R0, #3
STRB            R0, [R6,#(loc_121430+3 - 0x1213C4)]
STRB            R9, [R6,#(loc_121434+1 - 0x1213C4)]
LDR             R0, [R4,#0x9C]
STR             R0, [SP,#0x108+var_F8]
MOV             R0, R6
BL              sub_12C9C4
LDR             R0, [R4,#0xA0]
ADD             R2, SP, #0x108+var_F8
MOV             R1, #1
STR             R0, [SP,#0x108+var_F8]
MOV             R0, R6
BL              sub_12C9C4
LDR             R0, =dword_6D2418
LDR             R11, =loc_119820
MOV             R10, #0
LDR             R5, [R0]
LDRB            R0, [R4,#0x27E]
CMP             R0, #0xFF
BEQ             loc_216F30
ADD             R0, SP, #0x108+var_D8
ADD             R12, SP, #0x108+var_B8
VLDM            R0, {S0-S7}
ADD             R0, R6, #0x20 ; ' '
VSTM            R0, {S0-S7}
LDM             R12, {R0-R3}
ADD             R12, R6, #0x40 ; '@'
STM             R12, {R0-R3}
MOV             R2, R5
STR             R10, [SP,#0x108+var_108]
LDRB            R0, [R4,#0x27E]
LDR             R1, [R8]
ADD             R0, R1, R0,LSL#2
LDR             R1, [SP,#0x108+var_E4]
LDR             R3, [R0,R11]
MOV             R0, R6
BL              sub_136908
MOV             R5, R0
LDRB            R0, [R4,#0x280]
CMP             R0, #0xFF
BEQ             loc_216FC4
MOV             R0, #3
STRB            R0, [R7,#(off_12132C+3 - 0x1212C0)]
STRB            R9, [R7,#(sub_121330+1 - 0x1212C0)]
LDR             R0, [R4,#0x9C]
ADD             R2, SP, #0x108+var_100
MOV             R1, #0
STR             R0, [SP,#0x108+var_100]
MOV             R0, R7
BL              sub_12C9C4
LDR             R0, [R4,#0xA0]
ADD             R2, SP, #0x108+var_100
MOV             R1, #1
STR             R0, [SP,#0x108+var_100]
MOV             R0, R7
BL              sub_12C9C4
VLDR            S1, =-20.0
VLDR            S0, =-6.0
VSTR            S1, [SP,#0x108+var_F4]
VSTR            S0, [SP,#0x108+var_F0]
ADD             R0, R7, #0x20 ; ' '
ADD             R2, SP, #0x108+var_F4
VSTR            S16, [SP,#0x108+var_EC]
ADD             R1, SP, #0x108+var_D8
BL              sub_142344
STR             R10, [SP,#0x108+var_108]
LDRB            R0, [R4,#0x280]
LDR             R1, [R8]
MOV             R2, R5
ADD             R0, R1, R0,LSL#2
LDR             R1, [SP,#0x108+var_E4]
LDR             R3, [R0,R11]
MOV             R0, R7
BL              sub_136908
MOV             R5, R0
LDRB            R0, [R4,#0x281]
CMP             R0, #0xFF
BEQ             loc_217064
CMP             R0, #7
VLDRNE          S0, =-16.0
VLDREQ          S0, =-14.0
VSTR            S16, [SP,#0x108+var_F4]
VSTR            S0, [SP,#0x108+var_F0]
ADD             R0, R6, #0x20 ; ' '
ADD             R2, SP, #0x108+var_F4
VSTR            S16, [SP,#0x108+var_EC]
ADD             R1, SP, #0x108+var_D8
BL              sub_142344
ADD             R0, R4, #0x244
NOP
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             loc_21703C
LDR             R0, [R4,#0x248]
ADD             R3, R6, #0x20 ; ' '
VLDR            S0, =1.0
STR             R0, [SP,#0x108+var_A8]
STR             R0, [SP,#0x108+var_A4]
MOV             R1, R3
ADD             R2, SP, #0x108+var_A8
VSTR            S0, [SP,#0x108+var_A0]
MOV             R0, R3
BL              sub_14209C
STRB            R9, [R6,#(loc_121434+1 - 0x1213C4)]
STR             R10, [SP,#0x108+var_108]
LDRB            R0, [R4,#0x281]
LDR             R1, [R8]
MOV             R2, R5
ADD             R0, R1, R0,LSL#2
LDR             R1, [SP,#0x108+var_E4]
LDR             R3, [R0,R11]
MOV             R0, R6
BL              sub_136908
MOV             R5, R0
LDR             R0, =dword_6D2418
STR             R5, [R0]
LDRB            R0, [R4,#0x27F]
CMP             R0, #0xFF
BEQ             loc_2171CC
ADD             R0, SP, #0x108+var_A8
BL              sub_14A854
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2170BC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2170BC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, SP, #0x108+var_A8
ADD             R11, SP, #0x108+var_D8
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
STRB            R10, [SP,#0x108+var_98]
LDM             R11, {R0-R3,R5-R7,R12}
ADD             R11, SP, #0x108+var_64
STM             R11, {R0-R3,R5-R7,R12}
ADD             R5, SP, #0x108+var_B8
LDM             R5, {R0-R3}
ADD             R5, SP, #0x108+var_44
STM             R5, {R0-R3}
LDRB            R0, [R4,#0x281]
CMP             R0, #0xFF
BEQ             loc_217144
CMP             R0, #7
VLDREQ          S16, =2.0
BEQ             loc_217114
CMP             R0, #8
CMPNE           R0, #9
VLDREQ          S16, =5.0
VSTR            S16, [SP,#0x108+var_68]
LDRB            R0, [R4,#0x281]
CMP             R0, #7
BNE             loc_217144
ADD             R0, R4, #0x244
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             loc_217144
LDR             R0, [R4,#0x248]
STR             R0, [SP,#0x108+var_6C]
STR             R0, [SP,#0x108+var_7C]
LDRB            R2, [R4,#0x27F]
LDR             R1, =sub_121A5C
RSB             R2, R2, R2,LSL#3
B               loc_217198
DCD off_6CE970
DCD 0x1213C4
DCD sub_119850
DCD unk_6E2C8C
DCFS 0.0
DCD dword_6D2418
DCD loc_119820
DCFS -20.0
DCFS -6.0
DCFS -16.0
DCFS -14.0
DCFS 1.0
DCD dword_6E1330
DCD flt_711FE4
DCFS 2.0
DCFS 5.0
DCD sub_121A5C
LDR             R0, [R8]
ADD             R2, R0, R2,LSL#3
LDR             R1, [R2,R1]
LDR             R2, =0x121A2C
STRB            R9, [R1,#0x71]
LDRB            R1, [R4,#0x27F]
RSB             R3, R1, R1,LSL#3
LDR             R1, [R4,#0x284]
ADD             R0, R0, R3,LSL#3
ADD             R2, R2, R0
LDR             R3, [SP,#0x108+var_E4]
ADD             R0, SP, #0x108+var_A8
BL              sub_14A4D8
ADD             SP, SP, #0xD4
VPOP            {D8-D9}
POP             {R4-R11,PC}
