PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #2
BEQ             loc_16882C
LDR             R0, [R5]
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #3
BNE             loc_168840
LDR             R0, [R5]
BL              sub_1E45C8
NOP
NOP
BL              sub_535D78
MOV             R0, R4
BL              sub_193C48
ADD             R0, R4, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19D618
ADD             R0, R4, #0x16000
ADD             R0, R0, #0x338
BL              sub_21E55C
LDR             R0, [R5]
LDR             R1, [R0,#0xC8]
TST             R1, #7
BNE             loc_168884
BL              sub_5C8540
CMP             R0, #0
ADDEQ           R0, R4, #0x16800
ADDEQ           R0, R0, #0x2E8
BLEQ            sub_1E33A0
LDR             R0, [R5]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
MOV             R3, #0
BIC             R1, R1, #0x80
STR             R1, [R0,#0x14]
LDR             R0, [R4]
LDR             R12, [R0,#0x50]
LDR             R0, =unk_68E844
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
