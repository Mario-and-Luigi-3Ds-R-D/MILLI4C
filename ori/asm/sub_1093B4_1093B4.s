PUSH            {R4-R12,LR}
MOV             R1, #0
MOV             R10, R0
ADD             R0, R0, #0x400
LDR             R2, =0x65C
ADD             R0, R0, #0x34C
BL              sub_110BE4
MOV             R7, #0
LDR             R1, =unk_657FF0
ADD             R0, R7, R7,LSL#1
RSB             R0, R0, R7,LSL#5
MOV             R2, #4
ADD             R6, R10, R0,LSL#3
ADD             R6, R6, #0x400
ADD             R6, R6, #0x34C
ADD             R0, R6, #0x12
STRH            R7, [R6]
LDRB            R1, [R1,R7]
STRB            R1, [R6,#0x2F]
MOV             R1, #0
BL              sub_110BE4
MOV             R2, #4
ADD             R0, R6, #0x16
MOV             R1, #0
BL              sub_110BE4
MOV             R2, #4
ADD             R0, R6, #0x1A
MOV             R1, #0
BL              sub_110BE4
MOV             R2, #4
ADD             R0, R6, #0x1E
MOV             R1, #0
BL              sub_110BE4
MOV             R2, #4
ADD             R0, R6, #0x22 ; '"'
MOV             R1, #0
BL              sub_110BE4
MOV             R2, #4
ADD             R0, R6, #0x26 ; '&'
MOV             R1, #0
BL              sub_110BE4
LDR             R1, [R6,#0x30]
MOV             R2, #0xA
ADD             R0, R6, #0x34 ; '4'
BIC             R1, R1, #0x70000000
ORR             R1, R1, #0x30000000
STR             R1, [R6,#0x30]
MOV             R1, #0
BL              sub_110BE4
AND             R1, R7, #0xFF
LDR             R0, =unk_658002
ADD             R3, R1, R1,LSL#1
RSB             R1, R3, R1,LSL#5
ADD             R2, R7, R7,LSL#1
ADD             R11, R10, R1,LSL#3
ADD             R8, R11, #0x400
MOV             R5, #0
ADD             R9, R0, R2,LSL#1
ADD             R8, R8, #0x34C
ADD             R4, R9, R5,LSL#1
MOV             R2, #1
LDRH            R1, [R4]
MOV             R0, R10
BL              sub_112928
AND             R1, R5, #0xFF
LDRH            R0, [R4]
ADD             R1, R8, R1,LSL#1
MOV             R4, R8
STRH            R0, [R1,#0x34]
MOV             R0, R8
BL              sub_112548
LDRH            R1, [R4,#2]
LDRH            R0, [R4,#6]
ADD             R5, R5, #1
CMP             R1, R0
STRHHI          R0, [R4,#2]
LDRH            R0, [R4,#8]
LDRH            R1, [R4,#4]
CMP             R1, R0
STRHHI          R0, [R4,#4]
CMP             R5, #3
BLT             loc_1094A0
LDR             R0, =unk_657FF2
MOV             R2, #1
ADD             R4, R0, R7,LSL#1
MOV             R0, R10
LDRH            R1, [R4]
BL              sub_112928
LDR             R1, =0x78A
LDRH            R0, [R4]
STRH            R0, [R1,R11]
LDR             R1, [R6,#0x2C]
LDRH            R0, [R6]
MOV             R1, R1,LSR#24
AND             R0, R0, #0xFF
BL              sub_11CA24
LDR             R1, [R6,#0x2C]
LDR             R2, [R0,#8]
MOV             R4, R0
AND             R0, R1, #0xFF000000
BIC             R1, R2, #0xFF000000
ORR             R0, R0, R1
MOV             R1, #0x64 ; 'd'
CMP             R1, R0,LSR#24
STR             R0, [R6,#0x2C]
MOVHI           R0, R0,LSR#24
ADDHI           R1, R0, #1
LDRH            R0, [R6]
MOVLS           R1, #0x64 ; 'd'
AND             R1, R1, #0xFF
AND             R0, R0, #0xFF
BL              sub_11CA24
LDR             R1, [R0,#8]
LDR             R3, [R4,#8]
LDR             R12, [R6,#0x30]
MOV             R2, #0xA
SUB             R1, R1, R3
AND             R3, R12, #0xFF000000
BIC             R1, R1, #0xFF000000
ORR             R1, R1, R3
STR             R1, [R6,#0x30]
ADD             R0, R6, #0x40 ; '@'
MOV             R1, #0
BL              sub_110BE4
MOV             R2, #0x10
ADD             R0, R6, #0x4A ; 'J'
MOV             R1, #0
BL              sub_110BE4
MOV             R2, #8
ADD             R0, R6, #0x5A ; 'Z'
MOV             R1, #0
BL              sub_110BE4
LDRH            R0, [R6,#6]
ADD             R7, R7, #1
CMP             R7, #2
STRH            R0, [R6,#2]
LDRH            R0, [R6,#8]
STRH            R0, [R6,#4]
BLT             loc_1093D4
LDR             R5, =unk_657FF6
MOV             R0, #0
MOV             R4, R0
STR             R0, [R10,#0x91C]
ADD             R0, R5, R4,LSL#2
LDRSB           R2, [R0,#2]
LDRH            R1, [R0]
MOV             R0, R10
BL              sub_112928
ADD             R4, R4, #1
CMP             R4, #3
BLT             loc_1095F0
MOV             R0, #2
STRB            R0, [R10,#0xA09]
POP             {R4-R12,PC}
