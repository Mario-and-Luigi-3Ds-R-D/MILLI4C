PUSH            {R4,LR}
MOV             R4, R0
BL              sub_5405E4
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_5C8540
CMP             R0, #0
MOV             R0, #0
BNE             loc_1712A4
LDR             R1, =0x276C
ORR             R2, R1, R1,ASR#10
STRB            R0, [R1,R4]
STRB            R0, [R2,R4]
ADD             R1, R4, #0x2700
ADD             R2, R4, #0x2700
ADD             R1, R1, #0x6E ; 'n'
ADD             R3, R4, #0x2000
ADD             R2, R2, #0x6F ; 'o'
ADD             R3, R3, #0x690
ADD             R4, R4, #0x2400
STRB            R0, [R1]
ADD             R4, R4, #0x28C
STRB            R0, [R2]
STR             R0, [R3]
STR             R0, [R4]
POP             {R4,PC}
