PUSH            {R4-R7,LR}
MOV             R4, R0
LDR             R0, =dword_6E132C
VPUSH           {D8}
SUB             SP, SP, #0x44
LDR             R0, [R0]
LDR             R7, [R2,#4]
VLDR            S16, =1.0
TST             R0, #1
BNE             loc_251B4C
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_251B4C
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R0, [R4]
LDR             R1, =flt_711FD8
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
MOV             R0, #0x300
STR             R0, [SP,#0x60+var_60]
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x60+var_58
MOV             R0, R4
BL              sub_5C4A88
LDR             R0, [R4,#0x9C]
ADD             R2, SP, #0x60+var_5C
MOV             R1, #0
STR             R0, [SP,#0x60+var_5C]
LDR             R0, [R4,#0x24C]
BL              sub_12C9C4
ADD             R0, R4, #0x1C0
NOP
BL              sub_5F19B8
VLDR            S0, [R4,#0x15C]
VLDR            S1, =0.0
MOV             R6, R0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_251BF8
LDR             R0, [R4,#0x24C]
VSTR            S0, [SP,#0x60+var_28]
VSTR            S0, [SP,#0x60+var_24]
ADD             R0, R0, #0x20 ; ' '
ADD             R2, SP, #0x60+var_28
VSTR            S16, [SP,#0x60+var_20]
ADD             R1, SP, #0x60+var_58
BL              sub_14209C
LDR             R5, [R4,#0x24C]
ADD             R0, R4, #0x158
BL              sub_5F1964
ORR             R0, R0, R6
STRB            R0, [R5,#0x71]
LDR             R0, [R4,#0x24C]
MOV             R1, R7
BL              sub_12CA08
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8}
POP             {R4-R7,PC}
