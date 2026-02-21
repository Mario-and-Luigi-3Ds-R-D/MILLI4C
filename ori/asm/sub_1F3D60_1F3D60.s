PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10; int
MOV             R5, R1
LDR             R8, =off_6D1648
MOV             R6, R2
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R4, R0, #0x15000
ADD             R4, R4, #0x13C
LDRB            R0, [R4,#0x9F]
CMP             R0, #0xFF
BNE             loc_1F3E04
LDR             R0, [R8]
MOV             R7, #0
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
BNE             loc_1F3E04
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0xC]
CMP             R0, #0
BNE             loc_1F3E04
LDR             R0, [R8]
MOV             R2, #6
MOV             R1, #0
LDR             R0, [R0,#0x10]
BL              sub_53708C
MOV             R0, #0x7F
STMEA           SP, {R0,R7}
LDR             R1, =unk_68AF18
STR             R7, [SP,#0x28+var_20]; float
LDR             R0, [R8]
LDR             R3, =dword_6ED9B8; int
LDR             R2, [R1,R5,LSL#2]; int
MOV             R1, #0; int
LDR             R0, [R0,#0x10]; int
BL              sub_532794
STR             R0, [R4,#0xA4]
STRB            R5, [R4,#0x9F]
STR             R6, [R4,#0x98]
ADD             R0, R4, R5,LSL#2
ADD             SP, SP, #0x10
ADD             R0, R0, #0xC
POP             {R4-R8,PC}
