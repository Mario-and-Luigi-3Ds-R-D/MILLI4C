LDR             R1, =byte_6D4B64
LDRB            R1, [R1]
CMP             R1, #0
BXEQ            LR
PUSH            {R4,R5,LR}
SUB             SP, SP, #0x44 ; 'D'
MOV             R4, R0
MOV             R1, R0
MOV             R2, #0x80
ADD             R0, SP, #0x50+var_30
BL              sub_123B88
ADD             R1, SP, #0x50+var_30
ADD             R0, SP, #0x50+var_44
BL              sub_121218
SUBS            R1, R0, #0
MOV             R5, #0
BLT             loc_118F30
LDR             R0, [SP,#0x50+var_44]
LDR             R2, [R0,#0x14]
CMP             R2, #0
BEQ             loc_118F30
LDR             R2, [R0,#0x10]
ADD             R2, R2, R0
LDM             R2, {R3,R12}
ADD             R2, R3, R0
CMP             R12, R1
BLE             loc_118F30
LDR             R1, [R2,R1,LSL#3]
LDR             R2, [R1,R0]!
LDR             R1, [R1,#4]
ADDS            R0, R0, R2
BEQ             loc_118F30
ADD             R2, SP, #0x50+var_40
ADD             R1, R1, #1
STM             R2, {R0,R1,R4}
MOV             R1, #0
LDR             R3, [R4,#0xCC]
CMP             R3, #0
LDRGT           R12, [R4,#0xC8]
BLE             loc_118F20
ADD             R0, R1, R1,LSL#1
ADD             R0, R12, R0,LSL#2
LDRB            R2, [R0,#8]
CMP             R2, #2
BEQ             loc_118F38
ADD             R1, R1, #1
CMP             R3, R1
BGT             loc_118F00
MOV             R1, #0x10
ADD             R0, SP, #0x50+var_40
STR             R5, [SP,#0x50+var_34]
BL              sub_13267C
ADD             SP, SP, #0x44 ; 'D'
POP             {R4,R5,PC}
LDR             R5, [R0]
B               loc_118F20
