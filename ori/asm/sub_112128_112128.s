LDR             R2, =off_6BFDD4
PUSH            {R4-R6,LR}
MOV             R4, #0
STR             R2, [R0]
STR             R4, [R0,#8]
LDR             R12, =off_6B192C
STR             R4, [R0,#0xC]
STR             R4, [R0,#0x10]
STR             R4, [R0,#0x14]
STR             R4, [R0,#0x18]
LDR             R1, [R12,#(off_6B1930 - 0x6B192C)]; off_696C8C
MOV             R2, R0
STR             R1, [R0]
LDR             R1, [R1,#(dword_696C5C - 0x696C8C)]
LDR             R3, [R12,#(off_6B1950 - 0x6B192C)]; off_696C8C
STR             R3, [R0,R1]
LDR             R1, [R12,#(off_6B1954 - 0x6B192C)]; unk_696EE8
STR             R1, [R2,#4]
LDR             R1, [R12]; off_6B187C
STR             R1, [R0]
LDR             R2, [R1,#(dword_6B184C - 0x6B187C)]
LDR             R3, [R12,#(off_6B1958 - 0x6B192C)]; off_6B187C
LDR             R1, =sub_11703C
STR             R3, [R0,R2]
LDR             R2, [R12,#(off_6B195C - 0x6B192C)]; unk_6B18F4
MOV             R3, #2
STR             R2, [R0,#4]
MOV             R2, #0x20 ; ' '
ADD             R0, R0, #0x20 ; ' '
BLX             sub_1002F4
ADD             R0, R0, #0x40 ; '@'
BL              sub_1170F0
LDR             R1, =sub_1170F0
MOV             R3, #2
MOV             R2, #0x20 ; ' '
ADD             R0, R0, #0x20 ; ' '
BLX             sub_1002F4
ADD             R0, R0, #0x40 ; '@'
BL              sub_1170AC
LDR             R1, =sub_1170AC
MOV             R3, #2
MOV             R2, #0x28 ; '('
ADD             R0, R0, #0x28 ; '('
BLX             sub_1002F4
LDR             R2, =0x17AE8
LDR             R1, =off_6CECB0
SUB             R0, R0, #0xE8
STR             R4, [R2,R0]
STR             R0, [R1,#(dword_6CECB8 - 0x6CECB0)]
STR             R4, [R1]
STR             R4, [R1,#(dword_6CECB4 - 0x6CECB0)]
POP             {R4-R6,PC}
