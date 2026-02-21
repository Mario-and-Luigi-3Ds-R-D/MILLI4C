PUSH            {R4-R6,LR}
SUB             SP, SP, #0x68
BL              sub_10640C
LDR             R5, =off_6CF9F0
CMP             R0, #0
BEQ             loc_103F90
LDR             R0, =dword_6EF050
BL              sub_106250
MOV             R2, #0
MOV             R1, #0x200000
MOV             R0, #0x580000
BL              sub_1041A0
BL              sub_10485C
BL              sub_104918
MOV             R0, #1
STR             R0, [SP,#0x78+var_78]
LDR             R0, =dword_6EF03C
MOV             R3, #8
MOV             R2, #0x10
MOV             R1, #0
BL              sub_104FB0
LDR             R1, =0xFFF
LDR             R0, =dword_6EF03C
BL              sub_105214
BL              sub_105B2C
BL              sub_10E034
BL              sub_1049C0
LDR             R0, =dword_6E7CD0
BL              sub_106284
BL              sub_1059C0
LDR             R1, =dword_6ED9B8
LDR             R0, =dword_6E9820
MOV             R2, #0x400000
BL              sub_104A4C
ADD             R0, SP, #0x78+var_70
BL              sub_104388
MOV             R3, #0x20 ; ' '
MOV             R2, #0x10000
MOV             R1, #0x20000
ADD             R0, SP, #0x78+var_70
BL              sub_10425C
ADD             R0, SP, #0x78+var_70
BL              sub_10AE98
BL              sub_10C868
BL              sub_10499C
BL              sub_107E6C
MOV             R1, R0
ADD             R0, SP, #0x78+var_50
BL              sub_107FA8
MOV             R0, #1
NOP
STRB            R0, [SP,#0x78+var_38]
MOV             R2, #0x91
MOV             R1, #0x50 ; 'P'
ADD             R0, SP, #0x78+var_50
BL              sub_107BDC
LDR             R4, =unk_6EF058
MOV             R0, R4
BL              sub_106714
MOV             R6, R0
MOV             R0, R4
BL              sub_106768
ADD             R1, R0, R0,LSL#1
RSB             R0, R1, R0,LSL#7
LDR             R1, =dword_6D1F40
ADD             R0, R6, R0,LSL#3
STR             R0, [R1]
LDR             R0, =dword_6ED9B8
BL              sub_104224
LDR             R0, =off_6CED70; "rom:/Shader/Prim.shbin" ...
LDR             R1, [R0]; "rom:/Shader/Prim.shbin" ...
LDR             R0, =dword_6EA150
BL              sub_106028
LDR             R0, =unk_6EA338
BL              sub_104474
LDR             R1, =dword_6E9820
MOV             R2, #0x20000
MOV             R0, SP
BL              sub_106C88
LDR             R1, =dword_6E9820
MOV             R2, #0x30000
MOV             R0, SP
BL              sub_106C88
BL              sub_1164E4
BL              sub_10C984
ADD             R0, SP, #0x78+var_70
BL              sub_104324
BL              sub_10F250
BL              sub_1041E8
ADD             R0, SP, #0x78+var_70
BL              sub_1043A8
LDR             R0, =unk_6EB568
BL              sub_105E10
LDR             R0, =dword_6EDA78
NOP
BL              sub_1058B8
LDR             R0, =word_6EDAC0
NOP
BL              sub_10550C
LDR             R0, =unk_6EDAD4
NOP
BL              sub_104F20
NOP
NOP
BL              sub_106498
CMP             R0, #0
NOP
BEQ             loc_103F90
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_103F78
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_103F78
LDR             R1, [R0]
LDR             R1, [R1]
BLX             R1
LDR             R0, =dword_6EF050
MOV             R1, #1
BL              sub_106274
NOP
NOP
B               loc_103F04
NOP
BL              sub_10569C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_103FB0
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, =dword_6E9820
MOV             R1, #0x20000
BL              sub_106C10
LDR             R0, =dword_6E9820
MOV             R1, #0x30000
BL              sub_106C10
LDR             R0, =unk_6EA338
NOP
BL              sub_1092C0
LDR             R0, =dword_6E9820
NOP
BL              sub_104E50
NOP
NOP
BL              sub_1047B0
NOP
NOP
BL              sub_105F70
NOP
NOP
BL              sub_105130
NOP
NOP
BL              sub_1054C8
NOP
NOP
BL              sub_1049B4
NOP
NOP
BL              sub_104A10
NOP
NOP
BL              sub_119244
ADD             SP, SP, #0x68 ; 'h'
POP             {R4-R6,LR}
B               sub_1066BC
