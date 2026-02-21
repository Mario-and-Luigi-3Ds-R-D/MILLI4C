PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R1, [R5]
ADD             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#4
LDR             R2, [R1,#0x80]
ADD             R0, R5, R0,LSL#3
ADD             R1, R0, #0x138
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_184908
MOV             R4, #0
MOV             R7, #3
B               loc_1849A4
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x184]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #3
BEQ             loc_18498C
LDR             R0, [R6]
LDR             R1, [R0,#0x78]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_18498C
LDR             R0, [R6,#0x84]
MOV             R0, R0,LSL#22
CMP             R7, R0,LSR#29
BNE             loc_1849A0
LDR             R0, [R5]
ADD             R1, R6, #0x14
LDR             R2, [R0,#0x80]
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
LDR             R0, [R5,#4]
LDR             R1, =0x1428D
LDRB            R1, [R1,R0]
CMP             R1, R4
BHI             loc_184940
POP             {R4-R8,PC}
