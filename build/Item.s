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
	.file	"Item.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"romfs:/assets/textures/blocks/dirt.png\000"
	.section	.text.Item_Init,"ax",%progbits
	.align	2
	.global	Item_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	Item_Init, %function
Item_Init:
.LFB121:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/blocks/Item.c"
	.loc 1 22 18 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 23 2 view .LVU1
	.loc 1 22 18 is_stmt 0 view .LVU2
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	.loc 1 25 15 view .LVU3
	mov	r5, sp
	.loc 1 23 2 view .LVU4
	ldr	r4, .L4
	mov	r2, #1
	mov	r0, r4
	ldr	r1, .L4+4
	bl	Texture_MapInit
.LVL0:
	.loc 1 25 2 is_stmt 1 view .LVU5
	.loc 1 25 15 is_stmt 0 view .LVU6
	mov	r1, r4
	mov	r0, r5
	ldr	r2, .L4+8
	bl	Texture_MapGetIcon
.LVL1:
	ldm	r5, {r0, r1}
	add	r4, r4, #536
	stm	r4, {r0, r1}
	.loc 1 27 1 view .LVU7
	add	sp, sp, #12
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L5:
	.align	2
.L4:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LC0
	.cfi_endproc
.LFE121:
	.size	Item_Init, .-Item_Init
	.section	.text.Item_Deinit,"ax",%progbits
	.align	2
	.global	Item_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	Item_Deinit, %function
Item_Deinit:
.LFB122:
	.loc 1 28 20 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 28 22 view .LVU9
	ldr	r0, .L7
	b	C3D_TexDelete
.LVL2:
.L8:
	.align	2
.L7:
	.word	.LANCHOR1
	.cfi_endproc
.LFE122:
	.size	Item_Deinit, .-Item_Deinit
	.section	.text.Item_GetTextureMap,"ax",%progbits
	.align	2
	.global	Item_GetTextureMap
	.syntax unified
	.arm
	.fpu vfp
	.type	Item_GetTextureMap, %function
Item_GetTextureMap:
.LFB123:
	.loc 1 30 28 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 30 30 view .LVU11
	.loc 1 30 58 is_stmt 0 view .LVU12
	ldr	r0, .L10
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR1
	.cfi_endproc
.LFE123:
	.size	Item_GetTextureMap, .-Item_GetTextureMap
	.section	.text.Item_GetTexture,"ax",%progbits
	.align	2
	.global	Item_GetTexture
	.syntax unified
	.arm
	.fpu vfp
	.type	Item_GetTexture, %function
Item_GetTexture:
.LVL3:
.LFB124:
	.loc 1 32 89 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 33 2 view .LVU14
	.loc 1 34 2 view .LVU15
	cmp	r0, #0
	.loc 1 36 4 view .LVU16
.LVL4:
	.loc 1 33 18 is_stmt 0 view .LVU17
	movne	r2, #0
.LVL5:
	.loc 1 33 18 view .LVU18
	movne	r1, r2
