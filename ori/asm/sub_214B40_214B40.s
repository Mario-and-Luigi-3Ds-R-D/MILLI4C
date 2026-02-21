PUSH            {R4-R7,LR}
MOV             R4, R0
LDR             R7, =off_6CE970
VPUSH           {D8-D9}
SUB             SP, SP, #0x24
LDR             R0, [R7]
BL              sub_528E64
LDR             R5, [R0,#0x18]
MOV             R1, R0
MOV             R0, SP
BL              sub_1DB9F8
MOV             R1, SP
MOV             R0, R1
BL              sub_4800C0
LDR             R6, =flt_6E34B0
ADD             R2, SP, #0x48+var_3C
ADD             R1, R6, #0xB8
VLDM            R1, {S0-S2}
ADD             R1, SP, #0x48+var_3C
VSTM            R1, {S0-S2}
MOV             R1, R2
VLDR            S3, [R5,#0x5C]
VMUL.F32        S0, S0, S3
VSTR            S0, [SP,#0x48+var_3C]
VLDR            S0, [R5,#0x60]
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x48+var_38]
VLDR            S0, [R5,#0x64]
VMUL.F32        S0, S2, S0
VSTR            S0, [SP,#0x48+var_34]
LDR             R0, [R7]
BL              sub_529034
VLDR            S0, [SP,#0x48+var_48]
VLDR            S1, [SP,#0x48+var_3C]
MOV             R1, SP
MOV             R0, R1
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_48]
VLDR            S0, [SP,#0x48+var_44]
VLDR            S1, [SP,#0x48+var_38]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_44]
VLDR            S0, [SP,#0x48+var_40]
VLDR            S1, [SP,#0x48+var_34]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_40]
BL              sub_480160
LDR             R0, [R7]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #4
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C430
MOV             R5, #1
STRB            R5, [R4,#0xF2]
LDRB            R0, [R4,#0xF0]
CMP             R0, #1
BEQ             loc_214C6C
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x48+var_30
LDR             R3, [R0,#0x28]
MOV             R0, R4
BLX             R3
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
LDR             R0, [R4]
ADD             R1, SP, #0x48+var_30
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDRB            R0, [R4,#0x3F4]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_214D38
MOV             R2, #0xFFFFFFFF
STRB            R5, [R4,#0xF2]
REV             R2, R2
MOV             R0, R4
STR             R2, [SP,#0x48+var_30]
LDR             R2, [R4]
ADD             R1, SP, #0x48+var_30
LDR             R2, [R2,#0x3C]
BLX             R2
ADD             R0, R4, #0x1DC
BL              sub_5A26D0
MOV             R1, SP
ADD             R0, R4, #0x24 ; '$'
BL              sub_214A94
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x1DC
BL              sub_5A2A74
MOV             R0, #2
STRB            R0, [R4,#0x3F4]
VLDR            S2, =255.0
VLDR            S0, [R6,#(flt_6E35C0 - 0x6E34B0)]
VLDR            S18, =0.0
ADD             R0, R4, #0x400
VDIV.F32        S1, S2, S0
VMOV.F32        S0, S18
ADD             R5, R4, #0x410
MOV             R1, #0
ADD             R0, R0, #0x118
BL              sub_5A1AA8
MOV             R0, #3
STRB            R0, [R5]
LDR             R0, [R4,#0x204]
VLDR            S16, =1.0
LDR             R1, =dword_6E132C
VLDR            S17, [R0,#0x10]
VCMPE.F32       S17, S18
VMRS            APSR_nzcv, FPSCR
BLE             loc_214DAC
VLDR            S0, [R0,#0xC]
VCMP.F32        S0, S18
VMRS            APSR_nzcv, FPSCR
BNE             loc_214DAC
LDR             R0, [R1]
TST             R0, #1
BNE             loc_214D8C
B               loc_214D60
LDR             R0, [R4]
MOV             R1, SP
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
MOV             R0, #0x3F8
STRB            R7, [R4,#0xF2]
STRH            R7, [R0,R4]
STRB            R5, [R4,#0x3F4]
B               loc_214CCC
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_214D8C
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
VMOV.F32        S0, S17
LDR             R2, =flt_711FD8
MOV             R1, #0
ADD             R0, R4, #0x158
BL              sub_5A2074
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R7,PC}
LDR             R0, [R1]
ADD             R4, R4, #0x158
TST             R0, #1
BNE             loc_214DE8
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_214DE8
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R5, =flt_711FD8
MOV             R0, R4
BL              sub_5A26D0
LDM             R5, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R7,PC}
