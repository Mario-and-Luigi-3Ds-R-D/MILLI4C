PUSH            {R4-R9,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S2, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0x24
LDR             R0, [R0]
VLDR            S0, [R4,#0x98]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S1, R0
ADD             R0, R4, #0x110
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VMUL.F32        S16, S0, S2
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R4, #0x24 ; '$'
STR             R0, [R4,#0x2C]
ADD             R0, R4, #0x1B8
STM             R3, {R1,R2}
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R4, #0x5C ; '\'
STR             R0, [R4,#0x64]
ADD             R0, R4, #0x210
STM             R3, {R1,R2}
BL              sub_5A176C
VLDR            S1, =255.0
MOV             R1, #0xFFFFFF00
VMUL.F32        S0, S0, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
VMOV.F32        S0, S16
ORR             R1, R1, R0
ADD             R0, R4, #0x244
REV             R1, R1
STR             R1, [R4,#0x9C]
BL              sub_5A176C
LDRB            R0, [R4,#0x27D]
CMP             R0, #0xF; switch 15 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_217310; jumptable 00217310 default case, case 0
DCD def_217310; jump table for switch statement
ADD             R0, R4, #0x110; jumptable 00217310 case 1
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
ADD             R0, R4, #0x1B8
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R0, =dword_6E132C
ADD             R5, R4, #0x1B8
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2173C0
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2173C0
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R6, =flt_711FD8
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R1, #0
LDR             R5, =flt_6E2A58
ADD             R0, R4, #0x110
VLDR            S0, [R5,#(flt_6E2C4C - 0x6E2A58)]
BL              sub_5A2708
VLDR            S2, =1.0
VLDR            S0, [R5,#(flt_6E2C58 - 0x6E2A58)]
VLDR            S1, [R5,#(flt_6E2C54 - 0x6E2A58)]
VLDR            S3, =180.0
VSUB.F32        S0, S0, S2
VLDR            S2, =0.0
MOV             R1, #0
ADD             R0, R4, #0x244
BL              sub_5A1DB8
MOV             R0, #2
NOP
B               loc_217B5C
ADD             R0, R4, #0x110; jumptable 00217310 case 2
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_217478
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_217478
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_6E2A58
LDR             R2, =flt_711FE4
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E2C5C - 0x6E2A58)]
ADD             R0, R4, #0x1B8
BL              sub_5A2074
MOV             R0, #3
NOP
B               loc_217B5C
ADD             R0, R4, #0x1B8; jumptable 00217310 case 3
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
MOV             R0, #0
STRB            R0, [R4,#0xF2]
LDRB            R2, [R4,#0x28C]
ADD             R1, R4, #0x200
CMP             R2, #0
BEQ             loc_2175AC
LDRH            R1, [R1,#0x82]
CMP             R1, #2
BCC             loc_2175C8
LDR             R1, [R4,#0x290]
CMP             R1, #0
BEQ             loc_2174FC
LDR             R2, [R1,#0x224]
CMP             R2, R4
STREQ           R0, [R1,#0x224]
LDR             R1, [R4,#0x290]
LDR             R2, [R1,#0x228]
CMP             R2, R4
STREQ           R0, [R1,#0x228]
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_21753C
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21753C
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R0, =flt_6E2A58
LDR             R2, =flt_711FD8
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E2C74 - 0x6E2A58)]
ADD             R0, R4, #0x1B8
BL              sub_5A2074
MOV             R2, #3
MOV             R0, #4
STRB            R2, [R4,#0x27F]
MOV             R1, #7
STRB            R0, [R4,#0x27E]
STRB            R1, [R4,#0x281]
LDR             R2, [R4,#0x288]
MOV             R1, #1
STR             R2, [R4,#0x284]
STRB            R1, [R4,#0xF2]
B               loc_217B5C
DCD off_6CE970
DCFS 0.0039062
DCFS 255.0
DCD dword_6E132C
DCFS 1.0
DCD flt_711FD8
DCD flt_6E2A58
DCFS 180.0
DCFS 0.0
DCD dword_6E1330
DCD flt_711FE4
LDRH            R0, [R1,#0x82]
CMP             R0, #0
BEQ             loc_2175C8
LDR             R0, [R4,#0x290]
LDR             R0, [R0,#0x228]
CMP             R0, R4
BEQ             def_217310; jumptable 00217310 default case, case 0
MOV             R0, #0xE
B               loc_217B5C
ADD             R0, R4, #0x1B8; jumptable 00217310 case 4
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_5EE554
CMP             R0, #5
LDR             R0, =dword_6E132C
MOVEQ           R7, #1
MOVNE           R7, #0
ADD             R5, R4, #0x1B8
LDR             R0, [R0]
TST             R0, #1
BNE             loc_217640
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_217640
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R6, =flt_711FD8
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
CMP             R7, #0
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R1, #0
LDR             R0, =flt_6E2A58
VLDRNE          S0, [R0,#(flt_6E2C84 - 0x6E2A58)]
VLDREQ          S0, [R0,#(flt_6E2C88 - 0x6E2A58)]
ADD             R0, R4, #0x110
BL              sub_5A2708
LDR             R0, =flt_6E2A58
VLDR            S2, =1.0
VLDR            S3, =180.0
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E2C80 - 0x6E2A58)]
VLDR            S1, [R0,#(flt_6E2C7C - 0x6E2A58)]
ADD             R0, R4, #0x244
VSUB.F32        S0, S0, S2
VLDR            S2, =0.0
BL              sub_5A1DB8
MOV             R0, #5
NOP
B               loc_217B5C
ADD             R0, R4, #0x110; jumptable 00217310 case 5
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_217704
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_217704
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_6E2A58
LDR             R2, =flt_711FE4
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E2C78 - 0x6E2A58)]
ADD             R0, R4, #0x1B8
BL              sub_5A2074
MOV             R0, #6
NOP
B               loc_217B5C
ADD             R0, R4, #0x1B8; jumptable 00217310 case 6
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R1, #0
MOVEQ           R0, #0xE
BEQ             loc_217578
ADD             SP, SP, #0x24 ; '$'; jumptable 00217310 default case, case 0
VPOP            {D8}
POP             {R4-R9,PC}
ADD             R0, R4, #0x110; jumptable 00217310 case 7
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
ADD             R0, R4, #0x1B8
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R0, =dword_6E132C
ADD             R5, R4, #0x1B8
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2177B8
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2177B8
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R6, =flt_711FD8
MOV             R0, R5
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R5, #0x1C
ADD             R5, R5, #4
STM             R3, {R0-R2}
STM             R5, {R0-R2}
MOV             R1, #0
LDR             R0, =flt_6E2A58
VLDR            S0, [R0,#(flt_6E2C50 - 0x6E2A58)]
ADD             R0, R4, #0x110
BL              sub_5A2708
MOV             R0, #8
NOP
B               loc_217B5C
ADD             R0, R4, #0x110; jumptable 00217310 case 8
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_21784C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_21784C
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_6E2A58
LDR             R2, =flt_711FE4
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E2C60 - 0x6E2A58)]
ADD             R0, R4, #0x1B8
BL              sub_5A2074
LDRB            R0, [R4,#0x27C]
TST             R0, #8
BEQ             loc_2179A4
LDR             R7, =off_6CE970
MOV             R8, #0
MOV             R0, #0x278
STR             R8, [SP,#0x48+var_40]
STR             R8, [SP,#0x48+var_3C]
LDRH            R1, [R0,R4]
LDR             R0, [R7]
BL              sub_52F368
MOV             R5, R0
NOP
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_2179A4
MOV             R0, #0x148
LDRSH           R0, [R0,R5]
CMP             R0, #0
BLE             loc_2179A4
LDR             R0, [R7]
ADD             R9, SP, #0x48+var_40
STR             R9, [SP,#0x48+var_48]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x34 ; '4'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_217968
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x48+var_38
LDR             R3, [R0,#0x28]
MOV             R0, R4
BLX             R3
LDR             R0, =dword_6CEAB8
LDR             R0, [R0]
TST             R0, #1
BNE             loc_217948
LDR             R0, =dword_6CEAB8
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_217948
LDR             R6, =dword_6CEABC
LDR             R0, =0x304D
BL              sub_11CA94
LDR             R0, [R0,#0x24]
MOV             R1, #0x64 ; 'd'
MUL             R0, R0, R1
ADD             R0, R0, R0,LSR#31
MOV             R0, R0,ASR#1
STR             R0, [R6]
SUB             R0, R6, #4
NOP
LDR             R0, =dword_6CEABC
LDR             R3, [SP,#0x48+var_40]
ADD             R2, SP, #0x48+var_38
MOV             R1, R5
LDR             R0, [R0]
STR             R0, [SP,#0x48+var_48]
ADD             R0, R4, #0x294
BL              sub_2A5070
LDR             R0, [R7]
STR             R9, [SP,#0x48+var_48]
LDRB            R1, [R5,#0x495]
MOV             R3, #1
MOV             R2, #0x33 ; '3'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_2179A4
LDR             R2, [SP,#0x48+var_40]
MOV             R3, #1
MOV             R1, #0
MOV             R0, R5
STR             R8, [SP,#0x48+var_48]
BL              sub_4F18FC
MOV             R0, #9
B               loc_217B5C
ADD             R0, R4, #0x1B8; jumptable 00217310 case 9
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R1, [R4,#0x2A0]
MOV             R0, #0
STRB            R0, [R4,#0xF2]
CMP             R1, #0
MOVNE           R0, #0xA
BNE             loc_217B5C
B               loc_2175C8
LDR             R0, [R4,#0x2A0]; jumptable 00217310 case 10
CMP             R0, #0
BNE             def_217310; jumptable 00217310 default case, case 0
B               loc_2175C8
ADD             R0, R4, #0x110; jumptable 00217310 case 11
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
ADD             R0, R4, #0x210
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
LDR             R0, =flt_6E2A58
MOV             R1, #0
VLDR            S0, [R0,#(flt_6E2C38 - 0x6E2A58)]
ADD             R0, R4, #0x110
BL              sub_5A2708
MOV             R0, #0xC
NOP
B               loc_217B5C
ADD             R0, R4, #0x110; jumptable 00217310 case 12
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
ADD             R1, R4, #0x24 ; '$'
MOV             R0, SP
BL              sub_4800C0
LDR             R5, =flt_6E2A58
VLDR            S16, =0.0
ADD             R2, SP, #0x48+var_30
ADD             R1, SP, #0x48+var_3C
LDR             R0, [R5,#(dword_6E2C44 - 0x6E2A58)]
VSTR            S16, [SP,#0x48+var_30]
STR             R0, [SP,#0x48+var_2C]
LDR             R0, =off_6CE970
VSTR            S16, [SP,#0x48+var_28]
LDR             R0, [R0]
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
VLDR            S0, [R5,#(flt_6E2C3C - 0x6E2A58)]
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x110
BL              sub_5A2074
VMOV.F32        S0, S16
VLDR            S1, [R5,#(flt_6E2C3C - 0x6E2A58)]
MOV             R1, #0
ADD             R0, R4, #0x210
BL              sub_5A1C9C
VLDR            S0, =1.0
VSTR            S16, [SP,#0x48+var_30]
VSTR            S0, [SP,#0x48+var_2C]
VSTR            S0, [SP,#0x48+var_28]
ADD             R2, SP, #0x48+var_30
VLDR            S0, [R5,#(flt_6E2C3C - 0x6E2A58)]
MOV             R1, #0
ADD             R0, R4, #0x1B8
BL              sub_5A2074
MOV             R0, #0xD
NOP
B               loc_217B5C
ADD             R0, R4, #0x110; jumptable 00217310 case 13
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
ADD             R0, R4, #0x210
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
ADD             R0, R4, #0x1B8
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_217310; jumptable 00217310 default case, case 0
MOV             R1, #0
MOV             R0, #0xE
STRB            R1, [R4,#0xF2]
STRB            R0, [R4,#0x27D]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4-R9,PC}
LDR             R0, [R4,#0x290]; jumptable 00217310 case 14
CMP             R0, #0
BEQ             loc_217B9C
LDR             R1, [R0,#0x224]
CMP             R1, R4
MOVEQ           R1, #0
STREQ           R1, [R0,#0x224]
LDR             R0, [R4,#0x290]
LDR             R1, [R0,#0x228]
CMP             R1, R4
MOVEQ           R1, #0
STREQ           R1, [R0,#0x228]
LDR             R0, [R4]
LDR             R1, [R0,#4]
ADD             SP, SP, #0x24 ; '$'
MOV             R0, R4
VPOP            {D8}
POP             {R4-R9,LR}
BX              R1
