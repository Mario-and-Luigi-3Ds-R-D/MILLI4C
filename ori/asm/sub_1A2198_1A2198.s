PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDRB            R0, [R0,#8]
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1A21AC; jumptable 001A21AC default case
DCD loc_1A21D0; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 001A21AC case 0
LDR             R0, [R0,#0x9C]
BL              sub_5C6844
CMP             R0, #0
NOP
BEQ             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R7, =off_6CE970
MOV             R3, #0
ADD             R5, R0, #0xA4
MOV             R2, R3
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x474
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_1A2220
BL              sub_1A00CC
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_1A2394
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1A224C
BL              sub_1A03A8
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0xB0
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x68 ; 'h'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_1A2284
BL              sub_1A1EE4
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_1A23B0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1A22B0
BL              sub_1A1F98
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0xBC
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x24 ; '$'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_1A22E8
BL              sub_1A5074
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_1A23CC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1A2314
BL              sub_1A51AC
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#4]
MOV             R3, #0
MOV             R2, R3
ADD             R5, R0, #0xC8
LDR             R0, [R7]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x78 ; 'x'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_1A234C
BL              sub_1A3CCC
MOV             R6, R0
LDR             R0, [R5,#8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_1A23E8
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1A2378
BL              sub_1A3DA4
NOP
NOP
BL              sub_300FD4
STR             R6, [R5]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xBC]
BL              sub_1A4C48
MOV             R0, #1
NOP
B               loc_1A25C0
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_1A224C
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_1A22B0
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_1A2314
LDR             R2, [R5,#4]
ADD             R1, R5, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R5,#4]
STR             R1, [R5,#8]
B               loc_1A2378
LDR             R0, [R4,#4]; jumptable 001A21AC case 1
LDR             R0, [R0,#0xBC]
BL              sub_5C6680
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xBC]
BL              sub_1A4E74
MOV             R0, #2
NOP
B               loc_1A25C0
LDR             R0, [R4,#4]; jumptable 001A21AC case 2
LDR             R0, [R0,#0xBC]
BL              sub_5C6680
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, =off_6CE388
LDR             R0, [R0]
BL              sub_1A0D50
MOV             R0, #3
NOP
B               loc_1A25C0
LDR             R0, [R4,#4]; jumptable 001A21AC case 3
LDR             R0, [R0,#0xA4]
BL              sub_5C6640
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC8]
BL              sub_5C6670
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xBC]
BL              sub_1A4794
MOV             R0, #4
NOP
B               loc_1A25C0
LDR             R0, [R4,#4]; jumptable 001A21AC case 4
LDR             R0, [R0,#0xA4]
BL              sub_5C6640
CMP             R0, #0
NOP
BNE             loc_1A24DC
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xBC]
BL              sub_5C6680
CMP             R0, #0
NOP
BEQ             loc_1A2568
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xB0]
ADD             R0, R0, #0x10
MOV             R1, R0
LDR             R0, [R4,#4]
MOV             R2, SP
LDR             R0, [R0,#0xA4]
BL              sub_5C64C4
CMP             R0, #0
NOP
BEQ             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xA4]
ADD             R0, R0, #0x24 ; '$'
MOV             R5, R0
LDR             R0, [R4,#4]
BL              sub_5C64B4
LDR             R2, [R4,#4]
MOV             R1, R0
MOV             R3, R5
LDR             R12, [R2,#0xB0]
MOV             R2, SP
MOV             R0, R12
BL              sub_1A1AF4
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xA4]
BL              sub_5A26C0
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC8]
BL              sub_1A32AC
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xBC]
BL              sub_1A46A8
ADD             SP, SP, #0xC; jumptable 001A21AC default case
POP             {R4-R7,PC}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xB0]
BL              sub_1A1944
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC8]
BL              sub_1A382C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xA4]
BL              sub_19FD6C
MOV             R0, #5
NOP
B               loc_1A25C0
LDR             R0, [R4,#4]; jumptable 001A21AC case 5
LDR             R0, [R0,#0xA4]
BL              sub_5C6640
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xBC]
BL              sub_1A4D14
MOV             R0, #6
STRB            R0, [R4,#8]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, [R4,#4]; jumptable 001A21AC case 6
LDR             R0, [R0,#0xB0]
BL              sub_5C6650
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xC8]
BL              sub_5C6670
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
LDR             R0, [R0,#0xBC]
BL              sub_5C6680
CMP             R0, #0
NOP
BNE             def_1A21AC; jumptable 001A21AC default case
LDR             R0, [R4,#4]
ADD             SP, SP, #0xC
POP             {R4-R7,LR}
B               sub_1A27A0
