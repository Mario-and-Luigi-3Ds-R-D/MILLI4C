PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R8, R0, #0x16800
ADD             R8, R8, #0x2E4
MOV             R10, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDR             R0, [R8]
CMP             R0, #0
BEQ             loc_1633F0
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R8]
LDR             R1, [R0,#4]
CMP             R1, #0
BNE             loc_163530
LDR             R0, [R0,#8]
TST             R0, #1
CMPNE           R0, #0
STREQ           R10, [R8]
BNE             loc_163530
ADD             R9, R5, #0x16000
ADD             R9, R9, #0xAE0
ADD             R7, R5, #0x14000
LDRB            R4, [R9]
LDRB            R0, [R7,#0x28D]
CMP             R0, R4
BLE             loc_1634A4
LDR             R11, =off_6D1648
ADD             R0, R5, #0x15000
VLDR            S16, =-400.0
VLDR            S17, =400.0
VLDR            S18, =180.0
VLDR            S19, =-180.0
ADD             R0, R0, #0x13C
STR             R0, [SP,#0x50+var_38]
ADD             R0, R5, R4,LSL#2
ADD             R6, R0, #0x14000
LDR             R0, [R6,#0x184]
CMP             R0, #0
BEQ             loc_163494
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #7
BNE             loc_163494
LDR             R6, [R6,#0x184]
LDR             R0, =0xAA8
LDRH            R0, [R0,R6]
AND             R0, R0, #7
CMP             R0, #2
BEQ             loc_1634D4
LDR             R0, [R11]
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_163494
ADD             R0, R6, #0x108
ADD             R6, R6, #0x800
LDM             R0, {R0-R2}
ADD             R6, R6, #0x2CC
STM             R6, {R0-R2}
ADD             R4, R4, #1
LDRB            R0, [R7,#0x28D]
CMP             R0, R4
BGT             loc_16342C
STRB            R10, [R9]
STR             R10, [R8]
LDR             R0, [R5]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E814
LDM             R0, {R1,R2}
ADD             SP, SP, #0x1C
MOV             R0, R5
VPOP            {D8-D9}
POP             {R4-R11,LR}
BX              R12
MOV             R0, SP
BL              sub_35E680
ADD             R1, SP, #0x50+var_48
MOV             R0, #0x10
VSTM            R1, {S16-S19}
MOV             R2, SP
MOV             R1, #4
STRH            R0, [SP,#0x50+var_50]
STR             R6, [SP,#0x50+var_4C]
LDR             R0, [SP,#0x50+var_38]
BL              loc_19D68C
ADD             R1, R4, #1
STR             R0, [R8]
STRB            R1, [R9]
LDR             R1, [R0,#4]
CMP             R1, #0
BNE             loc_163530
LDR             R0, [R0,#8]
TST             R0, #1
CMPNE           R0, #0
STREQ           R10, [R8]
BNE             loc_163530
B               loc_16346C
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R11,PC}
