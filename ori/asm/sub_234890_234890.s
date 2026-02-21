PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x30 ; '0'
BL              sub_123CE8
ADD             R0, R4, #0x30 ; '0'
BL              sub_4857C8
CMP             R0, #0
BNE             locret_2348D4
MOV             R0, R4
BL              sub_106818
LDRSH           R1, [R4,#0x40]
CMP             R1, #0
ADDGT           R0, R4, #0x30 ; '0'
BLGT            sub_123C70
LDR             R1, =off_67E154
LDRD            R0, R1, [R1,#(off_67E164 - 0x67E154)]
STRD            R0, R1, [R4,#0x48]
POP             {R4,PC}
