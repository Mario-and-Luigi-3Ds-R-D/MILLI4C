PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R0, #0
SUB             SP, SP, #0x6C
MOV             R7, R0
MOV             R5, R0
MOV             R6, R0
STR             R0, [SP,#0x90+var_70]
STR             R0, [SP,#0x90+var_38]
LDR             R0, =off_6CE970
LDR             R9, =0xFFFF
LDR             R10, [R0]
MOV             R8, R9
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_157A44
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R10]; byte_19CF30
CMP             R0, #0
MOVEQ           R11, #0
BEQ             loc_157A48
MOV             R11, #1
LDRB            R0, [R4,#0x3B]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #0
STR             R0, [SP,#0x90+var_78]
LDR             R0, =off_6CE970
LDR             R10, [R0]
BL              sub_47FFCC
CMP             R0, #0
LDR             R0, =dword_6E26C4
BNE             loc_157A88
LDR             R1, =byte_19CF30
LDRB            R1, [R1,R10]; byte_19CF30
CMP             R1, #0
ADDEQ           R10, R0, #0x5C ; '\'
BEQ             loc_157A9C
LDR             R1, [R4,#8]
LDRB            R1, [R1,#0x495]
CMP             R1, #0
ADDEQ           R10, R0, #0x2C ; ','
ADDNE           R10, R0, #0x44 ; 'D'
CMP             R11, #0
LDRNE           R2, =0x30086
LDRSB           R1, [R4,#0x38]
LDR             R0, =0xFFE683CC
ORRNE           R12, R2, R2,ASR#16
LDREQ           R2, =0x3008E
ADD             R1, R1, #1
ORREQ           R12, R2, R2,ASR#16
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_157AC0; jumptable 00157AC0 default case, case 1
DCD loc_157C70; jump table for switch statement
LDR             R8, =off_6CE970; jumptable 00157AC0 case 2
LDR             R1, [R4,#8]
MOV             R3, #0
LDR             R12, [R8]
LDRH            R1, [R1,#0x10]
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, [R10,#4]
MOV             R7, #1
STR             R0, [SP,#0x90+var_70]
LDR             R8, [R8]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_157B30
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R8]; byte_19CF30
CMP             R0, #0
BEQ             loc_157B34
MOV             R0, #1
EOR             R0, R0, #1
CMP             R11, #0
STR             R0, [SP,#0x90+var_38]
BNE             loc_157BCC
B               loc_157BD4
MOV             R8, #4
B               def_157AC0; jumptable 00157AC0 default case, case 1
LDR             R12, =off_6CE970; jumptable 00157AC0 case 3
LDR             R1, [R4,#8]
MOV             R3, #0
LDR             R12, [R12]
LDRH            R1, [R1,#0x10]
SUB             R0, R12, R0
BL              sub_503808
MOV             R5, #1
STR             R5, [SP,#0x90+var_38]
LDR             R0, [R10]
CMP             R11, #0
MOV             R6, R5
MOV             R7, #2
STR             R0, [SP,#0x90+var_70]
BNE             loc_157BCC
B               loc_157BD4
LDR             R12, =off_6CE970; jumptable 00157AC0 case 4
LDR             R1, [R4,#8]
MOV             R3, #0
LDR             R12, [R12]
LDRH            R1, [R1,#0x10]
SUB             R0, R12, R0
BL              sub_503808
MOV             R5, #1
STR             R5, [SP,#0x90+var_38]
LDR             R0, [R10,#0x14]
CMP             R11, #0
MOV             R6, R5
MOV             R7, #2
STR             R0, [SP,#0x90+var_70]
BEQ             loc_157BD4
MOV             R9, #3
B               loc_157B48
MOV             R9, #0x65 ; 'e'
B               loc_157B48
LDR             R12, =off_6CE970; jumptable 00157AC0 case 5
LDR             R1, [R4,#8]
MOV             R3, #0
LDR             R12, [R12]
LDRH            R1, [R1,#0x10]
SUB             R0, R12, R0
BL              sub_503808
MOV             R5, #1
STR             R5, [SP,#0x90+var_38]
LDR             R0, [R10,#0x10]
CMP             R11, #0
MOV             R6, R5
MOV             R7, #3
STR             R0, [SP,#0x90+var_70]
BNE             loc_157C60
B               loc_157C68
MOV             R8, #6
B               def_157AC0; jumptable 00157AC0 default case, case 1
LDR             R12, =off_6CE970; jumptable 00157AC0 case 6
LDR             R1, [R4,#8]
MOV             R3, #0
LDR             R12, [R12]
LDRH            R1, [R1,#0x10]
SUB             R0, R12, R0
BL              sub_503808
MOV             R5, #1
STR             R5, [SP,#0x90+var_38]
LDR             R0, [R10,#0xC]
CMP             R11, #0
MOV             R6, R5
MOV             R7, #4
STR             R0, [SP,#0x90+var_70]
BEQ             loc_157C68
MOV             R9, #5
B               loc_157C1C
MOV             R9, #0x66 ; 'f'
B               loc_157C1C
MOV             R2, R12; jumptable 00157AC0 case 0
LDR             R12, =off_6CE970
LDR             R1, [R4,#8]
MOV             R3, #0
LDR             R12, [R12]
LDRH            R1, [R1,#0x10]
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, [R10,#8]
MOV             R9, #7
MOV             R8, #8
STR             R0, [SP,#0x90+var_70]
LDR             R0, =off_6CE970; jumptable 00157AC0 default case, case 1
LDR             R0, [R0]
BL              sub_52FC34
MOV             R10, R0
ADD             R0, R0, #0x100
STR             R0, [SP,#0x90+var_40]
LDRSB           R0, [R0,#0x81]
CMP             R7, #0
MOV             R1, #1
STR             R0, [SP,#0x90+var_74]
MOV             R0, #0
MOVNE           R2, #1
MOVEQ           R2, #0
STR             R0, [SP,#0x90+var_88]
STR             R1, [SP,#0x90+var_8C]
STR             R2, [SP,#0x90+var_90]
LDR             R3, [R4,#8]
LDR             R2, [SP,#0x90+var_70]
MOV             R1, R10
ADD             R0, SP, #0x90+var_30
BL              sub_4F1F24
ADD             R3, SP, #0x90+var_30
LDM             R3, {R0-R2}
ADD             R3, SP, #0x90+var_64
STM             R3, {R0-R2}
MOV             R1, #0
LDR             R0, [SP,#0x90+var_78]
STR             R1, [SP,#0x90+var_78]
ANDS            R0, R0, R6
STR             R0, [SP,#0x90+var_70]
LDREQ           R0, =off_6CE970
LDREQ           R6, [R0]
BEQ             loc_157D50
MOV             R0, #1
STR             R0, [SP,#0x90+var_78]
STRB            R0, [R10,#0x181]
MOV             R0, #0
STR             R0, [SP,#0x90+var_58]
STR             R0, [SP,#0x90+var_54]
LDRB            R0, [R4,#0x3B]
CMP             R0, #1
CMPEQ           R7, #4
BNE             loc_157DE8
B               loc_157D80
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_157D30
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]; byte_19CF30
CMP             R0, #0
LDRBEQ          R0, [R4,#0x38]
CMPEQ           R0, #5
BNE             loc_157D30
B               loc_157D24
LDR             R1, =off_6CE970
LDR             R0, [R4,#8]
MOV             R6, #1
ADD             R2, SP, #0x90+var_58
LDR             R12, [R1]
STR             R2, [SP,#0x90+var_8C]
STR             R6, [SP,#0x90+var_90]
LDRB            R1, [R0,#0x495]
MOV             R3, #0xA
MOV             R2, R6
MOV             R0, R12
BL              sub_5EEA48
CMP             R0, #0
NOP
BEQ             loc_157DE8
LDR             R0, [SP,#0x90+var_40]
LDRSH           R1, [R0,#0x48]
LDR             R0, [SP,#0x90+var_64]
CMP             R1, R0
BLE             loc_157DE8
LDR             R2, =dword_6D1F40
LDR             R0, [SP,#0x90+var_58]
MOV             R1, #0x64 ; 'd'
BL              sub_480134
CMP             R0, #0
STRBNE          R6, [R4,#0x3C]
LDR             R0, [SP,#0x90+var_70]
CMP             R0, #0
BNE             loc_157E0C
LDRB            R0, [R4,#0x3B]
CMP             R0, #1
BNE             loc_157E14
LDRB            R0, [R4,#0x3C]
CMP             R0, #0
BEQ             loc_157E14
MOV             R0, #1
B               loc_157E18
MOV             R0, #0
STRB            R0, [R10,#0x264]
LDR             R0, =off_6CE970
MOV             R6, #0xFFFFFFFF
LDR             R0, [R0]
STR             R0, [SP,#0x90+var_90]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_157ED0
LDR             R0, [SP,#0x90+var_90]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#(byte_19CF30 - 0x19CF00)]
CMP             R0, #0
BNE             loc_157ED0
LDRSB           R0, [R4,#0x38]
CMP             R0, #2
BEQ             loc_157E6C
CMP             R0, #5
BNE             loc_157EC8
B               loc_157E90
LDR             R0, =unk_6E1FD0
VLDR            S0, [R0,#(dword_6E2294 - 0x6E1FD0)]
ADD             R0, R0, #0x2BC
VLDM            R0, {S1-S2}
VADD.F32        S1, S1, S2
VADD.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
B               loc_157EB0
LDR             R0, =unk_6E1FD0
VLDR            S0, [R0,#(flt_6E22E8 - 0x6E1FD0)]
ADD             R0, R0, #0x310
VLDM            R0, {S1-S2}
VADD.F32        S1, S1, S2
VADD.F32        S0, S1, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
CMP             R0, #0
BEQ             loc_157EC8
ADD             R1, R10, #0x200
LDRH            R6, [R1,#0x44]
STRH            R0, [R1,#0x44]
B               loc_157ED0
MOV             R0, R10
BL              sub_500194
CMP             R11, #0
BEQ             loc_157EEC
ADD             R0, R4, #0x2C ; ','
ADD             R3, SP, #0x90+var_50
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
B               loc_157EFC
MOV             R2, #1
ADD             R1, SP, #0x90+var_50
MOV             R0, R10
BL              sub_5EC884
LDR             R0, [R4,#8]
ADD             R1, SP, #0x90+var_50
VLDR            S0, [SP,#0x90+var_38]
ADD             R2, SP, #0x90+var_8C
MOV             R11, #3
STR             R1, [SP,#0x90+var_90]
STM             R2, {R0,R11}
MOV             R3, #0
VSTR            S0, [SP,#0x90+var_84]
LDR             R0, [R10]
ADD             R2, SP, #0x90+var_64
MOV             R1, R10
LDR             R12, [R0,#0x4C]
ADD             R0, SP, #0x90+var_34
BLX             R12
LDR             R0, [SP,#0x90+var_78]
CMP             R0, #0
LDRNE           R0, [SP,#0x90+var_74]
STRBNE          R0, [R10,#0x181]
CMN             R6, #1
MOVNE           R0, #0x244
STRHNE          R6, [R0,R10]
MOV             R0, #1
CMP             R7, #0
STRB            R0, [R4,#0x39]
BEQ             loc_157FD0
LDRB            R0, [R4,#0x3B]
CMP             R0, #1
BHI             loc_157FF0
LDR             R0, =unk_6E1FD0
MOV             R3, #0
ADD             R1, R0, #0x1E8
LDR             R0, [R0,#(dword_6E21C0 - 0x6E1FD0)]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x90+var_70]
ADD             R0, SP, #0x90+var_78
STM             R0, {R1,R2}
ADD             R2, SP, #0x90+var_78
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R12, [R1,#0x30]
ADD             R1, SP, #0x90+var_3C
BLX             R12
LDR             R0, =off_6CE970
LDR             R3, [R4,#8]
MOV             R2, #2
MOV             R1, R7
LDR             R0, [R0]
STR             R2, [SP,#0x90+var_8C]
ADD             R2, SP, #0x90+var_3C
STR             R5, [SP,#0x90+var_90]
BL              sub_52C114
LDRB            R0, [R4,#0x3B]
CMP             R0, #1
BHI             loc_157FF0
LDR             R0, =off_6CE970
MOV             R2, #1
MOV             R1, R7
LDR             R0, [R0]
BL              sub_52C6FC
LDR             R5, =0xFFFF
CMP             R9, R5
BEQ             loc_15801C
LDR             R0, =off_6CE970
MOV             R1, #0
MOV             R3, #1
ADD             R2, SP, #0x90+var_50
LDR             R0, [R0]
STR             R1, [SP,#0x90+var_90]
MOV             R1, R9
BL              sub_52AEA8
LDR             R0, [SP,#0x90+var_40]
LDRH            R0, [R0,#0xE4]
MOV             R0, R0,LSL#28
CMP             R11, R0,LSR#30
CMPNE           R8, R5
BEQ             loc_15807C
LDR             R0, =off_6CE970
LDR             R5, [R0]
LDR             R0, [R10]
LDR             R1, [R0,#0x40]
MOV             R0, R10
BLX             R1
MOV             R6, R0
BL              sub_4635D8
MOV             R1, #0
MOV             R3, R0
STR             R1, [SP,#0x90+var_90]
MOV             R2, R6
MOV             R1, R8
MOV             R0, R5
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
LDRB            R0, [R4,#0x3B]
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R0, #3
STRB            R0, [R4,#0x3B]
MOVCS           R0, #0
STRBCS          R0, [R4,#0x3C]
ADD             SP, SP, #0x6C ; 'l'
POP             {R4-R11,PC}
