PUSH            {R4-R10,LR}
MOV             R8, R0
MOV             R7, #0
LDR             R9, =off_6D1648
ADD             R0, R8, R7
ADD             R5, R0, #0x14000
MOV             R4, #0
LDRB            R0, [R5,#0x28B]
CMP             R0, #0
ADDGT           R0, R8, R7,LSL#2
ADDGT           R6, R0, #0x13C00
ADDGT           R6, R6, #0xA4
BLE             loc_18A488
LDR             R0, [R6]
ADD             R0, R0, R4,LSL#1
LDRH            R0, [R0]
NOP
LDR             R2, [R9]
MOV             R1, R0
LDR             R2, [R2,#0xA0]
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x204
MOV             R0, R2
BL              sub_50EB80
LDRB            R0, [R5,#0x28B]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18A44C
ADD             R7, R7, #1
CMP             R7, #2
BLT             loc_18A428
LDR             R0, =0x13D64
LDR             R5, [R0,R8]
CMP             R5, #0
LDRNE           R6, =0xFFFF
BEQ             loc_18A50C
MOV             R4, #0
ADD             R0, R4, R4,LSL#1
ADD             R0, R5, R0,LSL#1
LDRH            R0, [R0,#0x4C]
CMP             R0, R6
BEQ             loc_18A4F0
BL              sub_2B2160
LDR             R0, [R0,#8]
CMN             R0, #1
BEQ             loc_18A4F0
UXTH            R0, R0
NOP
MOV             R1, R0
LDR             R0, [R9]
LDR             R0, [R0,#0xA0]
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x204
BL              sub_50EB80
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_18A4AC
LDR             R0, [R5]
TST             R0, #1
ADDEQ           R5, R5, #0x88
BEQ             loc_18A4A8
LDR             R0, =0x14B6C
LDR             R5, [R0,R8]
CMP             R5, #0
BEQ             loc_18A570
MOV             R4, #0
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0x50]
CMN             R0, #1
BEQ             loc_18A554
UXTH            R0, R0
NOP
LDR             R2, [R9]
MOV             R1, R0
LDR             R2, [R2,#0xA0]
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x204
MOV             R0, R2
BL              sub_50EB80
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_18A520
LDRB            R0, [R5]
TST             R0, #1
ADDEQ           R5, R5, #0x94
BEQ             loc_18A51C
LDR             R0, =0x13CFC
LDR             R3, =0x49249249
MOV             R2, #0
LDR             R1, [R0,R8]
LDR             R0, [R1,#0x5C]
UMLAL           R3, R2, R0, R3
MOVS            R0, R2,LSR#3
LDRNE           R0, [R1,#0x58]
ADDNE           R4, R1, R0
BEQ             loc_18A5D0
LDR             R0, [R4,#4]
UXTH            R0, R0
NOP
LDR             R2, [R9]
MOV             R1, R0
LDR             R2, [R2,#0xA0]
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x204
MOV             R0, R2
BL              sub_50EB80
LDR             R0, [R4]
TST             R0, #1
ADDEQ           R4, R4, #0x1C
BEQ             loc_18A598
LDR             R0, [R8]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DDA4
LDM             R0, {R1,R2}
MOV             R0, R8
POP             {R4-R10,LR}
BX              R12
