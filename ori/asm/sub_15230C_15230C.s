PUSH            {R4-R8,LR}
MOV             R5, R0
LDRB            R1, [R0,#0x17]
LDR             R0, [R0,#8]
LDR             R7, =unk_63FC24
LDR             R8, =off_6CE970
CMP             R1, #0
LDR             R6, [R0,#0x18]
BEQ             loc_15245C
LDRB            R0, [R5,#0x1A]
CMP             R0, #0
BNE             loc_15245C
LDRB            R0, [R5,#0x14]
CMP             R0, #3
LDREQ           R4, [R8]
BNE             loc_15245C
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_15236C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]
CMP             R0, #0
LDREQ           R4, [R8]
BEQ             loc_1523B8
LDR             R0, [R8]
BL              sub_52FC34
MOVS            R4, R0
NOP
BEQ             loc_15245C
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_15245C
MOV             R0, #0x148
LDRSH           R0, [R0,R4]
CMP             R0, #0
BLE             loc_15245C
MOV             R0, R4
BL              sub_5EC730
CMP             R0, #0
NOP
BNE             loc_15245C
B               loc_152400
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_15245C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R4]; byte_19CF30
CMP             R0, #0
BNE             loc_15245C
MOV             R0, R5
BL              sub_151660
ADD             R0, R5, #0x100
LDRH            R1, [R0,#0x5C]
CMP             R1, #0
BEQ             loc_15245C
LDRH            R0, [R0,#0x5E]
CMP             R1, R0
BLS             loc_15245C
LDRB            R0, [R5,#0x1A]
MOV             R8, #0
MOV             R1, #0xFE
STRB            R1, [R5,#0x14]
ADD             R0, R0, #1
STRB            R8, [R5,#0x15]
MOV             R4, R8
STRB            R0, [R5,#0x1A]
ADD             R1, R5, R4,LSL#2
LDR             R0, [R1,#0x160]
CMP             R0, #0
ADDNE           R6, R1, #0x160
BEQ             loc_152450
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
STR             R8, [R6]
BCC             loc_152420
LDRD            R0, R1, [R7,#(off_63FC78 - 0x63FC24)]
STRD            R0, R1, [R5,#0xC]
POP             {R4-R8,PC}
MOV             R2, #0
MOV             R1, #2
MOV             R0, R6
BL              sub_14D960
LDR             R0, [R5,#8]
LDR             R12, [R8]
LDR             R2, =0x30091
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
STR             R0, [R5,#0x34]
LDR             R0, =unk_6E1DF4
VLDR            S1, =0.0
VLDR            S0, [R0,#(flt_6E1FB0 - 0x6E1DF4)]
LDR             R0, [R5,#8]
BL              sub_4E4124
LDRD            R0, R1, [R7,#(off_63FCE0 - 0x63FC24)]
NOP
B               loc_152454
