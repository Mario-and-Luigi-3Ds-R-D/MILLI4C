PUSH            {R4-R9,LR}
MOV             R4, R1
MOV             R8, R0
MOV             R6, R2
LDR             R0, =0x307
LDR             R9, =dword_6E1340
MOV             R5, R3
VPUSH           {D8-D9}
TST             R0, R3
SUB             SP, SP, #0xD4
VLDR            S16, =0.0
VLDR            S17, =1.0
BEQ             loc_149244
LDR             R0, [R4,#0x20]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_149220
LDR             R0, [R4,#0xEC]
TST             R0, #0xFF
BEQ             loc_149220
MOV             R3, #0
ADD             R2, SP, #0x100+var_D4
ADD             R1, SP, #0x100+var_C0
MOV             R0, R4
BL              sub_5C4370
MOV             R7, R0
TST             R5, #4
BEQ             loc_149324
ADD             R0, R4, #0x5C ; '\'
ADD             R3, SP, #0x100+var_E0
LDM             R0, {R0-R2}
TST             R5, #0x10
STM             R3, {R0-R2}
BEQ             loc_1492B8
B               loc_1492E8
LDR             R0, [R9]
TST             R0, #1
BNE             loc_1492A0
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1492A0
LDR             R0, =flt_71203C
ADD             R1, R0, #0x10
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_712040 - 0x71203C)]
VSTR            S16, [R0,#(flt_712044 - 0x71203C)]
VSTR            S16, [R0,#(flt_712048 - 0x71203C)]
VSTM            R1, {S16-S17}
ADD             R1, R0, #0x24 ; '$'
VSTR            S16, [R0,#(flt_712054 - 0x71203C)]
VSTR            S16, [R0,#(flt_712058 - 0x71203C)]
VSTR            S16, [R0,#(flt_71205C - 0x71203C)]
VSTM            R1, {S16-S17}
VSTR            S16, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
MOV             R0, R8
BL              sub_1169CC
NOP
NOP
B               loc_14977C
LDRB            R0, [R4,#0xF3]
CMP             R0, #0
BEQ             loc_1492D0
VLDR            S0, [SP,#0x100+var_E0]
VNEG.F32        S0, S0
VSTR            S0, [SP,#0x100+var_E0]
LDRB            R0, [R4,#0xF4]
CMP             R0, #0
BEQ             loc_1492E8
VMOV            S0, R1
VNEG.F32        S0, S0
VSTR            S0, [SP,#0x100+var_DC]
CMP             R7, #0
BEQ             loc_149370
VLDR            S0, [SP,#0x100+var_E0]
VLDR            S1, [SP,#0x100+var_D4]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_E0]
VLDR            S0, [SP,#0x100+var_DC]
VLDR            S1, [SP,#0x100+var_D0]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_DC]
VMOV            S0, R2
VLDR            S1, [SP,#0x100+var_CC]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_D8]
B               loc_149370
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_149360
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_149360
LDR             R0, =flt_711FD8
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S17, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R2, =flt_711FD8
ADD             R3, SP, #0x100+var_E0
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
TST             R5, #2
VLDR            S18, =0.017453
BEQ             loc_149468
ADD             R0, R4, #0x44 ; 'D'
VLDM            R0, {S0-S2}
MOV             R0, R8
VMUL.F32        S0, S0, S18
VMUL.F32        S1, S1, S18
VMUL.F32        S2, S2, S18
BL              sub_462C40
TST             R5, #0x20
NOP
BEQ             loc_1494E8
TST             R5, #4
BEQ             loc_1493E0
VLDR            S0, [R4,#0x50]
VLDR            S1, [SP,#0x100+var_E0]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_90]
VLDR            S0, [R4,#0x54]
VLDR            S1, [SP,#0x100+var_DC]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_8C]
VLDR            S0, [R4,#0x58]
VLDR            S1, [SP,#0x100+var_D8]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_88]
B               loc_1493F0
ADD             R0, R4, #0x50 ; 'P'
ADD             R3, SP, #0x100+var_90
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
MOV             R2, #0
ADD             R1, SP, #0x100+var_80
MOV             R0, R4
BL              sub_5C4FB8
MOVS            R1, R0
NOP
BEQ             loc_149418
ADD             R2, SP, #0x100+var_90
MOV             R0, R2
BL              sub_1169FC
ADD             R0, SP, #0x100+var_90
VLDR            S0, [SP,#0x100+var_88]
ADD             R3, SP, #0x100+var_EC
VLDM            R0, {S1-S2}
VNEG.F32        S0, S0
MOV             R1, R8
ADD             R2, SP, #0x100+var_EC
VNEG.F32        S1, S1
VNEG.F32        S2, S2
VSTR            S0, [SP,#0x100+var_E4]
MOV             R0, R1
VSTM            R3, {S1-S2}
BL              sub_142344
MOV             R2, R8
ADD             R1, SP, #0x100+var_90
MOV             R0, R2
BL              sub_142328
NOP
NOP
B               loc_1494E8
LDR             R0, [R9]
TST             R0, #1
BNE             loc_1494C4
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1494C4
LDR             R0, =flt_71203C
ADD             R1, R0, #0x10
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_712040 - 0x71203C)]
VSTR            S16, [R0,#(flt_712044 - 0x71203C)]
VSTR            S16, [R0,#(flt_712048 - 0x71203C)]
VSTM            R1, {S16-S17}
ADD             R1, R0, #0x24 ; '$'
VSTR            S16, [R0,#(flt_712054 - 0x71203C)]
VSTR            S16, [R0,#(flt_712058 - 0x71203C)]
VSTR            S16, [R0,#(flt_71205C - 0x71203C)]
VSTM            R1, {S16-S17}
VSTR            S16, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R0, =flt_71203C
ADD             R1, R0, #0x20 ; ' '
VLDM            R0, {S0-S7}
VSTM            R8, {S0-S7}
LDR             R0, [R0,#(flt_712068 - 0x71203C)]
LDM             R1, {R1-R3}
STR             R0, [R8,#0x2C]
ADD             R0, R8, #0x20 ; ' '
STM             R0, {R1-R3}
CMP             R7, #0
BEQ             loc_149500
MOV             R2, R8
ADD             R1, SP, #0x100+var_C0
MOV             R0, R2
BL              sub_141F30
TST             R5, #4
BEQ             loc_149518
MOV             R1, R8
ADD             R2, SP, #0x100+var_E0
MOV             R0, R1
BL              sub_14209C
TST             R5, #0xF00
BEQ             loc_1496CC
TST             R5, #0x200
BEQ             loc_1495B8
ADD             R0, R4, #0x5C ; '\'
VLDR            S19, [R4,#0x64]
TST             R5, #0x400
VLDM            R0, {S16-S17}
BNE             loc_149554
LDRB            R0, [R4,#0xF3]
CMP             R0, #0
LDRB            R0, [R4,#0xF4]
VNEGNE.F32      S16, S16
CMP             R0, #0
VNEGNE.F32      S17, S17
CMP             R7, #0
BEQ             loc_149570
ADD             R0, SP, #0x100+var_D4
VLDM            R0, {S0-S2}
VMUL.F32        S16, S16, S0
VMUL.F32        S17, S17, S1
VMUL.F32        S19, S19, S2
VLDR            S0, [R6]
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x100+var_FC]
VLDR            S0, [R6,#4]
VMUL.F32        S0, S0, S17
VSTR            S0, [SP,#0x100+var_F8]
VLDR            S0, [R6,#8]
VMUL.F32        S0, S0, S19
VSTR            S0, [SP,#0x100+var_F4]
B               loc_1495C4
DCD 0x307
DCD dword_6E1340
DCFS 0.0
DCFS 1.0
DCD flt_71203C
DCD dword_6E132C
DCD flt_711FD8
DCFS 0.017453
LDM             R6, {R0-R2}
ADD             R3, SP, #0x100+var_FC
STM             R3, {R0-R2}
TST             R5, #0x100
BEQ             loc_1496D8
ADD             R0, R4, #0x44 ; 'D'
VLDM            R0, {S0-S2}
ADD             R0, SP, #0x100+var_90
VMUL.F32        S0, S0, S18
VMUL.F32        S1, S1, S18
VMUL.F32        S2, S2, S18
BL              sub_462C40
ADD             R0, R4, #0x50 ; 'P'
TST             R5, #0x200
VLDMEQ          R0, {S16-S18}
BEQ             loc_149608
VLDM            R0, {S0-S2}
VMUL.F32        S16, S0, S16
VMUL.F32        S17, S1, S17
VMUL.F32        S18, S2, S19
VLDR            S0, [SP,#0x100+var_FC]
ADD             R2, SP, #0x100+var_FC
ADD             R1, SP, #0x100+var_90
MOV             R0, R2
VSUB.F32        S0, S0, S16
VSTR            S0, [SP,#0x100+var_FC]
VLDR            S0, [SP,#0x100+var_F8]
VSUB.F32        S0, S0, S17
VSTR            S0, [SP,#0x100+var_F8]
VLDR            S0, [SP,#0x100+var_F4]
VSUB.F32        S0, S0, S18
VSTR            S0, [SP,#0x100+var_F4]
BL              sub_1169FC
VLDR            S0, [SP,#0x100+var_FC]
CMP             R7, #0
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x100+var_FC]
VLDR            S0, [SP,#0x100+var_F8]
VADD.F32        S0, S0, S17
VSTR            S0, [SP,#0x100+var_F8]
VLDR            S0, [SP,#0x100+var_F4]
VADD.F32        S0, S0, S18
VSTR            S0, [SP,#0x100+var_F4]
BEQ             loc_149684
ADD             R2, SP, #0x100+var_FC
ADD             R1, SP, #0x100+var_C0
MOV             R0, R2
BL              sub_1169FC
NOP
NOP
B               loc_1496D8
MOV             R2, #0
ADD             R1, SP, #0x100+var_60
MOV             R0, R4
BL              sub_5C4FB8
MOVS            R1, R0
NOP
BEQ             loc_1496B8
ADD             R2, SP, #0x100+var_FC
MOV             R0, R2
BL              sub_1169FC
NOP
NOP
B               loc_1496D8
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x10C000
ADD             R1, R1, #0x550
B               loc_1496A0
LDM             R6, {R0-R2}
ADD             R3, SP, #0x100+var_FC
STM             R3, {R0-R2}
TST             R5, #1
BEQ             loc_14976C
TST             R5, #8
LDRBEQ          R0, [R4,#0xF0]
CMPEQ           R0, #1
BNE             loc_149724
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x100+var_60
LDR             R3, [R0,#0x28]
MOV             R0, R4
BLX             R3
ADD             R1, SP, #0x100+var_60
ADD             R0, SP, #0x100+var_90
BL              sub_47EF50
MOV             R2, R8
ADD             R1, SP, #0x100+var_90
MOV             R0, R2
BL              sub_141F30
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x100+var_F0
LDR             R3, [R0,#0x24]
MOV             R0, R4
BLX             R3
VLDR            S0, [SP,#0x100+var_FC]
VLDR            S1, [SP,#0x100+var_F0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_FC]
VLDR            S0, [SP,#0x100+var_F8]
VLDR            S1, [SP,#0x100+var_EC]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_F8]
VLDR            S0, [SP,#0x100+var_F4]
VLDR            S1, [SP,#0x100+var_E8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x100+var_F4]
MOV             R2, R8
ADD             R1, SP, #0x100+var_FC
MOV             R0, R2
BL              sub_142328
ADD             SP, SP, #0xD4
MOV             R0, R8
VPOP            {D8-D9}
POP             {R4-R9,PC}
