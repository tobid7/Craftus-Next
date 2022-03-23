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
	.file	"TreeGen.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TreeGen_GenTree,"ax",%progbits
	.align	2
	.global	TreeGen_GenTree
	.syntax unified
	.arm
	.fpu vfp
	.type	TreeGen_GenTree, %function
TreeGen_GenTree:
.LVL0:
.LFB124:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/world/worldgen/structures/TreeGen.c"
	.loc 1 5 1 view -0
	.cfi_startproc
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 5 1 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 48
	.loc 1 5 1 view .LVU2
	ldr	r0, [sp, #56]
.LVL1:
	.loc 1 5 1 view .LVU3
	add	ip, sp, #16
.LBB7:
	.loc 1 6 26 view .LVU4
	cmp	r0, #0
.LBE7:
	.loc 1 5 1 view .LVU5
	stmdb	ip, {r1, r2, r3}
	ldr	r4, [sp, #52]
	.loc 1 6 5 is_stmt 1 view .LVU6
.LBB24:
	.loc 1 6 10 view .LVU7
.LVL2:
	.loc 1 6 26 view .LVU8
.LBE24:
	.loc 1 5 1 is_stmt 0 view .LVU9
	ldr	ip, [sp, #48]
.LBB25:
	.loc 1 6 26 view .LVU10
	beq	.L1
.LBB8:
.LBB9:
	.file 2 "/home/tobi/Dokumente/Craftus-Next/include/world/Chunk.h"
	.loc 2 111 40 view .LVU11
	add	r2, r0, #15
	movge	r2, r0
.LBE9:
.LBE8:
	.loc 1 6 17 view .LVU12
	mov	r3, #0
.LBB20:
.LBB16:
	.loc 2 112 23 view .LVU13
	rsbs	r1, r0, #0
	.loc 2 111 40 view .LVU14
	asr	r2, r2, #4
	.loc 2 112 23 view .LVU15
	and	r1, r1, #15
	and	r8, r0, #15
	rsbpl	r8, r1, #0
	add	r1, r2, r2, lsl #8
	add	r1, r2, r1, lsl #1
.LBE16:
.LBE20:
	.loc 1 8 9 view .LVU16
	ldr	r6, [sp, #8]
	add	r9, r8, ip, lsl #4
	lsl	r1, r1, #4
	add	r9, r1, r9, lsl #4
	add	r9, r6, r9
	add	r1, r6, r1
	add	r5, r1, #8192
	add	lr, r6, #65536
	add	r9, r9, r4
	add	r9, r9, #4096
	ldr	r7, [lr, #668]
	ldr	r5, [r5, #28]
	ldrb	r1, [r9, #28]	@ zero_extendqisi2
	lsl	ip, ip, #4
	lsl	r9, r2, #8
.LVL3:
.L3:
	.loc 1 8 9 is_stmt 1 discriminator 3 view .LVU17
.LBB21:
.LBI8:
	.loc 2 110 13 discriminator 3 view .LVU18
.LBB17:
	.loc 2 111 2 discriminator 3 view .LVU19
	.loc 2 112 2 discriminator 3 view .LVU20
	.loc 2 113 2 discriminator 3 view .LVU21
.LBB10:
.LBI10:
	.loc 2 97 13 discriminator 3 view .LVU22
.LBB11:
	.loc 2 98 2 discriminator 3 view .LVU23
	.loc 2 99 2 discriminator 3 view .LVU24
	.loc 2 100 2 discriminator 3 view .LVU25
	.loc 2 101 2 discriminator 3 view .LVU26
.LBE11:
.LBE10:
.LBE17:
.LBE21:
	.loc 1 6 37 is_stmt 0 discriminator 3 view .LVU27
	add	r3, r3, #1
.LVL4:
	.loc 1 6 26 discriminator 3 view .LVU28
	cmp	r3, r0
	and	r1, r1, #240
.LBB22:
.LBB18:
.LBB14:
.LBB12:
	.loc 2 102 2 is_stmt 1 discriminator 3 view .LVU29
	.loc 2 103 2 discriminator 3 view .LVU30
.LVL5:
	.loc 2 103 2 is_stmt 0 discriminator 3 view .LVU31
.LBE12:
.LBE14:
.LBE18:
.LBE22:
	.loc 1 6 37 is_stmt 1 discriminator 3 view .LVU32
	.loc 1 6 26 discriminator 3 view .LVU33
	bne	.L3
.LBB23:
.LBB19:
.LBB15:
.LBB13:
	.loc 2 102 2 is_stmt 0 view .LVU34
	add	r5, r3, r5
	.loc 2 103 2 view .LVU35
	add	r3, r3, r7
.LVL6:
	.loc 2 103 2 view .LVU36
	mov	r7, #6
	add	r0, r9, r2
.LVL7:
	.loc 2 103 2 view .LVU37
	add	r2, r2, r0, lsl #1
	lsl	r9, r2, #4
	add	r0, ip, r8
	add	r2, ip, r2
	add	r2, r2, r8
	add	r0, r9, r0, lsl #4
	add	r0, r6, r0
	add	r2, r6, r2, lsl #4
	add	r2, r2, r4
	add	r6, r6, r9
	add	r0, r0, r4
	strb	r7, [r2, #28]
	add	r6, r6, #8192
	add	r2, r0, #4096
	strb	r1, [r2, #28]
	str	r5, [r6, #28]
	str	r3, [lr, #668]
.LVL8:
.L1:
	.loc 2 103 2 view .LVU38
.LBE13:
.LBE15:
.LBE19:
.LBE23:
.LBE25:
	.loc 1 11 1 view .LVU39
	add	sp, sp, #20
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.cfi_endproc
.LFE124:
	.size	TreeGen_GenTree, .-TreeGen_GenTree
	.text
.Letext0:
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 6 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 7 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 8 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 10 "/home/tobi/Dokumente/Craftus-Next/include/world/WorkQueue.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x761
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x18
	.4byte	.LASF123
	.byte	0x1d
	.4byte	.LASF124
	.4byte	.LASF125
	.4byte	.LLRL15
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x39
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x66
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x47
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x8
	.byte	0x11
	.4byte	0x9c
	.uleb128 0xe
	.4byte	0x39
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.4byte	0x1d5
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF58
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd1
	.byte	0x16
	.4byte	0x95
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF60
	.uleb128 0x1a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x7
	.byte	0x7
	.byte	0x11
	.4byte	0xb4
	.uleb128 0xa
	.byte	0x8
	.byte	0x8
	.byte	0x8
	.byte	0x9
	.4byte	0x221
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.byte	0x9
	.byte	0x9
	.4byte	0x1dc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x8
	.byte	0xa
	.byte	0x8
	.4byte	0x1ef
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF64
	.byte	0x8
	.byte	0xb
	.byte	0x3
	.4byte	0x1fd
	.uleb128 0x1b
	.2byte	0x2030
	.byte	0x2
	.byte	0x10
	.byte	0x9
	.4byte	0x2df
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x11
	.byte	0x6
	.4byte	0x8e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x2
	.byte	0x12
	.byte	0x8
	.4byte	0x2df
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x13
	.byte	0xa
	.4byte	0x2fb
	.2byte	0x1004
	.uleb128 0x5
	.4byte	.LASF67
	.byte	0x15
	.byte	0xb
	.4byte	0xc0
	.2byte	0x2004
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x17
	.byte	0xb
	.4byte	0xa8
	.2byte	0x2008
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x19
	.byte	0x6
	.4byte	0x317
	.2byte	0x200a
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x1a
	.byte	0xb
	.4byte	0xc0
	.2byte	0x200c
	.uleb128 0x1c
	.ascii	"vbo\000"
	.byte	0x2
	.byte	0x1c
	.byte	0xc
	.4byte	0x221
	.2byte	0x2010
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x1c
	.byte	0x11
	.4byte	0x221
	.2byte	0x2018
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x1d
	.byte	0x9
	.4byte	0x1dc
	.2byte	0x2020
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x1d
	.byte	0x13
	.4byte	0x1dc
	.2byte	0x2024
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x1e
	.byte	0xb
	.4byte	0xc0
	.2byte	0x2028
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x1f
	.byte	0x6
	.4byte	0x317
	.2byte	0x202c
	.byte	0
	.uleb128 0xc
	.4byte	0xcc
	.4byte	0x2fb
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	0x9c
	.4byte	0x317
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF76
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x2
	.byte	0x20
	.byte	0x3
	.4byte	0x22d
	.uleb128 0xe
	.4byte	0x39
	.byte	0x2
	.byte	0x22
	.byte	0xe
	.4byte	0x349
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0x2
	.byte	0x26
	.byte	0x3
	.4byte	0x32a
	.uleb128 0x1d
	.4byte	0x102ac
	.byte	0x2
	.byte	0x28
	.byte	0x9
	.4byte	0x411
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x2
	.byte	0x2a
	.byte	0xb
	.4byte	0xc0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x2
	.byte	0x2b
	.byte	0xb
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x2
	.byte	0x2d
	.byte	0xb
	.4byte	0xc0
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x2
	.byte	0x2f
	.byte	0x13
	.4byte	0x349
	.byte	0xc
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x31
	.byte	0x6
	.4byte	0x8e
	.byte	0x10
	.uleb128 0xf
	.ascii	"z\000"
	.byte	0x31
	.byte	0x9
	.4byte	0x8e
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x2
	.byte	0x32
	.byte	0xa
	.4byte	0x411
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x34
	.byte	0xa
	.4byte	0x421
	.4byte	0x10198
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x35
	.byte	0xb
	.4byte	0xc0
	.4byte	0x10298
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x37
	.byte	0x9
	.4byte	0x1dc
	.4byte	0x1029c
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x39
	.byte	0xb
	.4byte	0xc0
	.4byte	0x102a0
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x3a
	.byte	0x6
	.4byte	0x317
	.4byte	0x102a4
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x3c
	.byte	0x6
	.4byte	0x8e
	.4byte	0x102a8
	.byte	0
	.uleb128 0xc
	.4byte	0x31e
	.4byte	0x421
	.uleb128 0x6
	.4byte	0x95
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x9c
	.4byte	0x437
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.uleb128 0x6
	.4byte	0x95
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0x355
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF92
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF93
	.uleb128 0x1e
	.ascii	"s32\000"
	.byte	0xb
	.byte	0x1c
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x2
	.4byte	.LASF94
	.byte	0x9
	.byte	0xa
	.byte	0x11
	.4byte	0x1f1
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0x13
	.byte	0x9
	.4byte	0x48d
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x9
	.byte	0x15
	.byte	0x6
	.4byte	0x451
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x9
	.byte	0x16
	.byte	0xc
	.4byte	0x45d
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x9
	.byte	0x17
	.byte	0x3
	.4byte	0x469
	.uleb128 0xe
	.4byte	0x39
	.byte	0xa
	.byte	0xd
	.byte	0xe
	.4byte	0x4ca
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xa
	.byte	0x14
	.byte	0x3
	.4byte	0x499
	.uleb128 0xa
	.byte	0xc
	.byte	0xa
	.byte	0x16
	.byte	0x9
	.4byte	0x507
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xa
	.byte	0x17
	.byte	0x11
	.4byte	0x4ca
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xa
	.byte	0x18
	.byte	0x9
	.4byte	0x507
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x19
	.byte	0xb
	.4byte	0xc0
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x437
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0xa
	.byte	0x1a
	.byte	0x3
	.4byte	0x4d6
	.uleb128 0xa
	.byte	0xc
	.byte	0xa
	.byte	0x1d
	.byte	0x2
	.4byte	0x549
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xa
	.byte	0x1d
	.byte	0x17
	.4byte	0x549
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xa
	.byte	0x1d
	.byte	0x21
	.4byte	0x8e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xa
	.byte	0x1d
	.byte	0x29
	.4byte	0x8e
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x50c
	.uleb128 0xa
	.byte	0x18
	.byte	0xa
	.byte	0x1c
	.byte	0x9
	.4byte	0x57f
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xa
	.byte	0x1d
	.byte	0x35
	.4byte	0x518
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xa
	.byte	0x1f
	.byte	0xd
	.4byte	0x48d
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xa
	.byte	0x20
	.byte	0xc
	.4byte	0x45d
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xa
	.byte	0x21
	.byte	0x3
	.4byte	0x54e
	.uleb128 0xb
	.4byte	0x57f
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c4
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0x4
	.byte	0x21
	.4byte	0x58b
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x33
	.4byte	0x50c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0x3c
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.ascii	"z\000"
	.byte	0x43
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x4a
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.4byte	.LLRL1
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0x1dc
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x14
	.4byte	0x6c4
	.4byte	.LBI8
	.byte	.LVU18
	.4byte	.LLRL3
	.byte	0x1
	.byte	0x8
	.byte	0x9
	.uleb128 0x7
	.4byte	0x6f4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x15
	.4byte	0x6eb
	.uleb128 0x7
	.4byte	0x6e2
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x7
	.4byte	0x6d9
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x7
	.4byte	0x6ce
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x10
	.4byte	.LLRL3
	.uleb128 0x16
	.4byte	0x6ff
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x14
	.4byte	0x70f
	.4byte	.LBI10
	.byte	.LVU22
	.4byte	.LLRL9
	.byte	0x2
	.byte	0x71
	.byte	0x2
	.uleb128 0x7
	.4byte	0x73f
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x15
	.4byte	0x736
	.uleb128 0x7
	.4byte	0x72d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x7
	.4byte	0x724
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x7
	.4byte	0x719
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x10
	.4byte	.LLRL9
	.uleb128 0x16
	.4byte	0x74a
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x22
	.4byte	0x754
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x6e
	.4byte	0x70a
	.uleb128 0xd
	.4byte	.LASF106
	.byte	0x6e
	.byte	0x23
	.4byte	0x507
	.uleb128 0x9
	.ascii	"x\000"
	.byte	0x6e
	.byte	0x2e
	.4byte	0x8e
	.uleb128 0x9
	.ascii	"y\000"
	.byte	0x6e
	.byte	0x35
	.4byte	0x8e
	.uleb128 0x9
	.ascii	"z\000"
	.byte	0x6e
	.byte	0x3c
	.4byte	0x8e
	.uleb128 0xd
	.4byte	.LASF117
	.byte	0x6e
	.byte	0x45
	.4byte	0xcc
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x6f
	.4byte	0x70a
	.byte	0
	.uleb128 0xb
	.4byte	0x31e
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x61
	.4byte	0x75f
	.uleb128 0xd
	.4byte	.LASF106
	.byte	0x61
	.byte	0x26
	.4byte	0x507
	.uleb128 0x9
	.ascii	"x\000"
	.byte	0x61
	.byte	0x31
	.4byte	0x8e
	.uleb128 0x9
	.ascii	"y\000"
	.byte	0x61
	.byte	0x38
	.4byte	0x8e
	.uleb128 0x9
	.ascii	"z\000"
	.byte	0x61
	.byte	0x3f
	.4byte	0x8e
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x61
	.byte	0x4a
	.4byte	0x9c
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x63
	.4byte	0x70a
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x64
	.4byte	0x75f
	.byte	0
	.uleb128 0xb
	.4byte	0x9c
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x1e
	.uleb128 0x16
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE124-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU8
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU36
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LVL6-.LVL2
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS4:
	.uleb128 .LVU18
	.uleb128 .LVU31
.LLST4:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU18
	.uleb128 .LVU31
.LLST5:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS6:
	.uleb128 .LVU18
	.uleb128 .LVU31
.LLST6:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
.LVUS7:
	.uleb128 .LVU18
	.uleb128 .LVU31
.LLST7:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
.LVUS8:
	.uleb128 .LVU20
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU38
.LLST8:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL7-.LVL3
	.uleb128 0xf
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x1b
	.byte	0xa
	.2byte	0x2030
	.byte	0x1e
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x10
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x1b
	.byte	0xa
	.2byte	0x2030
	.byte	0x1e
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU22
	.uleb128 .LVU31
.LLST10:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU22
	.uleb128 .LVU31
.LLST11:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS12:
	.uleb128 .LVU22
	.uleb128 .LVU31
.LLST12:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
.LVUS13:
	.uleb128 .LVU22
	.uleb128 .LVU31
.LLST13:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
.LVUS14:
	.uleb128 .LVU25
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU38
.LLST14:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL7-.LVL3
	.uleb128 0xf
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x1b
	.byte	0xa
	.2byte	0x2030
	.byte	0x1e
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x10
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x1b
	.byte	0xa
	.2byte	0x2030
	.byte	0x1e
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LLRL1:
	.byte	0x5
	.4byte	.LBB7
	.byte	0x4
	.uleb128 .LBB7-.LBB7
	.uleb128 .LBE7-.LBB7
	.byte	0x4
	.uleb128 .LBB24-.LBB7
	.uleb128 .LBE24-.LBB7
	.byte	0x4
	.uleb128 .LBB25-.LBB7
	.uleb128 .LBE25-.LBB7
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB8
	.byte	0x4
	.uleb128 .LBB8-.LBB8
	.uleb128 .LBE8-.LBB8
	.byte	0x4
	.uleb128 .LBB20-.LBB8
	.uleb128 .LBE20-.LBB8
.LLRL9:
	.byte	0x5
	.4byte	.LBB21
	.byte	0x4
	.uleb128 .LBB21-.LBB21
	.uleb128 .LBE21-.LBB21
	.byte	0x4
	.uleb128 .LBB22-.LBB21
	.uleb128 .LBE22-.LBB21
	.byte	0x4
	.uleb128 .LBB23-.LBB21
	.uleb128 .LBE23-.LBB21
	.byte	0
.LLRL15:
	.byte	0x7
	.4byte	.LFB124
	.uleb128 .LFE124-.LFB124
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF78:
	.ascii	"ChunkGen_Empty\000"
.LASF110:
	.ascii	"capacity\000"
.LASF45:
	.ascii	"Block_Lava\000"
.LASF37:
	.ascii	"Block_Snow\000"
.LASF123:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF59:
	.ascii	"size_t\000"
.LASF107:
	.ascii	"WorkerItem\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF67:
	.ascii	"revision\000"
.LASF126:
	.ascii	"TreeGen_GenTree\000"
.LASF105:
	.ascii	"type\000"
.LASF86:
	.ascii	"clusters\000"
.LASF124:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/world/worl"
	.ascii	"dgen/structures/TreeGen.c\000"
.LASF122:
	.ascii	"addr\000"
.LASF104:
	.ascii	"WorkerItemType\000"
.LASF24:
	.ascii	"Block_Log\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF72:
	.ascii	"vertices\000"
.LASF47:
	.ascii	"Block_Coal_Ore\000"
.LASF40:
	.ascii	"Block_Sandstone\000"
.LASF69:
	.ascii	"empty\000"
.LASF95:
	.ascii	"state\000"
.LASF23:
	.ascii	"Block_Sand\000"
.LASF7:
	.ascii	"long int\000"
.LASF85:
	.ascii	"genProgress\000"
.LASF17:
	.ascii	"Block\000"
.LASF44:
	.ascii	"Block_Water\000"
.LASF42:
	.ascii	"Block_Crafting_Table\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF93:
	.ascii	"double\000"
.LASF43:
	.ascii	"Block_Grass_Path\000"
.LASF113:
	.ascii	"listInUse\000"
.LASF21:
	.ascii	"Block_Grass\000"
.LASF33:
	.ascii	"Block_Coarse\000"
.LASF39:
	.ascii	"Block_Netherrack\000"
.LASF80:
	.ascii	"ChunkGen_Finished\000"
.LASF41:
	.ascii	"Block_Smooth_Stone\000"
.LASF73:
	.ascii	"transparentVertices\000"
.LASF118:
	.ascii	"Chunk_SetBlock\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF63:
	.ascii	"memory\000"
.LASF74:
	.ascii	"vboRevision\000"
.LASF117:
	.ascii	"block\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF28:
	.ascii	"Block_Stonebrick\000"
.LASF22:
	.ascii	"Block_Cobblestone\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF46:
	.ascii	"Block_Iron_Ore\000"
.LASF31:
	.ascii	"Block_Wool\000"
.LASF111:
	.ascii	"queue\000"
.LASF77:
	.ascii	"Cluster\000"
.LASF119:
	.ascii	"Chunk_SetMetadata\000"
.LASF108:
	.ascii	"data\000"
.LASF62:
	.ascii	"size\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF103:
	.ascii	"WorkerItemTypes_Count\000"
.LASF54:
	.ascii	"Block_Iron_Block\000"
.LASF51:
	.ascii	"Block_Gold_Block\000"
.LASF50:
	.ascii	"Block_Emerald_Ore\000"
.LASF61:
	.ascii	"_LOCK_T\000"
.LASF82:
	.ascii	"tasksRunning\000"
.LASF66:
	.ascii	"metadataLight\000"
.LASF32:
	.ascii	"Block_Bedrock\000"
.LASF115:
	.ascii	"item\000"
.LASF121:
	.ascii	"cluster\000"
.LASF106:
	.ascii	"chunk\000"
.LASF79:
	.ascii	"ChunkGen_Terrain\000"
.LASF49:
	.ascii	"Block_Gold_Ore\000"
.LASF65:
	.ascii	"blocks\000"
.LASF38:
	.ascii	"Block_Obsidian\000"
.LASF68:
	.ascii	"seeThrough\000"
.LASF52:
	.ascii	"Block_Diamond_Block\000"
.LASF71:
	.ascii	"transparentVBO\000"
.LASF29:
	.ascii	"Block_Brick\000"
.LASF55:
	.ascii	"Block_Emerald_Block\000"
.LASF81:
	.ascii	"ChunkGenProgress\000"
.LASF101:
	.ascii	"WorkerItemType_Decorate\000"
.LASF34:
	.ascii	"Block_Door_Top\000"
.LASF83:
	.ascii	"graphicalTasksRunning\000"
.LASF97:
	.ascii	"LightEvent\000"
.LASF92:
	.ascii	"float\000"
.LASF94:
	.ascii	"LightLock\000"
.LASF90:
	.ascii	"references\000"
.LASF48:
	.ascii	"Block_Diamond_Ore\000"
.LASF36:
	.ascii	"Block_Snow_Grass\000"
.LASF35:
	.ascii	"Block_Door_Bottom\000"
.LASF102:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF91:
	.ascii	"Chunk\000"
.LASF76:
	.ascii	"_Bool\000"
.LASF15:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"short int\000"
.LASF25:
	.ascii	"Block_Gravel\000"
.LASF112:
	.ascii	"itemAddedEvent\000"
.LASF89:
	.ascii	"displayRevision\000"
.LASF114:
	.ascii	"WorkQueue\000"
.LASF120:
	.ascii	"metadata\000"
.LASF56:
	.ascii	"Block_Furnace\000"
.LASF57:
	.ascii	"Blocks_Count\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF88:
	.ascii	"heightmapRevision\000"
.LASF60:
	.ascii	"long double\000"
.LASF109:
	.ascii	"length\000"
.LASF84:
	.ascii	"uuid\000"
.LASF58:
	.ascii	"char\000"
.LASF87:
	.ascii	"heightmap\000"
.LASF64:
	.ascii	"VBO_Block\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF18:
	.ascii	"Block_Air\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF100:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF75:
	.ascii	"forceVBOUpdate\000"
.LASF53:
	.ascii	"Block_Coal_Block\000"
.LASF98:
	.ascii	"WorkerItemType_Load\000"
.LASF30:
	.ascii	"Block_Planks\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF125:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF27:
	.ascii	"Block_Glass\000"
.LASF19:
	.ascii	"Block_Stone\000"
.LASF70:
	.ascii	"emptyRevision\000"
.LASF26:
	.ascii	"Block_Leaves\000"
.LASF20:
	.ascii	"Block_Dirt\000"
.LASF116:
	.ascii	"height\000"
.LASF96:
	.ascii	"lock\000"
.LASF99:
	.ascii	"WorkerItemType_Save\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
