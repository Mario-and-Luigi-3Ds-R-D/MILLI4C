ADD             R1, R2, #8
PUSH            {R4,LR}
LDM             R1, {R1,R3}
LDR             R2, [R2,#0x10]
MOV             R12, R1,LSL#20
AND             R1, R3, #0xFF
MOV             R12, R12,LSR#20
UXTH            R2, R2
ADD             R0, R0, R12,LSL#3
LDR             R0, [R0,#0x2B4]
CMP             R0, #0
BLNE            sub_149C10
MOV             R0, #0
POP             {R4,PC}
