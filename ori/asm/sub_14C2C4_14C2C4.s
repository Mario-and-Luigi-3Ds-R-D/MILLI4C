PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R6, R0
MOV             R4, R1
MOV             R0, SP
BL              sub_14B820
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, SP
LDR             R3, [R0,#0x44]
MOV             R0, R6
BLX             R3
LDRB            R0, [SP,#0x28+var_25]
LDRB            R1, [SP,#0x28+var_1D]
MOV             R7, #1
SMULBB          R0, R0, R1
ADD             R1, R0, R0,LSL#7
ADD             R0, R1, R0,LSL#15
MOV             R0, R0,LSL#1
MOV             R5, R0,LSR#24
CMP             R5, #0xFF
BCC             loc_14C34C
LDRB            R0, [R4,#0x64]
ORR             R1, R0, #1
MOV             R0, #1
STRB            R0, [R4,#0x65]
AND             R0, R1, #0xFF
ORR             R0, R0, #0x70 ; 'p'
STRB            R0, [R4,#0x64]
LDRB            R0, [R4,#0x5C]
BIC             R0, R0, #1
STRB            R0, [R4,#0x5C]
STRB            R7, [R4,#0x70]
B               loc_14C3CC
LDR             R0, =off_6CE970
MOV             R1, R6
LDR             R0, [R0]
BL              sub_52C4E4
LDRB            R12, [R4,#0x5C]
MOV             R3, #0xFF
MOV             R1, #0
BIC             R12, R12, #0x70 ; 'p'
ORR             R12, R12, #0x31 ; '1'
STRB            R12, [R4,#0x5C]
STRB            R3, [R4,#0x5D]
STRB            R0, [R4,#0x5E]
STRB            R3, [R4,#0x5F]
LDRH            R0, [R4,#0x60]
BIC             R0, R0, #0x700
BIC             R0, R0, #0x77 ; 'w'
ORR             R0, R0, #0x200
STRH            R0, [R4,#0x60]
ADD             R0, R5, R5,LSL#1
STRB            R1, [R4,#0x70]
CMP             R3, R0,LSR#2
MOVLS           R0, #0xFF
BLS             loc_14C3B4
CMP             R7, R0,LSR#2
MOVCS           R0, #1
MOVCC           R0, R0,LSR#2
LDRB            R1, [R4,#0x64]
STRB            R0, [R4,#0x65]
ORR             R1, R1, #1
AND             R0, R1, #0xFF
ORR             R0, R0, #0x70 ; 'p'
STRB            R0, [R4,#0x64]
STRB            R7, [R4,#0x71]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
