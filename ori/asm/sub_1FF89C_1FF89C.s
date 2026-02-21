LDR             R1, =dword_68BC10
PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
MOV             R5, R0
LDRD            R2, R3, [R1]
MOV             R4, #0
MOV             R0, R4
STRD            R2, R3, [SP,#0x38+var_38]
LDRD            R2, R3, [R1,#(dword_68BC18 - 0x68BC10)]
ADD             R8, SP, #0x38+var_20
STRD            R2, R3, [SP,#0x38+var_30]
LDR             R2, [R1,#(dword_68BC24 - 0x68BC10)]
LDR             R1, [R1,#(dword_68BC20 - 0x68BC10)]
STR             R2, [SP,#0x38+var_24]
STR             R1, [SP,#0x38+var_28]
LDR             R1, [R5,#0x120]
MOV             R2, #1
TST             R1, #0x1C0
BEQ             loc_1FF8F8
MOV             R0, #0
STRB            R0, [SP,#0x38+var_20]
LDRSH           R0, [SP,#0x38+var_38]
MOV             R4, #1
MOV             R1, R1,LSL#23
CMP             R2, R1,LSR#29
BEQ             loc_1FF918
STRB            R2, [R8,R4]
LDRSH           R2, [SP,#0x38+var_38+2]
ADD             R3, R4, #1
AND             R4, R3, #0xFF
ADD             R0, R0, R2
MOV             R2, #2
CMP             R2, R1,LSR#29
BEQ             loc_1FF938
STRB            R2, [R8,R4]
LDRSH           R2, [SP,#0x38+var_34]
ADD             R1, R4, #1
AND             R4, R1, #0xFF
ADD             R0, R0, R2
UXTH            R7, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R7
CMP             R4, #0
MOV             R1, #0
MOVGT           R3, SP
MOV             R2, R0,LSR#16
MOV             R0, R1
BLE             loc_1FF98C
LDRB            R12, [R8,R0]
ADD             R12, R3, R12,LSL#1
LDRSH           R12, [R12]
ADD             R1, R1, R12
CMP             R2, R1
BGE             loc_1FF980
LDRB            R6, [R8,R0]
B               loc_1FF98C
ADD             R0, R0, #1
CMP             R0, R4
BLT             loc_1FF960
ADD             R1, SP, #0x38+var_28
ADD             R0, SP, #0x38+var_30
ADD             R1, R1, R6,LSL#1
ADD             R7, R0, R6,LSL#1
LDRH            R0, [R1]
LDRH            R1, [R7]
SUB             R0, R0, R1
ADD             R0, R0, #1
UXTH            R4, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R4
LDR             R1, [R5,#0x120]
LDRH            R3, [R7]
MOV             R2, #0x1C0
AND             R2, R2, R6,LSL#6
BIC             R1, R1, #0x1C0
ORR             R1, R1, R2
ADD             R0, R3, R0,LSR#16
STR             R1, [R5,#0x120]
SXTH            R2, R0
LDR             R0, [R5]
MOV             R1, R6
LDR             R3, [R0,#0x6C]
MOV             R0, R5
BLX             R3
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
