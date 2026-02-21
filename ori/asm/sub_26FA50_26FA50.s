LDR             R1, =off_6BBF98
PUSH            {R4,LR}
MOV             R3, #3
STR             R1, [R0],#0xBC
SUB             R4, R0, #0xBC
LDR             R1, [R0,#4]
MOV             R2, #0x28 ; '('
CMP             R1, #0
MOVNE           R1, #0
STRNE           R1, [R0,#4]
LDR             R0, =off_6B7C1C
LDR             R1, =sub_5A2F60
STR             R0, [R4,#8]!
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #8
POP             {R4,PC}
