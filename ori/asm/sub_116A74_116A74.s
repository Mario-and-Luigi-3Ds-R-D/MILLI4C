LDR             LR, [R0,#0x34]
ADD             R1, R0, #0x38 ; '8'
LDM             R1, {R2,R3}
STMDB           LR!, {R2,R3}
LDM             R0, {R0-R12}
MOV             SP, LR
POP             {LR,PC}
