PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R0, #2
LDR             R6, =off_6CE970
STRB            R0, [R4,#0x24]
LDR             R1, =unk_63EDC6
MOV             R2, #0x10
LDR             R0, [R6]
BL              sub_529204
LDR             R5, [R6]
LDR             R1, =0x3DA
MOV             R0, R5
BL              sub_52F770
LDR             R1, =0x3DB
MOV             R0, R5
BL              sub_52F770
MOV             R1, #0x3DC
MOV             R0, R5
BL              sub_52F770
LDR             R0, =off_6CDD80
LDR             R1, [R0]
ADD             R0, R4, #0x28 ; '('
LDR             R2, [R1,#0xF04]
LDR             R2, [R2,#4]
STR             R2, [R4,#0x2C]
LDR             R2, [R1,#0xF04]
STR             R2, [R4,#0x30]
LDR             R2, [R1,#0xF04]
LDR             R2, [R2,#4]
STR             R0, [R2,#8]
LDR             R1, [R1,#0xF04]
STR             R0, [R1,#4]
LDR             R1, [R4,#0x28]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R4,#0x14]
LDR             R1, =0xC0042
ADD             R5, R4, #4
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
ADD             R4, R4, #8
LDR             R1, =0xC00A5
LDR             R0, [R4,#0x10]
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R7, =sub_10640C
LDR             R0, [R6]
LDR             R1, [R5,#0x10]
ADD             R0, R0, R7; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R6]
LDR             R1, [R4,#0x10]
ADD             R0, R0, R7; sub_10640C
POP             {R4-R8,LR}
B               sub_1CF9FC
