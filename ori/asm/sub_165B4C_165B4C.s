PUSH            {R4-R8,LR}
MOV             R6, R0
ADD             R7, R0, #0x14000
MOV             R4, #0
LDRB            R0, [R7,#0x28D]
CMP             R0, #0
BLE             locret_165BC0
ADD             R0, R6, R4,LSL#2
ADD             R5, R0, #0x14000
LDR             R0, [R5,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #7
BNE             loc_165BB0
LDR             R0, [R5,#0x184]
LDR             R1, =0x1224
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_165BB0
ADD             R1, R0, #0x400
LDR             R0, [R0,#0x658]
ADD             R1, R1, #0x258
ORR             R0, R0, #0xC0000000
STR             R0, [R1]
LDRB            R0, [R7,#0x28D]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_165B68
POP             {R4-R8,PC}
