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
	.file	"DebugUI.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DebugUI_Init,"ax",%progbits
	.align	2
	.global	DebugUI_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	DebugUI_Init, %function
DebugUI_Init:
.LFB206:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/gui/DebugUI.c"
	.loc 1 18 21 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 19 2 view .LVU1
.LBB2:
	.loc 1 19 7 view .LVU2
.LVL0:
	.loc 1 19 20 view .LVU3
.LBE2:
	.loc 1 18 21 is_stmt 0 view .LVU4
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	ldr	r4, .L9
	add	r5, r4, #80
.LVL1:
.L2:
.LBB3:
	.loc 1 20 3 is_stmt 1 discriminator 3 view .LVU5
	.loc 1 20 17 is_stmt 0 discriminator 3 view .LVU6
	mov	r1, #1
	mov	r0, #128
	bl	calloc
.LVL2:
	.loc 1 20 15 discriminator 3 view .LVU7
	str	r0, [r4, #4]!
	.loc 1 21 3 is_stmt 1 discriminator 3 view .LVU8
	.loc 1 19 27 discriminator 3 view .LVU9
	.loc 1 19 20 discriminator 3 view .LVU10
	cmp	r4, r5
	bne	.L2
	ldr	r4, .L9+4
	add	r5, r4, #60
.L3:
.LBE3:
.LBB4:
	.loc 1 24 3 discriminator 3 view .LVU11
	.loc 1 24 20 is_stmt 0 discriminator 3 view .LVU12
	mov	r1, #1
	mov	r0, #128
	bl	calloc
.LVL3:
	.loc 1 24 18 discriminator 3 view .LVU13
	str	r0, [r4], #4
	.loc 1 25 3 is_stmt 1 discriminator 3 view .LVU14
	.loc 1 23 38 discriminator 3 view .LVU15
	.loc 1 23 20 discriminator 3 view .LVU16
	cmp	r4, r5
	bne	.L3
	pop	{r4, r5, r6, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0-4
	.word	.LANCHOR0+80
.LBE4:
	.cfi_endproc
.LFE206:
	.size	DebugUI_Init, .-DebugUI_Init
	.section	.text.DebugUI_Deinit,"ax",%progbits
	.align	2
	.global	DebugUI_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	DebugUI_Deinit, %function
DebugUI_Deinit:
.LFB207:
	.loc 1 28 23 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 29 2 view .LVU18
.LBB5:
	.loc 1 29 7 view .LVU19
.LVL4:
	.loc 1 29 20 view .LVU20
.LBE5:
	.loc 1 28 23 is_stmt 0 view .LVU21
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	ldr	r4, .L18
	add	r5, r4, #80
.LVL5:
.L12:
.LBB6:
	.loc 1 29 31 is_stmt 1 discriminator 3 view .LVU22
	ldr	r0, [r4, #4]!
	bl	free
.LVL6:
	.loc 1 29 27 discriminator 3 view .LVU23
	.loc 1 29 20 discriminator 3 view .LVU24
	cmp	r4, r5
	bne	.L12
	ldr	r4, .L18+4
	add	r5, r4, #60
.L13:
.LBE6:
.LBB7:
	.loc 1 30 42 discriminator 3 view .LVU25
	ldr	r0, [r4], #4
	bl	free
.LVL7:
	.loc 1 30 38 discriminator 3 view .LVU26
	.loc 1 30 20 discriminator 3 view .LVU27
	cmp	r4, r5
	bne	.L13
	pop	{r4, r5, r6, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0-4
	.word	.LANCHOR0+80
.LBE7:
	.cfi_endproc
.LFE207:
	.size	DebugUI_Deinit, .-DebugUI_Deinit
	.section	.text.DebugUI_Text,"ax",%progbits
	.align	2
	.global	DebugUI_Text
	.syntax unified
	.arm
	.fpu vfp
	.type	DebugUI_Text, %function
DebugUI_Text:
.LVL8:
.LFB208:
	.loc 1 33 42 view -0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 34 2 view .LVU29
	.loc 1 33 42 is_stmt 0 view .LVU30
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	.loc 1 34 24 view .LVU31
	ldr	r1, .L23
	.loc 1 33 42 view .LVU32
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 20
	.cfi_offset 14, -20
	.loc 1 34 24 view .LVU33
	ldr	r3, [r1, #140]
	.loc 1 33 42 view .LVU34
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 34 5 view .LVU35
	cmp	r3, #14
	bgt	.L20
	.loc 1 35 2 is_stmt 1 view .LVU36
	.loc 1 36 1 view .LVU37
	.loc 1 38 2 is_stmt 0 view .LVU38
	add	r0, r1, r3, lsl #2
	.loc 1 38 40 view .LVU39
	add	r3, r3, #1
	.loc 1 36 1 view .LVU40
	add	r2, sp, #20
	.loc 1 38 40 view .LVU41
	str	r3, [r1, #140]
	.loc 1 38 2 view .LVU42
	ldr	r0, [r0, #80]
	ldr	r1, [sp, #16]
	.loc 1 36 1 view .LVU43
	str	r2, [sp, #4]
	.loc 1 38 2 is_stmt 1 view .LVU44
	bl	vsprintf
.LVL9:
	.loc 1 40 1 view .LVU45
.L20:
	.loc 1 41 1 is_stmt 0 view .LVU46
	add	sp, sp, #12
	.cfi_def_cfa_offset 20
	@ sp needed
	ldr	lr, [sp], #4
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.cfi_endproc
.LFE208:
	.size	DebugUI_Text, .-DebugUI_Text
	.section	.text.DebugUI_Log,"ax",%progbits
	.align	2
	.global	DebugUI_Log
	.syntax unified
	.arm
	.fpu vfp
	.type	DebugUI_Log, %function
DebugUI_Log:
.LVL10:
.LFB209:
	.loc 1 43 41 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 44 2 view .LVU48
	.loc 1 43 41 is_stmt 0 view .LVU49
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 14, -20
	.loc 1 44 8 view .LVU50
	ldr	r4, .L27
	.loc 1 43 41 view .LVU51
	sub	sp, sp, #12
	.cfi_def_cfa_offset 40
	.loc 1 44 8 view .LVU52
	ldr	r5, [r4, #76]
.LVL11:
	.loc 1 45 2 is_stmt 1 view .LVU53
.LBB8:
	.loc 1 45 7 view .LVU54
	.loc 1 45 25 view .LVU55
	.loc 1 45 47 is_stmt 0 view .LVU56
	mov	r1, r4
	mov	r2, #76
	add	r0, r4, #4
	bl	memmove
.LVL12:
	.loc 1 45 47 view .LVU57
.LBE8:
	.loc 1 46 2 is_stmt 1 view .LVU58
	.loc 1 49 1 is_stmt 0 view .LVU59
	add	r2, sp, #28
	.loc 1 51 2 view .LVU60
	mov	r0, r5
	ldr	r1, [sp, #24]
	.loc 1 46 14 view .LVU61
	str	r5, [r4]
	.loc 1 48 2 is_stmt 1 view .LVU62
	.loc 1 49 1 view .LVU63
	str	r2, [sp, #4]
	.loc 1 51 2 view .LVU64
	bl	vsprintf
.LVL13:
	.loc 1 53 1 view .LVU65
	.loc 1 54 1 is_stmt 0 view .LVU66
	add	sp, sp, #12
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL14:
	.loc 1 54 1 view .LVU67
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.cfi_endproc
.LFE209:
	.size	DebugUI_Log, .-DebugUI_Log
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.section	.text.DebugUI_Draw,"ax",%progbits
	.align	2
	.global	DebugUI_Draw
	.syntax unified
	.arm
	.fpu vfp
	.type	DebugUI_Draw, %function
DebugUI_Draw:
.LFB210:
	.loc 1 56 21 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 57 2 view .LVU69
	.loc 1 56 21 is_stmt 0 view .LVU70
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	ldr	r5, .L38
	sub	sp, sp, #36
	.cfi_def_cfa_offset 72
	.loc 1 57 2 view .LVU71
	mov	r0, #1
	bl	SpriteBatch_SetScale
.LVL15:
	.loc 1 61 2 is_stmt 1 view .LVU72
	.loc 1 62 2 view .LVU73
.LBB9:
	.loc 1 62 7 view .LVU74
	.loc 1 62 20 view .LVU75
.LBE9:
	.loc 1 61 6 is_stmt 0 view .LVU76
	mov	r4, #160
.LBB14:
.LBB10:
	.loc 1 63 7 view .LVU77
	mov	r6, #0
	.loc 1 64 3 view .LVU78
	mov	r9, #320
	ldr	r8, .L38+4
	ldr	fp, .L38+8
	add	r10, r5, #80
	add	r7, sp, #28
	b	.L31
.LVL16:
.L37:
	.loc 1 64 3 view .LVU79
.LBE10:
	.loc 1 62 20 view .LVU80
	cmp	r5, r10
	beq	.L32
.LVL17:
.L31:
.LBB11:
	.loc 1 63 3 is_stmt 1 view .LVU81
	.loc 1 64 3 is_stmt 0 view .LVU82
	ldr	ip, [r5, #4]!
	mov	r1, r4
	mov	r2, #100
	mov	r3, fp
	mov	r0, #0
	stm	sp, {r6, r9}
	str	ip, [sp, #16]
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	.loc 1 63 7 view .LVU83
	str	r6, [sp, #28]
	.loc 1 64 3 is_stmt 1 view .LVU84
	bl	SpriteBatch_PushText
.LVL18:
	.loc 1 65 3 view .LVU85
.LBE11:
	.loc 1 62 27 view .LVU86
.LBB12:
	.loc 1 65 11 is_stmt 0 view .LVU87
	ldr	r2, [sp, #28]
	add	r4, r4, r2
.LVL19:
	.loc 1 66 3 is_stmt 1 view .LVU88
	.loc 1 66 3 is_stmt 0 view .LVU89
.LBE12:
	.loc 1 62 20 is_stmt 1 view .LVU90
.LBB13:
	.loc 1 66 6 is_stmt 0 view .LVU91
	cmp	r4, #239
	ble	.L37
.L32:
.LBE13:
.LBE14:
	.loc 1 61 6 discriminator 3 view .LVU92
	mov	r5, #0
.LBB15:
.LBB16:
	.loc 1 71 3 discriminator 3 view .LVU93
	mov	r10, #320
	.loc 1 70 7 discriminator 3 view .LVU94
	mov	r6, r5
	ldr	r4, .L38+12
.LVL20:
	.loc 1 71 3 discriminator 3 view .LVU95
	ldr	fp, .L38+8
	add	r9, r4, #60
.L33:
.LVL21:
	.loc 1 70 3 is_stmt 1 discriminator 3 view .LVU96
	.loc 1 71 3 is_stmt 0 discriminator 3 view .LVU97
	ldr	ip, [r4]
	mov	r1, r5
	mov	r3, fp
	mov	r2, #100
	str	ip, [sp, #16]
	mov	r0, #0
	stm	sp, {r6, r10}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	.loc 1 70 7 discriminator 3 view .LVU98
	str	r6, [sp, #28]
	.loc 1 71 3 is_stmt 1 discriminator 3 view .LVU99
	bl	SpriteBatch_PushText
.LVL22:
	.loc 1 72 3 discriminator 3 view .LVU100
	.loc 1 72 11 is_stmt 0 discriminator 3 view .LVU101
	ldr	ip, [sp, #28]
	.loc 1 74 3 discriminator 3 view .LVU102
	ldr	r0, [r4], #4
	mov	r2, #128
	mov	r1, #0
	.loc 1 72 11 discriminator 3 view .LVU103
	add	r5, r5, ip
.LVL23:
	.loc 1 74 3 is_stmt 1 discriminator 3 view .LVU104
	bl	memset
.LVL24:
.LBE16:
	.loc 1 69 38 discriminator 3 view .LVU105
	.loc 1 69 20 discriminator 3 view .LVU106
	cmp	r4, r9
	bne	.L33
.LBE15:
	.loc 1 76 2 view .LVU107
	.loc 1 76 20 is_stmt 0 view .LVU108
	ldr	r3, .L38+16
	str	r6, [r3, #140]
	.loc 1 77 1 view .LVU109
	add	sp, sp, #36
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL25:
.L39:
	.loc 1 77 1 view .LVU110
	.align	2
.L38:
	.word	.LANCHOR0-4
	.word	.LC0
	.word	32767
	.word	.LANCHOR0+80
	.word	.LANCHOR0
	.cfi_endproc
.LFE210:
	.size	DebugUI_Draw, .-DebugUI_Draw
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	logLines, %object
	.size	logLines, 80
logLines:
	.space	80
	.type	statusLines, %object
	.size	statusLines, 60
statusLines:
	.space	60
	.type	currentStatusLine, %object
	.size	currentStatusLine, 4
currentStatusLine:
	.space	4
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stdarg.h"
	.file 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h"
	.file 7 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 8 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 13 "/home/tobi/Dokumente/Craftus-Next/include/gui/SpriteBatch.h"
	.file 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 16 "<built-in>"
	.file 17 "/opt/devkitpro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6cd
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x1d
	.4byte	.LASF105
	.4byte	.LASF106
	.4byte	.LLRL10
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x40
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x61
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1c
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7d
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x34
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x55
	.uleb128 0x8
	.byte	0x1
	.4byte	0x2d
	.byte	0x7
	.byte	0xa
	.byte	0x6
	.4byte	0x1ad
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x27
	.byte	0
	.uleb128 0xb
	.4byte	0x1b9
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF55
	.uleb128 0x1d
	.4byte	0x1b2
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x1ca
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x4
	.byte	0x10
	.byte	0
	.4byte	0x1e1
	.uleb128 0x1f
	.4byte	.LASF108
	.4byte	0x1e1
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x6
	.byte	0x2e
	.byte	0x18
	.4byte	0x1be
	.uleb128 0xb
	.4byte	0x1b2
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF58
	.uleb128 0xb
	.4byte	0x76
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF59
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF60
	.uleb128 0x21
	.ascii	"u32\000"
	.byte	0x11
	.byte	0x17
	.byte	0x12
	.4byte	0xa3
	.uleb128 0x8
	.byte	0x1
	.4byte	0x2d
	.byte	0x8
	.byte	0x28
	.byte	0x1
	.4byte	0x240
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	0x2d
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x266
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	0x2d
	.byte	0x9
	.byte	0x21
	.byte	0xe
	.4byte	0x28c
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.byte	0x7
	.byte	0x1
	.4byte	0x2d
	.byte	0xa
	.2byte	0x1f5
	.byte	0x1
	.4byte	0x2a8
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.4byte	0x2d
	.byte	0xb
	.byte	0xb
	.byte	0x1
	.4byte	0x2c8
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.4byte	0x47
	.byte	0xc
	.byte	0x9
	.byte	0x1
	.4byte	0x2e4
	.uleb128 0x12
	.4byte	.LASF78
	.2byte	0x100
	.uleb128 0x12
	.4byte	.LASF79
	.2byte	0x200
	.byte	0
	.uleb128 0x13
	.4byte	0x1ef
	.4byte	0x2f4
	.uleb128 0x14
	.4byte	0x7d
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0xe
	.byte	0xe
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x3
	.4byte	statusLines
	.uleb128 0x13
	.4byte	0x1ef
	.4byte	0x315
	.uleb128 0x14
	.4byte	0x7d
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0xf
	.byte	0xe
	.4byte	0x305
	.uleb128 0x5
	.byte	0x3
	.4byte	logLines
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x10
	.byte	0xc
	.4byte	0x76
	.uleb128 0x5
	.byte	0x3
	.4byte	currentStatusLine
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xd
	.byte	0x1c
	.byte	0x5
	.4byte	0x76
	.4byte	0x371
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x1f4
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x1fb
	.uleb128 0x3
	.4byte	0x1ad
	.uleb128 0xc
	.byte	0
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0xd
	.byte	0x23
	.4byte	0x382
	.uleb128 0x3
	.4byte	0x76
	.byte	0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd2
	.byte	0x5
	.4byte	0x76
	.4byte	0x3a2
	.uleb128 0x3
	.4byte	0x1ef
	.uleb128 0x3
	.4byte	0x1ad
	.uleb128 0x3
	.4byte	0x1be
	.byte	0
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0xe
	.byte	0x5e
	.4byte	0x3b3
	.uleb128 0x3
	.4byte	0x1e1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xf
	.byte	0x21
	.byte	0x8
	.4byte	0x1e1
	.4byte	0x3d3
	.uleb128 0x3
	.4byte	0x1e1
	.uleb128 0x3
	.4byte	0x76
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xe
	.byte	0x6c
	.byte	0x7
	.4byte	0x1e1
	.4byte	0x3e9
	.uleb128 0x3
	.4byte	0x84
	.byte	0
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x38
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x512
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x3d
	.byte	0x6
	.4byte	0x76
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xe
	.4byte	.LLRL7
	.4byte	0x47c
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x3e
	.4byte	0x76
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x23
	.4byte	.LLRL9
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x3f
	.byte	0x7
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.4byte	.LVL18
	.4byte	0x337
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x502
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x45
	.4byte	0x76
	.uleb128 0x10
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x46
	.byte	0x7
	.4byte	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0x337
	.4byte	0x4ea
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL24
	.4byte	0x6b5
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL15
	.4byte	0x371
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x2b
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ae
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x2b
	.byte	0x1e
	.4byte	0x1ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x2c
	.byte	0x8
	.4byte	0x1ef
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x30
	.byte	0xa
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x590
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x2d
	.4byte	0x76
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x5
	.4byte	.LVL12
	.4byte	0x6be
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL13
	.4byte	0x382
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x21
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f7
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x21
	.byte	0x1f
	.4byte	0x1ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x23
	.byte	0xa
	.4byte	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.4byte	.LVL9
	.4byte	0x382
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x1c
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64a
	.uleb128 0xe
	.4byte	.LLRL2
	.4byte	0x62e
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x1d
	.4byte	0x76
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x3a2
	.byte	0
	.uleb128 0x10
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1e
	.4byte	0x76
	.uleb128 0x1a
	.4byte	.LVL7
	.4byte	0x3a2
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x12
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b5
	.uleb128 0xe
	.4byte	.LLRL0
	.4byte	0x68d
	.uleb128 0xa
	.ascii	"i\000"
	.byte	0x13
	.4byte	0x76
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x5
	.4byte	.LVL2
	.4byte	0x6c7
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x17
	.4byte	0x76
	.uleb128 0x5
	.4byte	.LVL3
	.4byte	0x6c7
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF87
	.4byte	.LASF100
	.uleb128 0x11
	.4byte	.LASF99
	.4byte	.LASF101
	.uleb128 0x11
	.4byte	.LASF102
	.4byte	.LASF103
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
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS6:
	.uleb128 .LVU73
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU95
	.uleb128 .LVU96
	.uleb128 .LVU110
.LLST6:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x3
	.byte	0x8
	.byte	0xa0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL20-.LVL15
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.LVL15
	.uleb128 .LVL25-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS8:
	.uleb128 .LVU75
	.uleb128 .LVU79
.LLST8:
	.byte	0x8
	.4byte	.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU53
	.uleb128 .LVU67
.LLST4:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL14-.LVL11
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS5:
	.uleb128 .LVU55
	.uleb128 .LVU57
.LLST5:
	.byte	0x8
	.4byte	.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x2
	.byte	0x43
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU20
	.uleb128 .LVU22
.LLST3:
	.byte	0x8
	.4byte	.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU5
.LLST1:
	.byte	0x8
	.4byte	.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
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
.LLRL0:
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB6-.LBB5
	.uleb128 .LBE6-.LBB5
	.byte	0
.LLRL7:
	.byte	0x5
	.4byte	.LBB9
	.byte	0x4
	.uleb128 .LBB9-.LBB9
	.uleb128 .LBE9-.LBB9
	.byte	0x4
	.uleb128 .LBB14-.LBB9
	.uleb128 .LBE14-.LBB9
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB11-.LBB10
	.uleb128 .LBE11-.LBB10
	.byte	0x4
	.uleb128 .LBB12-.LBB10
	.uleb128 .LBE12-.LBB10
	.byte	0x4
	.uleb128 .LBB13-.LBB10
	.uleb128 .LBE13-.LBB10
	.byte	0
.LLRL10:
	.byte	0x7
	.4byte	.LFB206
	.uleb128 .LFE206-.LFB206
	.byte	0x7
	.4byte	.LFB207
	.uleb128 .LFE207-.LFB207
	.byte	0x7
	.4byte	.LFB208
	.uleb128 .LFE208-.LFB208
	.byte	0x7
	.4byte	.LFB209
	.uleb128 .LFE209-.LFB209
	.byte	0x7
	.4byte	.LFB210
	.uleb128 .LFE210-.LFB210
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF33:
	.ascii	"Block_Snow_Grass\000"
.LASF95:
	.ascii	"text\000"
.LASF105:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/gui/DebugU"
	.ascii	"I.c\000"
.LASF40:
	.ascii	"Block_Grass_Path\000"
.LASF65:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF45:
	.ascii	"Block_Diamond_Ore\000"
.LASF30:
	.ascii	"Block_Coarse\000"
.LASF2:
	.ascii	"short int\000"
.LASF11:
	.ascii	"size_t\000"
.LASF106:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF49:
	.ascii	"Block_Diamond_Block\000"
.LASF83:
	.ascii	"SpriteBatch_PushText\000"
.LASF47:
	.ascii	"Block_Emerald_Ore\000"
.LASF70:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF97:
	.ascii	"DebugUI_Deinit\000"
.LASF46:
	.ascii	"Block_Gold_Ore\000"
.LASF44:
	.ascii	"Block_Coal_Ore\000"
.LASF62:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF57:
	.ascii	"va_list\000"
.LASF85:
	.ascii	"SpriteBatch_SetScale\000"
.LASF91:
	.ascii	"lastLine\000"
.LASF84:
	.ascii	"vsprintf\000"
.LASF75:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF100:
	.ascii	"__builtin_memset\000"
.LASF80:
	.ascii	"statusLines\000"
.LASF29:
	.ascii	"Block_Bedrock\000"
.LASF15:
	.ascii	"Block_Air\000"
.LASF53:
	.ascii	"Block_Furnace\000"
.LASF86:
	.ascii	"free\000"
.LASF79:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF17:
	.ascii	"Block_Dirt\000"
.LASF59:
	.ascii	"float\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF54:
	.ascii	"Blocks_Count\000"
.LASF8:
	.ascii	"long long int\000"
.LASF78:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF94:
	.ascii	"DebugUI_Text\000"
.LASF107:
	.ascii	"__va_list\000"
.LASF87:
	.ascii	"memset\000"
.LASF67:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF4:
	.ascii	"long int\000"
.LASF24:
	.ascii	"Block_Glass\000"
.LASF98:
	.ascii	"DebugUI_Init\000"
.LASF23:
	.ascii	"Block_Leaves\000"
.LASF73:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF50:
	.ascii	"Block_Coal_Block\000"
.LASF43:
	.ascii	"Block_Iron_Ore\000"
.LASF66:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF34:
	.ascii	"Block_Snow\000"
.LASF12:
	.ascii	"long double\000"
.LASF18:
	.ascii	"Block_Grass\000"
.LASF99:
	.ascii	"memmove\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF77:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF36:
	.ascii	"Block_Netherrack\000"
.LASF0:
	.ascii	"signed char\000"
.LASF31:
	.ascii	"Block_Door_Top\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"Block_Log\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF39:
	.ascii	"Block_Crafting_Table\000"
.LASF51:
	.ascii	"Block_Iron_Block\000"
.LASF25:
	.ascii	"Block_Stonebrick\000"
.LASF101:
	.ascii	"__builtin_memmove\000"
.LASF92:
	.ascii	"args\000"
.LASF96:
	.ascii	"DebugUI_Draw\000"
.LASF88:
	.ascii	"malloc\000"
.LASF64:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF82:
	.ascii	"currentStatusLine\000"
.LASF108:
	.ascii	"__ap\000"
.LASF55:
	.ascii	"char\000"
.LASF16:
	.ascii	"Block_Stone\000"
.LASF35:
	.ascii	"Block_Obsidian\000"
.LASF81:
	.ascii	"logLines\000"
.LASF102:
	.ascii	"calloc\000"
.LASF13:
	.ascii	"int16_t\000"
.LASF48:
	.ascii	"Block_Gold_Block\000"
.LASF58:
	.ascii	"_Bool\000"
.LASF71:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF41:
	.ascii	"Block_Water\000"
.LASF38:
	.ascii	"Block_Smooth_Stone\000"
.LASF63:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF93:
	.ascii	"DebugUI_Log\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF60:
	.ascii	"double\000"
.LASF104:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF28:
	.ascii	"Block_Wool\000"
.LASF37:
	.ascii	"Block_Sandstone\000"
.LASF27:
	.ascii	"Block_Planks\000"
.LASF32:
	.ascii	"Block_Door_Bottom\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF68:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF69:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF20:
	.ascii	"Block_Sand\000"
.LASF56:
	.ascii	"__gnuc_va_list\000"
.LASF74:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF61:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF42:
	.ascii	"Block_Lava\000"
.LASF89:
	.ascii	"yOffset\000"
.LASF103:
	.ascii	"__builtin_calloc\000"
.LASF26:
	.ascii	"Block_Brick\000"
.LASF52:
	.ascii	"Block_Emerald_Block\000"
.LASF22:
	.ascii	"Block_Gravel\000"
.LASF76:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF90:
	.ascii	"step\000"
.LASF19:
	.ascii	"Block_Cobblestone\000"
.LASF72:
	.ascii	"NDM_DAEMON_FRIENDS\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
