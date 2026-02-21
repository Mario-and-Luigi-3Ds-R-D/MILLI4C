PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
SUB             SP, SP, #0xC
LDR             R0, [R5]
BL              sub_528E64
LDR             R0, [R5]
LDR             R2, =0x19B0B4
LDR             R1, =0xC03
LDR             R2, [R2,R0]
TST             R1, R2
BEQ             loc_1DC6AC
LDR             R3, =0xFFE683CC
LDR             R1, =0x10016
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
ADD             R0, R4, #0x10C00
ADD             R0, R0, #0x254
BL              sub_2C723C
ADD             R0, R4, #0x9400
ADD             R0, R0, #0x288
BL              sub_5CDFB8
MOV             R1, SP
ADD             R0, R4, #0x74 ; 't'
VSTMEA          SP, {S0-S1}
BL              sub_215A04
LDR             R1, =unk_656B78
ADD             R2, R4, #0x20000
ADD             R2, R2, #0xA00
LDRD            R0, R1, [R1,#(off_656BFC - 0x656B78)]
STRD            R0, R1, [R2,#0xBC]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
