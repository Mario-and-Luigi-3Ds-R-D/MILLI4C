PUSH            {R4-R11,LR}
SUB             SP, SP, #0x3C
MOV             R6, R2
MOV             R10, R1
MOV             R11, R0
LDR             R4, [SP,#0x60+arg_8]
MOV             R7, R3
LDRD            R8, R9, [SP,#0x60+arg_0]
BL              sub_1209A8
MOVS            R5, R0
BEQ             loc_11745C
MOV             R1, #0x130
BL              sub_2FFE8C
MOV             R0, R5
BL              sub_120A90
MOVS            R5, R0
BEQ             loc_11745C
STR             R10, [SP,#0x60+var_3C]
MOV             R10, #0
MOV             R0, #1
ADD             R1, SP, #0x60+var_30
STR             R10, [SP,#0x60+var_38]
STRD            R0, R1, [SP,#0x60+var_34]
LDR             R1, =byte_6D2578
STR             R0, [SP,#0x60+var_2C]
MOV             R3, #0xC
ADD             LR, SP, #0x60+var_48
LDR             R1, [R1,#(dword_6D2588 - 0x6D2578)]
STR             R3, [SP,#0x60+var_4C]
MOV             R2, R10
STR             R1, [SP,#0x60+var_28]
LDR             R1, [SP,#0x60+var_30]
STR             R4, [SP,#0x60+var_50]
STM             LR, {R0,R2}
ADD             LR, SP, #0x60+var_58
STRD            R0, R1, [SP,#0x60+var_60]
MOV             R12, #2
STM             LR, {R0,R12}
MOV             R3, #3
ADD             R1, SP, #0x60+var_38
ADD             R0, SP, #0x60+var_28
BL              sub_120C04
MOV             R4, R0
MOVS            R0, R0,LSR#31
BEQ             loc_117468
B               loc_1174C8
LDR             R0, =0xD8604659
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
STR             R10, [SP,#0x60+var_40]
LDR             R0, [R5]
LDR             R2, [SP,#0x60+var_38]
ADD             R1, SP, #0x60+var_40
LDR             R3, [R0,#0x3C]
MOV             R0, R5
BLX             R3
MOV             R4, R0
MOVS            R0, R0,LSR#31
BNE             loc_1174C8
ADD             R4, SP, #0x60+var_40
STMEA           SP, {R7-R9}
MOV             R3, R6
LDM             R4, {R1,R2}
MOV             R0, R5
BL              sub_120574
MOV             R4, R0
MOVS            R0, R0,LSR#31
MOVEQ           R4, #0
BEQ             loc_1174C8
LDR             R0, [SP,#0x60+var_40]
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
AND             R0, R4, #0x80000000
CMP             R0, #0
MOVGE           R0, #0
STRGE           R5, [R11]
BGE             loc_117460
LDR             R0, [R5]
LDR             R1, [R0,#0x30]
MOV             R0, R5
BLX             R1
ADD             SP, SP, #0x3C ; '<'
MOV             R0, R4
POP             {R4-R11,PC}
