PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#4]
LDR             R7, =off_6CE970
MOV             R1, #2
ADD             R0, R0, #0x12C00
ADD             R0, R0, #0x1C
MOV             R3, #0
STRB            R1, [R0]
LDR             R0, [R7]
ADD             R4, R5, #0x14
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #4
BL              sub_10A358
CMP             R0, #0
BLNE            sub_2864E0
LDR             R1, [R4,#8]
MOV             R6, R0
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_295ABC
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
STR             R6, [R4]
LDR             R1, [R5,#4]
LDR             R0, [R5,#0x14]
LDR             R1, [R1,#0x14]
STR             R1, [R0]
LDR             R0, [R7]
MOV             R3, #0
ADD             R4, R5, #8
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x2C ; ','
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_295964
LDR             R1, [R7]
LDR             R2, [R5,#0x14]
ADD             R1, R1, #0x10C000
ADD             R1, R1, #0x214
BL              sub_296B48
MOV             R6, R0
LDR             R1, [R4,#8]
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_295AD8
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
STR             R6, [R4]
LDR             R0, [R5,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R4, R0, #0x30 ; '0'
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x6A8
BL              sub_10A358
MOVS            R2, R0
NOP
BEQ             loc_2959C0
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x24]
MOV             R0, R2
BL              sub_28A714
LDR             R1, [R4,#8]
MOV             R6, R0
ADD             R0, R4, #4
CMP             R1, R0
BNE             loc_295AF4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2959F0
BL              sub_28AA60
NOP
NOP
BL              sub_300FD4
STR             R6, [R4]
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x30]
LDR             R0, [R0,#0x18]
VLDR            S0, [R0,#0xE0]
MOV             R0, R1
BL              sub_288FF0
LDR             R0, [R5,#4]
MOV             R1, SP
LDR             R0, [R0,#0x30]
BL              sub_5CDBDC
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x30]
LDR             R0, [R0,#0x18]
ADD             R1, R1, #0x400
ADD             R1, R1, #0x1A4
BL              sub_286B68
MOV             R1, SP
NOP
BL              sub_286B7C
LDR             R0, [R5,#4]
MOV             R1, #1
LDR             R0, [R0,#0x40]
BL              sub_2816C0
MOV             R0, #0
STRB            R0, [R5,#0x20]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
BL              sub_2850B4
LDR             R0, [R5,#4]
ADD             R1, R0, #0x12400
ADD             R0, R0, #0x12400
ADD             R1, R1, #0x3D8
ADD             R0, R0, #0x3DC
LDR             R4, [R1]
LDR             R0, [R0]
CMP             R0, R4
BEQ             loc_295AB4
LDR             R0, [R4]
BL              sub_299344
LDR             R0, [R5,#4]
ADD             R4, R4, #0xC
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x3DC
LDR             R0, [R0]
CMP             R0, R4
BNE             loc_295A90
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_295910
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_295980
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_2959F0
