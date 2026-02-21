PUSH            {R0,R1,R4-R11,LR}
SUB             SP, SP, #0xC
MOV             R4, #0
MOV             R7, R1
LDR             R0, [SP,#0x38+var_2C]
LDR             R9, =0xAAAAAAAB
LDR             R10, =unk_656B7A
LDR             R0, [R0]
RSB             R8, R9, R9,ROR#16
ADD             R11, R0, #0x40 ; '@'
ADD             R0, R7, R4
UMULL           R2, R1, R9, R0
MOV             R2, #0
MOV             R1, R1,LSR#1
SUB             R1, R1, R1,LSL#2
ADD             R0, R0, R1
AND             R5, R0, #0xFF
MOV             R0, R11
LDRB            R6, [R10,R5]
MOV             R1, R6
BL              sub_5C71F0
CMP             R0, #0
NOP
BEQ             loc_29F454
MOV             R2, #1
MOV             R1, R6
MOV             R0, R11
BL              sub_5C71F0
LDR             R1, =unk_656CE0
ADD             R1, R1, R5,LSL#2
ADD             R0, R1, R0,LSL#1
LDRH            R6, [R0]
CMP             R6, R8
BEQ             loc_29F454
LDR             R0, [R11]
LDR             R1, [R0]
LDR             R1, [R1,#0x40]
BLX             R1
LDR             R1, =dword_6E1330
MOV             R4, R0
LDR             R0, [R11]
LDR             R2, =off_6CE970
LDR             R1, [R1]
LDR             R7, [R0,#0x18]
LDR             R8, [R2]
TST             R1, #1
BNE             loc_29F400
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_29F400
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDR             R1, =0x10007
MOV             R2, #0
MOV             R3, R4
STMEA           SP, {R0-R2}
MOV             R2, R7
MOV             R1, R6
MOV             R0, R8
BL              sub_52B6D4
LDR             R4, [SP,#0x38+var_2C]
MOV             R6, R0
LDR             R0, [R4,#4]!
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R6, #0
STR             R6, [R4,#4]
STRNE           R4, [R6,#0x184]
ADD             SP, SP, #0x14
MOV             R0, R5
POP             {R4-R11,PC}
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, #3
BCC             loc_29F33C
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4-R11,PC}
