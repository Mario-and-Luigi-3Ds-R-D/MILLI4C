PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R0, #0
LDR             R7, =byte_68DBBA
MOV             R4, R0
LDRB            R1, [R7]
CMP             R1, #0
LDRGT           R8, =0x19C98
BLE             locret_23CF48
RSB             R1, R4, R4,LSL#4
LDR             R0, [R6,#4]
ADD             R1, R1, R4,LSL#5
ADD             R1, R8, R1,LSL#2
ADD             R5, R0, R1
LDR             R0, [R5]
LDR             R1, [R0,#0x48]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_23CF34
LDR             R0, [R5,#0xA4]
LDRH            R0, [R0,#0x1A]
TST             R0, #1
MOVNE           R0, #1
BNE             loc_23CF38
MOV             R0, #0
LDRB            R1, [R7]
ADD             R4, R4, #1
CMP             R4, R1
BLT             loc_23CEF4
POP             {R4-R8,PC}
