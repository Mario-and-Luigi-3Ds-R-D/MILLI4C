PUSH            {R4-R6,LR}
MOV             R4, #0
STRB            R4, [R0]
STRB            R4, [R0,#1]
STRB            R4, [R0,#2]
LDR             R1, =sub_120D88
MOV             R3, #8
MOV             R2, #0x2C ; ','
ADD             R0, R0, #4
BLX             sub_1002F4
SUB             R0, R0, #4
MOV             R1, #1
STRB            R4, [R0,#0x184]
STRB            R4, [R0,#0x185]
STRB            R4, [R0,#0x186]
STRB            R4, [R0,#0x187]
STRB            R4, [R0,#0x188]
STRB            R4, [R0,#0x189]
STRB            R4, [R0,#0x18A]
STRB            R4, [R0,#0x18B]
STRB            R4, [R0,#0x18C]
STRB            R4, [R0,#0x18D]
STRB            R1, [R0,#0x18E]
STRB            R4, [R0,#0x18F]
STRB            R4, [R0,#0x190]
STRB            R1, [R0,#0x191]
STRB            R4, [R0,#0x194]
STRB            R4, [R0,#0x195]
STRB            R4, [R0,#0x196]
STRB            R4, [R0,#0x198]
STRB            R4, [R0,#0x199]
STRB            R4, [R0,#0x19A]
STRB            R4, [R0,#0x19C]
STRB            R4, [R0,#0x19D]
STRB            R4, [R0,#0x19E]
STRB            R4, [R0,#0x1A0]
STRB            R4, [R0,#0x1A1]
STRB            R4, [R0,#0x1A2]
STRB            R4, [R0,#0x1A4]
STRB            R4, [R0,#0x1A5]
STRB            R4, [R0,#0x1A6]
STRB            R4, [R0,#0x1A8]
STRB            R4, [R0,#0x1A9]
STRB            R4, [R0,#0x1AA]
STRB            R4, [R0,#0x1AC]
STRB            R4, [R0,#0x1AD]
MOV             R1, #0
MOV             R12, #8
STRB            R4, [R0,#0x1AE]
ADD             R2, R1, R1,LSL#1
ADD             R3, R2, R1,LSL#3
MOV             R2, R1
ADD             R5, R0, R3,LSL#2
ADD             R3, R0, R1
SUBS            R12, R12, #1
STRB            R4, [R3,#0x164]
STRB            R4, [R3,#0x16C]
STRB            R4, [R3,#0x174]
STRB            R4, [R3,#0x17C]
ADD             R1, R1, #1
STRB            R2, [R5,#4]
BNE             loc_1178BC
POP             {R4-R6,PC}
