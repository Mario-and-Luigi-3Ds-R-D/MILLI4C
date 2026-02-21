PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =sub_1605EC
ADD             R0, R0, R4
ADD             R0, R0, #0x7000
LDR             R0, [R0,#0x2E4]
CMN             R0, #1
BNE             locret_1D425C
LDR             R0, [R4]
MOV             R2, #0x1E
MOV             R1, #1
LDR             R3, [R0,#0x1C]
MOV             R0, R4
BLX             R3
LDR             R1, =unk_653FC0
ADD             R4, R4, #0x1A0000
LDR             R0, [R1,#(off_6541AC - 0x653FC0)]; nullsub_979
LDR             R1, [R1,#(dword_6541B0 - 0x653FC0)]
STRD            R0, R1, [R4,#0x5C]
POP             {R4,PC}
