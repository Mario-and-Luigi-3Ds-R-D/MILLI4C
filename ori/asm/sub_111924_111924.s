PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #4
BL              sub_10DA1C
ADD             R1, R4, #0x13400
ADD             R1, R1, #0x278
MOV             R0, #0xFF
MOV             R2, #0
ADD             R6, R4, #0x10000
STRB            R0, [R1,#3]
ADD             R6, R6, #0x3680
STRB            R0, [R1,#2]
STR             R2, [R1,#4]
ADD             R5, R4, #0x13400
STRB            R0, [R6,#3]
ADD             R5, R5, #0x288
STRB            R0, [R6,#2]
STR             R2, [R6,#4]
STRB            R0, [R5,#3]
STRB            R0, [R5,#2]
MOV             R3, R2
STR             R2, [R5,#4]
ADD             R12, R4, R3,LSL#3
ADD             R12, R12, #0x13000
ADD             R12, R12, #0x690
ADD             R3, R3, #1
STRB            R0, [R12,#3]
STRB            R0, [R12,#2]
CMP             R3, #7
STR             R2, [R12,#4]
BLT             loc_11197C
LDR             R7, =off_6CED78; "iPos" ...
ADD             R0, R4, #4
LDR             R2, [R7]; "iPos" ...
BL              sub_11E518
LDR             R2, [R7,#(off_6CED7C - 0x6CED78)]; "iClr" ...
MOV             R1, R6
ADD             R0, R4, #4
BL              sub_11E518
LDR             R2, [R7,#(off_6CED80 - 0x6CED78)]; "iTex" ...
MOV             R1, R5
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x13000
LDR             R2, [R7,#(off_6CED84 - 0x6CED78)]; "cProj" ...
ADD             R1, R1, #0x690
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x13400
LDR             R2, [R7,#(off_6CED88 - 0x6CED78)]; "cView" ...
ADD             R1, R1, #0x298
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x13000
LDR             R2, [R7,#(off_6CED8C - 0x6CED78)]; "cWld" ...
ADD             R1, R1, #0x6A0
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x13400
LDR             R2, [R7,#(off_6CED90 - 0x6CED78)]; "cTex" ...
ADD             R1, R1, #0x2A8
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x13000
LDR             R2, [R7,#(off_6CED94 - 0x6CED78)]; "cProj2d" ...
ADD             R1, R1, #0x6B0
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x13400
LDR             R2, [R7,#(off_6CED98 - 0x6CED78)]; "cPara2d" ...
ADD             R1, R1, #0x2B8
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x10000
LDR             R2, [R7,#(off_6CED9C - 0x6CED78)]; "cParaLR" ...
ADD             R1, R1, #0x36C0
ADD             R0, R4, #4
BL              sub_11E518
ADD             R1, R4, #0x13400
LDR             R2, [R7,#(off_6CEDA0 - 0x6CED78)]; "bNoPara2d" ...
ADD             R1, R1, #0x2C8
ADD             R0, R4, #4
BL              sub_11E518
ADD             R0, R4, #0x13000
ADD             R0, R0, #0x6D0
LDR             R1, [R0]
ORR             R1, R1, #7
ORR             R1, R1, #0xFE000000
STR             R1, [R0]
LDR             R0, =0x137C4
LDR             R5, [R0,R4]
CMP             R5, #0
BEQ             locret_111B08
ADD             R0, R5, #0x1F
BIC             R1, R0, #0xF
ADD             R6, R4, #4
MOV             R0, R6
STR             R1, [R5,#0xC]
BL              sub_113C48
LDRB            R1, [R6,#0x298]
MOV             R4, R0
STRB            R1, [R5]
LDR             R1, [R5,#0xC]
SUB             R1, R0, R1
BIC             R1, R1, #3
TST             R1, #0xF
STR             R1, [R5,#4]
BNE             loc_111AE4
LDR             R1, =unk_65803C
MOV             R2, #8
BL              sub_1273D0
ADD             R4, R4, #8
LDR             R1, =unk_658044
MOV             R2, #8
MOV             R0, R4
BL              sub_1273D0
LDR             R1, [R5,#0xC]
ADD             R0, R4, #8
SUB             R0, R0, R1
BIC             R0, R0, #3
STR             R0, [R5,#8]
POP             {R4-R8,PC}
