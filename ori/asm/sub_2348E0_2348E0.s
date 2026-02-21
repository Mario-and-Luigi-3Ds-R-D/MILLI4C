PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R5, R2
VPUSH           {D8}
SUB             SP, SP, #0xC
ADD             LR, SP, #0x28+arg_C
LDR             R7, [SP,#0x28+arg_0]
LDM             LR, {R0,R2}
ADD             LR, SP, #0x28+arg_4
LDM             LR, {R6,R12}
ADD             LR, R4, #0x20 ; ' '
STM             LR, {R1,R5}
ADD             LR, R4, #0x28 ; '('
VLDM            R3, {S1-S2}
VSTM            LR, {S1-S2}
STRB            R7, [R4,#0x3C]
STRH            R12, [R4,#0x3E]
STRH            R0, [R4,#0x40]
STRH            R2, [R4,#0x42]
LDR             R0, =unk_6EB568
VSTR            S0, [R4,#0x44]
MOV             R2, R4
BL              sub_51CCCC
LDR             R0, [R4,#0x24]
VLDR            S16, [R4,#0x28]
CMP             R0, #0
BEQ             loc_234974
LDR             R1, [R0,#4]
LDR             R2, =0x14180
ADD             R0, R0, #0xE0
ADD             R3, R1, #0x13800
ADD             R3, R3, #0x3A4
LDR             R2, [R2,R1]
MOV             R1, SP
BL              sub_5CA568
VLDR            S0, [SP,#0x28+var_28]
VADD.F32        S16, S16, S0
CMP             R5, #0
LDRNE           R0, [R5,#4]
ADDNE           R0, R0, #0x14000
LDRNE           R0, [R0,#0x180]
MOVEQ           R0, #0x400
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S16, S1
VMOV            R0, S0
CMP             R0, #0x3F800000
VLDRGT          S0, =1.0
BGT             loc_2349BC
LDR             R1, =0xBF800000
VMOV            R0, S0
CMP             R0, R1
VLDRHI          S0, =-1.0
LDR             R0, =unk_6EB568
MOV             R1, R4
BL              sub_51CC84
LDR             R5, =off_67E154
CMP             R6, #0
LDRDNE          R0, R1, [R5]
BNE             loc_234A20
LDRSH           R1, [R4,#0x3E]
CMP             R1, #0
BEQ             loc_234A00
ADD             R0, R4, #0x30 ; '0'
BL              sub_123C70
LDRD            R0, R1, [R5,#(off_67E15C - 0x67E154)]
STRD            R0, R1, [R4,#0x48]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, =unk_6EB568
MOV             R1, R4
BL              sub_51C20C
LDRSH           R1, [R4,#0x40]
CMP             R1, #0
ADDGT           R0, R4, #0x30 ; '0'
BLGT            sub_123C70
LDRD            R0, R1, [R5,#(off_67E164 - 0x67E154)]
STRD            R0, R1, [R4,#0x48]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
