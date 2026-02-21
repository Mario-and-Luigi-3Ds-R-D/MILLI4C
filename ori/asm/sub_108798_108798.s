PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
LDR             R1, =off_6B7B24
MOV             R4, #0
STR             R4, [R0,#4]
STR             R1, [R0]
STR             R4, [R0,#8]
STR             R4, [R0,#0xC]!
ADD             R0, R0, #4
BL              sub_111F70
LDR             R1, =off_6B81C8
STR             R1, [R0],#8
STR             R4, [R0],#0x60
BL              sub_113A5C
ADD             R0, R0, #0x3C ; '<'
BL              sub_112128
ADD             R0, R0, #0x17000
ADD             R0, R0, #0xAF0
BL              sub_10D250
LDR             R1, =0x61E94
SUB             R0, R0, #0x17800
SUB             R0, R0, #0x3A4
ADD             R2, R1, #4
STR             R4, [R0,R1]
ADD             R0, R0, R2
MOV             R1, #0x400
STRH            R4, [R0]
VLDR            S0, =0.0
STR             R1, [R0,#4]
VSTR            S0, [R0,#8]
VSTR            S0, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VSTR            S0, [R0,#0x14]
MOV             R2, #6
VSTR            S0, [R0,#0x18]
STR             R2, [R0,#0x20]
STR             R4, [R0,#0x1C]
VSTR            S0, [R0,#0x24]
STRB            R4, [R0,#0x28]
STR             R4, [R0,#0x2C]
MOV             R3, #1
STR             R4, [R0,#0x30]
LDR             R1, =0xFFF9E168
STRB            R3, [R0,#0x34]
STRB            R4, [R0,#0x35]
STR             R4, [R0,#0x38]
ADD             R4, R0, R1
ADD             R1, R4, #0x17000
ADD             R1, R1, #0xBA0
MOV             R5, R1
MOV             R0, #1
BL              sub_10B6DC
LDR             R0, [R5]
BL              sub_10AEA0
MOV             R1, #0x80
MOV             R0, #0x40000
BL              sub_10B110
BL              sub_10C868
LDR             R1, =dword_6ED9B8
MOV             R3, #0x11
MOV             R2, #0x4000
ADD             R0, R4, #0x78 ; 'x'
BL              sub_113874
MOV             R2, #0x8000
MOV             R1, #0x10
MOV             R0, #0x20 ; ' '
STMEA           SP, {R0-R2}
MOV             R3, #0
LDR             R2, =dword_6ED9B8
ADD             R1, R4, #0x78 ; 'x'
ADD             R0, R4, #0x10
BL              sub_112214
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4,R5,PC}
