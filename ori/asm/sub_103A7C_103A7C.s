PUSH            {R0-R7,LR}
SUB             SP, SP, #0x14
MOVS            R4, R1
MOVS            R5, R0
LDR             R0, [R0]
LDR             R6, [SP,#0x38+arg_0]
SUBS            R0, #0xC
LDR             R0, [R0,#8]
CMP             R0, R4
BCC             loc_103A96
LDR             R1, [SP,#0x38+arg_4]
CMP             R1, R6
BLS             loc_103AB6
CMP             R0, R6
BLS             loc_103A9E
MOVS            R1, R0
B               loc_103AA0
MOVS            R1, R6
CMP             R0, R4
BCS             loc_103AA8
MOVS            R3, R4
B               loc_103AAA
LDR             R3, [SP,#0x38+arg_4]
STR             R1, [SP,#0x38+var_38]
MOVS            R0, #9
ADR             R2, dword_103BF0
ADR             R1, dword_103BF0
BL              sub_301510
LDR             R0, [R5]
LDR             R1, [SP,#0x38+var_1C]
SUBS            R0, #0xC
LDR             R0, [R0,#8]
SUBS            R7, R0, R4
CMP             R1, R7
BCS             loc_103AC6
MOVS            R7, R1
LDR             R1, [SP,#0x38+arg_4]
SUBS            R6, R6, R1
LDR             R1, [SP,#0x38+arg_8]
CMP             R1, R6
BCS             loc_103AD2
MOVS            R6, R1
SUBS            R3, R0, R7
MOVS            R0, #0xE
MVNS            R0, R0
SUBS            R0, R0, R6
CMP             R3, R0
BLS             loc_103AEA
STR             R0, [SP,#0x38+var_38]
MOVS            R0, #8
ADR             R2, dword_103BF0
ADR             R1, dword_103BF0
BL              sub_301510
LDR             R0, [R5]
MOVS            R1, R0
SUBS            R1, #0xC
MOV             LR, R1
LDR             R1, [R1,#8]
MOV             R12, R1
SUBS            R1, R1, R7
ADDS            R7, R1, R6
BEQ             loc_103BA2
SUBS            R1, R1, R4
STR             R1, [SP,#0x38+var_38]
LDR             R2, [SP,#0x38+var_1C]
MOV             R1, LR
LDR             R1, [R1]
ADDS            R2, R4, R2
STR             R2, [SP,#0x38+var_2C]
LDR             R3, [SP,#0x38+var_18]
LDR             R2, [SP,#0x38+arg_4]
ADDS            R1, R1, #1
ADDS            R2, R3, R2
CMP             R1, #1
STR             R2, [SP,#0x38+var_28]
BHI             loc_103B30
MOV             R1, LR
LDR             R1, [R1,#4]
CMP             R1, R7
BCC             loc_103B30
CMP             R3, #0
BEQ             loc_103BAE
CMP             R0, R3
BHI             loc_103BAE
MOV             R1, R12
ADDS            R2, R0, R1
CMP             R2, R3
BLS             loc_103BAE
MOV             R0, R12
LSRS            R1, R0, #1
ADDS            R1, R1, R0
LSRS            R2, R0, #3
ADDS            R1, R1, R2
ADDS            R0, #0x80
CMP             R0, R1
BLS             loc_103B42
MOVS            R1, R0
STR             R1, [SP,#0x38+var_34]
ADD             R1, SP, #0x38+var_30
ADD             R0, SP, #0x38+var_34
STR             R7, [SP,#0x38+var_30]
BL              sub_302790
LDR             R1, [R0]
MOVS            R2, R7
MOVS            R0, R5
BL              sub_30279C
MOVS            R7, R0
CMP             R4, #0
BEQ             loc_103B6A
MOVS            R0, R7
LDR             R1, [R5]
ADDS            R0, #0xC
MOVS            R2, R4
BL              sub_30281C
CMP             R6, #0
BEQ             loc_103B7C
MOVS            R0, R7
ADDS            R0, #0xC
LDR             R1, [SP,#0x38+var_28]
ADDS            R0, R0, R4
MOVS            R2, R6
BL              sub_30281C
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_103B96
LDR             R2, [R5]
LDR             R1, [SP,#0x38+var_2C]
MOVS            R0, R7
ADDS            R0, #0xC
ADDS            R0, R0, R4
ADDS            R1, R2, R1
LDR             R2, [SP,#0x38+var_38]
ADDS            R0, R0, R6
BL              sub_30281C
MOVS            R0, R5
BL              sub_302828
ADDS            R7, #0xC
STR             R7, [R5]
B               loc_103BE6
MOVS            R0, R5
BL              sub_302828
LDR             R0, =unk_711F8C
STR             R0, [R5]
B               loc_103BE6
LDR             R1, [SP,#0x38+var_38]
CMP             R1, #0
BEQ             loc_103BC4
ADDS            R1, R4, R6
ADDS            R3, R0, R1
LDR             R1, [SP,#0x38+var_2C]
LDR             R2, [SP,#0x38+var_38]
ADDS            R1, R0, R1
MOVS            R0, R3
BLX             sub_302870
CMP             R6, #0
BEQ             loc_103BD4
LDR             R0, [R5]
LDR             R1, [SP,#0x38+var_28]
ADDS            R0, R0, R4
MOVS            R2, R6
BLX             sub_302870
LDR             R0, [R5]
MOV             R2, SP
SUBS            R0, #0xC
STR             R7, [R0,#8]
LDR             R0, [R5]
ADDS            R1, R7, R0
MOVS            R0, #0
STRB            R0, [R2,#0x38+var_38]
STRB            R0, [R1]
LDR             R0, [R5]
ADD             SP, SP, #0x24 ; '$'
ADDS            R0, R0, R4
POP             {R4-R7,PC}
