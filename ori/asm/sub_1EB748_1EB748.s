PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R4, [R0,#0xA0]
LDR             R0, =0x1462C
SUB             SP, SP, #0xC
LDR             R0, [R0,R4]
LDRB            R0, [R0,#0x38]
CMP             R0, #3
BNE             loc_1EB7C4
MOV             R1, R4
MOV             R0, SP
BL              loc_106CBC
ADD             R1, R4, #0x8C
MOV             R0, SP
BL              loc_106CBC
LDRB            R0, [R4,#0x84]
LDR             R1, =dword_67E35C
MOV             R3, #1
STRB            R0, [R4,#0x119]
LDRB            R0, [R4,#0x110]
STRB            R0, [R4,#0x118]
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x4C]
LDR             R0, [R5]
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E19C
LDM             R0, {R1,R2}
ADD             SP, SP, #0xC
MOV             R0, R5
POP             {R4,R5,LR}
BX              R12
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
