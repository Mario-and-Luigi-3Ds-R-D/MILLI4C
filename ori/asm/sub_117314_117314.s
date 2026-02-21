PUSH            {R4-R6,LR}
CMP             R0, #0
LDR             R5, =byte_6D2578
MOVNE           R6, #0x64 ; 'd'
MOVEQ           R6, #0x17C
MOV             R4, #0
LDRB            R0, [R5]
CMP             R0, #0
BEQ             locret_117398
LDRB            R0, [R5,#(byte_6D2579 - 0x6D2578)]
CMP             R0, #0
BEQ             loc_117364
SVC             0x28 ; '('
TST             R0, #0x10
BEQ             loc_117364
AND             R0, R0, #0xF
ADD             R1, R0, #1
MOV             R0, R6
BL              sub_127F6C
MOV             R4, R0
LDR             R0, [R5,#(dword_6D2590 - 0x6D2578)]
ADD             R0, R0, R4
MOV             R1, R0,LSL#16
MOVS            R1, R1,LSR#16
BEQ             locret_117398
LDR             R12, =0xF4240
MOV             R2, #0
MOV             R3, R2
UMULL           R0, R4, R1, R12
MLA             R2, R2, R12, R4
POP             {R4-R6,LR}
MLA             R1, R1, R3, R2
B               sub_121140
POP             {R4-R6,PC}
