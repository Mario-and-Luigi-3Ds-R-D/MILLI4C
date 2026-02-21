PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x1A4
LDR             R0, [R0,#8]
MOV             R5, R0
ADD             R0, R4, #0x2AC
LDR             R0, [R0,#8]
LDR             R2, [R4,#4]
ADD             R1, R0, R5
LDR             R0, [R4,#0x220]
ADD             R2, R2, #0x8C
LDM             R2, {R3,R12}
CMP             R0, #0
UXTH            R2, R1
ADD             R0, R12, R1,ASR#16
ADD             R0, R0, R3
SXTH            R1, R0
ORR             R0, R2, R1,LSL#16
BEQ             locret_135968
LDR             R2, [R4,#0x234]
UXTH            R3, R0
ADD             R0, R1, R2
ORR             R0, R3, R0,LSL#16
POP             {R4-R6,PC}
