PUSH            {R4-R6,LR}
MOV             R5, R0
LDRB            R0, [R0,#0x4C]
MOV             R4, #0
CMP             R0, #0
BLE             locret_1E8D28
LDR             R0, [R5,#0x38]
RSB             R1, R4, R4,LSL#3
ADD             R1, R1, R4,LSL#6
LDR             R2, [R0,R1,LSL#2]
ADD             R0, R0, R1,LSL#2
LDR             R1, [R2,#8]
BLX             R1
LDRB            R0, [R5,#0x4C]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1E8CFC
POP             {R4-R6,PC}
