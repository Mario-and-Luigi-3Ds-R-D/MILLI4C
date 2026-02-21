NOP
PUSH            {R4-R6,LR}
MOV             R6, R0
ADD             R0, R0, #8
BL              sub_1E5190
VLDR            S0, =0.0
ADD             R5, R6, #0x14000
MOV             R4, #0
VSTR            S0, [R5,#0x2CC]
VSTR            S0, [R5,#0x2D0]
VSTR            S0, [R5,#0x2D4]
LDRB            R0, [R5,#0x28D]
CMP             R0, #0
BLE             locret_2ADA10
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
BLX             R1
LDRB            R0, [R5,#0x28D]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_2AD9E8
POP             {R4-R6,PC}
