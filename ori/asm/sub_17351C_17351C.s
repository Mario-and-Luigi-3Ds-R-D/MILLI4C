MOV             R2, #7
MOV             R3, #0x38 ; '8'
PUSH            {R4,R5}
MOV             R4, R2,ASR#31
ORR             R12, R2, R3
MOV             R2, #0x1C0
ORR             R3, R4, R3,ASR#31
MOV             R4, R2,ASR#31
MOV             R1, #0
ORR             R2, R2, R12
ORR             R3, R3, R4
ORR             R2, R2, R1
ORR             R12, R3, R1,ASR#31
ORR             R3, R2, R1
ORR             R2, R12, R1,ASR#31
ORR             R2, R2, R1,ASR#31
ORR             R3, R3, R1
ORR             R2, R2, R1,ASR#31
ORR             R3, R3, R1
ORR             R2, R2, R1,ASR#31
MOV             R12, R1,ASR#31
ORR             R3, R3, R1
ADD             R0, R0, #0x640
ORR             R1, R1, R3
ORR             R2, R2, R12
STM             R0, {R1,R2}
POP             {R4,R5}
BX              LR
