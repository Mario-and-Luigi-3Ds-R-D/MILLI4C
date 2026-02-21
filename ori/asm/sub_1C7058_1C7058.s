PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R1, #0xA000
LDR             R8, =off_6CE970
LDR             R0, [R8]
BL              sub_52FACC
STR             R0, [R4]
LDR             R1, =0xA001
LDR             R0, [R8]
ADD             R5, R4, #0x28000
BL              sub_52FACC
STR             R0, [R4,#4]
LDR             R1, =0xA002
LDR             R0, [R8]
ADD             R7, R4, #4
BL              sub_52FACC
SUB             R5, R5, #0x28000
STR             R0, [R4,#8]
LDR             R0, [R5]
LDR             R1, =0xC00A4
ADD             R6, R4, #8
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R7]
LDR             R1, =0xC00A3
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6]
LDR             R1, =0xC00A0
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R6, =sub_10640C
MOV             R5, #0
LDR             R0, [R8]
LDR             R1, [R4]
ADD             R0, R0, R6; sub_10640C
BL              sub_1CF9FC
ADD             R5, R5, #1
CMP             R5, #3
ADD             R4, R4, #4
BCC             loc_1C70E8
LDR             R1, =unk_63F15C
LDR             R0, [R8]
MOV             R2, #0x14
BL              sub_529204
LDR             R4, [R8]
LDR             R1, =0x3DA
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x3DB
MOV             R0, R4
BL              sub_52F770
MOV             R0, R4
POP             {R4-R8,LR}
MOV             R1, #0x3DC
B               sub_52F770
