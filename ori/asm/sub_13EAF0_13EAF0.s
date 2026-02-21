PUSH            {R4,LR}
MOV             R4, R0
LDRH            R0, [R0,#0x6C]
TST             R0, #0x8000
BEQ             locret_13EB24
LDR             R0, [R4]
LDRSH           R2, [R4,#4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_140EE4
LDRH            R0, [R4,#0x6C]
BIC             R0, R0, #0x8000
STRH            R0, [R4,#0x6C]
POP             {R4,PC}
