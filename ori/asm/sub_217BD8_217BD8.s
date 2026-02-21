PUSH            {R0-R11,LR}
MOV             R7, R3
MOV             R9, R1
VPUSH           {D8}
SUB             SP, SP, #0x24
ADD             R1, SP, #0x60+arg_0
LDM             R1, {R5,R6}
BL              sub_14CB8C
LDR             R1, =off_6B2B84
LDR             R2, =off_6B8168
MOV             R10, #0
STR             R1, [R0]
ADD             R1, R0, #0x100
STM             R1, {R2,R10}
STR             R10, [R0,#0x108]
STR             R10, [R0,#0x10C]!
ADD             R0, R0, #4
BL              sub_5A2BD0
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R11, #3
STR             R1, [R0,#0x28]
STRB            R11, [R0,#0x2C]
ADD             R0, R0, #0xA8
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
VLDR            S16, =1.0
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
MOV             R8, #1
VMOV.F32        S0, S16
STR             R1, [R0,#0x28]
STRB            R8, [R0,#0x2C]
ADD             R0, R0, #0x58 ; 'X'
BL              sub_5A1E10
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
VMOV.F32        S0, S16
STR             R1, [R0,#0x10]
STRB            R8, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E10
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R8, [R0,#0x14]
CMP             R5, #0
LDRHNE          R2, [R5,#0x10]
SUB             R0, R0, #0x244
ADD             R1, R0, #0x200
MOVEQ           R2, #0
STRH            R2, [R1,#0x78]
STRH            R10, [R1,#0x7A]
STRB            R6, [R0,#0x27C]
STRH            R10, [R1,#0x82]
ADD             R1, R0, #0x284
STM             R1, {R9,R10}
STRB            R10, [R0,#0x28C]
STR             R10, [R0,#0x290]!
ADD             R0, R0, #4
BL              sub_1CFAF0
MOV             R4, R0
LDR             R0, =off_6B507C
AND             R1, R6, #2
AND             R8, R6, #1
STR             R0, [R4],#-0x294
AND             R0, R6, #4
MOV             R9, R1,LSR#1
MOV             R0, R0,LSR#2
STR             R0, [SP,#0x60+var_60]
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
ADD             R6, R4, #0x110
MOV             R0, R6
BL              sub_5A26D0
LDM             R7, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
ADD             R3, R4, #0x24 ; '$'
STM             R6, {R0-R2}
LDM             R7, {R0-R2}
STM             R3, {R0-R2}
MOV             R2, #0
MOV             R1, #1
MOV             R0, R4
BL              sub_14B798
STRB            R10, [R4,#0xF1]
LDR             R0, [SP,#0x60+var_2C]
LDR             R6, =off_6CE970
MOV             R10, #0xFF
CMP             R0, #0
BEQ             loc_217DC0
CMP             R0, #1
BEQ             loc_217E04
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_217F14
B               loc_2180C4
LDRH            R1, [R5,#0x10]
LDR             R0, [R6]
BL              sub_52F368
LDRB            R2, [R0,#0x495]
MOV             R0, #0
MOV             R1, #1
CMP             R2, #0
MOVNE           R0, R1
STRB            R0, [R4,#0x27E]
STRB            R11, [R4,#0x27F]
STRB            R10, [R4,#0x280]
MOV             R0, R4
STRB            R10, [R4,#0x281]
BL              sub_4972A4
MOV             R0, #7
NOP
B               loc_217F0C
LDR             R0, [SP,#0x60+var_60]
CMP             R0, #0
BEQ             loc_217E2C
MOV             R1, #4
STRB            R10, [R4,#0x280]
STRB            R1, [R4,#0x27E]
MOV             R0, #7
STRB            R11, [R4,#0x27F]
STRB            R0, [R4,#0x281]
B               loc_217EEC
CMP             R8, #0
MOVNE           R0, #5
BEQ             loc_217E98
STRB            R0, [R4,#0x27E]
CMP             R0, #2
LDR             R11, =0xFFE683CC
MOVNE           R0, #4
MOVEQ           R0, #3
STRB            R10, [R4,#0x280]
CMP             R8, #0
STRB            R0, [R4,#0x27F]
BEQ             loc_217EA8
MOV             R0, #0x400
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, [R7]
LDR             R0, [R6]
LDR             R1, =0x30007
MOV             R2, #0
SUB             R0, R0, R11
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
BL              sub_503414
MOV             R0, #8
NOP
B               loc_217EE8
CMP             R9, #0
MOVNE           R0, #6
MOVEQ           R0, #2
B               loc_217E38
CMP             R9, #0
STRBEQ          R10, [R4,#0x281]
BEQ             loc_217EEC
MOV             R0, #0x400
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, [R7]
LDR             R0, [R6]
LDR             R1, =0x30005
MOV             R2, #0
SUB             R0, R0, R11
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
BL              sub_503414
MOV             R0, #9
STRB            R0, [R4,#0x281]
MOV             R0, R4
BL              sub_4972A4
LDRH            R1, [R5,#0x10]
LDR             R0, [R6]
BL              sub_52F508
MOV             R1, R0
MOV             R0, #1
STR             R1, [R4,#0x290]
STRB            R0, [R4,#0x27D]
B               loc_2180C4
LDR             R1, [SP,#0x60+var_2C]
MOV             R0, #5
MOV             R9, #0xB
CMP             R1, #2
BEQ             loc_217F34
CMP             R1, #3
BNE             loc_217F8C
B               loc_217F7C
STRB            R11, [R4,#0x27E]
MOV             R1, #0xA
STRB            R0, [R4,#0x27F]
STRB            R1, [R4,#0x280]
B               loc_217F88
DCD off_6B2B84
DCD off_6B8168
DCD off_6B7C1C
DCD sub_5A39D0
DCD off_6B7BFC
DCFS 1.0
DCD off_6B7BEC
DCD sub_5A2F28
DCD off_6B507C
DCD off_6CE970
DCD 0xFFE683CC
DCD 0x30007
DCD 0x30005
STRB            R11, [R4,#0x27E]
STRB            R0, [R4,#0x27F]
STRB            R9, [R4,#0x280]
STRB            R10, [R4,#0x281]
MOV             R1, R7
MOV             R0, SP
BL              sub_4800C0
LDR             R8, =flt_6E2A58
VLDR            S0, =0.0
ADD             R2, SP, #0x60+var_48
ADD             R1, SP, #0x60+var_54
LDR             R0, [R8,#(dword_6E2C40 - 0x6E2A58)]
VSTR            S0, [SP,#0x60+var_48]
STR             R0, [SP,#0x60+var_44]
VSTR            S0, [SP,#0x60+var_40]
LDR             R0, [R6]
BL              sub_529034
VLDR            S0, [SP,#0x60+var_60]
VLDR            S1, [SP,#0x60+var_54]
MOV             R1, SP
MOV             R0, R1
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x60+var_60]
VLDR            S0, [SP,#0x60+var_5C]
VLDR            S1, [SP,#0x60+var_50]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x60+var_5C]
VLDR            S0, [SP,#0x60+var_58]
VLDR            S1, [SP,#0x60+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x60+var_58]
BL              sub_480160
VLDR            S0, [R8,#(flt_6E2C34 - 0x6E2A58)]
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x110
BL              sub_5A2298
LDR             R0, =dword_6E132C
ADD             R5, R4, #0x1B8
LDR             R0, [R0]
TST             R0, #1
BNE             loc_218050
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_218050
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R7, =flt_711FD8
MOV             R0, R5
BL              sub_5A26D0
LDM             R7, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
VLDR            S1, =0.0039216
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R0, #0xFFFFFF00
REV             R5, R0
MOV             R0, R5,LSR#24
VMOV            S0, R0
ADD             R0, R4, #0x210
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S1
BL              sub_5A18EC
MOV             R0, R5,LSR#24
SUB             R0, R0, #0x100
VSTR            S17, [R4,#0x21C]
REV             R1, R0
VSTR            S17, [R4,#0x214]
VMOV.F32        S0, S16
STR             R1, [R4,#0x9C]
VLDR            S1, [R8,#(flt_6E2C34 - 0x6E2A58)]
MOV             R1, #0
ADD             R0, R4, #0x210
BL              sub_5A13F0
STRB            R9, [R4,#0x27D]
LDR             R0, [R6]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRH            R1, [R0,#(word_19D69E - 0x19D600)]
ADD             R1, R1, #1
STRH            R1, [R0,#(word_19D69E - 0x19D600)]
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, [SP,#0x60+arg_8]
CMP             R0, #0
ADDNE           R1, R4, #0x100
BLNE            sub_1CF9FC
ADD             SP, SP, #0x24 ; '$'
MOV             R0, R4
VPOP            {D8}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
