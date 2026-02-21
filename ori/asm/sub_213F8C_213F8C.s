PUSH            {R4,LR}
BL              sub_1F5518
LDR             R1, =off_6B2A5C
MOV             R3, #0x100
MOV             R2, #8
STR             R1, [R0],#0x2B0
LDR             R1, =sub_214534
BLX             sub_1002F4
ADD             R0, R0, #0x800
LDR             R1, =sub_203CC8
MOV             R3, #0x28 ; '('
MOV             R2, #8
ADD             R0, R0, #0x34 ; '4'
BLX             sub_1002F4
SUB             R4, R0, #0x800
SUB             R0, R0, #0x800
SUB             R4, R4, #0x2E4
SUB             R0, R0, #0x2D4
MOV             R2, #0x100
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x110
MOV             R2, #0x80
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x190
MOV             R2, #0x100
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x290
MOV             R2, #0x10
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x2A0
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x2A8
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
LDR             R1, =unk_6402E0
MOV             R3, #0x40 ; '@'
ADD             R2, R4, #0x10
MOV             R0, R4
BL              sub_1F4764
MOV             R0, R4
POP             {R4,PC}
