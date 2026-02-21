PUSH            {R4-R6,LR}
MOV             R4, R0
LDRSH           R1, [R0,#0x3E]
LDR             R5, =off_67E154
CMP             R1, #0
BEQ             loc_23468C
ADD             R0, R4, #0x30 ; '0'
BL              sub_123C70
LDRD            R0, R1, [R5,#(off_67E15C - 0x67E154)]
B               loc_2346AC
MOV             R1, R0
LDR             R0, =unk_6EB568
BL              sub_51C20C
LDRSH           R1, [R4,#0x40]
CMP             R1, #0
ADDGT           R0, R4, #0x30 ; '0'
BLGT            sub_123C70
LDRD            R0, R1, [R5,#(off_67E164 - 0x67E154)]
STRD            R0, R1, [R4,#0x48]
POP             {R4-R6,PC}
