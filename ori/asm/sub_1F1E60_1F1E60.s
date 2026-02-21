PUSH            {R4-R6,LR}
CMP             R3, #0
LDREQ           R3, [R0,#4]
LDRB            R0, [R0,#0xDE]
MOV             R4, R2
TST             R4, #0x4000
MOV             R5, R1
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
BEQ             loc_1F1EA4
LDR             R0, =off_6D1648
LDR             R1, [R0]
BIC             R0, R4, #0x4000
ADD             R0, R0, R0,LSL#1
LDR             R1, [R1,#0x60]
ADD             R1, R1, R0,LSL#5
B               loc_1F1EBC
ADD             R0, R3, R0,LSL#2
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x94
ADD             R1, R4, R4,LSL#1
LDR             R0, [R0]
ADD             R1, R0, R1,LSL#5
LDR             R0, [R5]
LDR             R2, [R0,#0x34]
MOV             R0, R5
BLX             R2
STRH            R4, [R5,#0xB0]
POP             {R4-R6,PC}
