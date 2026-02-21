PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0x12800
MOV             R5, R1
ADD             R0, R0, #0x348
BL              sub_118710
LDR             R1, =0xFFFED4AB
MOV             R0, #0xE
ADD             R2, R1, #8
RSB             R12, R2, R0,ASR#3
RSB             R3, R1, R0,ASR#3
BIC             R7, R12, R0,ASR#2
SUB             R1, R4, R1
SUB             R2, R4, R2
STRB            R0, [R7,R4]
STRB            R0, [R1]
STRB            R0, [R2]
ORR             R6, R3, R0,ASR#1
STRB            R0, [R4,R3]
STRB            R0, [R4,R12]
STRB            R0, [R4,R6]
LDR             R1, [R5]
ADD             R0, R4, #0x10000
ADD             R0, R0, #0x2B00
MOV             R2, #0x78 ; 'x'
STR             R1, [R0,#0x5A]
ADD             R0, R4, #0x12000
LDR             R1, =unk_6EA188
ADD             R0, R0, #0xB60
BL              sub_1273D0
ADD             R4, R4, #0x13000
ADD             R4, R4, #0x6D0
LDR             R0, [R4]
ORR             R0, R0, #0x4000
STR             R0, [R4]
POP             {R4-R8,PC}
