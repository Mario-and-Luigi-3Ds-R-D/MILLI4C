PUSH            {R4-R10,LR}
LDR             R2, [R0]
CMP             R2, #0
LDREQ           R0, =0xD8A02BF8
BEQ             locret_129A2C
LDRB            R3, [R2,#1]
CMP             R3, #0xF
LDRCS           R0, =0xD8A02A02
BCS             locret_129A2C
LDREX           R3, [R2]
MOV             R2, R3,LSL#16
LDR             LR, =0x88888889
AND             R12, R3, #0xFF
MOV             R2, R2,LSR#24
ADD             R12, R12, R2
MOV             R8, #0x20 ; ' '
UMULL           R4, LR, LR, R12
LDR             R9, [R1,#0x18]
MOV             LR, LR,LSR#3
SUB             LR, LR, LR,LSL#4
ADD             R12, R12, LR
LDR             LR, [R0]
ADD             R12, R8, R12,LSL#5
ADD             R12, R12, LR
LDM             R1, {R4-R8,LR}
LDR             R1, [R1,#0x1C]
STR             R1, [R12,#0x1C]
STR             R9, [R12,#0x18]
STM             R12, {R4-R8,LR}
MOV             R1, #0
MCR             p15, 0, R1,c7,c10, 4
ADD             R1, R2, #1
BIC             R2, R3, #0xFF00
MOV             R1, R1,LSL#8
AND             R1, R1, #0xFF00
ORR             R1, R1, R2
LDR             R3, [R0]
STREX           R2, R1, [R3]
CMP             R2, #0
BEQ             loc_129A08
LDR             R1, [R0]
LDREX           R1, [R1]
MOV             R3, R1,LSL#16
BIC             R2, R1, #0xFF00
MOV             R1, R3,LSR#24
ADD             R1, R1, #1
MOV             R1, R1,LSL#8
AND             R1, R1, #0xFF00
ORR             R1, R1, R2
B               loc_1299D0
MOV             R0, R1,LSL#16
MOV             R0, R0,LSR#24
CMP             R0, #1
BNE             loc_129A28
BL              sub_129DB8
NOP
NOP
BL              sub_1337F8
MOV             R0, #0
POP             {R4-R10,PC}
