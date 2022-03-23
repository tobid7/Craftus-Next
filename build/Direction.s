	.arch armv6k
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Direction.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	DirectionToAxis
	.global	DirectionOpposite
	.global	DirectionToOffset
	.data
	.align	2
	.type	DirectionToAxis, %object
	.size	DirectionToAxis, 7
DirectionToAxis:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.space	1
	.type	DirectionOpposite, %object
	.size	DirectionOpposite, 7
DirectionOpposite:
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	4
	.byte	6
	.space	1
	.type	DirectionToOffset, %object
	.size	DirectionToOffset, 84
DirectionToOffset:
	.word	-1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	-1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.text
.Letext0:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h"
	.file 2 "/home/tobi/Dokumente/Craftus-Next/source/world/Direction.c"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x116
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1d
	.4byte	.LASF18
	.4byte	.LASF19
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.4byte	0x53
	.byte	0x3
	.4byte	0x53
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0
	.uleb128 0x1
	.4byte	.LASF1
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF3
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF6
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0xb
	.byte	0x3
	.4byte	0x1e
	.uleb128 0x6
	.4byte	0x53
	.byte	0xd
	.4byte	0x82
	.uleb128 0x1
	.4byte	.LASF7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF8
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF9
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x11
	.byte	0x2
	.4byte	0x65
	.uleb128 0x3
	.4byte	0xaa
	.4byte	0xa3
	.uleb128 0x2
	.4byte	0xa3
	.byte	0x6
	.uleb128 0x2
	.4byte	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x13
	.byte	0xc
	.4byte	0x8d
	.uleb128 0x3
	.4byte	0x5a
	.4byte	0xcc
	.uleb128 0x2
	.4byte	0xa3
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x14
	.byte	0x12
	.4byte	0xbc
	.uleb128 0x3
	.4byte	0x82
	.4byte	0xe7
	.uleb128 0x2
	.4byte	0xa3
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x15
	.byte	0xd
	.4byte	0xd7
	.uleb128 0x5
	.4byte	0xb1
	.byte	0x3
	.byte	0x5
	.uleb128 0x5
	.byte	0x3
	.4byte	DirectionToOffset
	.uleb128 0x5
	.4byte	0xcc
	.byte	0x4
	.byte	0xb
	.uleb128 0x5
	.byte	0x3
	.4byte	DirectionOpposite
	.uleb128 0x5
	.4byte	0xe7
	.byte	0x5
	.byte	0x6
	.uleb128 0x5
	.byte	0x3
	.4byte	DirectionToAxis
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF11:
	.ascii	"Axis\000"
.LASF0:
	.ascii	"Direction_West\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF16:
	.ascii	"DirectionToAxis\000"
.LASF7:
	.ascii	"Axis_X\000"
.LASF10:
	.ascii	"Direction\000"
.LASF19:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF1:
	.ascii	"Direction_East\000"
.LASF14:
	.ascii	"DirectionToOffset\000"
.LASF5:
	.ascii	"Direction_South\000"
.LASF8:
	.ascii	"Axis_Y\000"
.LASF6:
	.ascii	"Direction_Invalid\000"
.LASF9:
	.ascii	"Axis_Z\000"
.LASF12:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"Direction_Top\000"
.LASF17:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF2:
	.ascii	"Direction_Bottom\000"
.LASF4:
	.ascii	"Direction_North\000"
.LASF18:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/world/Dire"
	.ascii	"ction.c\000"
.LASF15:
	.ascii	"DirectionOpposite\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
