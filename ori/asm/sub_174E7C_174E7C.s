PUSH            {R4,R5}
LDRB            R4, [R0,#0x764]
BIC             R4, R4, #0xF
STRB            R4, [R0,#0x764]
LDRB            R3, [R0,#0x7B0]
BIC             R3, R3, #0xF
STRB            R3, [R0,#0x7B0]
LDR             R3, =dword_6D159C
LDR             R12, [R3]
STR             R12, [R0,#0x760]
LDR             R12, =dword_6D1598
LDR             R12, [R12]
STR             R12, [R0,#0x75C]
POP             {R4,R5}
B               sub_58052C