.LVL6:
	.loc 1 36 6 view .LVU19
	ldreq	r2, .L15
	ldrsheq	r1, [r2, #4]
.LVL7:
	.loc 1 36 6 view .LVU20
	ldrsheq	r2, [r2, #6]
.LVL8:
	.loc 1 37 4 is_stmt 1 view .LVU21
	.loc 1 40 2 view .LVU22
	.loc 1 40 12 is_stmt 0 view .LVU23
	strh	r1, [r3]	@ movhi
	.loc 1 41 2 is_stmt 1 view .LVU24
	.loc 1 41 12 is_stmt 0 view .LVU25
	strh	r2, [r3, #2]	@ movhi
.LVL9:
	.loc 1 42 1 view .LVU26
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR1+536
	.cfi_endproc
.LFE124:
	.size	Item_GetTexture, .-Item_GetTexture
	.global	ItemNames
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"Totem\000"
	.global	item_texture_files
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	item_texture_files, %object
	.size	item_texture_files, 4
item_texture_files:
	.word	.LC0
	.type	ItemNames, %object
	.size	ItemNames, 4
ItemNames:
	.word	.LC1
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	textureMap, %object
	.size	textureMap, 536
textureMap:
	.space	536
	.type	icon, %object
	.size	icon, 8
icon:
	.space	8
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h"
	.file 5 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Item.h"
	.file 6 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 7 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 8 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 13 "/opt/devkitpro/libctru/include/c3d/texture.h"
	.file 14 "/home/tobi/Dokumente/Craftus-Next/include/rendering/TextureMap.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x641
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0x1d
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.LLRL3
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x39
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x40
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x53
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x5
	.byte	0x1
	.4byte	0x39
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.4byte	0x104
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0xb
	.byte	0x3
	.4byte	0xcc
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x8
	.byte	0x11
	.4byte	0x9c
	.uleb128 0x5
	.byte	0x1
	.4byte	0x39
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.4byte	0x136
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x146
	.4byte	0x146
	.uleb128 0xb
	.4byte	0x95
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x152
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF28
	.uleb128 0x19
	.4byte	0x14b
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x5
	.byte	0x16
	.byte	0x14
	.4byte	0x136
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0x6
	.byte	0xd1
	.byte	0x16
	.4byte	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF30
	.uleb128 0xc
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0x9c
	.uleb128 0xc
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0xb4
	.uleb128 0xc
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xc0
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF31
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF32
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.uleb128 0x6
	.4byte	0x14b
	.uleb128 0x5
	.byte	0x1
	.4byte	0x39
	.byte	0x8
	.byte	0x28
	.byte	0x1
	.4byte	0x1d8
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	0x39
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x1fe
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	0x39
	.byte	0x9
	.byte	0x21
	.byte	0xe
	.4byte	0x224
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	0x39
	.byte	0xa
	.byte	0x40
	.byte	0x1
	.4byte	0x286
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0xa
	.byte	0x4f
	.byte	0x3
	.4byte	0x224
	.uleb128 0x1c
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0xa
	.2byte	0x1f5
	.byte	0x1
	.4byte	0x2ae
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	0x39
	.byte	0xb
	.byte	0xb
	.byte	0x1
	.4byte	0x2ce
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0x146
	.uleb128 0x5
	.byte	0x2
	.4byte	0x5f
	.byte	0xc
	.byte	0x9
	.byte	0x1
	.4byte	0x2ef
	.uleb128 0x10
	.4byte	.LASF66
	.2byte	0x100
	.uleb128 0x10
	.4byte	.LASF67
	.2byte	0x200
	.byte	0
	.uleb128 0x8
	.byte	0x18
	.byte	0xd
	.byte	0x4
	.byte	0x9
	.4byte	0x306
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xd
	.byte	0x6
	.byte	0x8
	.4byte	0x306
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x196
	.4byte	0x316
	.uleb128 0xb
	.4byte	0x95
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0xd
	.byte	0x7
	.byte	0x3
	.4byte	0x2ef
	.uleb128 0xd
	.byte	0xb
	.4byte	0x33f
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0xd
	.byte	0x9
	.4byte	0x196
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0xe
	.byte	0x10
	.4byte	0x33f
	.byte	0
	.uleb128 0x6
	.4byte	0x316
	.uleb128 0x8
	.byte	0x4
	.byte	0xd
	.byte	0x17
	.byte	0x3
	.4byte	0x368
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xd
	.byte	0x19
	.byte	0x8
	.4byte	0x180
	.byte	0
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0xd
	.byte	0x1a
	.byte	0x8
	.4byte	0x180
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.byte	0x14
	.4byte	0x380
	.uleb128 0x1d
	.ascii	"dim\000"
	.byte	0xd
	.byte	0x16
	.byte	0x7
	.4byte	0x18b
	.uleb128 0x11
	.4byte	0x344
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0xd
	.byte	0x23
	.byte	0x3
	.4byte	0x3b1
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0xd
	.byte	0x25
	.byte	0x8
	.4byte	0x180
	.byte	0
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xd
	.byte	0x26
	.byte	0x7
	.4byte	0x176
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xd
	.byte	0x27
	.byte	0x7
	.4byte	0x176
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.byte	0x20
	.4byte	0x3c8
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x22
	.byte	0x7
	.4byte	0x18b
	.uleb128 0x11
	.4byte	0x380
	.byte	0
	.uleb128 0x8
	.byte	0x18
	.byte	0xd
	.byte	0x9
	.byte	0x9
	.4byte	0x41a
	.uleb128 0xf
	.4byte	0x322
	.byte	0
	.uleb128 0x1e
	.ascii	"fmt\000"
	.byte	0xd
	.byte	0x11
	.byte	0xf
	.4byte	0x286
	.byte	0x4
	.byte	0x20
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0xd
	.byte	0x12
	.byte	0x9
	.4byte	0x163
	.byte	0x1c
	.byte	0x24
	.uleb128 0xf
	.4byte	0x368
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0xd
	.byte	0x1e
	.byte	0x6
	.4byte	0x18b
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xd
	.byte	0x1f
	.byte	0x6
	.4byte	0x18b
	.byte	0x10
	.uleb128 0xf
	.4byte	0x3b1
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x2a
	.byte	0x3
	.4byte	0x3c8
	.uleb128 0x8
	.byte	0x8
	.byte	0xe
	.byte	0xc
	.byte	0x9
	.4byte	0x44f
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0xe
	.byte	0xd
	.byte	0xb
	.4byte	0xc0
	.byte	0
	.uleb128 0x12
	.ascii	"u\000"
	.byte	0xa
	.4byte	0xa8
	.byte	0x4
	.uleb128 0x12
	.ascii	"v\000"
	.byte	0xd
	.4byte	0xa8
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xe
	.byte	0xf
	.byte	0x3
	.4byte	0x426
	.uleb128 0x20
	.2byte	0x218
	.byte	0xe
	.byte	0x11
	.byte	0x9
	.4byte	0x480
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0xe
	.byte	0x12
	.byte	0xa
	.4byte	0x41a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0xe
	.byte	0x13
	.byte	0x12
	.4byte	0x480
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.4byte	0x44f
	.4byte	0x490
	.uleb128 0xb
	.4byte	0x95
	.byte	0x3f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0xe
	.byte	0x14
	.byte	0x3
	.4byte	0x45b
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x6
	.byte	0x14
	.4byte	0x490
	.uleb128 0x5
	.byte	0x3
	.4byte	textureMap
	.uleb128 0x21
	.4byte	.LASF87
	.byte	0x1
	.byte	0xf
	.byte	0xd
	.4byte	0x136
	.uleb128 0x5
	.byte	0x3
	.4byte	item_texture_files
	.uleb128 0x8
	.byte	0x8
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.4byte	0x4d6
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x1
	.byte	0x13
	.byte	0x12
	.4byte	0x44f
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x14
	.byte	0x3
	.4byte	0x4bf
	.uleb128 0x5
	.byte	0x3
	.4byte	icon
	.uleb128 0x22
	.4byte	0x157
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.uleb128 0x5
	.byte	0x3
	.4byte	ItemNames
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xd
	.byte	0x3b
	.4byte	0x506
	.uleb128 0x9
	.4byte	0x506
	.byte	0
	.uleb128 0x6
	.4byte	0x41a
	.uleb128 0x23
	.4byte	.LASF97
	.byte	0xe
	.byte	0x17
	.byte	0x11
	.4byte	0x44f
	.4byte	0x526
	.uleb128 0x9
	.4byte	0x526
	.uleb128 0x9
	.4byte	0x1ad
	.byte	0
	.uleb128 0x6
	.4byte	0x490
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xe
	.byte	0x16
	.4byte	0x546
	.uleb128 0x9
	.4byte	0x526
	.uleb128 0x9
	.4byte	0x2ce
	.uleb128 0x9
	.4byte	0x8e
	.byte	0
	.uleb128 0x24
	.4byte	.LASF102
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ab
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x1b
	.4byte	0x110
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x2b
	.4byte	0x104
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x3e
	.4byte	0x9c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x51
	.4byte	0x5ab
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x21
	.byte	0x12
	.4byte	0x44f
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x6
	.4byte	0xa8
	.uleb128 0x26
	.4byte	.LASF103
	.byte	0x1
	.byte	0x1e
	.byte	0x7
	.4byte	0x196
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF104
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f0
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0x4f5
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF98
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LVL0
	.4byte	0x52b
	.4byte	0x624
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL1
	.4byte	0x50b
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL6-.LVL3
	.uleb128 .LFE124-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE124-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0xc
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL7-.LVL3
	.uleb128 0xf
	.byte	0x3
	.4byte	icon
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.uleb128 .LVL7-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0xd
	.byte	0x3
	.4byte	icon
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.uleb128 .LVL8-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x9
	.byte	0x3
	.4byte	icon
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL8-.LVL3
	.uleb128 .LVL9-.LVL3
	.uleb128 0xd
	.byte	0x3
	.4byte	icon
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.uleb128 .LVL9-.LVL3
	.uleb128 .LFE124-.LVL3
	.uleb128 0x9
	.byte	0x3
	.4byte	icon
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL3:
	.byte	0x7
	.4byte	.LFB121
	.uleb128 .LFE121-.LFB121
	.byte	0x7
	.4byte	.LFB122
	.uleb128 .LFE122-.LFB122
	.byte	0x7
	.4byte	.LFB123
	.uleb128 .LFE123-.LFB123
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"Direction\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF48:
	.ascii	"GPU_RGBA5551\000"
.LASF27:
	.ascii	"Items_Count\000"
.LASF99:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF35:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF18:
	.ascii	"Direction_East\000"
.LASF4:
	.ascii	"short int\000"
.LASF61:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF101:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF26:
	.ascii	"Item_Totem\000"
.LASF20:
	.ascii	"Direction_Top\000"
.LASF43:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF93:
	.ascii	"direction\000"
.LASF59:
	.ascii	"GPU_ETC1A4\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF76:
	.ascii	"lodParam\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF23:
	.ascii	"Direction_Invalid\000"
.LASF63:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF73:
	.ascii	"lodBias\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF64:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF100:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/blocks/Ite"
	.ascii	"m.c\000"
.LASF95:
	.ascii	"item\000"
.LASF67:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF72:
	.ascii	"width\000"
.LASF79:
	.ascii	"border\000"
.LASF32:
	.ascii	"float\000"
.LASF52:
	.ascii	"GPU_HILO8\000"
.LASF10:
	.ascii	"long long int\000"
.LASF103:
	.ascii	"Item_GetTextureMap\000"
.LASF81:
	.ascii	"textureHash\000"
.LASF66:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF40:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF7:
	.ascii	"long int\000"
.LASF22:
	.ascii	"Direction_South\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF75:
	.ascii	"minLevel\000"
.LASF56:
	.ascii	"GPU_L4\000"
.LASF39:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF17:
	.ascii	"Direction_West\000"
.LASF30:
	.ascii	"long double\000"
.LASF57:
	.ascii	"GPU_A4\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF90:
	.ascii	"icon\000"
.LASF84:
	.ascii	"icons\000"
.LASF50:
	.ascii	"GPU_RGBA4\000"
.LASF65:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF0:
	.ascii	"signed char\000"
.LASF87:
	.ascii	"item_texture_files\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF97:
	.ascii	"Texture_MapGetIcon\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF71:
	.ascii	"height\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF25:
	.ascii	"Item\000"
.LASF42:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF47:
	.ascii	"GPU_RGB8\000"
.LASF78:
	.ascii	"param\000"
.LASF37:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF68:
	.ascii	"C3D_TexCube\000"
.LASF28:
	.ascii	"char\000"
.LASF82:
	.ascii	"Texture_MapIcon\000"
.LASF98:
	.ascii	"Item_Init\000"
.LASF55:
	.ascii	"GPU_LA4\000"
.LASF29:
	.ascii	"size_t\000"
.LASF33:
	.ascii	"_Bool\000"
.LASF44:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF83:
	.ascii	"texture\000"
.LASF94:
	.ascii	"metadata\000"
.LASF80:
	.ascii	"C3D_Tex\000"
.LASF19:
	.ascii	"Direction_Bottom\000"
.LASF69:
	.ascii	"data\000"
.LASF46:
	.ascii	"GPU_RGBA8\000"
.LASF36:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF104:
	.ascii	"Item_Deinit\000"
.LASF53:
	.ascii	"GPU_L8\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF62:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF38:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF77:
	.ascii	"size\000"
.LASF92:
	.ascii	"Texture_MapInit\000"
.LASF49:
	.ascii	"GPU_RGB565\000"
.LASF74:
	.ascii	"maxLevel\000"
.LASF91:
	.ascii	"C3D_TexDelete\000"
.LASF102:
	.ascii	"Item_GetTexture\000"
.LASF60:
	.ascii	"GPU_TEXCOLOR\000"
.LASF41:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF54:
	.ascii	"GPU_A8\000"
.LASF96:
	.ascii	"out_uv\000"
.LASF51:
	.ascii	"GPU_LA8\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF31:
	.ascii	"double\000"
.LASF89:
	.ascii	"textureMap\000"
.LASF34:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF85:
	.ascii	"Texture_Map\000"
.LASF70:
	.ascii	"cube\000"
.LASF58:
	.ascii	"GPU_ETC1\000"
.LASF86:
	.ascii	"ItemNames\000"
.LASF88:
	.ascii	"totem\000"
.LASF45:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF21:
	.ascii	"Direction_North\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
