MOV             R1, #0
MOV             R2, R1
MOV             R3, R1
PUSH            {R4,R5}
ADD             R12, R0, R3,LSL#1
LDRH            R12, [R12]
CMP             R12, #0x3A ; ':'
BEQ             loc_11688C
MOV             R4, R2,LSL#8
MOV             R2, R1,LSR#24
SXTB            R12, R12
ADD             R3, R3, #1
ORR             R2, R2, R4
CMP             R3, #8
ORR             R1, R12, R1,LSL#8
ORR             R2, R2, R12,ASR#31
BLT             loc_116850
MOV             R1, #0
MOV             R2, R1
ORRS            R0, R1, R2
LDRNE           R3, =unk_700AF8
MOVNE           R0, #0
BEQ             loc_1168FC
ADD             R5, R3, R0,LSL#4
LDR             R12, [R5]
LDR             R4, [R5,#4]
EOR             R12, R12, R1
EOR             R4, R4, R2
ORRS            R12, R12, R4
BNE             loc_1168C0
ADD             R0, R3, R0,LSL#4
B               loc_1168E0
ADD             R5, R5, #0x10
LDM             R5, {R4,R12}
EOR             R4, R4, R1
EOR             R12, R12, R2
ORRS            R12, R12, R4
BNE             loc_1168F0
ADD             R0, R3, R0,LSL#4
ADD             R0, R0, #0x10
CMP             R0, #0
LDRNE           R0, [R0,#8]
BNE             loc_116900
B               loc_1168FC
ADD             R0, R0, #2
CMP             R0, #0x20 ; ' '
BLT             loc_11689C
MOV             R0, #0
POP             {R4,R5}
BX              LR
