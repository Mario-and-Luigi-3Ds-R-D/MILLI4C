PUSH            {R3-R7,LR}
MOV             R5, R1
ADD             R1, SP, #0x18+arg_0
MOV             R6, R3
MOV             R12, R0
LDM             R1, {R0,R3}
MOV             R4, R2
LDRB            R1, [R12,#0xDE]
CMP             R0, #0
LDR             R2, [SP,#0x18+arg_8]
LDREQ           R0, [R12,#4]
MOV             R1, R1,LSL#30
TST             R4, #0x4000
MOV             R1, R1,LSR#31
BEQ             loc_1F33F4
LDR             R1, =off_6D1648
LDR             R12, [R1]
BIC             R1, R4, #0x4000
LDR             R12, [R12,#0x78]
ADD             R1, R12, R1,LSL#6
B               loc_1F3408
ADD             R1, R0, R1,LSL#2
ADD             R1, R1, #0x13C00
ADD             R1, R1, #0x9C
LDR             R12, [R1]
ADD             R1, R12, R4,LSL#6
CMP             R3, #0
ADDEQ           R3, R0, #0xCC
STR             R2, [SP,#0x18+var_18]
LDR             R0, [R5]
MOV             R2, R6
LDR             R12, [R0,#0x2C]
MOV             R0, R5
BLX             R12
ADD             R5, R5, #0x100
STRH            R4, [R5,#0x74]
STRH            R6, [R5,#0x78]
POP             {R3-R7,PC}
