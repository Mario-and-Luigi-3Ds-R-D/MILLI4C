PUSH            {R4-R11,LR}
MOV             R6, R0
ADD             R7, R0, #0x14000
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRB            R4, [R7,#0x284]
LDRH            R0, [R0,#4]
SUB             SP, SP, #0x1C
BL              sub_2B41D0
CMP             R0, #0xFF
STRB            R0, [R7,#0x284]
BEQ             loc_19142C
CMP             R0, R4
BNE             loc_191260
LDR             R1, =off_6D1648
LDR             R1, [R1]
LDR             R1, [R1,#0xC8]
TST             R1, #7
BEQ             loc_19142C
NOP
BL              sub_2B29D4
MOV             R9, R0
LDRB            R0, [R7,#0x284]
BL              sub_2B423C
MOVS            R8, R0
ADD             R0, R6, #0x13C00
ADD             R0, R0, #0x5C ; '\'
MOV             R4, #0
STR             R0, [SP,#0x40+var_28]
MOV             R5, R4
MOVNE           R0, R9
MOVNE           R1, R8
MOVEQ           R10, #0
BEQ             loc_1912DC
LDR             R2, [R0],#4
TST             R2, #0xFF000
ADDNE           R4, R4, #1
ADDEQ           R5, R5, #1
SUBS            R1, R1, #1
BNE             loc_19129C
ADDS            R10, R4, R5
BEQ             loc_1912DC
MOV             R3, #0
LDR             R1, [SP,#0x40+var_28]
MOV             R0, R10,LSL#1
MOV             R2, R3
BL              sub_1143B4
NOP
NOP
B               loc_1912E0
MOV             R0, #0
STR             R0, [SP,#0x40+var_2C]
LDR             R0, =0x13C80
LDR             R1, [SP,#0x40+var_2C]
ADD             R11, R6, #0x13C00
CMP             R4, #0
ADD             R11, R11, #0x84
STR             R1, [R0,R6]
MOVEQ           R0, #0
STREQ           R0, [R11]
BEQ             loc_191384
ADD             R0, R4, R4,LSL#1
MOV             R1, #8
ADD             R0, R1, R0,LSL#5
MOV             R3, #0
LDR             R1, [SP,#0x40+var_28]
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
MOVEQ           R3, #0
BEQ             loc_191354
ADD             R0, R0, #8
SUB             R12, R0, #8
MOV             R1, #0x60 ; '`'
STM             R12, {R1,R4}
MOV             R2, R1
LDR             R1, =sub_1E4DE4
MOV             R3, R4
BLX             sub_1002F4
MOV             R3, R0
STR             R3, [R11]
MOV             R0, #0
STR             R0, [SP,#0x40+var_34]
STR             R8, [SP,#0x40+var_38]
STR             R0, [SP,#0x40+var_30]
STMEA           SP, {R4,R9}
LDR             R0, [R6]
LDR             R1, [SP,#0x40+var_2C]
MOV             R2, R10
LDR             R12, [R0,#0x140]
MOV             R0, R6
BLX             R12
STRB            R4, [R7,#0x285]
ADD             R4, R6, #0x13C00
CMP             R5, #0
ADD             R4, R4, #0x88
MOVEQ           R0, #0
STREQ           R0, [R4]
BEQ             loc_191404
MOV             R3, #0
LDR             R1, [SP,#0x40+var_28]
MOV             R0, R5,LSL#6
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_1913D0
LDR             R1, =sub_232E2C
MOV             R3, R5
MOV             R2, #0x40 ; '@'
BLX             sub_1002F4
STR             R0, [R4]
MOV             R1, #0
STR             R1, [SP,#0x40+var_34]
STR             R8, [SP,#0x40+var_38]
STR             R1, [SP,#0x40+var_30]
STMEA           SP, {R5,R9}
LDR             R1, [R6]
MOV             R3, R0
MOV             R2, R10
MOV             R0, R6
LDR             R12, [R1,#0x144]
LDR             R1, [SP,#0x40+var_2C]
BLX             R12
STRB            R5, [R7,#0x286]
LDR             R0, [R6]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DC44
LDM             R0, {R1,R2}
ADD             SP, SP, #0x1C
MOV             R0, R6
POP             {R4-R11,LR}
BX              R12
LDR             R0, [R6]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DC4C
LDM             R0, {R1,R2}
ADD             SP, SP, #0x1C
MOV             R0, R6
POP             {R4-R11,LR}
BX              R12
