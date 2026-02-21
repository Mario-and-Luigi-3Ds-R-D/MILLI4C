PUSH            {R4,LR}
SUB             SP, SP, #0x10
STR             R2, [R3,#0x80]
MOV             R12, #0
MOV             R4, #3
STR             R3, [SP,#0x18+var_10]
STMEA           SP, {R4,R12}
LDR             R3, [R0]
LDRB            R2, [R2,#0xDE]
LDR             R12, [R3,#0x58]
MOV             R2, R2,LSL#30
MOV             R3, #4
MOV             R2, R2,LSR#31
BLX             R12
ADD             SP, SP, #0x10
POP             {R4,PC}
