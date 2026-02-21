PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #0x10C00
ADD             R0, R0, #0x254
VPUSH           {D8}
SUB             SP, SP, #0xC
BL              sub_2C6680
CMP             R0, #0
BEQ             loc_1DCA6C
LDRB            R2, [R4,#0x53]
LDR             R7, =off_6CE970
MOV             R0, #0
CMP             R2, #0
BLS             loc_1DC9A4
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x54]
LDRB            R1, [R1,#0x3F6]
CMP             R1, #7
BEQ             loc_1DC9D0
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R2, R0
BHI             loc_1DC980
MOV             R2, #0
LDR             R0, =0xE007
MOV             R1, R2
VLDR            S0, =1.0
BL              sub_145730
LDRB            R0, [R4,#0x52]
LDR             R5, =unk_656B78
BICS            R0, R0, #1
STRB            R0, [R4,#0x52]
BEQ             loc_1DCA24
B               loc_1DCA58
ADD             R0, R4, R0,LSL#2
LDR             R6, [R7]
LDR             R5, [R0,#0x54]
BL              sub_4635D8
MOV             R2, #0
MOV             R1, #7
STMEA           SP, {R1,R2}
MOV             R3, R0
LDR             R1, =0x594
MOV             R2, R5
MOV             R0, R6
BL              sub_52C764
MOV             R6, R0
LDR             R0, [R5,#0x458]!
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
B               loc_1DC9A4
VLDR            S16, [R5,#(flt_656B80 - 0x656B78)]
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1DCA48
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1DCA78
MOV             R1, #3
VMOV.F32        S0, S16
MOV             R0, R4
BL              sub_1DB5F8
ADD             R5, R5, #0x24 ; '$'
ADD             R1, R4, #0x20800
LDM             R5, {R0,R2}
ADD             R1, R1, #0x2BC
STM             R1, {R0,R2}
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R7]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
CMP             R0, #0
MOVEQ           R1, #1
MOVNE           R1, #2
B               loc_1DCA4C
