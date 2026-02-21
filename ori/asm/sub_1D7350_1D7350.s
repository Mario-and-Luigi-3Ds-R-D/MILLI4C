PUSH            {R4,LR}
MOV             R4, R1
ADD             R1, R1, #0x14
BL              sub_5301E8
LDR             R1, =off_6B171C
LDR             R3, =off_6541B4
ADD             R2, R0, #0x1A0000
STR             R1, [R0]
STR             R4, [R2,#0x58]
LDM             R3, {R1,R3}
ADD             R12, R0, #0x1A0000
ADD             R12, R12, #0x5C ; '\'
STM             R12, {R1,R3}
MOV             R3, #0
LDR             R1, =0x1A0064
STR             R3, [R1,R0]
STR             R3, [R2,#0x68]
STRB            R3, [R2,#0x6C]
MOV             R1, R3
ADD             R2, R0, #0x1A0000
LDR             R3, =off_6B71B4
ADD             R2, R2, #0x70 ; 'p'
ADD             R0, R0, #0x1A0000
ADD             R0, R0, #0x78 ; 'x'
STR             R3, [R2]
STRB            R1, [R2,#4]
STR             R3, [R0]
STRB            R1, [R0,#4]
SUB             R0, R0, #0x1A0000
SUB             R0, R0, #0x78 ; 'x'
ADD             R2, R0, #0x1A0000
ADD             R2, R2, #0x80
STR             R3, [R2]
STRB            R1, [R2,#4]
LDR             R3, =off_6BB770
ADD             R2, R0, #0x1A0000
ADD             R2, R2, #0x88
STR             R3, [R2]
STRB            R1, [R2,#4]
ADD             R2, R0, #0x1A0000
ADD             R2, R2, #0x90
LDR             R3, =off_6BB758
STR             R0, [R2,#8]
STR             R1, [R2,#4]
STR             R3, [R2]
LDR             R3, =dword_6CF970
LDR             R2, [R3]
CMP             R2, #0
BEQ             locret_1D7420
LDR             R12, =loc_19CF5C
STR             R2, [R0,R12]
STR             R1, [R3]
POP             {R4,PC}
