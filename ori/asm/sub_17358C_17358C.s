PUSH            {R4-R12,LR}
MOV             R4, R0
VPUSH           {D8-D9}
LDRB            R0, [R0,#0xDE]
TST             R0, #4
BNE             loc_1738E8
ADD             R6, R4, #0xA00
LDRH            R1, [R6,#0xA8]
TST             R1, #8
BEQ             loc_1738E8
LDRH            R0, [R6,#0xAC]
TST             R0, #1
MOVSNE          R2, R0,LSR#1
BEQ             loc_1735DC
MOV             R3, R0,LSR#1
AND             R2, R0, #1
MOV             R0, R3,LSL#1
SUB             R0, R0, #2
ORR             R0, R0, R2
STRH            R0, [R6,#0xAC]
LDR             R9, =dword_6E1330
LDR             R10, =flt_711FE4
VLDR            S16, =0.0
ADD             R7, R4, #0x800
TST             R1, #0x10
ADD             R7, R7, #0x2CC
ADD             R8, R4, #0x5E0
ADD             R5, R4, #0x800
BEQ             loc_1737C8
VLDR            S0, [R5,#0x2FC]
ADD             R0, R4, #0xAF0
BL              sub_5F1A28
VLDR            S1, [R5,#0x2C0]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x30C
VMUL.F32        S18, S0, S1
VLDR            S0, [R5,#0x318]
MOV             R11, R0
BL              sub_5F1A28
VLDR            S1, [R5,#0x2C4]
VLDR            S17, =1.0
ADD             R0, R4, #0xAF0
VMUL.F32        S19, S0, S1
VMOV.F32        S0, S17
BL              sub_5F1A04
VMOV.F32        S0, S17
MOV             R0, R11
BL              sub_5F1A04
VLDR            S0, [R5,#0x2FC]
ADD             R0, R4, #0xAF0
BL              sub_5F1A28
VLDR            S1, [R5,#0x2C0]
MOV             R0, R11
VMUL.F32        S17, S0, S1
VLDR            S0, [R5,#0x318]
BL              sub_5F1A28
VLDR            S1, [R5,#0x2C4]
VLDR            S2, [R4,#0x110]
VLDR            S6, [R4,#0x10C]
VMUL.F32        S1, S0, S1
VADD.F32        S4, S16, S2
VLDR            S0, [R4,#0x108]
VLDR            S3, [R4,#0x10C]
VLDR            S2, [R4,#0x108]
VLDR            S5, [R4,#0x110]
ADD             R0, R5, #0x2FC
VADD.F32        S0, S18, S0
VADD.F32        S3, S19, S3
VADD.F32        S2, S17, S2
VADD.F32        S1, S1, S6
VLDM            R0, {S6-S7}
VADD.F32        S5, S16, S5
VCMPE.F32       S6, S7
VMRS            APSR_nzcv, FPSCR
BCC             loc_1736CC
ADD             R5, R5, #0x318
VLDM            R5, {S6-S7}
VCMPE.F32       S7, S6
VMRS            APSR_nzcv, FPSCR
BLE             loc_1736DC
VSUB.F32        S17, S2, S0
VSUB.F32        S18, S1, S3
VSUB.F32        S19, S5, S4
B               loc_173754
VLDR            S4, [R7]
VLDR            S5, [R4,#0x108]
VLDR            S2, [R7,#4]
VLDR            S0, [R7,#8]
VLDR            S3, [R4,#0x10C]
VLDR            S1, [R4,#0x110]
VSUB.F32        S17, S4, S5
VSUB.F32        S18, S2, S3
VSUB.F32        S19, S0, S1
LDR             R0, [R9]
TST             R0, #1
BNE             loc_173738
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_173738
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R10, {R0-R2}
ADD             R3, R4, #0x800
ADD             R3, R3, #0x2D8
STM             R3, {R0-R2}
LDRH            R0, [R6,#0xA8]
BIC             R0, R0, #0x10
STRH            R0, [R6,#0xA8]
LDRH            R0, [R6,#0xA8]
TST             R0, #0x10
BNE             loc_17379C
TST             R0, #7
BEQ             loc_17379C
TST             R0, #0x40
BEQ             loc_17379C
LDRB            R0, [R4,#0xAB4]
CMP             R0, #0
BEQ             loc_173788
LDRH            R0, [R6,#0xAC]
BICS            R0, R0, #1
BNE             loc_17379C
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x368]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
VMOV.F32        S2, S19
VMOV.F32        S1, S18
VMOV.F32        S0, S17
LDR             R1, [R0,#0x58]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x5E0]
ORR             R0, R0, #0x20 ; ' '
STR             R0, [R8]
B               loc_1738E8
TST             R1, #0x80
BEQ             loc_1738E8
LDRH            R0, [R6,#0xAE]
VLDR            S1, =0.71111
ADD             R0, R0, R0,LSL#2
MOV             R0, R0,LSL#1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, =2.0
LDRH            R0, [R6,#0xAE]
VMUL.F32        S0, S0, S1
ADD             R0, R0, #1
UXTH            R0, R0
CMP             R0, #0x24 ; '$'
STRH            R0, [R6,#0xAE]
BCC             loc_173884
MOV             R0, #0
STRH            R0, [R6,#0xAE]
LDR             R0, [R9]
TST             R0, #1
BNE             loc_173850
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_173850
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R10, {R0-R2}
ADD             R3, R4, #0x800
ADD             R3, R3, #0x2D8
STM             R3, {R0-R2}
ADD             R0, R4, #0x10C
VLDR            S5, [R4,#0x108]
VLDM            R7!, {S0}
VLDM            R7, {S1-S2}
VSUB.F32        S0, S0, S5
VLDM            R0, {S3-S4}
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S2, S4
B               loc_1738CC
VLDR            S1, [R5,#0x2C0]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2E4
VMUL.F32        S2, S1, S0
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2D8
VSTR            S2, [R5,#0x2D8]
VLDR            S1, [R5,#0x2C4]
VMUL.F32        S1, S1, S0
VSTR            S1, [R5,#0x2DC]
VSTR            S16, [R5,#0x2E0]
VLDR            S0, [R0]
VLDR            S3, [R1,#8]
VLDR            S5, [R0,#4]
VLDR            S4, [R0,#8]
VSUB.F32        S0, S2, S0
VSUB.F32        S1, S1, S5
VSUB.F32        S2, S3, S4
LDR             R0, [R4]
LDR             R1, [R0,#0x58]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x5E0]
ORR             R0, R0, #0x20 ; ' '
STR             R0, [R8]
MOV             R5, #0
ADD             R0, R5, R5,LSL#2
ADD             R0, R0, R5,LSL#5
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x800
ADD             R0, R0, #0x328
BL              loc_232984
ADD             R5, R5, #1
CMP             R5, #6
BLT             loc_1738EC
VPOP            {D8-D9}
MOV             R0, R4
POP             {R4-R12,LR}
B               sub_580798
