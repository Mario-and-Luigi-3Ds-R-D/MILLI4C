PUSH            {R4}
MOV             R12, #0
ADD             R4, R0, #8
STR             R1, [R0]
STRB            R12, [R0,#4]
STM             R4, {R2,R12}
STR             R12, [R0,#0x10]
STRB            R12, [R0,#0x14]
STR             R12, [R0,#0x18]
STR             R12, [R0,#0x1C]
STR             R12, [R0,#0x20]
STRB            R12, [R0,#0x24]
STR             R12, [R0,#0x28]
POP             {R4}
BX              LR
