PUSH            {R4,LR}
LDR             R4, =byte_6D49D8
SUB             SP, SP, #8
LDRB            R0, [R4]
CMP             R0, #0
BEQ             loc_123B3C
MOV             R0, SP
BL              sub_12A938
ANDS            R1, R0, #0x80000000
BMI             loc_123B3C
ADD             R0, SP, #0x10+var_C
BL              sub_12A8C0
ANDS            R1, R0, #0x80000000
BMI             loc_123B3C
LDRB            R0, [SP,#0x10+var_10]
LDRB            R1, [SP,#0x10+var_C]
ORR             R0, R0, R1
STRB            R0, [R4,#(byte_6D49D9 - 0x6D49D8)]
MOV             R0, #0
BL              sub_12A8FC
AND             R1, R0, #0x80000000
CMP             R1, #0
MOVGE           R0, #0
BLGE            sub_12A974
ADD             SP, SP, #8
POP             {R4,PC}
