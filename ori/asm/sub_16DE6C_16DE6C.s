PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R7, R1
MOV             R5, R2
LDR             R0, [R1]
MOV             R9, R3
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #2
BCS             loc_16DEA4
LDR             R0, [R5,#0x668]
CMN             R0, #1
BEQ             loc_16E0A4
LDR             R0, [R5]
LDR             R1, [R0,#0x78]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_16E0A4
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #6
BEQ             loc_16DEE0
LDR             R0, [R7,#0x648]
TST             R0, #0x10000
BNE             loc_16E0A4
LDR             R1, [R5,#0x658]
ADD             R8, R6, #0x2600
ADD             R8, R8, #0x86
LDRB            R0, [R8]
MOV             R1, R1,LSL#2
CMP             R0, #1
MOV             R4, R1,LSR#26
BEQ             loc_16DF10
CMP             R0, #2
CMPNE           R0, #3
BNE             loc_16E080
B               loc_16DF88
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #7
BNE             loc_16E080
ADD             R6, R6, #0x2400
ADD             R6, R6, #0x298
LDRB            R0, [R6]
CMP             R0, #0
BEQ             loc_16DF58
CMP             R0, #1
BEQ             loc_16DF64
CMP             R0, #2
BEQ             loc_16DF70
CMP             R0, #3
BEQ             loc_16DF7C
B               loc_16E080
CMP             R4, #0x10
BNE             loc_16E07C
B               loc_16E080
CMP             R4, #2
BEQ             loc_16E080
B               loc_16E07C
CMP             R4, #0x20 ; ' '
BEQ             loc_16E080
B               loc_16E07C
CMP             R4, #8
BEQ             loc_16E080
B               loc_16E07C
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #7
BNE             loc_16E080
LDRB            R0, [R8]
LDR             R2, =0x26AB
CMP             R0, #2
MOVNE           R1, #0x2D ; '-'
LDRB            R2, [R2,R6]
MOVEQ           R1, #0x5A ; 'Z'
ADD             R0, R6, #0x2400
CMP             R2, #0
VLDRNE          S0, [R0,#0x29C]
VLDREQ          S0, [R0,#0x298]
CMP             R4, #2
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
SUBEQ           R0, R0, #0x5A ; 'Z'
BEQ             loc_16E004
CMP             R4, #8
SUBEQ           R0, R0, #0x100
SUBEQ           R0, R0, #0xE
SXTHEQ          R0, R0
CMPNE           R4, #0x10
BEQ             loc_16E008
CMP             R4, #0x20 ; ' '
SUBEQ           R0, R0, #0xB4
BNE             loc_16E008
SXTH            R0, R0
RSB             R2, R0, #0xB3
CMP             R2, #0x168
BLT             loc_16E034
LDR             R3, =0x2D83
MUL             R2, R2, R3
MOV             R3, R2,ASR#22
SUB             R2, R3, R2,ASR#31
RSB             R2, R2, R2,LSL#4
ADD             R2, R2, R2,LSL#1
ADD             R0, R0, R2,LSL#3
SXTH            R0, R0
LDR             R3, =0x2D83
MOV             R2, #0xFFFFFF4D
SUB             R2, R2, R0
MUL             R2, R2, R3
MOV             R3, R2,ASR#22
SUB             R2, R3, R2,ASR#31
RSB             R3, R2, #0
CMP             R3, #0
BLE             loc_16E068
RSB             R2, R2, R2,LSL#4
ADD             R2, R2, R2,LSL#1
ADD             R0, R0, R2,LSL#3
SXTH            R0, R0
RSB             R2, R1, #0
CMP             R0, R2
BLT             loc_16E07C
CMP             R0, R1
BLE             loc_16E080
MOV             R4, #0
LDR             R0, [R7,#0x658]
LDR             R1, [R5,#0x658]
MOV             R0, R0,LSL#14
MOV             R1, R1,LSL#8
AND             R0, R9, R0,LSR#26
AND             R0, R0, R1,LSR#26
TST             R0, R4
MOVNE           R0, #0
BNE             locret_16E0A8
MOV             R0, #1
POP             {R4-R10,PC}
