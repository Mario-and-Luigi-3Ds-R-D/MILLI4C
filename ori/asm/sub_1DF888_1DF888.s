PUSH            {R4-R7,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
LDR             R0, =off_6B17A4
MOV             R4, #0
MOV             R7, R4
STR             R0, [R6]
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5,#0x54]!
CMP             R0, #0
BEQ             loc_1DF8C4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R5]
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_1DF8A4
MOV             R0, #0
LDR             R4, =off_6CE970
REV             R0, R0
ADD             R2, SP, #0x20+var_1C
STR             R0, [SP,#0x20+var_1C]
MOV             R0, #0xFFFFFFFF
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R4]
BL              sub_52A494
LDR             R5, =0x19DFE8
LDR             R0, [R4]
MOV             R1, #0
LDR             R0, [R0,R5]
BL              sub_1CC93C
LDR             R0, [R4]
MOV             R1, #0
LDR             R0, [R0,R5]
BL              sub_1CCA1C
LDR             R0, [R4]
MOV             R1, #0
LDR             R0, [R0,R5]
BL              sub_1CCA30
LDR             R0, [R4]
LDR             R0, [R0,R5]
BL              sub_4D65C4
ADD             R0, R6, #0x20C00
ADD             R0, R0, #0x374
NOP
SUB             R0, R0, #0x38 ; '8'
NOP
NOP
SUB             R0, R0, #0x28 ; '('
NOP
BL              sub_4E7CC8
SUB             R6, R0, #0x430
LDRB            R0, [R0,#-0xF]
CMP             R0, #0
MOVEQ           R4, R6
ADDEQ           R5, R6, #0x420
BNE             loc_1DF9AC
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_1DF998
BL              sub_533330
LDR             R0, [R4,#8]
CMP             R0, #0
STRNE           R7, [R0,#0x184]
STRNE           R7, [R4,#8]
STR             R7, [R4],#0x10
CMP             R4, R5
BNE             loc_1DF978
MOV             R1, #1
STRB            R1, [R6,#0x421]
LDR             R1, =sub_29F4B4
MOV             R3, #0x42 ; 'B'
MOV             R2, #0x10
MOV             R0, R6
BLX             sub_1009D8
SUB             R0, R6, #0x800
LDR             R2, =0x4B8
LDR             R1, =sub_38624C
MOV             R3, #2
SUB             R0, R0, #0x198
BLX             sub_1009D8
SUB             R0, R6, #0xD90
NOP
BL              sub_14F3EC
LDR             R1, =off_6B6598
STR             R1, [R0,#-0x294]
SUB             R0, R0, #0x104
BL              sub_593394
SUB             R0, R0, #0x1C
NOP
NOP
LDR             R5, =off_6B7BFC
SUB             R4, R0, #0x74 ; 't'
LDR             R1, =sub_5A2F60
STR             R5, [R0,#-0x74]
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x44 ; 'D'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x100
NOP
BL              sub_14CD84
LDR             R1, =off_6B6998
STR             R1, [R0,#-0x2A0]!
MOV             R1, #0x29C
STRH            R7, [R1,R0]
ADD             R0, R0, #0x190
BL              sub_593394
SUB             R0, R0, #0x1C
NOP
NOP
SUB             R4, R0, #0x74 ; 't'
STR             R5, [R0,#-0x74]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x44 ; 'D'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x100
NOP
BL              sub_14CD84
SUB             R0, R0, #0xE800
SUB             R0, R0, #0x1CC
BL              sub_2C7400
LDR             R1, =off_6B3E70
STR             R1, [R0,#-0x2AC]
SUB             R0, R0, #0x11C
BL              sub_593394
SUB             R0, R0, #0x1C
NOP
NOP
SUB             R4, R0, #0x74 ; 't'
STR             R5, [R0,#-0x74]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x44 ; 'D'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x100
NOP
BL              sub_14CD84
SUB             R0, R0, #0x8000
SUB             R0, R0, #0x310
BL              sub_2A722C
LDR             R1, =off_6B4050
SUB             R0, R0, #0x7400
SUB             R0, R0, #0x2D8
STR             R1, [R0],#0x400
BL              sub_2C20A8
SUB             R0, R0, #0x400
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
LDR             R1, =off_6B2B20
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0,#-0xD54]!
LDR             R1, =off_6B7BEC
ADD             R4, R0, #0x400
ADD             R4, R4, #0x118
STR             R1, [R0,#0x518]
LDR             R1, =nullsub_300
ADD             R0, R0, #0x530
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x104
NOP
BL              sub_593394
SUB             R0, R0, #0x400
SUB             R0, R0, #0x14
BL              sub_14F3EC
SUB             R0, R0, #0x74 ; 't'
NOP
BL              sub_1DFC1C
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
