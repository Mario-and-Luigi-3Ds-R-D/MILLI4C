PUSH            {R4,LR}
STR             R1, [R0,#4]
LDR             R1, =off_6BBE44
STR             R1, [R0],#8
BL              sub_2603EC
ADD             R0, R0, #0x14
BL              sub_2603D4
ADD             R0, R0, #0x10
BL              sub_2603C4
SUB             R0, R0, #0x2C ; ','
MOV             R2, #0
ADD             R1, R0, #0x38 ; '8'
STR             R2, [R0,#0x34]
STR             R1, [R0,#0x3C]
STR             R1, [R0,#0x38]
ADD             R1, R0, #0x44 ; 'D'
STR             R2, [R0,#0x40]
STR             R1, [R0,#0x48]
STR             R1, [R0,#0x44]
ADD             R1, R0, #0x50 ; 'P'
STR             R2, [R0,#0x4C]
STR             R1, [R0,#0x54]
STR             R1, [R0,#0x50]
ADD             R1, R0, #0x5C ; '\'
STR             R2, [R0,#0x58]
STR             R1, [R0,#0x60]
STR             R1, [R0,#0x5C]
ADD             R1, R0, #0x68 ; 'h'
STR             R2, [R0,#0x64]
STR             R1, [R0,#0x6C]
STR             R1, [R0,#0x68]
ADD             R1, R0, #0x78 ; 'x'
STR             R2, [R0,#0x74]
STR             R1, [R0,#0x7C]
STR             R1, [R0,#0x78]!
ADD             R0, R0, #0x40 ; '@'
BL              sub_14F198
MOV             R1, #0
STRB            R1, [R0,#-0x18]!
STRB            R1, [R0,#0x40C]
SUB             R0, R0, #0xA0
POP             {R4,PC}
