PUSH            {R4-R12,LR}
MOV             R11, R0
SVC             0x28 ; '('
LDR             R2, =0xBAD34AEE
MOV             R3, #3
MOV             R12, #0
MOV             R5, R1,ASR#31
UMULL           R7, R6, R0, R2
UMULL           R7, R8, R1, R3
ADDS            R4, R12, R6
ADC             R6, R7, R12
UMULL           LR, R7, R1, R2
MOV             R10, #0
MLA             R2, R5, R2, R7
MOV             R5, R12
MLA             R2, R1, R12, R2
UMLAL           LR, R2, R3, R0
ADDS            R1, LR, R4
LDR             LR, =0xD7B634DB
ADC             R2, R2, R6
LDR             R4, =0x431BDE82
MOV             R3, R2,ASR#31
UMULL           R9, R8, R1, LR
MOV             R6, R10
MLA             R0, R12, LR, R8
UMULL           R8, R9, R2, LR
MLA             R0, R1, R5, R0
MLA             LR, R3, LR, R9
UMULL           R5, R7, R1, R4
MLA             LR, R2, R12, LR
MLA             R12, R12, R4, R7
ADDS            R0, R0, R8
MLA             R1, R1, R10, R12
UMULL           R12, R7, R2, R4
ADC             LR, LR, R10
ADDS            R0, R0, R5
MLA             R3, R3, R4, R7
ADC             R0, R1, R6
MLA             R4, R2, R10, R3
MOV             R1, R0,ASR#31
ADDS            R0, R0, LR
ADC             R1, R1, LR,ASR#31
ADDS            R0, R0, R12
ADC             R1, R1, R4
MOV             R12, R0,LSR#18
MOV             R0, R1,LSL#14
MOV             R2, R2,LSR#31
ORR             R0, R0, R12
ADDS            R0, R0, R2
MOV             R1, R1,ASR#18
ADD             R2, R11, #0x15000
ADC             R1, R1, #0
STRD            R0, R1, [R2,#8]
LDR             R0, [R11]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =unk_67DC2C
LDM             R0, {R1,R2}
MOV             R0, R11
POP             {R4-R11,LR}
POP             {LR}
BX              R12
