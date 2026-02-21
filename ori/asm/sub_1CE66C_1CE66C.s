PUSH            {R4,LR}
STR             R1, [R0],#4
LDR             R1, =sub_1CE34C
MOV             R3, #4
MOV             R2, #0x3C ; '<'
BLX             sub_1002F4
SUB             R0, R0, #4
MOV             R2, #0
STR             R2, [R0,#0xF4]
MOV             R1, R2
STR             R2, [R0,#0xF8]
RSB             R2, R1, R1,LSL#4
ADD             R2, R0, R2,LSL#2
STR             R0, [R2,#0x1C]
STRB            R1, [R2,#0x24]
ADD             R1, R1, #1
AND             R1, R1, #0xFF
CMP             R1, #4
BCC             loc_1CE698
POP             {R4,PC}
