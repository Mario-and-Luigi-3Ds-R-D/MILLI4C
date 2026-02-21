PUSH            {R0,R4-R11,LR}
SUB             SP, SP, #0x70
MOV             R1, #1
LDR             R0, [SP,#0x98+var_28]
BL              sub_52CF74
CMP             R0, #0
BNE             loc_1D1448
MOV             R0, #0
STR             R0, [SP,#0x98+var_6C]
LDR             R1, =0x10646C
LDR             R0, [SP,#0x98+var_28]
ADD             R0, R0, R1
LDR             R0, [R0,#4]
CMP             R0, #0
BEQ             loc_1D0C68
SUBS            R0, R0, #0x1AC
ADDNE           R4, R0, #0x1AC
BNE             loc_1D0C6C
MOV             R4, #0
LDR             R0, [SP,#0x98+var_28]
LDR             R1, =0x1064C8
CMP             R4, #0
ADD             R2, R0, #0x100000
ADD             R2, R2, #0x6000
ADD             R0, R0, R1
MOV             R6, #0
STR             R0, [SP,#0x98+var_30]
STR             R2, [SP,#0x98+var_3C]
BEQ             loc_1D0D10
CMP             R4, #0
MOVEQ           R5, #0
SUBNE           R5, R4, #0x1AC
LDR             R0, [R5,#0x1A8]
CMP             R0, #0
BNE             loc_1D0D04
MOV             R0, R5
BL              sub_4F1BB8
MOVS            R1, R0
NOP
BEQ             loc_1D0D04
ADD             R0, SP, #0x98+var_90
BL              sub_33807C
LDR             R0, [SP,#0x98+var_3C]
MOV             R3, #0
MOV             R2, R3
LDR             R1, [R0,#0x3B4]
MOV             R0, #0x1D4
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1D0CF8
MOV             R2, R5
ADD             R1, SP, #0x98+var_90
BL              sub_33831C
ADD             R1, R0, #0x1C4
LDR             R0, [SP,#0x98+var_30]
BL              sub_1CF9FC
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_1D0C94
MOV             R0, #0
STR             R0, [SP,#0x98+var_48]
STR             R0, [SP,#0x98+var_44]
LDR             R0, [SP,#0x98+var_28]
BL              sub_52FA94
CMP             R0, #0
NOP
BEQ             loc_1D0D70
LDRH            R0, [R0,#0x10]
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             loc_1D0D70
LDR             R0, [SP,#0x98+var_28]
BL              sub_528E64
CMP             R0, #0
STR             R0, [SP,#0x98+var_40]
BEQ             loc_1D0E54
LDR             R0, [SP,#0x98+var_28]
BL              sub_5EE448
CMP             R0, #4
NOP
BEQ             loc_1D0D78
B               loc_1D0E54
STR             R0, [SP,#0x98+var_40]
B               loc_1D0E54
LDR             R4, [SP,#0x98+var_40]
LDR             R0, =byte_19CF26
LDR             R1, [SP,#0x98+var_28]
ADD             R6, R4, #0x400
LDRH            R2, [R6,#0xA8]
ADD             R5, R1, R0
CMP             R2, #0
BEQ             loc_1D0E40
MOV             R7, #0
STR             R7, [SP,#0x98+var_98]
LDRB            R1, [R4,#0x495]
LDR             R0, [SP,#0x98+var_28]
MOV             R3, #1
MOV             R2, #0x39 ; '9'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1D0DCC
LDRB            R0, [R5]
CMP             R0, #4
BEQ             loc_1D0DFC
STR             R7, [SP,#0x98+var_98]
LDRB            R1, [R4,#0x495]
LDR             R0, [SP,#0x98+var_28]
MOV             R3, #1
MOV             R2, #0x3A ; ':'
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1D0E04
LDRB            R0, [R5]
CMP             R0, #4
BCS             loc_1D0E04
MOV             R8, #1
B               loc_1D0E08
MOV             R8, #0
MOV             R0, R4
BL              sub_5EC344
TST             R0, R8
NOP
BEQ             loc_1D0E3C
STR             R7, [SP,#0x98+var_98]
LDRSH           R2, [R6,#0xA8]
MOV             R3, #1
MOV             R1, #0
MOV             R0, R4
BL              sub_4F18FC
MOV             R0, #1
STR             R0, [SP,#0x98+var_6C]
STRH            R7, [R6,#0xA8]
LDR             R1, [SP,#0x98+var_6C]
MOV             R0, #0
STRB            R0, [R5]
CMP             R1, #0
BNE             loc_1D1448
LDR             R1, =sub_47D828
MOV             R3, #2
MOV             R2, #8
ADD             R0, SP, #0x98+var_58
BLX             sub_1002F4
LDR             R0, [SP,#0x98+var_40]
MOV             R10, #1
CMP             R0, #0
BEQ             loc_1D1058
LDR             R1, [SP,#0x98+var_40]
MOV             R2, #0
STR             R2, [SP,#0x98+var_38]
STR             R2, [SP,#0x98+var_34]
LDRH            R2, [R1,#0x10]
ADD             R0, SP, #0x98+var_38
ADD             R2, R0, R2,LSL#2
SUB             R2, R2, #0x4000
STR             R1, [R2]
LDR             R1, [SP,#0x98+var_40]
LDR             R1, [R1,#0x2A8]
CMP             R1, #0
BEQ             loc_1D0EBC
LDRH            R2, [R1,#0x10]
ADD             R2, R0, R2,LSL#2
SUB             R2, R2, #0x4000
STR             R1, [R2]
MOV             R1, #0
ADD             R11, SP, #0x98+var_48
STR             R1, [SP,#0x98+var_2C]
LDR             R1, [SP,#0x98+var_2C]
ADD             R0, SP, #0x98+var_38
LDR             R8, [R0,R1,LSL#2]
CMP             R8, #0
BEQ             loc_1D1040
LDR             R0, =unk_6543C0
ADD             R1, SP, #0x98+var_58
LDR             R7, =unk_653FC0
ADD             R4, SP, #0x98+var_64
LDR             R3, [R0,#(off_654444 - 0x6543C0)]!
ADD             R9, R7, #2
LDR             R2, [R0,#(dword_65444C - 0x654444)]
LDR             R0, [SP,#0x98+var_2C]
STR             R3, [SP,#0x98+var_68]
ADD             R0, R1, R0,LSL#3
ADD             R1, R0, #4
STR             R1, [SP,#0x98+var_5C]
STM             R4, {R0,R2}
LDRB            R0, [R7]
BL              sub_4E4524
ADD             R0, R8, R0,LSL#8
ADD             R3, R0, #0x400
ADD             R4, R0, #0x400
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2B8
MOV             R5, #0
LDR             R1, [R0,#4]
ADD             R0, R0, #4
ADD             R3, R3, #0x2BC
CMP             R1, #0
MOVHI           R5, R1
LDR             R1, [R0,#4]
MOV             R12, #0xFFFFFFFF
ADD             R4, R4, #0x3BC
MOV             R2, #0x1F
LDR             R6, [R0,#8]!
CMP             R5, R1
MOVCC           R5, R1
LDR             R1, [R0,#4]
CMP             R5, R6
MOVCC           R5, R6
SUBS            R2, R2, #1
BNE             loc_1D0F54
SUB             R0, R4, R3
ADDS            R0, R12, R0,ASR#2
BMI             loc_1D0F8C
LDR             R0, [R3,R0,LSL#2]
CMP             R0, R5
MOVHI           R5, R0
CMP             R5, #0
ADDNE           R4, SP, #0x98+var_68
ADDNE           R6, SP, #0x98+var_58
BEQ             loc_1D1020
MOV             R0, R8
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D1014
LDRB            R2, [R7]
LDRB            R3, [R4]
STRD            R10, R11, [SP,#0x98+var_98]
LDRB            R1, [R8,#0x495]
LDR             R0, [SP,#0x98+var_28]
BL              sub_5EEA48
CMP             R0, #0
NOP
BEQ             loc_1D1014
LDR             R0, [R8]
LDR             R1, [R0,#0x30]
MOV             R0, R8
BLX             R1
STR             R0, [SP,#0x98+var_7C]
LDR             R1, [SP,#0x98+var_48]
MOV             R0, R5
BL              sub_586850
MOV             R1, R0
LDR             R0, [R4,#4]
LDR             R3, [SP,#0x98+var_7C]
MOV             R2, #0
LDR             R0, [R0]
BL              sub_47FEF8
LDR             R1, [R4,#4]
STR             R0, [R1]
ADD             R4, R4, #8
CMP             R4, R6
BNE             loc_1D0F9C
ADD             R7, R7, #1
CMP             R7, R9
BNE             loc_1D0F10
ADD             R0, R8, #0x400
ADD             R0, R0, #0x2BC
MOV             R2, #0x200
MOV             R1, #0
BL              sub_110BE4
LDR             R0, [SP,#0x98+var_2C]
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R0, #2
STR             R0, [SP,#0x98+var_2C]
BCC             loc_1D0EC8
LDR             R0, =0x10645C
LDR             R1, [SP,#0x98+var_28]
MOV             R9, #0
ADD             R0, R0, R1
STR             R0, [SP,#0x98+var_80]
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R6, #0
ADDNE           R6, R0, #0x1AC
CMP             R6, #0
BEQ             loc_1D10F4
LDR             R8, =0x3E7
ADD             R11, SP, #0x98+var_58
MOV             R7, R9
CMP             R6, #0
MOVEQ           R0, #0
SUBNE           R0, R6, #0x1AC
ADD             R5, R0, #0x400
LDRH            R1, [R0,#0x10]
MOV             R3, R8
MOV             R2, #0
ADD             R4, R11, R1,LSL#3
SUB             R4, R4, #0x8000
LDRH            R1, [R5,#0xAC]
LDR             R0, [R4]
BL              sub_47FEF8
STR             R0, [R4]
STRH            R7, [R5,#0xAC]
LDRH            R1, [R5,#0xB0]
LDR             R0, [R4,#4]
MOV             R3, R8
MOV             R2, #0
BL              sub_47FEF8
STR             R0, [R4,#4]
STRH            R7, [R5,#0xB0]
LDR             R6, [R6,#8]
CMP             R6, R9
BNE             loc_1D1094
MOV             R4, #0
ADD             R8, SP, #0x98+var_58
LDR             R0, [SP,#0x98+var_28]
ADD             R1, R4, #0x1000
BL              sub_52F368
MOV             R6, R0
ADD             R5, R8, R4,LSL#3
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D1170
LDR             R0, [R6]
LDR             R1, [R0,#0x28]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_1D1170
LDR             R1, [R5]
CMP             R1, #0
BGT             loc_1D1150
LDR             R0, [R5,#4]
CMP             R0, #0
BLE             loc_1D1170
STR             R9, [SP,#0x98+var_98]
LDR             R2, [R5,#4]
MOV             R3, #1
MOV             R0, R6
BL              sub_4F18FC
CMP             R0, #0
MOVNE           R0, #1
STRNE           R0, [SP,#0x98+var_6C]
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, #2
BCC             loc_1D10FC
LDR             R0, [SP,#0x98+var_6C]
CMP             R0, #0
BNE             loc_1D1448
LDR             R0, [SP,#0x98+var_40]
CMP             R0, #0
MOVNE           R8, #0
ADDNE           R11, SP, #0x98+var_48
BEQ             loc_1D12E4
LDR             R0, [SP,#0x98+var_28]
ORR             R1, R8, #0x1000
BL              sub_52F368
MOV             R5, R0
NOP
BL              sub_5EC344
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_1D1290
ADD             R7, R5, R4
LDRB            R0, [R7,#0x6B8]
CMP             R0, #0
BEQ             loc_1D12C4
LDR             R0, =unk_654454
ADD             R1, R4, R4,LSL#1
MOV             R3, #0x16
ADD             R6, R0, R1,LSL#1
LDR             R0, [SP,#0x98+var_28]
LDRB            R2, [R6]
STRD            R10, R11, [SP,#0x98+var_98]
LDRB            R1, [R5,#0x495]
BL              sub_5EEA48
CMP             R0, #0
NOP
BEQ             loc_1D12C0
LDR             R2, =dword_6D1F40
LDR             R0, [SP,#0x98+var_48]
MOV             R1, #0x64 ; 'd'
BL              sub_480134
CMP             R0, #0
NOP
BEQ             loc_1D12C0
STR             R9, [SP,#0x98+var_98]
LDRB            R0, [R6,#1]
MOV             R3, #0
MOV             R2, #0xFFFFFFFF
ADD             R0, R5, R0,LSL#1
ADD             R0, R0, #0x100
LDRH            R1, [R0,#0xF4]
LDR             R0, [SP,#0x98+var_28]
BL              sub_52F54C
STR             R9, [SP,#0x98+var_98]
LDRH            R1, [R6,#2]
LDR             R0, [SP,#0x98+var_28]
MOV             R3, #0
MOV             R2, #1
BL              sub_52F54C
LDRB            R2, [R6,#1]
LDRH            R1, [R6,#2]
MOV             R0, R5
BL              sub_4E59A8
LDR             R0, [R5]
LDR             R1, [R0,#0x28]
MOV             R0, R5
BLX             R1
CMP             R0, #0
LDRBNE          R1, [R6,#4]
MOVNE           R0, R5
BEQ             loc_1D12B0
B               loc_1D12BC
ADD             R0, R5, #0x400
ADD             R0, R0, #0x2B8
MOV             R2, #2
MOV             R1, #0
BL              sub_110BE4
NOP
NOP
B               loc_1D12D4
LDR             R0, [SP,#0x98+var_28]
BL              sub_528E64
LDRB            R1, [R6,#4]
BL              sub_4F1C30
STRB            R9, [R7,#0x6B8]
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, #2
BCC             loc_1D11C4
ADD             R0, R8, #1
AND             R8, R0, #0xFF
CMP             R8, #2
BCC             loc_1D11A0
LDR             R0, [SP,#0x98+var_80]
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_1D1434
LDR             R1, =sub_1605EC
LDR             R0, [SP,#0x98+var_28]
ADD             R0, R0, R1
ADD             R8, R0, #0x5000
ADD             R7, R0, #0x7000
ADD             R8, R8, #0x830
CMP             R4, #0
MOVEQ           R5, #0
SUBNE           R5, R4, #0x1AC
LDR             R0, [R5,#0x1A8]
CMP             R0, #0
BNE             loc_1D141C
MOV             R0, R5
BL              sub_4E4F1C
MOV             R0, R5
NOP
BL              sub_5EC328
MOVS            R6, R0
NOP
BEQ             loc_1D141C
LDR             R0, [R5,#0x18]
LDRB            R0, [R0,#0xF2]
CMP             R0, #0
BEQ             loc_1D1384
CMP             R6, #6
MOVEQ           R0, #0x25 ; '%'
BEQ             loc_1D1398
CMP             R6, #7
MOVNE           R10, #0
MOVEQ           R0, #0x26 ; '&'
BEQ             loc_1D1398
B               loc_1D13BC
MOV             R0, R5
BL              sub_4F1B14
NOP
NOP
B               loc_1D141C
LDR             R1, [R7,#0x2E4]
CMN             R1, #1
BNE             loc_1D141C
LDR             R1, [R8]
TST             R1, #1
BNE             loc_1D141C
MOV             R1, #0
BL              sub_337ED4
MOV             R10, R0
MOV             R1, R6
ADD             R0, SP, #0x98+var_88
BL              sub_33807C
LDR             R0, [SP,#0x98+var_3C]
MOV             R3, #0
MOV             R2, R3
LDR             R1, [R0,#0x3B4]
MOV             R0, #0x1D4
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1D13F8
MOV             R2, R5
ADD             R1, SP, #0x98+var_88
BL              sub_33831C
STR             R10, [R0,#0x1C0]
LDR             R2, [SP,#0x98+var_30]
ADD             R1, R0, #0x1C4
MOV             R0, R2
BL              sub_1CF9FC
MOV             R0, #1
STR             R0, [SP,#0x98+var_6C]
MOV             R0, R5
BL              sub_4F1BB8
LDR             R4, [R4,#8]
CMP             R4, R9
BNE             loc_1D131C
LDR             R0, [SP,#0x98+var_6C]
CMP             R0, #0
BNE             loc_1D1448
LDR             R1, =0x1064D4
LDR             R0, [SP,#0x98+var_28]
LDR             R0, [R0,R1]
CMP             R0, #0
BEQ             loc_1D144C
MOV             R0, #1
ADD             SP, SP, #0x74 ; 't'
POP             {R4-R11,PC}
