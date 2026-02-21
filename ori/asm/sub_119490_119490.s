LDR             R12, =unk_70E358
MOV             R3, #0
PUSH            {R4}
LDR             R4, [R12,R3,LSL#2]
CMP             R4, #0
BEQ             loc_1194C0
ADD             R3, R3, #1
CMP             R3, #8
BLT             loc_11949C
POP             {R4}
MOV             R0, #0
BX              LR
STR             R0, [R12,R3,LSL#2]
LDR             R0, =unk_70E378
STR             R1, [R0,R3,LSL#2]
ADD             R0, R0, #0x20 ; ' '
STR             R2, [R0,R3,LSL#2]
POP             {R4}
MOV             R0, #1
BX              LR
