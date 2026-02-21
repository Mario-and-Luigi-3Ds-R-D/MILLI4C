PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
LDR             R7, =byte_68DBBC
MOV             R4, #0
LDRB            R0, [R7]
CMP             R0, #0
LDRGT           R8, =0x19C98
BLE             locret_1A6ECC
RSB             R1, R4, R4,LSL#4
LDR             R0, [R5,#4]
ADD             R1, R1, R4,LSL#5
ADD             R1, R8, R1,LSL#2
LDR             R1, [R0,R1]!
LDR             R2, [R1,#0x44]
MOV             R1, R6
BLX             R2
LDRB            R0, [R7]
ADD             R4, R4, #1
CMP             R4, R0
BLT             loc_1A6E9C
POP             {R4-R8,PC}
