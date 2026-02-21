PUSH            {R4,LR}
LDRSH           R1, [R0,#0x42]
MOV             R4, R0
CMP             R1, #0
BLE             loc_1581FC
ADD             R0, R4, #0x34 ; '4'
BL              sub_123C70
MOV             R0, #2
B               loc_158218
ADD             R0, R4, #0x10
BL              sub_106818
LDRSH           R1, [R4,#0x44]
CMP             R1, #0
ADDGT           R0, R4, #0x34 ; '4'
BLGT            sub_123C70
MOV             R0, #3
STRB            R0, [R4,#0x40]
POP             {R4,PC}
