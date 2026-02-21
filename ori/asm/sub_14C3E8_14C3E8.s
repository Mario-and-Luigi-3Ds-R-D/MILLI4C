STRH            R1, [R0,#0x10]
LDR             R1, =off_6CE970
LDR             R2, =0x10641C
LDR             R3, [R1]
MOV             R1, R0
ADD             R0, R3, R2; loc_10641C
B               sub_1CF9FC
