PUSH            {R4-R10,LR}
ADD             R0, SP, #0x20+arg_0
MOV             R8, R1
MOV             R4, R2
LDM             R0, {R1,R2,R5,R12}
LDR             R0, =dword_6EA3BC
ADD             R6, R1, #1
CMP             R12, #0
STM             R0, {R2,R5,R12}
SUB             R5, R3, #1
STR             R4, [R0,#(dword_6EA3C8 - 0x6EA3BC)]!
STR             R1, [R0,#(dword_6EA3CC - 0x6EA3C8)]
BEQ             loc_1CC2D4
CMN             R5, #1
LDRNE           R9, =dword_6EB550
BEQ             locret_1CC2D0
ADD             R4, R4, R6,LSL#1
LDRSH           R0, [R4]
TST             R0, #0x200
MOV             R7, R0,LSL#23
MOV             R0, R0,ASR#10
MOV             R7, R7,LSR#23
LDR             R1, [R9,R0,LSL#2]
MOV             R0, R4
BEQ             loc_1CC2B0
BLX             R1
MOV             R1, R0
MOV             R2, R8
MOV             R0, R7
BL              sub_4E7320
NOP
NOP
B               loc_1CC2C8
NOP
BLX             R1
MOV             R1, R0
MOV             R2, R8
MOV             R0, R7
BL              sub_4E6E5C
SUBS            R5, R5, #1
BCS             loc_1CC26C
POP             {R4-R10,PC}
CMN             R5, #1
BEQ             locret_1CC2D0
ADD             R4, R4, R6,LSL#1
LDRH            R0, [R4]
MOV             R7, R0,LSL#23
MOV             R0, R4
MOV             R7, R7,LSR#23
BL              sub_4E78D0
LDRH            R1, [R4]
MOV             R2, R8
TST             R1, #0x200
MOV             R1, R0
MOV             R0, R7
BEQ             loc_1CC31C
BL              sub_4E7320
NOP
NOP
B               loc_1CC324
NOP
BL              sub_4E6E5C
SUBS            R5, R5, #1
BCS             loc_1CC2DC
POP             {R4-R10,PC}
