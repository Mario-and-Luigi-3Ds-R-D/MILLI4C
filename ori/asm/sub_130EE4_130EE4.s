PUSH            {R4-R10,LR}
MOV             R1, #0
MOV             R8, R0
LDR             R0, =off_6D48F8
LDR             R7, [R0]
LDR             R0, [R7,#8]
TST             R0, #0x80
BNE             locret_131034
LDR             R5, =off_6D2440
MOV             R4, #0
ADD             R6, R7, #0x58 ; 'X'
MOV             R9, #1
ADD             R0, R4, #0xA
AND             R3, R0, #0x1F
MOV             R2, R0,ASR#5
LDR             R0, [R8,R2,LSL#2]
TST             R0, R9,LSL R3
BEQ             loc_130FC0
ADD             R0, R6, R4
LDRB            R0, [R0,#0xAF]
CMP             R0, #0
ADD             R0, R6, R4,LSL#2
BEQ             loc_130F90
LDR             R0, [R0,#0x10]
CMP             R0, #0
LDR             R0, [R5]
BEQ             loc_130F78
ADD             R0, R0, R4,LSL#2
LDR             R0, [R0,#0x81C]
CMP             R0, #0
BEQ             loc_130FBC
LDR             R0, [R0]
MOV             R1, R4
BL              sub_13CBE0
NOP
NOP
B               loc_130FBC
LDR             R0, [R0,#4]
MOV             R1, R4
BL              sub_13CBE0
NOP
NOP
B               loc_130FBC
LDR             R0, [R0,#4]
CMP             R0, #0
LDR             R0, [R5]
BEQ             loc_130FB0
ADD             R0, R0, R4,LSL#2
LDR             R0, [R0,#0x810]
CMP             R0, #0
BEQ             loc_130FBC
LDR             R0, [R0]
MOV             R1, R4
BL              sub_13BC38
MOV             R1, #1
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_130F14
CMP             R1, #0
BEQ             locret_131034
LDR             R12, [R7,#0x770]
TST             R12, #7
BEQ             locret_131034
LDR             R0, =dword_6D2418
LDR             R3, =dword_6D241C
LDR             R2, [R0]
LDR             R1, [R3]
CMP             R1, R2
BLS             loc_13100C
LDR             R4, =0x10080
ADD             R5, R2, #8
STR             R4, [R2,#4]
STR             R12, [R2]
STR             R5, [R0]
LDR             R1, [R3]
LDR             R2, [R0]
CMP             R2, R1
BCS             locret_131034
LDR             R3, =0x50080
MOV             R4, #0x10000
ADD             R12, R2, #8
STR             R3, [R2,#4]
STR             R4, [R2]
STR             R12, [R0]
POP             {R4-R10,PC}
