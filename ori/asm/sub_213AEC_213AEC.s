LDR             R3, =off_6CE970
PUSH            {R4,LR}
LDR             R12, [R2,#8]
LDR             R3, [R3]
TST             R12, #0xFF
LDRNE           R12, =0x19DF78
ADDEQ           R3, R3, #0x19C000
ADDEQ           R3, R3, #0x1F40
ADDNE           R3, R3, R12
ADD             R3, R3, #0x28 ; '('
VLDM            R3, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCS           R0, #0
BCS             locret_213B38
CMP             R1, #0
ADDNE           R1, R1, #4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4,PC}
