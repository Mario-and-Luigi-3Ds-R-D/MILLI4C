PUSH            {R4-R7}
LDRH            R3, [R2]
LDR             R12, [R0,#4]
MOV             R0, #6
ADD             R4, R12, R3,LSL#4
LDRB            R3, [R4]
TST             R3, #0x80
AND             R12, R3, #0x7F
ADDNE           R12, R12, #1
CMP             R12, #0
BLE             loc_29D228
LDR             R5, =unk_65B108
LDR             R2, [R2,#4]
MOV             R3, #0
MOV             R6, R2,LSR R3
TST             R6, #1
ADDNE           R0, R0, #2
BNE             loc_29D21C
ADD             R6, R3, R3,LSR#31
MOV             R7, R3,LSL#31
ADD             R6, R4, R6,ASR#1
MOV             R7, R7,LSR#29
LDRB            R6, [R6,#1]
MOV             R6, R6,LSR R7
AND             R6, R6, #0xF
LDRB            R6, [R5,R6]
ADD             R0, R0, R6
SUBS            R12, R12, #1
ADD             R3, R3, #1
BNE             loc_29D1E8
LDR             R2, [R1]
SUB             R2, R2, R0
STR             R2, [R1]
POP             {R4-R7}
BX              LR
