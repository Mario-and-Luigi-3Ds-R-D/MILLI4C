LDR             R2, =unk_70E358
MOV             R1, #0
LDR             R3, [R2,R1,LSL#2]
CMP             R3, R0
BNE             loc_119474
MOV             R0, #0
STR             R0, [R2,R1,LSL#2]
LDR             R2, =unk_70E378
STR             R0, [R2,R1,LSL#2]
ADD             R2, R2, #0x20 ; ' '
STR             R0, [R2,R1,LSL#2]
MOV             R0, #1
BX              LR
ADD             R1, R1, #1
CMP             R1, #8
BLT             loc_119448
MOV             R0, #0
BX              LR
