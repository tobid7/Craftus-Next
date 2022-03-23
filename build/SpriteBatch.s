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
	.file	"SpriteBatch.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.compareDrawCommands,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	compareDrawCommands, %function
compareDrawCommands:
.LVL0:
.LFB218:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/gui/SpriteBatch.c"
	.loc 1 237 62 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 238 2 view .LVU1
	.loc 1 239 2 view .LVU2
	.loc 1 241 2 view .LVU3
	.loc 1 241 24 is_stmt 0 view .LVU4
	ldr	r3, [r1]
	.loc 1 241 11 view .LVU5
	ldr	r2, [r0]
	.loc 1 241 60 view .LVU6
	cmp	r2, r3
	.loc 1 241 46 view .LVU7
	ldreq	r3, [r1, #4]
	ldreq	r2, [r0, #4]
	subeq	r0, r3, r2
.LVL1:
	.loc 1 241 60 view .LVU8
	asreq	r0, r0, #3
	addeq	r3, r0, r0, lsl #2
	addeq	r3, r3, r3, lsl #4
	addeq	r3, r3, r3, lsl #8
	addeq	r3, r3, r3, lsl #16
	addeq	r0, r0, r3, lsl #1
	subne	r0, r3, r2
	.loc 1 242 1 view .LVU9
	bx	lr
	.cfi_endproc
.LFE218:
	.size	compareDrawCommands, .-compareDrawCommands
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"romfs:/assets/textures/font/ascii.png\000"
	.align	2
.LC1:
	.ascii	"romfs:/assets/textures/gui/widgets.png\000"
	.align	2
.LC2:
	.ascii	"romfs:/assets/textures/gui/options_background.png\000"
	.align	2
.LC3:
	.ascii	"romfs:/assets/textures/gui/icons.png\000"
	.section	.text.SpriteBatch_Init,"ax",%progbits
	.align	2
	.global	SpriteBatch_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_Init, %function
SpriteBatch_Init:
.LVL2:
.LFB206:
	.loc 1 37 41 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 38 2 view .LVU11
	.loc 1 37 41 is_stmt 0 view .LVU12
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 38 2 view .LVU13
	mov	r5, #0
	ldr	r4, .L7+8
	.loc 1 37 41 view .LVU14
	sub	sp, sp, #256
	.cfi_def_cfa_offset 280
	.loc 1 37 41 view .LVU15
	mov	r7, r0
	.loc 1 40 18 view .LVU16
	mov	r0, #3072
.LVL3:
	.loc 1 38 2 view .LVU17
	str	r5, [r4]
	str	r5, [r4, #4]
	str	r5, [r4, #8]
	.loc 1 40 2 is_stmt 1 view .LVU18
	.loc 1 40 18 is_stmt 0 view .LVU19
	bl	linearAlloc
.LVL4:
	mov	r3, r0
	.loc 1 41 18 view .LVU20
	mov	r0, #122880
	.loc 1 40 16 view .LVU21
	str	r3, [r4, #12]
	.loc 1 41 2 is_stmt 1 view .LVU22
	.loc 1 41 18 is_stmt 0 view .LVU23
	bl	linearAlloc
.LVL5:
	.loc 1 41 16 view .LVU24
	str	r0, [r4, #16]
	.loc 1 43 2 is_stmt 1 view .LVU25
	.loc 1 45 2 view .LVU26
	.loc 1 45 16 is_stmt 0 view .LVU27
	mov	r0, #280
	.loc 1 43 14 view .LVU28
	str	r7, [r4, #20]
	.loc 1 45 16 view .LVU29
	bl	malloc
.LVL6:
	.loc 1 46 2 view .LVU30
	ldr	r1, .L7+12
	.loc 1 45 7 view .LVU31
	str	r0, [r4, #24]
	.loc 1 46 2 is_stmt 1 view .LVU32
	bl	FontLoader_Init
.LVL7:
	.loc 1 47 2 view .LVU33
	add	r0, r4, #28
	ldr	r1, .L7+16
	bl	Texture_Load
.LVL8:
	.loc 1 49 2 view .LVU34
	.loc 1 50 2 view .LVU35
.LBB51:
.LBB52:
	.file 2 "/opt/devkitpro/libctru/include/c3d/texture.h"
	.loc 2 96 9 is_stmt 0 view .LVU36
	add	r8, r4, #52
.LBE52:
.LBE51:
	.loc 1 50 2 view .LVU37
	mov	r2, #256
	mov	r1, #255
	mov	r0, sp
	bl	memset
.LVL9:
	.loc 1 51 2 is_stmt 1 view .LVU38
.LBB54:
.LBI51:
	.loc 2 94 19 view .LVU39
.LBB53:
	.loc 2 96 2 view .LVU40
	.loc 2 96 9 is_stmt 0 view .LVU41
	mov	r1, r5
	mov	r3, #112
	mov	r0, r8
	ldr	r2, .L7+20
	bl	C3D_TexInitWithParams
.LVL10:
	.loc 2 96 9 view .LVU42
.LBE53:
.LBE54:
	.loc 1 52 2 is_stmt 1 view .LVU43
	mov	r3, r5
	mov	r2, r5
	mov	r1, sp
	mov	r0, r8
	bl	C3D_TexLoadImage
.LVL11:
	.loc 1 54 2 view .LVU44
	add	r0, r4, #76
	ldr	r1, .L7+24
	bl	Texture_Load
.LVL12:
	.loc 1 55 9 view .LVU45
.LBB55:
.LBB56:
.LBB57:
.LBB58:
.LBB59:
	.file 3 "/opt/devkitpro/libctru/include/c3d/maths.h"
	.loc 3 285 2 is_stmt 0 view .LVU46
	add	r6, r4, #124
.LBE59:
.LBE58:
.LBE57:
.LBE56:
.LBE55:
	.loc 1 55 9 view .LVU47
	add	r0, r4, #100
	ldr	r1, .L7+28
	bl	Texture_Load
.LVL13:
	.loc 1 58 2 is_stmt 1 view .LVU48
.LBB66:
.LBI55:
	.loc 3 319 20 view .LVU49
	.loc 3 321 2 view .LVU50
.LBB64:
.LBI56:
	.loc 3 306 20 view .LVU51
.LBB62:
	.loc 3 308 2 view .LVU52
.LBB61:
.LBI58:
	.loc 3 283 20 view .LVU53
.LBB60:
	.loc 3 285 2 view .LVU54
	mov	r2, #64
	mov	r1, r5
	mov	r0, r6
	bl	memset
.LVL14:
	.loc 3 285 2 is_stmt 0 view .LVU55
.LBE60:
.LBE61:
	.loc 3 309 2 is_stmt 1 view .LVU56
	.loc 3 309 14 is_stmt 0 view .LVU57
	mov	r3, #1065353216
.LBE62:
.LBE64:
.LBE66:
	.loc 1 59 2 view .LVU58
	mov	r0, r6
	mov	r1, r5
	vldr.32	s0, .L7
.LBB67:
.LBB65:
.LBB63:
	.loc 3 309 14 view .LVU59
	str	r3, [r4, #136]	@ float
	.loc 3 310 2 is_stmt 1 view .LVU60
	.loc 3 310 14 is_stmt 0 view .LVU61
	str	r3, [r4, #148]	@ float
	.loc 3 311 2 is_stmt 1 view .LVU62
	.loc 3 311 14 is_stmt 0 view .LVU63
	str	r3, [r4, #160]	@ float
	.loc 3 312 2 is_stmt 1 view .LVU64
	.loc 3 312 14 is_stmt 0 view .LVU65
	str	r3, [r4, #172]	@ float
.LVL15:
	.loc 3 312 14 view .LVU66
.LBE63:
.LBE65:
.LBE67:
	.loc 1 59 2 is_stmt 1 view .LVU67
	bl	Mtx_RotateY
.LVL16:
	.loc 1 60 2 view .LVU68
	mov	r1, r5
	vldr.32	s0, .L7+4
	mov	r0, r6
	bl	Mtx_RotateX
.LVL17:
	.loc 1 61 1 is_stmt 0 view .LVU69
	add	sp, sp, #256
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.LVL18:
.L8:
	.loc 1 61 1 view .LVU70
	.align	2
.L7:
	.word	1061752795
	.word	1057360530
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	1048592
	.word	.LC2
	.word	.LC3
	.cfi_endproc
.LFE206:
	.size	SpriteBatch_Init, .-SpriteBatch_Init
	.section	.text.SpriteBatch_Deinit,"ax",%progbits
	.align	2
	.global	SpriteBatch_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_Deinit, %function
SpriteBatch_Deinit:
.LFB207:
	.loc 1 62 27 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 63 2 view .LVU72
	.loc 1 62 27 is_stmt 0 view .LVU73
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 63 19 view .LVU74
	ldr	r4, .L11
	.loc 1 63 4 view .LVU75
	ldr	r0, [r4]
	bl	free
.LVL19:
	.loc 1 63 28 view .LVU76
	mov	r3, #0
	.loc 1 64 2 view .LVU77
	ldr	r0, [r4, #12]
	.loc 1 63 28 view .LVU78
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	.loc 1 64 2 is_stmt 1 view .LVU79
	bl	linearFree
.LVL20:
	.loc 1 65 2 view .LVU80
	ldr	r0, [r4, #16]
	bl	linearFree
.LVL21:
	.loc 1 67 2 view .LVU81
	ldr	r0, [r4, #24]
	add	r0, r0, #256
	bl	C3D_TexDelete
.LVL22:
	.loc 1 68 2 view .LVU82
	ldr	r0, [r4, #24]
	bl	free
.LVL23:
	.loc 1 70 2 view .LVU83
	add	r0, r4, #52
	bl	C3D_TexDelete
.LVL24:
	.loc 1 71 2 view .LVU84
	add	r0, r4, #28
	bl	C3D_TexDelete
.LVL25:
	.loc 1 72 2 view .LVU85
	add	r0, r4, #76
	.loc 1 73 1 is_stmt 0 view .LVU86
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 72 2 view .LVU87
	b	C3D_TexDelete
.LVL26:
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.cfi_endproc
.LFE207:
	.size	SpriteBatch_Deinit, .-SpriteBatch_Deinit
	.section	.text.SpriteBatch_BindTexture,"ax",%progbits
	.align	2
	.global	SpriteBatch_BindTexture
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_BindTexture, %function
SpriteBatch_BindTexture:
.LVL27:
.LFB208:
	.loc 1 75 48 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 75 50 view .LVU89
	.loc 1 75 65 is_stmt 0 view .LVU90
	ldr	r3, .L14
	str	r0, [r3, #188]
	.loc 1 75 76 view .LVU91
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.cfi_endproc
.LFE208:
	.size	SpriteBatch_BindTexture, .-SpriteBatch_BindTexture
	.section	.text.SpriteBatch_BindGuiTexture,"ax",%progbits
	.align	2
	.global	SpriteBatch_BindGuiTexture
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_BindGuiTexture, %function
SpriteBatch_BindGuiTexture:
.LVL28:
.LFB209:
	.loc 1 76 53 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 77 2 view .LVU93
	cmp	r0, #4
	ldrls	pc, [pc, r0, asl #2]
	b	.L16
.L19:
	.word	.L23
	.word	.L22
	.word	.L21
	.word	.L20
	.word	.L18
.L18:
	.loc 1 91 4 view .LVU94
	.loc 1 91 19 is_stmt 0 view .LVU95
	ldr	r3, .L24
	add	r2, r3, #76
	str	r2, [r3, #188]
	.loc 1 92 4 is_stmt 1 view .LVU96
.L16:
	.loc 1 96 1 is_stmt 0 view .LVU97
	bx	lr
.L23:
	.loc 1 79 4 is_stmt 1 view .LVU98
	.loc 1 79 19 is_stmt 0 view .LVU99
	ldr	r3, .L24
	add	r2, r3, #52
	str	r2, [r3, #188]
	.loc 1 80 4 is_stmt 1 view .LVU100
	bx	lr
.L22:
	.loc 1 82 4 view .LVU101
	.loc 1 82 19 is_stmt 0 view .LVU102
	ldr	r2, .L24
	.loc 1 82 21 view .LVU103
	ldr	r3, [r2, #24]
	add	r3, r3, #256
	.loc 1 82 19 view .LVU104
	str	r3, [r2, #188]
	.loc 1 83 4 is_stmt 1 view .LVU105
	bx	lr
.L21:
	.loc 1 88 4 view .LVU106
	.loc 1 88 19 is_stmt 0 view .LVU107
	ldr	r3, .L24
	add	r2, r3, #100
	str	r2, [r3, #188]
	.loc 1 89 4 is_stmt 1 view .LVU108
	bx	lr
.L20:
	.loc 1 85 4 view .LVU109
	.loc 1 85 19 is_stmt 0 view .LVU110
	ldr	r3, .L24
	add	r2, r3, #28
	str	r2, [r3, #188]
	.loc 1 86 4 is_stmt 1 view .LVU111
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.cfi_endproc
.LFE209:
	.size	SpriteBatch_BindGuiTexture, .-SpriteBatch_BindGuiTexture
	.section	.text.SpriteBatch_PushSingleColorQuad,"ax",%progbits
	.align	2
	.global	SpriteBatch_PushSingleColorQuad
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_PushSingleColorQuad, %function
SpriteBatch_PushSingleColorQuad:
.LVL29:
.LFB210:
	.loc 1 98 88 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 99 2 view .LVU113
.LBB74:
.LBI74:
	.loc 1 75 6 view .LVU114
.LBB75:
	.loc 1 75 50 view .LVU115
.LBE75:
.LBE74:
	.loc 1 98 88 is_stmt 0 view .LVU116
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB78:
.LBB76:
	.loc 1 75 65 view .LVU117
	ldr	r4, .L29
.LBE76:
.LBE78:
	.loc 1 98 88 view .LVU118
	mov	r7, r2
.LBB79:
.LBB77:
	.loc 1 75 65 view .LVU119
	add	r2, r4, #52
.LVL30:
	.loc 1 75 65 view .LVU120
	str	r2, [r4, #188]
.LVL31:
	.loc 1 75 65 view .LVU121
.LBE77:
.LBE79:
	.loc 1 100 2 is_stmt 1 view .LVU122
	.loc 1 98 88 is_stmt 0 view .LVU123
	mov	r9, r0
	mov	r8, r1
	mov	r5, r3
.LBB80:
.LBB81:
	.loc 1 106 4 view .LVU124
	mov	r0, r4
.LVL32:
	.loc 1 106 4 view .LVU125
	mov	r3, #36
.LVL33:
	.loc 1 106 4 view .LVU126
	add	r2, r4, #8
	add	r1, r4, #4
.LVL34:
	.loc 1 106 4 view .LVU127
.LBE81:
.LBE80:
	.loc 1 98 88 view .LVU128
	ldrsh	r6, [sp, #36]
.LVL35:
.LBB85:
.LBI80:
	.loc 1 105 6 is_stmt 1 view .LVU129
.LBB84:
	.loc 1 106 2 view .LVU130
	.loc 1 106 4 is_stmt 0 view .LVU131
	bl	vec_expand_
.LVL36:
	.loc 1 106 119 view .LVU132
	cmp	r0, #0
	popne	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL37:
.LBB82:
.LBI82:
	.loc 1 105 6 is_stmt 1 view .LVU133
.LBB83:
	.loc 1 106 161 is_stmt 0 view .LVU134
	ldr	r3, .L29+4
	.loc 1 106 224 view .LVU135
	add	r5, r9, r5
.LVL38:
	.loc 1 106 161 view .LVU136
	ldrh	r2, [r3]
	.loc 1 106 272 view .LVU137
	ldr	r3, [sp, #32]
	.loc 1 106 161 view .LVU138
	smulbb	r9, r9, r2
.LVL39:
	.loc 1 106 272 view .LVU139
	add	r3, r8, r3
	.loc 1 106 161 view .LVU140
	smulbb	r5, r5, r2
	smulbb	r8, r8, r2
.LVL40:
	.loc 1 106 161 view .LVU141
	smulbb	r3, r3, r2
	.loc 1 106 149 view .LVU142
	ldr	r2, [r4, #4]
	.loc 1 106 132 view .LVU143
	ldr	ip, [r4]
	.loc 1 106 138 view .LVU144
	add	r1, r2, r2, lsl #3
	.loc 1 106 157 view .LVU145
	add	r2, r2, #1
	str	r2, [r4, #4]
	.loc 1 106 161 view .LVU146
	str	r7, [ip, r1, lsl #2]
	.loc 1 106 138 view .LVU147
	add	r2, ip, r1, lsl #2
	.loc 1 106 161 view .LVU148
	ldr	r1, [r4, #188]
	sxth	r9, r9
	str	r1, [r2, #4]
	ldr	r1, .L29+8
	sxth	r5, r5
	sxth	r8, r8
	sxth	r3, r3
	str	r0, [r2, #24]
	strh	r6, [r2, #32]	@ movhi
.LVL41:
	.loc 1 106 161 view .LVU149
	strh	r9, [r2, #8]	@ movhi
	strh	r8, [r2, #10]	@ movhi
	strh	r5, [r2, #12]	@ movhi
	strh	r8, [r2, #14]	@ movhi
	strh	r9, [r2, #16]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	strh	r5, [r2, #20]	@ movhi
	strh	r3, [r2, #22]	@ movhi
	str	r1, [r2, #28]
.LBE83:
.LBE82:
.LBE84:
.LBE85:
	.loc 1 101 1 view .LVU150
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	262148
	.cfi_endproc
.LFE210:
	.size	SpriteBatch_PushSingleColorQuad, .-SpriteBatch_PushSingleColorQuad
	.section	.text.SpriteBatch_PushQuad,"ax",%progbits
	.align	2
	.global	SpriteBatch_PushQuad
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_PushQuad, %function
SpriteBatch_PushQuad:
.LVL42:
.LFB211:
	.loc 1 102 94 is_stmt 1 view -0
	.cfi_startproc
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 103 2 view .LVU152
	.loc 1 102 94 is_stmt 0 view .LVU153
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB90:
.LBB91:
	.loc 1 106 4 view .LVU154
	ldr	r5, .L34
.LBE91:
.LBE90:
	.loc 1 102 94 view .LVU155
	mov	r8, r0
	mov	r7, r1
	mov	r6, r2
	mov	r4, r3
.LBB96:
.LBB94:
	.loc 1 106 4 view .LVU156
	mov	r0, r5
.LVL43:
	.loc 1 106 4 view .LVU157
	mov	r3, #36
.LVL44:
	.loc 1 106 4 view .LVU158
	add	r2, r5, #8
.LVL45:
	.loc 1 106 4 view .LVU159
	add	r1, r5, #4
.LVL46:
	.loc 1 106 4 view .LVU160
.LBE94:
.LBI90:
	.loc 1 105 6 is_stmt 1 view .LVU161
.LBB95:
	.loc 1 106 2 view .LVU162
	.loc 1 106 4 is_stmt 0 view .LVU163
	bl	vec_expand_
.LVL47:
	.loc 1 106 119 view .LVU164
	cmp	r0, #0
	popne	{r4, r5, r6, r7, r8, pc}
.LVL48:
.LBB92:
.LBI92:
	.loc 1 105 6 is_stmt 1 view .LVU165
.LBB93:
	.loc 1 106 161 is_stmt 0 view .LVU166
	mvn	r1, #32768
	ldr	r3, .L34+4
	.loc 1 106 224 view .LVU167
	add	r4, r8, r4
.LVL49:
	.loc 1 106 161 view .LVU168
	ldrh	r2, [r3]
	.loc 1 106 272 view .LVU169
	ldr	r3, [sp, #24]
	.loc 1 106 161 view .LVU170
	smulbb	r8, r8, r2
.LVL50:
	.loc 1 106 272 view .LVU171
	add	r3, r7, r3
	.loc 1 106 161 view .LVU172
	smulbb	r4, r4, r2
	smulbb	r7, r7, r2
.LVL51:
	.loc 1 106 161 view .LVU173
	smulbb	r3, r3, r2
	.loc 1 106 149 view .LVU174
	ldr	r2, [r5, #4]
	.loc 1 106 132 view .LVU175
	ldr	ip, [r5]
	.loc 1 106 138 view .LVU176
	add	r0, r2, r2, lsl #3
	.loc 1 106 157 view .LVU177
	add	r2, r2, #1
	str	r2, [r5, #4]
	.loc 1 106 138 view .LVU178
	add	r2, ip, r0, lsl #2
	.loc 1 106 161 view .LVU179
	str	r6, [ip, r0, lsl #2]
	strh	r1, [r2, #32]	@ movhi
.LVL52:
	.loc 1 106 161 view .LVU180
	ldr	r1, [r5, #188]
	sxth	r3, r3
	.loc 1 106 340 view .LVU181
	ldr	r0, [sp, #36]
	.loc 1 106 161 view .LVU182
	str	r1, [r2, #4]
	strh	r3, [r2, #18]	@ movhi
	.loc 1 106 340 view .LVU183
	ldr	r1, [sp, #28]
	.loc 1 106 161 view .LVU184
	strh	r3, [r2, #22]	@ movhi
	ldr	r3, [sp, #28]
	.loc 1 106 340 view .LVU185
	add	r1, r1, r0
	.loc 1 106 161 view .LVU186
	strh	r3, [r2, #24]	@ movhi
	.loc 1 106 349 view .LVU187
	ldr	r0, [sp, #40]
	ldr	r3, [sp, #32]
	.loc 1 106 161 view .LVU188
	sxth	r8, r8
	.loc 1 106 349 view .LVU189
	add	r3, r3, r0
	.loc 1 106 161 view .LVU190
	ldr	r0, [sp, #32]
	sxth	r4, r4
	sxth	r7, r7
	strh	r8, [r2, #8]	@ movhi
	strh	r8, [r2, #16]	@ movhi
	strh	r7, [r2, #10]	@ movhi
	strh	r7, [r2, #14]	@ movhi
	strh	r4, [r2, #12]	@ movhi
	strh	r4, [r2, #20]	@ movhi
	strh	r0, [r2, #26]	@ movhi
	strh	r1, [r2, #28]	@ movhi
	strh	r3, [r2, #30]	@ movhi
.LBE93:
.LBE92:
.LBE95:
.LBE96:
	.loc 1 104 1 view .LVU191
	pop	{r4, r5, r6, r7, r8, pc}
.L35:
	.align	2
.L34:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE211:
	.size	SpriteBatch_PushQuad, .-SpriteBatch_PushQuad
	.section	.text.SpriteBatch_PushQuadColor,"ax",%progbits
	.align	2
	.global	SpriteBatch_PushQuadColor
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_PushQuadColor, %function
SpriteBatch_PushQuadColor:
.LVL53:
.LFB212:
	.loc 1 105 114 is_stmt 1 view -0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 106 2 view .LVU193
	.loc 1 105 114 is_stmt 0 view .LVU194
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 106 4 view .LVU195
	ldr	r5, .L39
	.loc 1 105 114 view .LVU196
	mov	r9, r0
	mov	r8, r1
	mov	r7, r2
	mov	r4, r3
	.loc 1 106 4 view .LVU197
	mov	r0, r5
.LVL54:
	.loc 1 106 4 view .LVU198
	mov	r3, #36
.LVL55:
	.loc 1 106 4 view .LVU199
	add	r2, r5, #8
.LVL56:
	.loc 1 106 4 view .LVU200
	add	r1, r5, #4
.LVL57:
	.loc 1 105 114 view .LVU201
	ldrsh	r6, [sp, #52]
	.loc 1 106 4 view .LVU202
	bl	vec_expand_
.LVL58:
	.loc 1 106 119 view .LVU203
	cmp	r0, #0
	popne	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL59:
.LBB99:
.LBI99:
	.loc 1 105 6 is_stmt 1 view .LVU204
.LBB100:
	.loc 1 106 161 is_stmt 0 view .LVU205
	ldr	r3, .L39+4
	.loc 1 106 224 view .LVU206
	add	r4, r9, r4
.LVL60:
	.loc 1 106 161 view .LVU207
	ldrh	r2, [r3]
	.loc 1 106 272 view .LVU208
	ldr	r3, [sp, #32]
	.loc 1 106 161 view .LVU209
	smulbb	r0, r9, r2
	.loc 1 106 272 view .LVU210
	add	r3, r8, r3
	.loc 1 106 161 view .LVU211
	smulbb	r4, r4, r2
	smulbb	r8, r8, r2
.LVL61:
	.loc 1 106 161 view .LVU212
	smulbb	r3, r3, r2
	.loc 1 106 149 view .LVU213
	ldr	r2, [r5, #4]
	.loc 1 106 132 view .LVU214
	ldr	ip, [r5]
	.loc 1 106 138 view .LVU215
	add	r1, r2, r2, lsl #3
	.loc 1 106 157 view .LVU216
	add	r2, r2, #1
	str	r2, [r5, #4]
	.loc 1 106 161 view .LVU217
	str	r7, [ip, r1, lsl #2]
	.loc 1 106 138 view .LVU218
	add	r2, ip, r1, lsl #2
	.loc 1 106 161 view .LVU219
	ldr	r1, [r5, #188]
	sxth	r0, r0
	sxth	r3, r3
	str	r1, [r2, #4]
	strh	r0, [r2, #8]	@ movhi
	.loc 1 106 340 view .LVU220
	ldr	r1, [sp, #36]
	.loc 1 106 161 view .LVU221
	strh	r0, [r2, #16]	@ movhi
	strh	r3, [r2, #18]	@ movhi
	.loc 1 106 340 view .LVU222
	ldr	r0, [sp, #44]
	.loc 1 106 161 view .LVU223
	strh	r3, [r2, #22]	@ movhi
	ldr	r3, [sp, #36]
	.loc 1 106 340 view .LVU224
	add	r1, r1, r0
	.loc 1 106 161 view .LVU225
	strh	r3, [r2, #24]	@ movhi
	.loc 1 106 349 view .LVU226
	ldr	r0, [sp, #48]
	ldr	r3, [sp, #40]
	.loc 1 106 161 view .LVU227
	sxth	r4, r4
	.loc 1 106 349 view .LVU228
	add	r3, r3, r0
	.loc 1 106 161 view .LVU229
	ldr	r0, [sp, #40]
	sxth	r8, r8
	strh	r6, [r2, #32]	@ movhi
.LVL62:
	.loc 1 106 161 view .LVU230
	strh	r8, [r2, #10]	@ movhi
	strh	r8, [r2, #14]	@ movhi
	strh	r4, [r2, #12]	@ movhi
	strh	r4, [r2, #20]	@ movhi
	strh	r0, [r2, #26]	@ movhi
	strh	r1, [r2, #28]	@ movhi
	strh	r3, [r2, #30]	@ movhi
.LBE100:
.LBE99:
	.loc 1 108 1 view .LVU231
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE212:
	.size	SpriteBatch_PushQuadColor, .-SpriteBatch_PushQuadColor
	.section	.text.SpriteBatch_PushIcon,"ax",%progbits
	.align	2
	.global	SpriteBatch_PushIcon
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_PushIcon, %function
SpriteBatch_PushIcon:
.LVL63:
.LFB213:
	.loc 1 112 79 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 656
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 113 2 view .LVU233
	.loc 1 114 2 view .LVU234
	.loc 1 112 79 is_stmt 0 view .LVU235
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
	vpush.64	{d8, d9, d10}
	.cfi_def_cfa_offset 60
	.cfi_offset 80, -60
	.cfi_offset 81, -56
	.cfi_offset 82, -52
	.cfi_offset 83, -48
	.cfi_offset 84, -44
	.cfi_offset 85, -40
	mov	lr, r0
	mov	ip, r2
	sub	sp, sp, #660
	.cfi_def_cfa_offset 720
.LBB101:
.LBB102:
.LBB103:
.LBB104:
	.loc 1 130 17 view .LVU236
	ldr	r8, .L54+12
.LBE104:
.LBE103:
.LBE102:
.LBE101:
	.loc 1 112 79 view .LVU237
	mov	fp, r1
	.loc 1 114 2 view .LVU238
	mov	r2, #576
.LVL64:
	.loc 1 114 2 view .LVU239
	ldr	r1, .L54+16
.LVL65:
	.loc 1 114 2 view .LVU240
	add	r0, sp, #80
	.loc 1 112 79 view .LVU241
	str	r3, [sp, #36]
	vmov	s19, lr	@ int
	str	ip, [sp, #32]
	.loc 1 114 2 view .LVU242
	bl	memcpy
.LVL66:
	.loc 1 115 2 is_stmt 1 view .LVU243
.LBB148:
	.loc 1 115 7 view .LVU244
	.loc 1 115 20 view .LVU245
.LBB145:
	.loc 1 147 5 is_stmt 0 view .LVU246
	sub	r3, r8, #116
.LBB142:
.LBB137:
	.loc 1 129 8 view .LVU247
	vldr.32	s16, .L54
.LBE137:
.LBE142:
.LBE145:
	.loc 1 115 11 view .LVU248
	mov	r7, #0
	vldr.32	s18, .L54+4
.LBB146:
	.loc 1 147 5 view .LVU249
	vmov	s20, r3	@ int
	ldr	r9, .L54+20
	add	r10, sp, #160
.LVL67:
.L43:
	.loc 1 116 3 is_stmt 1 view .LVU250
	.loc 1 116 9 is_stmt 0 view .LVU251
	sub	r3, r7, #3
	bic	r3, r3, #2
	.loc 1 116 50 view .LVU252
	cmp	r7, #0
	cmpne	r3, #0
	bne	.L48
	.loc 1 117 3 is_stmt 1 view .LVU253
	.loc 1 118 3 view .LVU254
.LBB143:
.LBB138:
	.loc 1 131 39 is_stmt 0 view .LVU255
	vldr.32	s17, .L54+8
	uxtb	r4, r7
.LBE138:
.LBE143:
	.loc 1 118 3 view .LVU256
	mov	r1, r4
	mov	r2, fp
	vmov	r0, s19	@ int
	add	r3, sp, #44
	bl	Block_GetTexture
.LVL68:
	.loc 1 123 3 is_stmt 1 view .LVU257
	.loc 1 124 3 view .LVU258
	mov	r2, r4
	add	r3, sp, #40
	mov	r1, fp
	vmov	r0, s19	@ int
	bl	Block_GetColor
.LVL69:
	.loc 1 126 3 view .LVU259
.LBB144:
	.loc 1 126 8 view .LVU260
	.loc 1 126 21 view .LVU261
.LBB139:
	.loc 1 131 63 is_stmt 0 view .LVU262
	ldr	r3, [sp, #32]
	sub	r6, r10, #80
	add	r5, r3, #16
	.loc 1 132 64 view .LVU263
	ldr	r3, [sp, #36]
	.loc 1 131 58 view .LVU264
	uxth	r5, r5
	.loc 1 132 64 view .LVU265
	add	r4, r3, #16
	.loc 1 132 59 view .LVU266
	uxth	r4, r4
.LVL70:
.L45:
	.loc 1 127 4 is_stmt 1 discriminator 3 view .LVU267
	.loc 1 128 4 discriminator 3 view .LVU268
	.loc 1 129 18 is_stmt 0 discriminator 3 view .LVU269
	ldrsh	r3, [r6]
	.loc 1 130 17 discriminator 3 view .LVU270
	vldr.32	s0, .L54+4
	.loc 1 129 18 discriminator 3 view .LVU271
	vmov	s3, r3	@ int
	.loc 1 129 52 discriminator 3 view .LVU272
	ldrsh	r3, [r6, #2]
	.loc 1 129 18 discriminator 3 view .LVU273
	vcvt.f32.s32	s3, s3
	.loc 1 129 52 discriminator 3 view .LVU274
	vmov	s2, r3	@ int
	.loc 1 129 86 discriminator 3 view .LVU275
	ldrsh	r3, [r6, #4]
	.loc 1 129 52 discriminator 3 view .LVU276
	vcvt.f32.s32	s2, s2
	.loc 1 129 86 discriminator 3 view .LVU277
	vmov	s1, r3	@ int
	vcvt.f32.s32	s1, s1
	.loc 1 129 8 discriminator 3 view .LVU278
	vsub.f32	s3, s3, s16
	vsub.f32	s2, s2, s16
	vsub.f32	s1, s1, s16
.LVL71:
.LBB105:
.LBI105:
	.loc 3 156 24 is_stmt 1 discriminator 3 view .LVU279
	.loc 3 158 2 discriminator 3 view .LVU280
.LBB106:
.LBI106:
	.loc 3 48 24 discriminator 3 view .LVU281
	.loc 3 50 2 discriminator 3 view .LVU282
	.loc 3 50 2 is_stmt 0 discriminator 3 view .LVU283
.LBE106:
.LBE105:
	.loc 1 130 17 discriminator 3 view .LVU284
	mov	r0, r8
	vstr.32	s18, [sp, #48]
	vstr.32	s3, [sp, #60]
.LVL72:
	.loc 1 130 4 is_stmt 1 discriminator 3 view .LVU285
	vstr.32	s2, [sp, #56]
	vstr.32	s1, [sp, #52]
	.loc 1 130 17 is_stmt 0 discriminator 3 view .LVU286
	bl	Mtx_MultiplyFVec3
.LVL73:
	.loc 1 131 25 discriminator 3 view .LVU287
	ldr	r3, [r9]
	.loc 1 131 39 discriminator 3 view .LVU288
	vmul.f32	s12, s3, s17
	.loc 1 131 25 discriminator 3 view .LVU289
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s12, s12, s15
	.loc 1 132 40 discriminator 3 view .LVU290
	vmul.f32	s13, s2, s17
.LBB107:
.LBB108:
	.file 4 "/home/tobi/Dokumente/Craftus-Next/include/misc/NumberUtils.h"
	.loc 4 25 47 discriminator 3 view .LVU291
	vcvt.s32.f32	s14, s12
.LBE108:
.LBE107:
	.loc 1 132 26 discriminator 3 view .LVU292
	vmul.f32	s13, s13, s15
.LBB115:
.LBB109:
	.loc 4 25 58 discriminator 3 view .LVU293
	vcvt.f32.s32	s10, s14
.LBE109:
.LBE115:
.LBB116:
.LBB117:
	.loc 4 25 47 discriminator 3 view .LVU294
	vcvt.s32.f32	s15, s13
.LBE117:
.LBE116:
.LBB125:
.LBB110:
	.loc 4 25 58 discriminator 3 view .LVU295
	vcmpe.f32	s12, s10
.LBE110:
.LBE125:
.LBB126:
.LBB118:
	vcvt.f32.s32	s11, s15
.LBE118:
.LBE126:
.LBB127:
.LBB111:
	vmrs	APSR_nzcv, FPSCR
.LBE111:
.LBE127:
.LBB128:
.LBB119:
	vcmpe.f32	s13, s11
.LBE119:
.LBE128:
.LBB129:
.LBB112:
	movmi	r2, #1
	movpl	r2, #0
	.loc 4 25 56 discriminator 3 view .LVU296
	vmov	r0, s14	@ int
.LBE112:
.LBE129:
.LBB130:
.LBB120:
	.loc 4 25 58 discriminator 3 view .LVU297
	vmrs	APSR_nzcv, FPSCR
.LBE120:
.LBE130:
.LBB131:
.LBB113:
	.loc 4 25 56 discriminator 3 view .LVU298
	sub	r2, r0, r2
.LBE113:
.LBE131:
	.loc 1 132 59 discriminator 3 view .LVU299
	smulbb	r1, r3, r4
	.loc 1 131 58 discriminator 3 view .LVU300
	smlabb	r3, r3, r5, r2
.LBB132:
.LBB121:
	.loc 4 25 56 discriminator 3 view .LVU301
	vmov	r2, s15	@ int
.LBE121:
.LBE132:
	.loc 1 131 23 discriminator 3 view .LVU302
	strh	r3, [r6]	@ movhi
.LBB133:
.LBB122:
	.loc 4 25 58 discriminator 3 view .LVU303
	movmi	r3, #1
	movpl	r3, #0
.LBE122:
.LBE133:
.LBE139:
	.loc 1 126 21 discriminator 3 view .LVU304
	add	r6, r6, #16
.LBB140:
.LBB134:
.LBB123:
	.loc 4 25 56 discriminator 3 view .LVU305
	sub	r3, r2, r3
.LBE123:
.LBE134:
	.loc 1 132 59 discriminator 3 view .LVU306
	sub	r3, r1, r3
.LBE140:
	.loc 1 126 21 discriminator 3 view .LVU307
	cmp	r10, r6
.LBB141:
	.loc 1 130 17 discriminator 3 view .LVU308
	vstr.32	s0, [sp, #64]
	vstr.32	s1, [sp, #68]
	vstr.32	s2, [sp, #72]
	vstr.32	s3, [sp, #76]
	.loc 1 131 4 is_stmt 1 discriminator 3 view .LVU309
.LVL74:
.LBB135:
.LBI107:
	.loc 4 25 19 discriminator 3 view .LVU310
.LBB114:
	.loc 4 25 40 discriminator 3 view .LVU311
	.loc 4 25 40 is_stmt 0 discriminator 3 view .LVU312
.LBE114:
.LBE135:
	.loc 1 132 4 is_stmt 1 discriminator 3 view .LVU313
.LBB136:
.LBI116:
	.loc 4 25 19 discriminator 3 view .LVU314
.LBB124:
	.loc 4 25 40 discriminator 3 view .LVU315
	.loc 4 25 40 is_stmt 0 discriminator 3 view .LVU316
.LBE124:
.LBE136:
	.loc 1 132 23 discriminator 3 view .LVU317
	strh	r3, [r6, #-14]	@ movhi
.LBE141:
	.loc 1 126 27 is_stmt 1 discriminator 3 view .LVU318
	.loc 1 126 21 discriminator 3 view .LVU319
	bne	.L45
.LBE144:
	.loc 1 135 3 view .LVU320
	.loc 1 135 15 is_stmt 0 view .LVU321
	ldrsh	r3, [r10, #-80]
	.loc 1 138 15 view .LVU322
	ldrsh	r6, [r10, #-16]
	.loc 1 135 15 view .LVU323
	str	r3, [sp, #12]
.LVL75:
	.loc 1 135 15 view .LVU324
	ldrsh	r3, [r10, #-78]
	str	r3, [sp, #4]
.LVL76:
	.loc 1 136 3 is_stmt 1 view .LVU325
	.loc 1 136 15 is_stmt 0 view .LVU326
	ldrsh	r3, [r10, #-64]
	str	r3, [sp, #8]
.LVL77:
	.loc 1 136 15 view .LVU327
	ldrsh	r3, [r10, #-62]
	str	r3, [sp, #16]
.LVL78:
	.loc 1 137 3 is_stmt 1 view .LVU328
	.loc 1 137 15 is_stmt 0 view .LVU329
	ldrsh	r3, [r10, #-48]
	str	r3, [sp, #20]
.LVL79:
	.loc 1 137 15 view .LVU330
	ldrsh	r3, [r10, #-46]
	str	r3, [sp, #24]
.LVL80:
	.loc 1 138 3 is_stmt 1 view .LVU331
	.loc 1 138 15 is_stmt 0 view .LVU332
	ldrsh	r3, [r10, #-14]
	str	r3, [sp, #28]
.LVL81:
	.loc 1 140 3 is_stmt 1 view .LVU333
	.loc 1 140 22 is_stmt 0 view .LVU334
	bl	Block_GetTextureMap
.LVL82:
	.loc 1 142 105 view .LVU335
	ldrb	r4, [sp, #40]	@ zero_extendqisi2
	.loc 1 142 73 view .LVU336
	ldrb	r3, [sp, #41]	@ zero_extendqisi2
	.loc 1 142 105 view .LVU337
	lsr	r4, r4, #3
	.loc 1 142 73 view .LVU338
	lsr	r3, r3, #3
	.loc 1 142 105 view .LVU339
	lsl	r4, r4, #10
	.loc 1 142 11 view .LVU340
	orr	r4, r4, r3, lsl #5
	.loc 1 142 38 view .LVU341
	ldrb	r3, [sp, #42]	@ zero_extendqisi2
	.loc 1 143 5 view .LVU342
	cmp	r7, #5
	.loc 1 140 22 view .LVU343
	mov	r5, r0
.LVL83:
	.loc 1 142 3 is_stmt 1 view .LVU344
	.loc 1 142 11 is_stmt 0 view .LVU345
	orr	r4, r4, r3, lsr #3
.LVL84:
	.loc 1 143 3 is_stmt 1 view .LVU346
	.loc 1 143 5 is_stmt 0 view .LVU347
	beq	.L53
	.loc 1 144 8 is_stmt 1 view .LVU348
	.loc 1 144 10 is_stmt 0 view .LVU349
	cmp	r7, #0
	bne	.L47
	.loc 1 144 32 is_stmt 1 discriminator 1 view .LVU350
	.loc 1 144 188 is_stmt 0 discriminator 1 view .LVU351
	asr	r3, r4, #10
	add	r3, r3, r3, lsl #2
	.loc 1 144 193 discriminator 1 view .LVU352
	asr	r2, r3, #3
	.loc 1 144 46 discriminator 1 view .LVU353
	and	r3, r4, #31
	.loc 1 144 69 discriminator 1 view .LVU354
	add	r3, r3, r3, lsl #2
	.loc 1 144 94 discriminator 1 view .LVU355
	asr	r4, r4, #5
.LVL85:
	.loc 1 144 94 discriminator 1 view .LVU356
	and	r4, r4, #31
	.loc 1 144 74 discriminator 1 view .LVU357
	lsr	r3, r3, #3
	orr	r3, r3, r2, lsl #10
	.loc 1 144 126 discriminator 1 view .LVU358
	add	r4, r4, r4, lsl #2
	.loc 1 144 131 discriminator 1 view .LVU359
	lsr	r4, r4, #3
	sxth	r3, r3
	.loc 1 144 40 discriminator 1 view .LVU360
	orr	r4, r3, r4, lsl #5
.LVL86:
.L47:
	.loc 1 147 3 is_stmt 1 view .LVU361
	.loc 1 147 5 is_stmt 0 view .LVU362
	ldr	r1, .L54+24
	mov	r3, #36
	vmov	r2, s20	@ int
	sub	r0, r1, #4
.LVL87:
	.loc 1 147 5 view .LVU363
	bl	vec_expand_
.LVL88:
	.loc 1 147 120 view .LVU364
	cmp	r0, #0
	bne	.L48
	.loc 1 147 162 discriminator 1 view .LVU365
	ldrsh	r2, [sp, #44]
	.loc 1 147 380 discriminator 1 view .LVU366
	ldrsh	r3, [sp, #46]
	.loc 1 147 162 discriminator 1 view .LVU367
	cmp	r2, #0
	add	r1, r2, #255
	movge	r1, r2
	.loc 1 147 380 discriminator 1 view .LVU368
	cmp	r3, #0
	add	r2, r3, #255
	movge	r2, r3
	.loc 1 147 150 discriminator 1 view .LVU369
	ldr	lr, .L54+28
	.loc 1 147 162 discriminator 1 view .LVU370
	asr	r1, r1, #8
	.loc 1 147 150 discriminator 1 view .LVU371
	ldr	r0, [lr, #4]
	.loc 1 147 133 discriminator 1 view .LVU372
	ldr	r3, [lr]
	.loc 1 147 139 discriminator 1 view .LVU373
	add	ip, r0, r0, lsl #3
	.loc 1 147 158 discriminator 1 view .LVU374
	add	r0, r0, #1
	str	r0, [lr, #4]
	.loc 1 147 162 discriminator 1 view .LVU375
	ldr	r0, [sp, #720]
	.loc 1 147 380 discriminator 1 view .LVU376
	asr	r2, r2, #8
	.loc 1 147 162 discriminator 1 view .LVU377
	str	r0, [r3, ip, lsl #2]
	ldr	r0, [sp, #28]
	.loc 1 147 139 discriminator 1 view .LVU378
	add	r3, r3, ip, lsl #2
	.loc 1 147 162 discriminator 1 view .LVU379
	strh	r0, [r3, #10]	@ movhi
	ldr	r0, [sp, #20]
	strh	r1, [r3, #24]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	ldr	r0, [sp, #24]
	.loc 1 147 402 discriminator 1 view .LVU380
	add	r1, r1, #16
	.loc 1 147 162 discriminator 1 view .LVU381
	strh	r0, [r3, #14]	@ movhi
	ldr	r0, [sp, #12]
	strh	r2, [r3, #30]	@ movhi
	strh	r0, [r3, #16]	@ movhi
	ldr	r0, [sp, #4]
	.loc 1 147 380 discriminator 1 view .LVU382
	add	r2, r2, #16
	.loc 1 147 162 discriminator 1 view .LVU383
	strh	r0, [r3, #18]	@ movhi
	ldr	r0, [sp, #8]
	str	r5, [r3, #4]
	strh	r0, [r3, #20]	@ movhi
	ldr	r0, [sp, #16]
	strh	r6, [r3, #8]	@ movhi
	strh	r0, [r3, #22]	@ movhi
	strh	r4, [r3, #32]	@ movhi
	strh	r1, [r3, #28]	@ movhi
	strh	r2, [r3, #26]	@ movhi
.LVL89:
.L48:
	.loc 1 116 74 is_stmt 1 discriminator 2 view .LVU384
.LBE146:
	.loc 1 115 26 discriminator 2 view .LVU385
	add	r7, r7, #1
.LVL90:
	.loc 1 115 20 discriminator 2 view .LVU386
	cmp	r7, #6
	add	r10, r10, #96
	bne	.L43
.LBE148:
	.loc 1 153 1 is_stmt 0 view .LVU387
	add	sp, sp, #660
	.cfi_remember_state
	.cfi_def_cfa_offset 60
	@ sp needed
	vldm	sp!, {d8-d10}
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL91:
.L53:
	.cfi_restore_state
.LBB149:
.LBB147:
	.loc 1 143 28 is_stmt 1 discriminator 1 view .LVU388
	.loc 1 143 184 is_stmt 0 discriminator 1 view .LVU389
	lsr	r3, r4, #10
	rsb	r3, r3, r3, lsl #3
	.loc 1 143 189 discriminator 1 view .LVU390
	asr	r2, r3, #3
	.loc 1 143 42 discriminator 1 view .LVU391
	and	r3, r4, #31
	.loc 1 143 65 discriminator 1 view .LVU392
	rsb	r3, r3, r3, lsl #3
	.loc 1 143 90 discriminator 1 view .LVU393
	asr	r4, r4, #5
.LVL92:
	.loc 1 143 90 discriminator 1 view .LVU394
	and	r4, r4, #31
	.loc 1 143 70 discriminator 1 view .LVU395
	asr	r3, r3, #3
	orr	r3, r3, r2, lsl #10
	.loc 1 143 122 discriminator 1 view .LVU396
	rsb	r4, r4, r4, lsl #3
	.loc 1 143 127 discriminator 1 view .LVU397
	asr	r4, r4, #3
	sxth	r3, r3
	.loc 1 143 36 discriminator 1 view .LVU398
	orr	r4, r3, r4, lsl #5
.LVL93:
	.loc 1 143 36 discriminator 1 view .LVU399
	b	.L47
.L55:
	.align	2
.L54:
	.word	1056964608
	.word	0
	.word	1101004800
	.word	.LANCHOR0+124
	.word	cube_sides_lut
	.word	.LANCHOR1
	.word	.LANCHOR0+4
	.word	.LANCHOR0
.LBE147:
.LBE149:
	.cfi_endproc
.LFE213:
	.size	SpriteBatch_PushIcon, .-SpriteBatch_PushIcon
	.section	.text.SpriteBatch_PushTextVargs,"ax",%progbits
	.align	2
	.global	SpriteBatch_PushTextVargs
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_PushTextVargs, %function
SpriteBatch_PushTextVargs:
.LVL94:
.LFB215:
	.loc 1 163 131 is_stmt 1 view -0
	.cfi_startproc
	@ args = 20, pretend = 0, frame = 296
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 164 2 view .LVU401
.LBB150:
.LBI150:
	.loc 1 75 6 view .LVU402
.LBB151:
	.loc 1 75 50 view .LVU403
.LBE151:
.LBE150:
	.loc 1 163 131 is_stmt 0 view .LVU404
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
	mov	ip, r2
	mov	lr, r0
	sub	sp, sp, #324
	.cfi_def_cfa_offset 360
	.loc 1 163 131 view .LVU405
	ldrb	r2, [sp, #360]	@ zero_extendqisi2
.LVL95:
.LBB154:
.LBB152:
	.loc 1 75 65 view .LVU406
	ldr	r9, .L83
.LBE152:
.LBE154:
	.loc 1 163 131 view .LVU407
	str	r2, [sp, #40]
	.loc 1 164 2 view .LVU408
	ldr	r2, [r9, #24]
	.loc 1 163 131 view .LVU409
	str	r1, [sp, #28]
	.loc 1 164 2 view .LVU410
	add	r2, r2, #256
.LVL96:
.LBB155:
.LBB153:
	.loc 1 75 65 view .LVU411
	str	r2, [r9, #188]
.LVL97:
	.loc 1 75 65 view .LVU412
.LBE153:
.LBE155:
	.loc 1 168 2 is_stmt 1 view .LVU413
	.loc 1 169 2 view .LVU414
	ldr	r1, [sp, #372]
.LVL98:
	.loc 1 169 2 is_stmt 0 view .LVU415
	ldr	r2, [sp, #376]
	add	r0, sp, #64
	.loc 1 163 131 view .LVU416
	mov	r5, ip
	ldr	fp, [sp, #364]
	str	lr, [sp, #24]
	str	ip, [sp, #32]
	str	r3, [sp, #36]
	.loc 1 169 2 view .LVU417
	bl	vsprintf
.LVL99:
	.loc 1 171 2 is_stmt 1 view .LVU418
	.loc 1 172 2 view .LVU419
	.loc 1 174 2 view .LVU420
	.loc 1 176 2 view .LVU421
	.loc 1 178 2 view .LVU422
	.loc 1 178 15 view .LVU423
	.loc 1 178 9 is_stmt 0 view .LVU424
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	.loc 1 178 15 view .LVU425
	cmp	r0, #0
	beq	.L68
	.loc 1 174 6 view .LVU426
	mov	r7, #0
.LBB156:
.LBB157:
	.loc 1 192 6 view .LVU427
	sub	r3, r5, #1
	.loc 1 190 5 view .LVU428
	mov	r4, #8
.LBE157:
.LBE156:
	.loc 1 172 6 view .LVU429
	mov	r8, r7
	.loc 1 171 6 view .LVU430
	mov	r5, r7
.LVL100:
	.loc 1 171 6 view .LVU431
	mov	r10, fp
	.loc 1 176 8 view .LVU432
	add	r6, sp, #64
.LBB161:
.LBB158:
	.loc 1 192 6 view .LVU433
	str	r3, [sp, #52]
	b	.L66
.LVL101:
.L81:
	.loc 1 192 6 view .LVU434
.LBE158:
	.loc 1 180 21 discriminator 1 view .LVU435
	cmp	r3, r10
	blt	.L79
	.loc 1 181 4 is_stmt 1 view .LVU436
	.loc 1 182 13 is_stmt 0 view .LVU437
	cmp	r7, r5
	movlt	r7, r5
.LVL102:
	.loc 1 181 12 view .LVU438
	add	r8, r8, #8
.LVL103:
	.loc 1 182 4 is_stmt 1 view .LVU439
	.loc 1 183 4 view .LVU440
	.loc 1 184 4 view .LVU441
.L61:
	.loc 1 184 23 discriminator 1 view .LVU442
	.loc 1 183 12 is_stmt 0 discriminator 1 view .LVU443
	mov	r5, #0
	.loc 1 184 23 discriminator 1 view .LVU444
	sub	r3, r6, #1
.LVL104:
.L62:
	.loc 1 197 3 is_stmt 1 view .LVU445
	.loc 1 197 3 is_stmt 0 view .LVU446
.LBE161:
	.loc 1 178 15 is_stmt 1 view .LVU447
	.loc 1 178 9 is_stmt 0 view .LVU448
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 178 15 view .LVU449
	cmp	r0, #0
	beq	.L80
.LVL105:
.L66:
.LBB162:
	.loc 1 179 2 is_stmt 1 view .LVU450
	.loc 1 179 37 is_stmt 0 view .LVU451
	ldr	r2, [r9, #24]
	.loc 1 180 6 view .LVU452
	cmp	r0, #10
	.loc 1 179 48 view .LVU453
	ldrb	r3, [r2, r0]	@ zero_extendqisi2
	.loc 1 179 31 view .LVU454
	add	r3, r3, r5
	.loc 1 180 3 is_stmt 1 view .LVU455
	.loc 1 180 6 is_stmt 0 view .LVU456
	bne	.L81
	.loc 1 181 4 is_stmt 1 view .LVU457
	.loc 1 182 13 is_stmt 0 view .LVU458
	cmp	r7, r5
	movlt	r7, r5
.LVL106:
	.loc 1 184 7 view .LVU459
	cmp	r3, r10
	.loc 1 181 12 view .LVU460
	add	r8, r8, #8
.LVL107:
	.loc 1 182 4 is_stmt 1 view .LVU461
	.loc 1 183 4 view .LVU462
	.loc 1 184 4 view .LVU463
	.loc 1 184 7 is_stmt 0 view .LVU464
	bge	.L61
	.loc 1 197 3 view .LVU465
	mov	r3, r6
.LBE162:
	.loc 1 178 9 view .LVU466
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
.LBB163:
	.loc 1 183 12 view .LVU467
	mov	r5, #0
.LVL108:
	.loc 1 197 3 is_stmt 1 view .LVU468
	.loc 1 197 3 is_stmt 0 view .LVU469
.LBE163:
	.loc 1 178 15 is_stmt 1 view .LVU470
	cmp	r0, #0
.LBB164:
	.loc 1 197 3 is_stmt 0 view .LVU471
	add	r6, r6, #1
.LVL109:
	.loc 1 197 3 view .LVU472
.LBE164:
	.loc 1 178 15 view .LVU473
	bne	.L66
.LVL110:
.L80:
	.loc 1 200 11 view .LVU474
	cmp	r5, r7
	movge	r0, r5
	movlt	r0, r7
.LVL111:
.L57:
	.loc 1 200 2 is_stmt 1 view .LVU475
	.loc 1 202 2 view .LVU476
	.loc 1 202 5 is_stmt 0 view .LVU477
	ldr	r3, [sp, #368]
	cmp	r3, #0
	.loc 1 202 20 is_stmt 1 discriminator 1 view .LVU478
	.loc 1 202 37 is_stmt 0 discriminator 1 view .LVU479
	addne	r8, r8, #8
	.loc 1 202 27 discriminator 1 view .LVU480
	strne	r8, [r3]
	.loc 1 204 2 is_stmt 1 discriminator 1 view .LVU481
.L56:
	.loc 1 205 1 is_stmt 0 view .LVU482
	add	sp, sp, #324
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL112:
.L79:
	.cfi_restore_state
.LBB165:
	.loc 1 185 10 is_stmt 1 view .LVU483
	.loc 1 185 13 is_stmt 0 view .LVU484
	cmp	r0, #9
	.loc 1 197 3 view .LVU485
	add	fp, r6, #1
	.loc 1 185 13 view .LVU486
	beq	.L82
	.loc 1 188 4 is_stmt 1 view .LVU487
	.loc 1 188 7 is_stmt 0 view .LVU488
	cmp	r0, #32
	beq	.L64
.LBB159:
	.loc 1 189 5 is_stmt 1 view .LVU489
	.loc 1 190 5 is_stmt 0 view .LVU490
	ldr	r3, [sp, #36]
	.loc 1 189 32 view .LVU491
	lsr	r2, r0, #4
	.loc 1 190 5 view .LVU492
	str	r3, [sp, #20]
	.loc 1 189 9 view .LVU493
	and	r3, r0, #15
	lsl	r3, r3, #3
	str	r3, [sp, #56]
.LVL113:
	.loc 1 190 5 view .LVU494
	str	r3, [sp, #4]
	ldr	r3, [sp, #24]
.LVL114:
	.loc 1 189 32 view .LVU495
	lsl	r2, r2, #3
	.loc 1 190 5 view .LVU496
	add	r0, r3, r5
	ldr	r3, [sp, #28]
	.loc 1 189 32 view .LVU497
	str	r2, [sp, #60]
.LVL115:
	.loc 1 190 5 is_stmt 1 view .LVU498
	add	r1, r3, r8
	str	r2, [sp, #8]
	mov	r3, #8
	ldr	r2, [sp, #32]
.LVL116:
	.loc 1 190 5 is_stmt 0 view .LVU499
	str	r4, [sp, #16]
	str	r4, [sp, #12]
	str	r4, [sp]
	strd	r0, [sp, #44]
	bl	SpriteBatch_PushQuadColor
.LVL117:
	.loc 1 191 5 is_stmt 1 view .LVU500
	.loc 1 191 8 is_stmt 0 view .LVU501
	ldrd	r0, [sp, #44]
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bne	.L65
.L78:
.LBE159:
	.loc 1 195 19 view .LVU502
	ldr	r2, [r9, #24]
.LVL118:
.L64:
	.loc 1 195 4 is_stmt 1 view .LVU503
	.loc 1 195 31 is_stmt 0 view .LVU504
	ldrb	r3, [r6]	@ zero_extendqisi2
	.loc 1 195 30 view .LVU505
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 1 195 12 view .LVU506
	add	r5, r5, r3
.LVL119:
	.loc 1 195 12 view .LVU507
	mov	r3, r6
	mov	r6, fp
.LVL120:
	.loc 1 195 12 view .LVU508
	b	.L62
.LVL121:
.L82:
	.loc 1 186 4 is_stmt 1 view .LVU509
	.loc 1 186 33 is_stmt 0 view .LVU510
	bic	r5, r5, #31
.LVL122:
	.loc 1 186 33 view .LVU511
	mov	r3, r6
	.loc 1 186 12 view .LVU512
	add	r5, r5, #32
.LVL123:
	.loc 1 186 12 view .LVU513
	mov	r6, fp
.LVL124:
	.loc 1 186 12 view .LVU514
	b	.L62
.LVL125:
.L65:
.LBB160:
	.loc 1 192 6 is_stmt 1 view .LVU515
	ldr	r3, [sp, #60]
	ldr	r2, [sp, #52]
	str	r3, [sp, #8]
	ldr	r3, [sp, #56]
	str	r4, [sp, #16]
	str	r3, [sp, #4]
	ldr	r3, .L83+4
	str	r4, [sp, #12]
	str	r3, [sp, #20]
	str	r4, [sp]
	mov	r3, #8
	add	r1, r1, #1
	add	r0, r0, #1
	bl	SpriteBatch_PushQuadColor
.LVL126:
	b	.L78
.LVL127:
.L68:
	.loc 1 192 6 is_stmt 0 view .LVU516
.LBE160:
.LBE165:
	.loc 1 172 6 view .LVU517
	mov	r8, r0
	b	.L57
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.word	10570
	.cfi_endproc
.LFE215:
	.size	SpriteBatch_PushTextVargs, .-SpriteBatch_PushTextVargs
	.section	.text.SpriteBatch_PushText,"ax",%progbits
	.align	2
	.global	SpriteBatch_PushText
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_PushText, %function
SpriteBatch_PushText:
.LVL128:
.LFB214:
	.loc 1 155 118 is_stmt 1 view -0
	.cfi_startproc
	@ args = 16, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 156 2 view .LVU519
	.loc 1 157 1 view .LVU520
	.loc 1 155 118 is_stmt 0 view .LVU521
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 40
	.loc 1 155 118 view .LVU522
	ldrb	ip, [sp, #40]	@ zero_extendqisi2
	.loc 1 158 15 view .LVU523
	str	ip, [sp]
	.loc 1 155 118 view .LVU524
	ldr	ip, [sp, #44]
	.loc 1 158 15 view .LVU525
	str	ip, [sp, #4]
	.loc 1 155 118 view .LVU526
	ldr	ip, [sp, #48]
	.loc 1 158 15 view .LVU527
	str	ip, [sp, #8]
	.loc 1 155 118 view .LVU528
	ldr	ip, [sp, #52]
	.loc 1 158 15 view .LVU529
	str	ip, [sp, #12]
	.loc 1 157 1 view .LVU530
	add	ip, sp, #56
	.loc 1 158 15 view .LVU531
	str	ip, [sp, #16]
	.loc 1 157 1 view .LVU532
	str	ip, [sp, #28]
	.loc 1 158 2 is_stmt 1 view .LVU533
	.loc 1 158 15 is_stmt 0 view .LVU534
	bl	SpriteBatch_PushTextVargs
.LVL129:
	.loc 1 159 1 is_stmt 1 view .LVU535
	.loc 1 160 2 view .LVU536
	.loc 1 161 1 is_stmt 0 view .LVU537
	add	sp, sp, #36
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE214:
	.size	SpriteBatch_PushText, .-SpriteBatch_PushText
	.section	.text.SpriteBatch_CalcTextWidthVargs,"ax",%progbits
	.align	2
	.global	SpriteBatch_CalcTextWidthVargs
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_CalcTextWidthVargs, %function
SpriteBatch_CalcTextWidthVargs:
.LVL130:
.LFB217:
	.loc 1 216 68 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 217 2 view .LVU539
	.loc 1 218 2 view .LVU540
	.loc 1 216 68 is_stmt 0 view .LVU541
	mov	r3, r0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #260
	.cfi_def_cfa_offset 264
	.loc 1 216 68 view .LVU542
	mov	r2, r1
	.loc 1 218 2 view .LVU543
	mov	r0, sp
	mov	r1, r3
.LVL131:
	.loc 1 218 2 view .LVU544
	bl	vsprintf
.LVL132:
	.loc 1 220 2 is_stmt 1 view .LVU545
	.loc 1 222 2 view .LVU546
	.loc 1 223 2 view .LVU547
	.loc 1 224 2 view .LVU548
	.loc 1 224 13 view .LVU549
	.loc 1 224 9 is_stmt 0 view .LVU550
	ldrb	r3, [sp]	@ zero_extendqisi2
	.loc 1 224 13 view .LVU551
	cmp	r3, #0
	beq	.L92
	.loc 1 223 6 view .LVU552
	mov	r0, #0
	.loc 1 229 18 view .LVU553
	ldr	r1, .L96
	.loc 1 220 8 view .LVU554
	mov	r2, sp
	.loc 1 229 18 view .LVU555
	ldr	ip, [r1, #24]
	.loc 1 222 6 view .LVU556
	mov	r1, r0
	b	.L91
.LVL133:
.L89:
	.loc 1 229 29 view .LVU557
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	.loc 1 229 39 view .LVU558
	add	r2, r2, #1
.LVL134:
	.loc 1 229 11 view .LVU559
	add	r1, r1, r3
.LVL135:
	.loc 1 224 13 is_stmt 1 view .LVU560
	.loc 1 224 9 is_stmt 0 view .LVU561
	ldrb	r3, [r2]	@ zero_extendqisi2
	.loc 1 224 13 view .LVU562
	cmp	r3, #0
	beq	.L95
.LVL136:
.L91:
	.loc 1 225 3 is_stmt 1 view .LVU563
	.loc 1 229 4 view .LVU564
	.loc 1 225 6 is_stmt 0 view .LVU565
	cmp	r3, #10
	bne	.L89
	.loc 1 226 4 is_stmt 1 view .LVU566
	.loc 1 224 9 is_stmt 0 view .LVU567
	ldrb	r3, [r2]	@ zero_extendqisi2
	.loc 1 226 14 view .LVU568
	cmp	r0, r1
	movlt	r0, r1
.LVL137:
	.loc 1 227 4 is_stmt 1 view .LVU569
	.loc 1 224 13 is_stmt 0 view .LVU570
	cmp	r3, #0
	.loc 1 227 11 view .LVU571
	mov	r1, #0
.LVL138:
	.loc 1 224 13 is_stmt 1 view .LVU572
	bne	.L91
.L95:
	.loc 1 232 12 is_stmt 0 view .LVU573
	cmp	r0, r1
	movlt	r0, r1
.LVL139:
	.loc 1 235 1 view .LVU574
	add	sp, sp, #260
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.LVL140:
.L92:
	.cfi_restore_state
	.loc 1 224 13 view .LVU575
	mov	r0, r3
	.loc 1 232 2 is_stmt 1 view .LVU576
.LVL141:
	.loc 1 234 2 view .LVU577
	.loc 1 235 1 is_stmt 0 view .LVU578
	add	sp, sp, #260
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
.L97:
	.align	2
.L96:
	.word	.LANCHOR0
	.cfi_endproc
.LFE217:
	.size	SpriteBatch_CalcTextWidthVargs, .-SpriteBatch_CalcTextWidthVargs
	.section	.text.SpriteBatch_CalcTextWidth,"ax",%progbits
	.align	2
	.global	SpriteBatch_CalcTextWidth
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_CalcTextWidth, %function
SpriteBatch_CalcTextWidth:
.LVL142:
.LFB216:
	.loc 1 207 54 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 208 2 view .LVU580
	.loc 1 209 1 view .LVU581
	.loc 1 207 54 is_stmt 0 view .LVU582
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 20
	.cfi_offset 14, -20
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 209 1 view .LVU583
	add	r1, sp, #20
	.loc 1 210 15 view .LVU584
	ldr	r0, [sp, #16]
	.loc 1 209 1 view .LVU585
	str	r1, [sp, #4]
	.loc 1 210 2 is_stmt 1 view .LVU586
	.loc 1 210 15 is_stmt 0 view .LVU587
	bl	SpriteBatch_CalcTextWidthVargs
.LVL143:
	.loc 1 211 1 is_stmt 1 view .LVU588
	.loc 1 213 2 view .LVU589
	.loc 1 214 1 is_stmt 0 view .LVU590
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
	.cfi_endproc
.LFE216:
	.size	SpriteBatch_CalcTextWidth, .-SpriteBatch_CalcTextWidth
	.global	__aeabi_idiv
	.section	.text.SpriteBatch_GetWidth,"ax",%progbits
	.align	2
	.global	SpriteBatch_GetWidth
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_GetWidth, %function
SpriteBatch_GetWidth:
.LFB219:
	.loc 1 244 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 244 30 view .LVU592
	.loc 1 244 49 is_stmt 0 view .LVU593
	ldr	r2, .L102
	ldr	r3, .L102+4
	.loc 1 244 28 view .LVU594
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 244 49 view .LVU595
	ldr	r0, [r2, #192]
	ldr	r1, [r3]
	bl	__aeabi_idiv
.LVL144:
	.loc 1 244 61 view .LVU596
	pop	{r4, pc}
.L103:
	.align	2
.L102:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE219:
	.size	SpriteBatch_GetWidth, .-SpriteBatch_GetWidth
	.section	.text.SpriteBatch_GetHeight,"ax",%progbits
	.align	2
	.global	SpriteBatch_GetHeight
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_GetHeight, %function
SpriteBatch_GetHeight:
.LFB220:
	.loc 1 245 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 245 31 view .LVU598
	.loc 1 245 51 is_stmt 0 view .LVU599
	ldr	r2, .L106
	ldr	r3, .L106+4
	.loc 1 245 29 view .LVU600
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 245 51 view .LVU601
	ldr	r0, [r2, #196]
	ldr	r1, [r3]
	bl	__aeabi_idiv
.LVL145:
	.loc 1 245 63 view .LVU602
	pop	{r4, pc}
.L107:
	.align	2
.L106:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE220:
	.size	SpriteBatch_GetHeight, .-SpriteBatch_GetHeight
	.section	.text.SpriteBatch_SetScale,"ax",%progbits
	.align	2
	.global	SpriteBatch_SetScale
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_SetScale, %function
SpriteBatch_SetScale:
.LVL146:
.LFB221:
	.loc 1 247 38 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 247 40 view .LVU604
	.loc 1 247 49 is_stmt 0 view .LVU605
	ldr	r3, .L109
	str	r0, [r3]
	.loc 1 247 58 view .LVU606
	bx	lr
.L110:
	.align	2
.L109:
	.word	.LANCHOR1
	.cfi_endproc
.LFE221:
	.size	SpriteBatch_SetScale, .-SpriteBatch_SetScale
	.section	.text.SpriteBatch_GetScale,"ax",%progbits
	.align	2
	.global	SpriteBatch_GetScale
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_GetScale, %function
SpriteBatch_GetScale:
.LFB222:
	.loc 1 248 28 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 248 30 view .LVU608
	.loc 1 248 37 is_stmt 0 view .LVU609
	ldr	r3, .L112
	.loc 1 248 47 view .LVU610
	ldr	r0, [r3]
	bx	lr
.L113:
	.align	2
.L112:
	.word	.LANCHOR1
	.cfi_endproc
.LFE222:
	.size	SpriteBatch_GetScale, .-SpriteBatch_GetScale
	.section	.text.SpriteBatch_StartFrame,"ax",%progbits
	.align	2
	.global	SpriteBatch_StartFrame
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_StartFrame, %function
SpriteBatch_StartFrame:
.LVL147:
.LFB223:
	.loc 1 250 52 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 251 2 view .LVU612
	.loc 1 251 14 is_stmt 0 view .LVU613
	ldr	r3, .L115
	.loc 1 252 15 view .LVU614
	strd	r0, [r3, #192]
	.loc 1 253 1 view .LVU615
	bx	lr
.L116:
	.align	2
.L115:
	.word	.LANCHOR0
	.cfi_endproc
.LFE223:
	.size	SpriteBatch_StartFrame, .-SpriteBatch_StartFrame
	.section	.text.SpriteBatch_Render,"ax",%progbits
	.align	2
	.global	SpriteBatch_Render
	.syntax unified
	.arm
	.fpu vfp
	.type	SpriteBatch_Render, %function
SpriteBatch_Render:
.LVL148:
.LFB224:
	.loc 1 255 45 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 256 2 view .LVU617
	.loc 1 255 45 is_stmt 0 view .LVU618
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
	.loc 1 256 6 view .LVU619
	ldr	r5, .L129+32
	vldr.64	d6, .L129
	vldr.32	s14, [r5, #200]
	vcvt.f64.f32	d7, s14
	vadd.f64	d7, d7, d6
	.loc 1 255 45 view .LVU620
	vpush.64	{d8, d9}
	.cfi_def_cfa_offset 52
	.cfi_offset 80, -52
	.cfi_offset 81, -48
	.cfi_offset 82, -44
	.cfi_offset 83, -40
	.loc 1 256 6 view .LVU621
	vcvt.f32.f64	s14, d7
	.loc 1 255 45 view .LVU622
	sub	sp, sp, #100
	.cfi_def_cfa_offset 152
	.loc 1 257 2 view .LVU623
	mov	r2, #36
	.loc 1 255 45 view .LVU624
	mov	r4, r0
	.loc 1 257 2 view .LVU625
	ldrd	r0, [r5]
.LVL149:
	.loc 1 257 2 view .LVU626
	ldr	r3, .L129+36
	.loc 1 256 6 view .LVU627
	vstr.32	s14, [r5, #200]
	.loc 1 257 2 is_stmt 1 view .LVU628
	bl	qsort
.LVL150:
	.loc 1 259 2 view .LVU629
	.loc 1 260 2 view .LVU630
	ldr	r3, [r5, #196]
	vldr.32	s3, .L129+16
	vmov	s15, r3	@ int
	ldr	r3, [r5, #192]
	vcvt.f32.s32	s2, s15
	vmov	s15, r3	@ int
	vldr.32	s5, .L129+20
	vldr.32	s4, .L129+24
	vcvt.f32.s32	s1, s15
	vmov.f32	s0, s3
	mov	r1, #0
	add	r0, sp, #32
	str	r3, [sp, #8]
	bl	Mtx_OrthoTilt
.LVL151:
	.loc 1 262 2 view .LVU631
.LBB182:
.LBB183:
.LBB184:
.LBB185:
.LBB186:
	.file 5 "/opt/devkitpro/libctru/include/c3d/uniforms.h"
	.loc 5 19 31 is_stmt 0 view .LVU632
	mov	r2, #1
	ldr	r3, .L129+40
.LBE186:
.LBE185:
.LBE184:
.LBE183:
.LBE182:
	.loc 1 262 2 view .LVU633
	ldr	r1, [r5, #20]
.LVL152:
.LBB195:
.LBI182:
	.loc 5 38 20 is_stmt 1 view .LVU634
	.loc 5 40 2 view .LVU635
.LBB194:
.LBI183:
	.loc 5 30 20 view .LVU636
.LBB193:
.LBB190:
.LBB187:
	.loc 5 18 16 view .LVU637
	.loc 5 19 3 view .LVU638
.LBE187:
.LBE190:
	.loc 5 35 10 is_stmt 0 view .LVU639
	ldr	lr, .L129+44
.LBB191:
.LBB188:
	.loc 5 19 31 view .LVU640
	strb	r2, [r3, r1]!
	.loc 5 18 26 is_stmt 1 view .LVU641
.LVL153:
	.loc 5 18 16 view .LVU642
	.loc 5 19 3 view .LVU643
.LBE188:
.LBE191:
	.loc 5 35 10 is_stmt 0 view .LVU644
	add	lr, lr, r1, lsl #4
	add	ip, sp, #32
.LBB192:
.LBB189:
	.loc 5 19 31 view .LVU645
	strb	r2, [r3, #1]
	.loc 5 18 26 is_stmt 1 view .LVU646
.LVL154:
	.loc 5 18 16 view .LVU647
	.loc 5 19 3 view .LVU648
	.loc 5 19 31 is_stmt 0 view .LVU649
	strb	r2, [r3, #2]
	.loc 5 18 26 is_stmt 1 view .LVU650
.LVL155:
	.loc 5 18 16 view .LVU651
	.loc 5 19 3 view .LVU652
	.loc 5 19 31 is_stmt 0 view .LVU653
	strb	r2, [r3, #3]
	.loc 5 18 26 is_stmt 1 view .LVU654
.LVL156:
	.loc 5 18 16 view .LVU655
	.loc 5 20 2 view .LVU656
	.loc 5 20 2 is_stmt 0 view .LVU657
.LBE189:
.LBE192:
	.loc 5 34 2 is_stmt 1 view .LVU658
	.loc 5 34 16 view .LVU659
	.loc 5 35 10 is_stmt 0 view .LVU660
	ldmia	ip!, {r0, r1, r2, r3}
.LVL157:
	.loc 5 35 10 view .LVU661
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
.LVL158:
	.loc 5 35 10 view .LVU662
.LBE193:
.LBE194:
.LBE195:
	.loc 1 264 2 is_stmt 1 view .LVU663
	mov	r2, #31
	mov	r1, #6
	mov	r0, #0
	bl	C3D_DepthTest
.LVL159:
	.loc 1 266 2 view .LVU664
	.loc 1 271 13 is_stmt 0 view .LVU665
	add	r4, r5, r4, lsl #2
	.loc 1 266 20 view .LVU666
	mov	r0, #0
	bl	C3D_GetTexEnv
.LVL160:
	.loc 1 271 13 view .LVU667
	ldr	r1, [r4, #12]
.LBB196:
.LBB197:
	.file 6 "/opt/devkitpro/libctru/include/c3d/texenv.h"
	.loc 6 35 13 view .LVU668
	mov	r3, #0
.LBE197:
.LBE196:
	.loc 1 271 13 view .LVU669
	str	r1, [sp, #24]
.LBB202:
.LBB198:
	.loc 6 38 13 view .LVU670
	mvn	r1, #0
.LBE198:
.LBE202:
	.loc 1 276 16 view .LVU671
	ldr	fp, [r5, #4]
.LBB203:
.LBB204:
	.loc 6 56 15 view .LVU672
	ldr	r2, .L129+48
.LBE204:
.LBE203:
.LBB206:
.LBB207:
	.loc 6 80 16 view .LVU673
	ldr	ip, .L129+52
.LVL161:
	.loc 6 80 16 view .LVU674
.LBE207:
.LBE206:
	.loc 1 267 2 is_stmt 1 view .LVU675
.LBB210:
.LBI196:
	.loc 6 31 20 view .LVU676
.LBB199:
	.loc 6 33 2 view .LVU677
	.loc 6 34 2 view .LVU678
	.loc 6 35 2 view .LVU679
	.loc 6 36 2 view .LVU680
	.loc 6 37 2 view .LVU681
	.loc 6 38 2 view .LVU682
	.loc 6 39 2 view .LVU683
	.loc 6 40 2 view .LVU684
	.loc 6 40 2 is_stmt 0 view .LVU685
.LBE199:
.LBE210:
	.loc 1 268 2 is_stmt 1 view .LVU686
.LBB211:
.LBI203:
	.loc 6 49 20 view .LVU687
.LBB205:
	.loc 6 54 2 view .LVU688
	.loc 6 55 2 view .LVU689
	.loc 6 56 3 view .LVU690
	.loc 6 57 2 view .LVU691
	.loc 6 58 3 view .LVU692
	.loc 6 58 3 is_stmt 0 view .LVU693
.LBE205:
.LBE211:
	.loc 1 269 2 is_stmt 1 view .LVU694
.LBB212:
.LBI206:
	.loc 6 77 20 view .LVU695
.LBB208:
	.loc 6 79 2 view .LVU696
	.loc 6 80 3 view .LVU697
	.loc 6 81 2 view .LVU698
	.loc 6 82 3 view .LVU699
.LBE208:
.LBE212:
	.loc 1 276 24 is_stmt 0 view .LVU700
	cmp	fp, r3
.LBB213:
.LBB200:
	.loc 6 35 13 view .LVU701
	strd	r2, [r0]
.LBE200:
.LBE213:
.LBB214:
.LBB209:
	.loc 6 80 16 view .LVU702
	str	ip, [r0, #8]
.LBE209:
.LBE214:
.LBB215:
.LBB201:
	.loc 6 38 13 view .LVU703
	str	r1, [r0, #12]
	.loc 6 39 16 view .LVU704
	str	r3, [r0, #16]
.LVL162:
	.loc 6 39 16 view .LVU705
.LBE201:
.LBE215:
	.loc 1 271 2 is_stmt 1 view .LVU706
	.loc 1 273 2 view .LVU707
	.loc 1 275 2 view .LVU708
	.loc 1 276 2 view .LVU709
	.loc 1 276 24 view .LVU710
	ble	.L122
.LBB216:
	.loc 1 280 20 is_stmt 0 view .LVU711
	vldr.32	s19, .L129+24
	.loc 1 280 9 view .LVU712
	vldr.32	s18, .L129+28
.LBB217:
	.loc 1 289 26 view .LVU713
	mov	r10, r3
.LBE217:
	.loc 1 302 3 view .LVU714
	vldr.64	d8, .L129+8	@ int
	mov	r9, fp
.LBE216:
	.loc 1 275 9 view .LVU715
	str	r3, [sp, #20]
.LVL163:
.L118:
.LBB224:
	.loc 1 277 3 is_stmt 1 view .LVU716
	.loc 1 279 3 view .LVU717
	.loc 1 279 32 is_stmt 0 view .LVU718
	ldr	r3, .L129+32
	ldr	r0, [sp, #20]
	ldr	r2, [r3]
	.loc 1 279 38 view .LVU719
	add	r3, r9, r9, lsl #3
	.loc 1 279 12 view .LVU720
	add	r2, r2, r3, lsl #2
	ldr	r1, [r2, #-32]
	add	r3, r0, r0, lsl #1
	.loc 1 280 29 view .LVU721
	ldrh	ip, [r1, #10]
	.loc 1 279 12 view .LVU722
	str	r1, [sp, #16]
.LVL164:
	.loc 1 280 3 is_stmt 1 view .LVU723
	.loc 1 280 69 is_stmt 0 view .LVU724
	ldrh	r1, [r1, #8]
.LVL165:
	.loc 1 280 29 view .LVU725
	vmov	s14, ip	@ int
	.loc 1 280 69 view .LVU726
	vmov	s15, r1	@ int
	.loc 1 280 20 view .LVU727
	vcvt.f32.s32	s14, s14
	.loc 1 280 60 view .LVU728
	vcvt.f32.s32	s15, s15
	.loc 1 280 20 view .LVU729
	vdiv.f32	s10, s19, s14
	.loc 1 280 60 view .LVU730
	vdiv.f32	s11, s19, s15
	lsl	r1, r0, #1
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	.loc 1 280 49 view .LVU731
	mov	fp, r0
	.loc 1 280 9 view .LVU732
	vmul.f32	s10, s10, s18
.LVL166:
	.loc 1 280 49 view .LVU733
	vmul.f32	s11, s11, s18
.LVL167:
	.loc 1 282 3 is_stmt 1 view .LVU734
	.loc 1 282 29 view .LVU735
	add	r3, r1, r3, lsl #2
	b	.L119
.LVL168:
.L121:
.LBB218:
	.loc 1 286 27 is_stmt 0 view .LVU736
	ldrsh	r0, [r2, #-12]
	.loc 1 283 11 view .LVU737
	ldrsh	r1, [r2, #-20]
	.loc 1 286 27 view .LVU738
	vmov	s12, r0	@ int
	.loc 1 286 65 view .LVU739
	ldrsh	r0, [r2, #-10]
	.loc 1 286 27 view .LVU740
	vcvt.f32.s32	s12, s12
	.loc 1 286 65 view .LVU741
	vmov	s13, r0	@ int
	.loc 1 287 27 view .LVU742
	ldrsh	r0, [r2, #-8]
	.loc 1 286 65 view .LVU743
	vcvt.f32.s32	s13, s13
	.loc 1 287 27 view .LVU744
	vmov	s14, r0	@ int
	.loc 1 287 65 view .LVU745
	ldrsh	r0, [r2, #-6]
	.loc 1 286 41 view .LVU746
	vmul.f32	s12, s12, s10
	.loc 1 287 65 view .LVU747
	vmov	s15, r0	@ int
	.loc 1 287 27 view .LVU748
	vcvt.f32.s32	s14, s14
	.loc 1 287 65 view .LVU749
	vcvt.f32.s32	s15, s15
	.loc 1 286 79 view .LVU750
	vmul.f32	s13, s13, s11
	.loc 1 286 12 view .LVU751
	vcvt.s32.f32	s12, s12
	.loc 1 283 11 view .LVU752
	ldrsh	r0, [r2, #-18]
	ldrsh	ip, [r2, #-24]
	ldr	lr, .L129+32
	ldrsh	r8, [r2, #-28]
.LVL169:
	.loc 1 283 11 view .LVU753
	ldrsh	r7, [r2, #-26]
.LVL170:
	.loc 1 283 11 view .LVU754
	ldrsh	r6, [r2, #-16]
	ldrsh	r5, [r2, #-14]
	str	r1, [sp, #8]
	str	r0, [sp, #12]
	ldrsh	r1, [r2, #-4]
	ldrsh	r0, [r2, #-22]
.LVL171:
	.loc 1 284 4 is_stmt 1 view .LVU755
	.loc 1 286 4 view .LVU756
	.loc 1 283 11 is_stmt 0 view .LVU757
	str	r9, [lr, #4]
	.loc 1 287 41 view .LVU758
	vmul.f32	s14, s14, s10
	.loc 1 290 26 view .LVU759
	strh	ip, [r3, #12]	@ movhi
.LVL172:
	.loc 1 287 79 view .LVU760
	vmul.f32	s15, s15, s11
	.loc 1 286 12 view .LVU761
	vmov	ip, s12	@ int
.LVL173:
	.loc 1 286 50 view .LVU762
	vcvt.s32.f32	s13, s13
	.loc 1 286 12 view .LVU763
	sxth	lr, ip
.LVL174:
	.loc 1 287 12 view .LVU764
	vcvt.s32.f32	s14, s14
	.loc 1 286 50 view .LVU765
	vmov	ip, s13	@ int
	.loc 1 287 50 view .LVU766
	vcvt.s32.f32	s15, s15
	.loc 1 290 26 view .LVU767
	strh	r0, [r3, #14]	@ movhi
	.loc 1 286 50 view .LVU768
	sxth	r4, ip
.LVL175:
	.loc 1 287 4 is_stmt 1 view .LVU769
	.loc 1 287 50 is_stmt 0 view .LVU770
	vmov	r0, s15	@ int
.LVL176:
	.loc 1 287 12 view .LVU771
	vmov	ip, s14	@ int
	.loc 1 289 26 view .LVU772
	strh	r6, [r3]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	strh	r10, [r3, #4]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	.loc 1 290 26 view .LVU773
	strh	r10, [r3, #16]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	.loc 1 291 26 view .LVU774
	strh	r8, [r3, #24]	@ movhi
	strh	r7, [r3, #26]	@ movhi
	strh	r10, [r3, #28]	@ movhi
	.loc 1 287 12 view .LVU775
	sxth	ip, ip
.LVL177:
	.loc 1 287 50 view .LVU776
	sxth	r0, r0
.LVL178:
	.loc 1 289 4 is_stmt 1 view .LVU777
	.loc 1 290 4 view .LVU778
	.loc 1 291 4 view .LVU779
	.loc 1 290 26 is_stmt 0 view .LVU780
	strh	r4, [r3, #20]	@ movhi
	.loc 1 291 26 view .LVU781
	strh	r4, [r3, #32]	@ movhi
	strh	lr, [r3, #30]	@ movhi
	.loc 1 289 26 view .LVU782
	strh	ip, [r3, #6]	@ movhi
	.loc 1 290 26 view .LVU783
	strh	ip, [r3, #18]	@ movhi
	.loc 1 289 26 view .LVU784
	strh	r0, [r3, #8]	@ movhi
	.loc 1 293 26 view .LVU785
	strh	r4, [r3, #44]	@ movhi
	.loc 1 294 26 view .LVU786
	ldr	r4, [sp, #8]
.LVL179:
	.loc 1 294 26 view .LVU787
.LBE218:
	.loc 1 282 29 view .LVU788
	cmp	r9, #0
.LBB219:
	.loc 1 294 26 view .LVU789
	strh	r4, [r3, #48]	@ movhi
	ldr	r4, [sp, #12]
.LBE219:
	.loc 1 282 29 view .LVU790
	add	r3, r3, #72
.LVL180:
.LBB220:
	.loc 1 295 22 view .LVU791
	add	fp, fp, #6
.LBE220:
	.loc 1 282 29 view .LVU792
	sub	r2, r2, #36
.LBB221:
	.loc 1 291 26 view .LVU793
	strh	r1, [r3, #-38]	@ movhi
	.loc 1 293 4 is_stmt 1 view .LVU794
	.loc 1 293 26 is_stmt 0 view .LVU795
	strh	r8, [r3, #-36]	@ movhi
	strh	r7, [r3, #-34]	@ movhi
	strh	r10, [r3, #-32]	@ movhi
	strh	lr, [r3, #-30]	@ movhi
	strh	r1, [r3, #-26]	@ movhi
	.loc 1 294 4 is_stmt 1 view .LVU796
	.loc 1 294 26 is_stmt 0 view .LVU797
	strh	r4, [r3, #-22]	@ movhi
	strh	r10, [r3, #-20]	@ movhi
	strh	lr, [r3, #-18]	@ movhi
	strh	r0, [r3, #-16]	@ movhi
	strh	r1, [r3, #-14]	@ movhi
	.loc 1 295 4 is_stmt 1 view .LVU798
.LVL181:
	.loc 1 295 26 is_stmt 0 view .LVU799
	strh	r6, [r3, #-12]	@ movhi
	strh	r5, [r3, #-10]	@ movhi
	strh	r10, [r3, #-8]	@ movhi
	strh	ip, [r3, #-6]	@ movhi
	strh	r0, [r3, #-4]	@ movhi
	strh	r1, [r3, #-2]	@ movhi
.LVL182:
	.loc 1 295 26 view .LVU800
.LBE221:
	.loc 1 282 29 is_stmt 1 view .LVU801
	beq	.L128
.LVL183:
.L119:
.LBB222:
	.loc 1 283 4 discriminator 1 view .LVU802
	.loc 1 283 4 is_stmt 0 discriminator 1 view .LVU803
.LBE222:
	.loc 1 282 29 discriminator 1 view .LVU804
	ldr	r1, [r2, #-32]
	ldr	r0, [sp, #16]
.LBB223:
	.loc 1 283 34 discriminator 1 view .LVU805
	sub	r9, r9, #1
.LBE223:
	.loc 1 282 29 discriminator 1 view .LVU806
	cmp	r1, r0
	beq	.L121
.L128:
	.loc 1 298 3 is_stmt 1 view .LVU807
	.loc 1 304 40 is_stmt 0 view .LVU808
	ldr	r3, [sp, #20]
	.loc 1 298 3 view .LVU809
	ldr	r1, [sp, #16]
	mov	r0, #0
	.loc 1 304 40 view .LVU810
	sub	r5, fp, r3
	.loc 1 298 3 view .LVU811
	bl	C3D_TexBind
.LVL184:
	.loc 1 300 3 is_stmt 1 view .LVU812
	.loc 1 300 26 is_stmt 0 view .LVU813
	bl	C3D_GetBufInfo
.LVL185:
	mov	r4, r0
.LVL186:
	.loc 1 301 3 is_stmt 1 view .LVU814
	bl	BufInfo_Init
.LVL187:
	.loc 1 302 3 view .LVU815
	.loc 1 302 39 is_stmt 0 view .LVU816
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #20]
	.loc 1 302 3 view .LVU817
	vstr.64	d8, [sp]	@ int
	.loc 1 302 39 view .LVU818
	add	r1, r3, r2
	.loc 1 302 3 view .LVU819
	mov	r3, #2
	ldr	r2, [sp, #24]
	mov	r0, r4
	add	r1, r2, r1, lsl r3
	mov	r2, #12
	bl	BufInfo_Add
.LVL188:
	.loc 1 304 3 is_stmt 1 view .LVU820
	mov	r1, #0
	mov	r2, r5
	mov	r0, r1
	bl	C3D_DrawArrays
.LVL189:
	.loc 1 306 3 view .LVU821
	.loc 1 306 3 is_stmt 0 view .LVU822
.LBE224:
	.loc 1 276 24 is_stmt 1 view .LVU823
	.loc 1 276 16 is_stmt 0 view .LVU824
	ldr	r3, .L129+32
	ldr	r9, [r3, #4]
	.loc 1 276 24 view .LVU825
	cmp	r9, #0
.LVL190:
	.loc 1 276 24 view .LVU826
	strgt	fp, [sp, #20]
	bgt	.L118
.LVL191:
.L122:
	.loc 1 308 2 is_stmt 1 view .LVU827
	mov	r2, #31
	mov	r1, #6
	mov	r0, #1
	bl	C3D_DepthTest
.LVL192:
	.loc 1 310 2 view .LVU828
	.loc 1 310 17 is_stmt 0 view .LVU829
	mov	r1, #0
	.loc 1 311 11 view .LVU830
	mov	r2, #2
	ldr	r3, .L129+56
	.loc 1 310 17 view .LVU831
	ldr	r0, .L129+32
	.loc 1 311 11 view .LVU832
	str	r2, [r3]
	.loc 1 310 17 view .LVU833
	str	r1, [r0, #188]
	.loc 1 311 2 is_stmt 1 view .LVU834
	.loc 1 312 1 is_stmt 0 view .LVU835
	add	sp, sp, #100
	.cfi_def_cfa_offset 52
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L130:
	.align	3
.L129:
	.word	-209982507
	.word	1068158697
	.word	16
	.word	0
	.word	0
	.word	-1082130432
	.word	1065353216
	.word	1191181824
	.word	.LANCHOR0
	.word	compareDrawCommands
	.word	C3D_FVUnifDirty
	.word	C3D_FVUnif
	.word	196611
	.word	65537
	.word	.LANCHOR1
	.cfi_endproc
.LFE224:
	.size	SpriteBatch_Render, .-SpriteBatch_Render
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	guiScale, %object
	.size	guiScale, 4
guiScale:
	.word	2
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cmdList, %object
	.size	cmdList, 12
cmdList:
	.space	12
	.type	vertexList, %object
	.size	vertexList, 8
vertexList:
	.space	8
	.type	projUniform, %object
	.size	projUniform, 4
projUniform:
	.space	4
	.type	font, %object
	.size	font, 4
font:
	.space	4
	.type	widgetsTex, %object
	.size	widgetsTex, 24
widgetsTex:
	.space	24
	.type	whiteTex, %object
	.size	whiteTex, 24
whiteTex:
	.space	24
	.type	menuBackgroundTex, %object
	.size	menuBackgroundTex, 24
menuBackgroundTex:
	.space	24
	.type	iconsTex, %object
	.size	iconsTex, 24
iconsTex:
	.space	24
	.type	iconModelMtx, %object
	.size	iconModelMtx, 64
iconModelMtx:
	.space	64
	.type	currentTexture, %object
	.size	currentTexture, 4
currentTexture:
	.space	4
	.type	screenWidth, %object
	.size	screenWidth, 4
screenWidth:
	.space	4
	.type	screenHeight, %object
	.size	screenHeight, 4
screenHeight:
	.space	4
	.type	rot, %object
	.size	rot, 4
rot:
	.space	4
	.text
.Letext0:
	.file 7 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 8 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 10 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h"
	.file 11 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 12 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stdarg.h"
	.file 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h"
	.file 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 16 "/opt/devkitpro/libctru/include/3ds/gfx.h"
	.file 17 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 18 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 19 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 20 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 21 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 22 "/opt/devkitpro/libctru/include/c3d/types.h"
	.file 23 "/opt/devkitpro/libctru/include/c3d/buffers.h"
	.file 24 "/home/tobi/Dokumente/Craftus-Next/include/gui/SpriteBatch.h"
	.file 25 "/home/tobi/Dokumente/Craftus-Next/include/gui/FontLoader.h"
	.file 26 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VertexFmt.h"
	.file 27 "/opt/devkitpro/libctru/include/c3d/base.h"
	.file 28 "/opt/devkitpro/libctru/include/c3d/effect.h"
	.file 29 "/home/tobi/Dokumente/Craftus-Next/dependencies/vec/vec.h"
	.file 30 "/opt/devkitpro/libctru/include/3ds/allocator/linear.h"
	.file 31 "/home/tobi/Dokumente/Craftus-Next/include/rendering/TextureMap.h"
	.file 32 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 33 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2920
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x43
	.4byte	.LASF342
	.byte	0x1d
	.4byte	.LASF343
	.4byte	.LASF344
	.4byte	.LLRL178
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x44
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x7
	.byte	0x2b
	.byte	0x17
	.4byte	0x4e
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x7
	.byte	0x37
	.byte	0x13
	.4byte	0x61
	.uleb128 0x13
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x7
	.byte	0x39
	.byte	0x1c
	.4byte	0x74
	.uleb128 0x13
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x7
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x7
	.byte	0x69
	.byte	0x20
	.4byte	0x2d
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x8
	.byte	0x8f
	.byte	0xd
	.4byte	0x34
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x8
	.byte	0xd1
	.byte	0x16
	.4byte	0xa8
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x9
	.byte	0x18
	.byte	0x13
	.4byte	0x42
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x9
	.byte	0x20
	.byte	0x13
	.4byte	0x55
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x9
	.byte	0x24
	.byte	0x14
	.4byte	0x68
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x9
	.byte	0x30
	.byte	0x14
	.4byte	0x82
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x9
	.byte	0x3c
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0xa
	.byte	0x3
	.byte	0xe
	.4byte	0x142
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0xa
	.byte	0xb
	.byte	0x3
	.4byte	0x10a
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0xb
	.byte	0x8
	.byte	0x11
	.4byte	0xce
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0xb
	.byte	0xa
	.byte	0x6
	.4byte	0x258
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x27
	.byte	0
	.uleb128 0xb
	.4byte	0x264
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.4byte	.LASF72
	.uleb128 0x2b
	.4byte	0x25d
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0xc
	.byte	0x28
	.byte	0x1b
	.4byte	0x275
	.uleb128 0x45
	.4byte	.LASF345
	.byte	0x4
	.byte	0x21
	.byte	0
	.4byte	0x28c
	.uleb128 0x46
	.4byte	.LASF346
	.4byte	0x28c
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0xd
	.byte	0x2e
	.byte	0x18
	.4byte	0x269
	.uleb128 0xb
	.4byte	0x25d
	.uleb128 0x13
	.byte	0x1
	.byte	0x2
	.4byte	.LASF75
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0xe
	.byte	0x39
	.byte	0xf
	.4byte	0x2b2
	.uleb128 0xb
	.4byte	0x2b7
	.uleb128 0x48
	.4byte	0x34
	.4byte	0x2cb
	.uleb128 0x4
	.4byte	0x2cb
	.uleb128 0x4
	.4byte	0x2cb
	.byte	0
	.uleb128 0xb
	.4byte	0x2d0
	.uleb128 0x49
	.uleb128 0xb
	.4byte	0x29a
	.uleb128 0xb
	.4byte	0x34
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.4byte	.LASF77
	.uleb128 0x2c
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0xce
	.uleb128 0x2c
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0xe6
	.uleb128 0x2c
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x2c
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0xfe
	.uleb128 0xe
	.4byte	0x2f7
	.4byte	0x31d
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x10
	.byte	0x19
	.byte	0xe
	.4byte	0x337
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0x10
	.byte	0x1c
	.byte	0x3
	.4byte	0x31d
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x11
	.byte	0x28
	.byte	0x1
	.4byte	0x369
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x11
	.byte	0x31
	.byte	0x1
	.4byte	0x38f
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x12
	.byte	0x21
	.byte	0xe
	.4byte	0x3b5
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.byte	0x2d
	.byte	0x1
	.4byte	0x3e7
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0x13
	.byte	0x34
	.byte	0x3
	.4byte	0x3b5
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.byte	0x40
	.byte	0x1
	.4byte	0x455
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0
	.uleb128 0x1
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF114
	.byte	0x13
	.byte	0x4f
	.byte	0x3
	.4byte	0x3f3
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.byte	0x53
	.byte	0x1
	.4byte	0x499
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF122
	.byte	0x13
	.byte	0x5b
	.byte	0x3
	.4byte	0x461
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.byte	0xa7
	.byte	0x1
	.4byte	0x4e3
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF131
	.byte	0x13
	.byte	0xb0
	.byte	0x3
	.4byte	0x4a5
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.byte	0xdf
	.byte	0x1
	.4byte	0x527
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF139
	.byte	0x13
	.byte	0xe8
	.byte	0x3
	.4byte	0x4ef
	.uleb128 0x24
	.byte	0x1
	.4byte	0x4e
	.2byte	0x13b
	.4byte	0x57c
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0xf
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF150
	.2byte	0x146
	.4byte	0x533
	.uleb128 0x24
	.byte	0x1
	.4byte	0x4e
	.2byte	0x16c
	.4byte	0x5ca
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x9
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF160
	.2byte	0x176
	.4byte	0x587
	.uleb128 0x24
	.byte	0x1
	.4byte	0x4e
	.2byte	0x17a
	.4byte	0x5f4
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.byte	0x2
	.4byte	0x74
	.2byte	0x1ec
	.4byte	0x61c
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0
	.uleb128 0x25
	.4byte	.LASF165
	.2byte	0x100
	.uleb128 0x25
	.4byte	.LASF166
	.2byte	0x200
	.uleb128 0x25
	.4byte	.LASF167
	.2byte	0x300
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF168
	.2byte	0x1f1
	.4byte	0x5f4
	.uleb128 0x24
	.byte	0x1
	.4byte	0x4e
	.2byte	0x1f5
	.4byte	0x640
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF171
	.2byte	0x1f8
	.4byte	0x627
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.4byte	0x66b
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x74
	.byte	0x15
	.byte	0x9
	.byte	0x1
	.4byte	0x687
	.uleb128 0x25
	.4byte	.LASF175
	.2byte	0x100
	.uleb128 0x25
	.4byte	.LASF176
	.2byte	0x200
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x16
	.byte	0x29
	.byte	0x2
	.4byte	0x6bd
	.uleb128 0x8
	.ascii	"w\000"
	.byte	0x16
	.byte	0x2b
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x16
	.byte	0x2c
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x16
	.byte	0x2d
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x16
	.byte	0x2e
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0x16
	.byte	0x34
	.byte	0x2
	.4byte	0x6f3
	.uleb128 0x8
	.ascii	"r\000"
	.byte	0x16
	.byte	0x36
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0x8
	.ascii	"k\000"
	.byte	0x16
	.byte	0x37
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0x8
	.ascii	"j\000"
	.byte	0x16
	.byte	0x38
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0x8
	.ascii	"i\000"
	.byte	0x16
	.byte	0x39
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x21
	.byte	0x10
	.byte	0x16
	.byte	0x24
	.byte	0x9
	.4byte	0x711
	.uleb128 0x26
	.4byte	0x687
	.uleb128 0x26
	.4byte	0x6bd
	.uleb128 0x2e
	.ascii	"c\000"
	.byte	0x16
	.byte	0x3f
	.byte	0x8
	.4byte	0x711
	.byte	0
	.uleb128 0xe
	.4byte	0x26
	.4byte	0x721
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF177
	.byte	0x16
	.byte	0x40
	.byte	0x3
	.4byte	0x6f3
	.uleb128 0x21
	.byte	0x40
	.byte	0x16
	.byte	0x4c
	.byte	0x9
	.4byte	0x74b
	.uleb128 0x2e
	.ascii	"r\000"
	.byte	0x16
	.byte	0x4e
	.byte	0xb
	.4byte	0x74b
	.uleb128 0x2e
	.ascii	"m\000"
	.byte	0x16
	.byte	0x4f
	.byte	0x8
	.4byte	0x75b
	.byte	0
	.uleb128 0xe
	.4byte	0x721
	.4byte	0x75b
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0x26
	.4byte	0x76b
	.uleb128 0xc
	.4byte	0xa8
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF178
	.byte	0x16
	.byte	0x50
	.byte	0x3
	.4byte	0x72d
	.uleb128 0x2b
	.4byte	0x76b
	.uleb128 0xe
	.4byte	0x721
	.4byte	0x792
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x1
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x5f
	.byte	0
	.uleb128 0x36
	.4byte	.LASF179
	.byte	0x5
	.byte	0x7
	.byte	0x11
	.4byte	0x77c
	.uleb128 0xe
	.4byte	0x29f
	.4byte	0x7b4
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x1
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x5f
	.byte	0
	.uleb128 0x36
	.4byte	.LASF180
	.byte	0x5
	.byte	0xb
	.byte	0xc
	.4byte	0x79e
	.uleb128 0x12
	.byte	0xc
	.byte	0x17
	.byte	0x4
	.byte	0x9
	.4byte	0x7e4
	.uleb128 0x6
	.4byte	.LASF181
	.byte	0x17
	.byte	0x6
	.byte	0x6
	.4byte	0x2f7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0x17
	.byte	0x7
	.byte	0x6
	.4byte	0x30d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF183
	.byte	0x17
	.byte	0x8
	.byte	0x3
	.4byte	0x7c0
	.uleb128 0x12
	.byte	0x98
	.byte	0x17
	.byte	0xa
	.byte	0x9
	.4byte	0x821
	.uleb128 0x6
	.4byte	.LASF184
	.byte	0x17
	.byte	0xc
	.byte	0x6
	.4byte	0x2f7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF185
	.byte	0x17
	.byte	0xd
	.byte	0x6
	.4byte	0x34
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF186
	.byte	0x17
	.byte	0xe
	.byte	0xd
	.4byte	0x821
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x7e4
	.4byte	0x831
	.uleb128 0xc
	.4byte	0xa8
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	.LASF187
	.byte	0x17
	.byte	0xf
	.byte	0x3
	.4byte	0x7f0
	.uleb128 0x12
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x3
	.4byte	0x863
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x6
	.byte	0xa
	.byte	0x10
	.4byte	0x2f7
	.byte	0xc
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF189
	.byte	0x6
	.byte	0xa
	.byte	0x1a
	.4byte	0x2f7
	.byte	0xc
	.byte	0xc
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.byte	0x6
	.byte	0x7
	.byte	0x2
	.4byte	0x87e
	.uleb128 0x2f
	.4byte	.LASF190
	.byte	0x6
	.byte	0x9
	.byte	0x7
	.4byte	0x2f7
	.uleb128 0x26
	.4byte	0x83d
	.byte	0
	.uleb128 0x12
	.byte	0x14
	.byte	0x6
	.byte	0x4
	.byte	0x9
	.4byte	0x8e9
	.uleb128 0x6
	.4byte	.LASF191
	.byte	0x6
	.byte	0x6
	.byte	0x6
	.4byte	0x2ec
	.byte	0
	.uleb128 0x6
	.4byte	.LASF192
	.byte	0x6
	.byte	0x6
	.byte	0xe
	.4byte	0x2ec
	.byte	0x2
	.uleb128 0x30
	.4byte	0x863
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0x6
	.byte	0xc
	.byte	0x6
	.4byte	0x2ec
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF194
	.byte	0x6
	.byte	0xc
	.byte	0xf
	.4byte	0x2ec
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x6
	.byte	0xd
	.byte	0x6
	.4byte	0x2f7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF196
	.byte	0x6
	.byte	0xe
	.byte	0x6
	.4byte	0x2ec
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0x6
	.byte	0xe
	.byte	0x10
	.4byte	0x2ec
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.4byte	.LASF198
	.byte	0x6
	.byte	0xf
	.byte	0x3
	.4byte	0x87e
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x6
	.byte	0x12
	.byte	0x1
	.4byte	0x915
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF202
	.byte	0x6
	.byte	0x16
	.byte	0x3
	.4byte	0x8f5
	.uleb128 0x12
	.byte	0x18
	.byte	0x2
	.byte	0x4
	.byte	0x9
	.4byte	0x938
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0x2
	.byte	0x6
	.byte	0x8
	.4byte	0x938
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x28c
	.4byte	0x948
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF204
	.byte	0x2
	.byte	0x7
	.byte	0x3
	.4byte	0x921
	.uleb128 0x21
	.byte	0x4
	.byte	0x2
	.byte	0xb
	.byte	0x2
	.4byte	0x976
	.uleb128 0x2f
	.4byte	.LASF203
	.byte	0x2
	.byte	0xd
	.byte	0x9
	.4byte	0x28c
	.uleb128 0x2f
	.4byte	.LASF205
	.byte	0x2
	.byte	0xe
	.byte	0x10
	.4byte	0x976
	.byte	0
	.uleb128 0xb
	.4byte	0x948
	.uleb128 0x12
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x3
	.4byte	0x99f
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0x2
	.byte	0x19
	.byte	0x8
	.4byte	0x2ec
	.byte	0
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0x2
	.byte	0x1a
	.byte	0x8
	.4byte	0x2ec
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.4byte	0x9ba
	.uleb128 0x2e
	.ascii	"dim\000"
	.byte	0x2
	.byte	0x16
	.byte	0x7
	.4byte	0x2f7
	.uleb128 0x26
	.4byte	0x97b
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.byte	0x3
	.4byte	0x9eb
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0x2
	.byte	0x25
	.byte	0x8
	.4byte	0x2ec
	.byte	0
	.uleb128 0x6
	.4byte	.LASF209
	.byte	0x2
	.byte	0x26
	.byte	0x7
	.4byte	0x2e2
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF210
	.byte	0x2
	.byte	0x27
	.byte	0x7
	.4byte	0x2e2
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.byte	0x4
	.byte	0x2
	.byte	0x20
	.byte	0x2
	.4byte	0xa06
	.uleb128 0x2f
	.4byte	.LASF211
	.byte	0x2
	.byte	0x22
	.byte	0x7
	.4byte	0x2f7
	.uleb128 0x26
	.4byte	0x9ba
	.byte	0
	.uleb128 0x12
	.byte	0x18
	.byte	0x2
	.byte	0x9
	.byte	0x9
	.4byte	0xa58
	.uleb128 0x30
	.4byte	0x954
	.byte	0
	.uleb128 0x4a
	.ascii	"fmt\000"
	.byte	0x2
	.byte	0x11
	.byte	0xf
	.4byte	0x455
	.byte	0x4
	.byte	0x20
	.uleb128 0x1d
	.4byte	.LASF212
	.byte	0x2
	.byte	0x12
	.byte	0x9
	.4byte	0xbb
	.byte	0x1c
	.byte	0x24
	.uleb128 0x30
	.4byte	0x99f
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF213
	.byte	0x2
	.byte	0x1e
	.byte	0x6
	.4byte	0x2f7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF214
	.byte	0x2
	.byte	0x1f
	.byte	0x6
	.4byte	0x2f7
	.byte	0x10
	.uleb128 0x30
	.4byte	0x9eb
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF215
	.byte	0x2
	.byte	0x2a
	.byte	0x3
	.4byte	0xa06
	.uleb128 0x12
	.byte	0x8
	.byte	0x2
	.byte	0x2c
	.byte	0x9
	.4byte	0xac0
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.4byte	0x2ec
	.byte	0
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0x2
	.byte	0x2f
	.byte	0x6
	.4byte	0x2ec
	.byte	0x2
	.uleb128 0x1d
	.4byte	.LASF209
	.byte	0x2
	.byte	0x30
	.byte	0x5
	.4byte	0x2e2
	.byte	0x4
	.byte	0x20
	.uleb128 0x1d
	.4byte	.LASF216
	.byte	0x2
	.byte	0x31
	.byte	0xf
	.4byte	0x455
	.byte	0x4
	.byte	0x24
	.uleb128 0x1d
	.4byte	.LASF217
	.byte	0x2
	.byte	0x32
	.byte	0x19
	.4byte	0x3e7
	.byte	0x3
	.byte	0x28
	.uleb128 0x1d
	.4byte	.LASF218
	.byte	0x2
	.byte	0x33
	.byte	0x6
	.4byte	0x29f
	.byte	0x1
	.byte	0x2b
	.byte	0
	.uleb128 0x5
	.4byte	.LASF219
	.byte	0x2
	.byte	0x34
	.byte	0x3
	.4byte	0xa64
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x18
	.byte	0x10
	.byte	0xe
	.4byte	0xaf8
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0
	.uleb128 0x1
	.4byte	.LASF221
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF223
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0x18
	.byte	0x10
	.byte	0x75
	.4byte	0xacc
	.uleb128 0x4b
	.2byte	0x118
	.byte	0x19
	.byte	0x7
	.byte	0x9
	.4byte	0xb2a
	.uleb128 0x6
	.4byte	.LASF226
	.byte	0x19
	.byte	0x8
	.byte	0xa
	.4byte	0xb2a
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF227
	.byte	0x19
	.byte	0x9
	.byte	0xa
	.4byte	0xa58
	.2byte	0x100
	.byte	0
	.uleb128 0xe
	.4byte	0xce
	.4byte	0xb3a
	.uleb128 0xc
	.4byte	0xa8
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x19
	.byte	0xa
	.byte	0x3
	.4byte	0xb04
	.uleb128 0x12
	.byte	0x10
	.byte	0x1a
	.byte	0x7
	.byte	0x9
	.4byte	0xb83
	.uleb128 0x8
	.ascii	"xyz\000"
	.byte	0x1a
	.byte	0x8
	.byte	0xa
	.4byte	0xb83
	.byte	0
	.uleb128 0x8
	.ascii	"uv\000"
	.byte	0x1a
	.byte	0x9
	.byte	0xa
	.4byte	0xb93
	.byte	0x6
	.uleb128 0x8
	.ascii	"rgb\000"
	.byte	0x1a
	.byte	0xa
	.byte	0xa
	.4byte	0xba3
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF229
	.byte	0x1a
	.byte	0xb
	.byte	0xa
	.4byte	0xba3
	.byte	0xd
	.byte	0
	.uleb128 0xe
	.4byte	0xda
	.4byte	0xb93
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0xda
	.4byte	0xba3
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0xce
	.4byte	0xbb3
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF230
	.byte	0x1a
	.byte	0xc
	.byte	0x3
	.4byte	0xb46
	.uleb128 0x2b
	.4byte	0xbb3
	.uleb128 0x12
	.byte	0xc
	.byte	0x1a
	.byte	0xe
	.byte	0x9
	.4byte	0xbe8
	.uleb128 0x8
	.ascii	"xyz\000"
	.byte	0x1a
	.byte	0xf
	.byte	0xa
	.4byte	0xb83
	.byte	0
	.uleb128 0x8
	.ascii	"uvc\000"
	.byte	0x1a
	.byte	0x10
	.byte	0xa
	.4byte	0xb83
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x1a
	.byte	0x11
	.byte	0x3
	.4byte	0xbc4
	.uleb128 0x12
	.byte	0x24
	.byte	0x1
	.byte	0xc
	.byte	0x9
	.4byte	0xcb5
	.uleb128 0x6
	.4byte	.LASF232
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	0x34
	.byte	0
	.uleb128 0x6
	.4byte	.LASF227
	.byte	0x1
	.byte	0xe
	.byte	0xb
	.4byte	0xcb5
	.byte	0x4
	.uleb128 0x8
	.ascii	"x0\000"
	.byte	0x1
	.byte	0xf
	.byte	0xa
	.4byte	0xda
	.byte	0x8
	.uleb128 0x8
	.ascii	"y0\000"
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xda
	.byte	0xa
	.uleb128 0x8
	.ascii	"x1\000"
	.byte	0x1
	.byte	0xf
	.byte	0x12
	.4byte	0xda
	.byte	0xc
	.uleb128 0x8
	.ascii	"y1\000"
	.byte	0x1
	.byte	0xf
	.byte	0x16
	.4byte	0xda
	.byte	0xe
	.uleb128 0x8
	.ascii	"x2\000"
	.byte	0x1
	.byte	0x10
	.byte	0xa
	.4byte	0xda
	.byte	0x10
	.uleb128 0x8
	.ascii	"y2\000"
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0xda
	.byte	0x12
	.uleb128 0x8
	.ascii	"x3\000"
	.byte	0x1
	.byte	0x10
	.byte	0x12
	.4byte	0xda
	.byte	0x14
	.uleb128 0x8
	.ascii	"y3\000"
	.byte	0x1
	.byte	0x10
	.byte	0x16
	.4byte	0xda
	.byte	0x16
	.uleb128 0x8
	.ascii	"u0\000"
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.4byte	0xda
	.byte	0x18
	.uleb128 0x8
	.ascii	"v0\000"
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0xda
	.byte	0x1a
	.uleb128 0x8
	.ascii	"u1\000"
	.byte	0x1
	.byte	0x11
	.byte	0x12
	.4byte	0xda
	.byte	0x1c
	.uleb128 0x8
	.ascii	"v1\000"
	.byte	0x1
	.byte	0x11
	.byte	0x16
	.4byte	0xda
	.byte	0x1e
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x1
	.byte	0x12
	.byte	0xa
	.4byte	0xda
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.4byte	0xa58
	.uleb128 0x5
	.4byte	.LASF233
	.byte	0x1
	.byte	0x13
	.byte	0x3
	.4byte	0xbf4
	.uleb128 0x12
	.byte	0xc
	.byte	0x1
	.byte	0x15
	.byte	0x8
	.4byte	0xcf7
	.uleb128 0x6
	.4byte	.LASF203
	.byte	0x1
	.byte	0x15
	.byte	0x19
	.4byte	0xcf7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF234
	.byte	0x1
	.byte	0x15
	.byte	0x23
	.4byte	0x34
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF235
	.byte	0x1
	.byte	0x15
	.byte	0x2b
	.4byte	0x34
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xcba
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0x15
	.byte	0x37
	.4byte	0xcc6
	.uleb128 0x5
	.byte	0x3
	.4byte	cmdList
	.uleb128 0xa
	.4byte	.LASF237
	.byte	0x16
	.byte	0x11
	.4byte	0xcb5
	.uleb128 0x5
	.byte	0x3
	.4byte	currentTexture
	.uleb128 0xe
	.4byte	0xd2e
	.4byte	0xd2e
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0xbe8
	.uleb128 0xa
	.4byte	.LASF238
	.byte	0x17
	.byte	0x13
	.4byte	0xd1e
	.uleb128 0x5
	.byte	0x3
	.4byte	vertexList
	.uleb128 0xa
	.4byte	.LASF239
	.byte	0x18
	.byte	0xc
	.4byte	0x34
	.uleb128 0x5
	.byte	0x3
	.4byte	projUniform
	.uleb128 0xa
	.4byte	.LASF240
	.byte	0x1a
	.byte	0xe
	.4byte	0xd66
	.uleb128 0x5
	.byte	0x3
	.4byte	font
	.uleb128 0xb
	.4byte	0xb3a
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0x1b
	.byte	0x10
	.4byte	0xa58
	.uleb128 0x5
	.byte	0x3
	.4byte	whiteTex
	.uleb128 0xa
	.4byte	.LASF242
	.byte	0x1c
	.byte	0x10
	.4byte	0xa58
	.uleb128 0x5
	.byte	0x3
	.4byte	widgetsTex
	.uleb128 0xa
	.4byte	.LASF243
	.byte	0x1d
	.byte	0x10
	.4byte	0xa58
	.uleb128 0x5
	.byte	0x3
	.4byte	iconsTex
	.uleb128 0xa
	.4byte	.LASF244
	.byte	0x1e
	.byte	0x10
	.4byte	0xa58
	.uleb128 0x5
	.byte	0x3
	.4byte	menuBackgroundTex
	.uleb128 0xa
	.4byte	.LASF245
	.byte	0x20
	.byte	0x10
	.4byte	0x76b
	.uleb128 0x5
	.byte	0x3
	.4byte	iconModelMtx
	.uleb128 0xa
	.4byte	.LASF246
	.byte	0x22
	.byte	0xc
	.4byte	0x34
	.uleb128 0x5
	.byte	0x3
	.4byte	screenWidth
	.uleb128 0xa
	.4byte	.LASF247
	.byte	0x22
	.byte	0x1d
	.4byte	0x34
	.uleb128 0x5
	.byte	0x3
	.4byte	screenHeight
	.uleb128 0xa
	.4byte	.LASF248
	.byte	0x23
	.byte	0xc
	.4byte	0x34
	.uleb128 0x5
	.byte	0x3
	.4byte	guiScale
	.uleb128 0x31
	.ascii	"rot\000"
	.byte	0x6e
	.byte	0xe
	.4byte	0x26
	.uleb128 0x5
	.byte	0x3
	.4byte	rot
	.uleb128 0xe
	.4byte	0xbbf
	.4byte	0xe14
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x23
	.byte	0
	.uleb128 0x2b
	.4byte	0xe04
	.uleb128 0x36
	.4byte	.LASF249
	.byte	0x1
	.byte	0x6f
	.byte	0x1a
	.4byte	0xe14
	.uleb128 0x14
	.4byte	.LASF250
	.byte	0x1b
	.byte	0x17
	.4byte	0xe40
	.uleb128 0x4
	.4byte	0x61c
	.uleb128 0x4
	.4byte	0x34
	.uleb128 0x4
	.4byte	0x34
	.byte	0
	.uleb128 0x19
	.4byte	.LASF253
	.byte	0x17
	.byte	0x12
	.byte	0x5
	.4byte	0x34
	.4byte	0xe6a
	.uleb128 0x4
	.4byte	0xe6a
	.uleb128 0x4
	.4byte	0x2cb
	.uleb128 0x4
	.4byte	0xaf
	.uleb128 0x4
	.4byte	0x34
	.uleb128 0x4
	.4byte	0x302
	.byte	0
	.uleb128 0xb
	.4byte	0x831
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x17
	.byte	0x11
	.4byte	0xe80
	.uleb128 0x4
	.4byte	0xe6a
	.byte	0
	.uleb128 0x4d
	.4byte	.LASF347
	.byte	0x17
	.byte	0x14
	.byte	0xe
	.4byte	0xe6a
	.uleb128 0x14
	.4byte	.LASF252
	.byte	0x2
	.byte	0x39
	.4byte	0xea2
	.uleb128 0x4
	.4byte	0x34
	.uleb128 0x4
	.4byte	0xcb5
	.byte	0
	.uleb128 0x19
	.4byte	.LASF254
	.byte	0x6
	.byte	0x18
	.byte	0xd
	.4byte	0xeb8
	.4byte	0xeb8
	.uleb128 0x4
	.4byte	0x34
	.byte	0
	.uleb128 0xb
	.4byte	0x8e9
	.uleb128 0x14
	.4byte	.LASF255
	.byte	0x1c
	.byte	0xa
	.4byte	0xed8
	.uleb128 0x4
	.4byte	0x29f
	.uleb128 0x4
	.4byte	0x4e3
	.uleb128 0x4
	.4byte	0x527
	.byte	0
	.uleb128 0x37
	.4byte	.LASF256
	.2byte	0x219
	.4byte	0xf0c
	.uleb128 0x4
	.4byte	0xf0c
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x29f
	.byte	0
	.uleb128 0xb
	.4byte	0x76b
	.uleb128 0x14
	.4byte	.LASF257
	.byte	0xe
	.byte	0x8f
	.4byte	0xf31
	.uleb128 0x4
	.4byte	0x28c
	.uleb128 0x4
	.4byte	0xbb
	.uleb128 0x4
	.4byte	0xbb
	.uleb128 0x4
	.4byte	0x2a6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF258
	.byte	0xd
	.byte	0xd2
	.byte	0x5
	.4byte	0x34
	.4byte	0xf51
	.uleb128 0x4
	.4byte	0x29a
	.uleb128 0x4
	.4byte	0x258
	.uleb128 0x4
	.4byte	0x269
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF259
	.byte	0xb
	.byte	0x37
	.byte	0x7
	.4byte	0x28c
	.4byte	0xf63
	.uleb128 0x38
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF260
	.byte	0x3
	.2byte	0x17a
	.byte	0xa
	.4byte	0x721
	.4byte	0xf7f
	.uleb128 0x4
	.4byte	0xf7f
	.uleb128 0x4
	.4byte	0x721
	.byte	0
	.uleb128 0xb
	.4byte	0x777
	.uleb128 0x14
	.4byte	.LASF261
	.byte	0xb
	.byte	0x3b
	.4byte	0xfa4
	.uleb128 0x4
	.4byte	0x14e
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x4
	.4byte	0x142
	.uleb128 0x4
	.4byte	0xfa4
	.byte	0
	.uleb128 0xb
	.4byte	0xce
	.uleb128 0x14
	.4byte	.LASF262
	.byte	0xb
	.byte	0x39
	.4byte	0xfc9
	.uleb128 0x4
	.4byte	0x14e
	.uleb128 0x4
	.4byte	0x142
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x4
	.4byte	0xfc9
	.byte	0
	.uleb128 0xb
	.4byte	0xda
	.uleb128 0x19
	.4byte	.LASF263
	.byte	0x1d
	.byte	0x9f
	.byte	0x5
	.4byte	0x34
	.4byte	0xff3
	.uleb128 0x4
	.4byte	0x2d1
	.uleb128 0x4
	.4byte	0x2d6
	.uleb128 0x4
	.4byte	0x2d6
	.uleb128 0x4
	.4byte	0x34
	.byte	0
	.uleb128 0x14
	.4byte	.LASF264
	.byte	0x2
	.byte	0x3b
	.4byte	0x1004
	.uleb128 0x4
	.4byte	0xcb5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF265
	.byte	0x1e
	.byte	0x29
	.4byte	0x1015
	.uleb128 0x4
	.4byte	0x28c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF266
	.byte	0xe
	.byte	0x5e
	.4byte	0x1026
	.uleb128 0x4
	.4byte	0x28c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF267
	.byte	0x2
	.byte	0x36
	.byte	0x5
	.4byte	0x29f
	.4byte	0x1046
	.uleb128 0x4
	.4byte	0xcb5
	.uleb128 0x4
	.4byte	0x976
	.uleb128 0x4
	.4byte	0xac0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF268
	.2byte	0x1c3
	.4byte	0x1061
	.uleb128 0x4
	.4byte	0xf0c
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x29f
	.byte	0
	.uleb128 0x37
	.4byte	.LASF269
	.2byte	0x1cb
	.4byte	0x107c
	.uleb128 0x4
	.4byte	0xf0c
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x29f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF270
	.byte	0x2
	.byte	0x37
	.4byte	0x109c
	.uleb128 0x4
	.4byte	0xcb5
	.uleb128 0x4
	.4byte	0x2cb
	.uleb128 0x4
	.4byte	0x499
	.uleb128 0x4
	.4byte	0x34
	.byte	0
	.uleb128 0x14
	.4byte	.LASF271
	.byte	0x1f
	.byte	0x6
	.4byte	0x10b2
	.uleb128 0x4
	.4byte	0xcb5
	.uleb128 0x4
	.4byte	0x29a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF272
	.byte	0x19
	.byte	0xc
	.4byte	0x10c8
	.uleb128 0x4
	.4byte	0xd66
	.uleb128 0x4
	.4byte	0x258
	.byte	0
	.uleb128 0x19
	.4byte	.LASF273
	.byte	0xe
	.byte	0x6c
	.byte	0x7
	.4byte	0x28c
	.4byte	0x10de
	.uleb128 0x4
	.4byte	0xbb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF274
	.byte	0x1e
	.byte	0xc
	.byte	0x7
	.4byte	0x28c
	.4byte	0x10f4
	.uleb128 0x4
	.4byte	0xbb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF275
	.byte	0x20
	.byte	0x21
	.byte	0x8
	.4byte	0x28c
	.4byte	0x1114
	.uleb128 0x4
	.4byte	0x28c
	.uleb128 0x4
	.4byte	0x34
	.uleb128 0x4
	.4byte	0xbb
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF283
	.byte	0xff
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1564
	.uleb128 0x1b
	.4byte	.LASF289
	.byte	0xff
	.byte	0x25
	.4byte	0x337
	.4byte	.LLST136
	.4byte	.LVUS136
	.uleb128 0x50
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x103
	.byte	0xa
	.4byte	0x76b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.ascii	"env\000"
	.2byte	0x10a
	.byte	0xe
	.4byte	0xeb8
	.4byte	.LLST137
	.4byte	.LVUS137
	.uleb128 0x1c
	.4byte	.LASF277
	.2byte	0x10f
	.byte	0xd
	.4byte	0xd2e
	.4byte	.LLST138
	.4byte	.LVUS138
	.uleb128 0x1c
	.4byte	.LASF278
	.2byte	0x111
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST139
	.4byte	.LVUS139
	.uleb128 0x1e
	.ascii	"vtx\000"
	.2byte	0x113
	.byte	0x9
	.4byte	0xbb
	.4byte	.LLST140
	.4byte	.LVUS140
	.uleb128 0x27
	.4byte	.LLRL165
	.4byte	0x1317
	.uleb128 0x1c
	.4byte	.LASF279
	.2byte	0x115
	.byte	0xa
	.4byte	0xbb
	.4byte	.LLST166
	.4byte	.LVUS166
	.uleb128 0x1c
	.4byte	.LASF227
	.2byte	0x117
	.byte	0xc
	.4byte	0xcb5
	.4byte	.LLST167
	.4byte	.LVUS167
	.uleb128 0x1c
	.4byte	.LASF280
	.2byte	0x118
	.byte	0x9
	.4byte	0x26
	.4byte	.LLST168
	.4byte	.LVUS168
	.uleb128 0x1c
	.4byte	.LASF281
	.2byte	0x118
	.byte	0x31
	.4byte	0x26
	.4byte	.LLST169
	.4byte	.LVUS169
	.uleb128 0x1c
	.4byte	.LASF282
	.2byte	0x12c
	.byte	0x10
	.4byte	0xe6a
	.4byte	.LLST170
	.4byte	.LVUS170
	.uleb128 0x27
	.4byte	.LLRL171
	.4byte	0x1287
	.uleb128 0x1e
	.ascii	"cmd\000"
	.2byte	0x11b
	.byte	0xb
	.4byte	0xcba
	.4byte	.LLST172
	.4byte	.LVUS172
	.uleb128 0x1c
	.4byte	.LASF195
	.2byte	0x11c
	.byte	0xc
	.4byte	0xda
	.4byte	.LLST173
	.4byte	.LVUS173
	.uleb128 0x1e
	.ascii	"u0\000"
	.2byte	0x11e
	.byte	0xc
	.4byte	0xda
	.4byte	.LLST174
	.4byte	.LVUS174
	.uleb128 0x1e
	.ascii	"v0\000"
	.2byte	0x11e
	.byte	0x32
	.4byte	0xda
	.4byte	.LLST175
	.4byte	.LVUS175
	.uleb128 0x1e
	.ascii	"u1\000"
	.2byte	0x11f
	.byte	0xc
	.4byte	0xda
	.4byte	.LLST176
	.4byte	.LVUS176
	.uleb128 0x1e
	.ascii	"v1\000"
	.2byte	0x11f
	.byte	0x32
	.4byte	0xda
	.4byte	.LLST177
	.4byte	.LVUS177
	.byte	0
	.uleb128 0x9
	.4byte	.LVL184
	.4byte	0xe8c
	.4byte	0x12a3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.4byte	.LVL185
	.4byte	0xe80
	.uleb128 0x9
	.4byte	.LVL187
	.4byte	0xe6f
	.4byte	0x12c0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL188
	.4byte	0xe40
	.4byte	0x12fa
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x10
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.byte	0x91
	.sleb128 -140
	.byte	0x6
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x2d
	.byte	0
	.uleb128 0xf
	.4byte	.LVL189
	.4byte	0xe25
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x2602
	.4byte	.LBI182
	.byte	.LVU634
	.4byte	.LLRL141
	.2byte	0x106
	.4byte	0x13df
	.uleb128 0x3
	.4byte	0x2624
	.4byte	.LLST142
	.4byte	.LVUS142
	.uleb128 0x3
	.4byte	0x2619
	.4byte	.LLST143
	.4byte	.LVUS143
	.uleb128 0x3
	.4byte	0x260d
	.4byte	.LLST144
	.4byte	.LVUS144
	.uleb128 0x39
	.4byte	0x2631
	.4byte	.LBI183
	.byte	.LVU636
	.4byte	.LLRL141
	.byte	0x5
	.byte	0x28
	.uleb128 0x3
	.4byte	0x263c
	.4byte	.LLST145
	.4byte	.LVUS145
	.uleb128 0x3
	.4byte	0x265f
	.4byte	.LLST146
	.4byte	.LVUS146
	.uleb128 0x3
	.4byte	0x2653
	.4byte	.LLST147
	.4byte	.LVUS147
	.uleb128 0x3
	.4byte	0x2648
	.4byte	.LLST148
	.4byte	.LVUS148
	.uleb128 0x22
	.4byte	.LLRL141
	.uleb128 0x3a
	.4byte	0x266b
	.4byte	.LLST149
	.4byte	.LVUS149
	.uleb128 0x51
	.4byte	0x2675
	.uleb128 0x52
	.4byte	0x2687
	.4byte	.LLRL150
	.byte	0x5
	.byte	0x21
	.byte	0x12
	.uleb128 0x3b
	.4byte	0x26ae
	.uleb128 0x3b
	.4byte	0x26a3
	.uleb128 0x3b
	.4byte	0x2697
	.uleb128 0x22
	.4byte	.LLRL150
	.uleb128 0x3a
	.4byte	0x26ba
	.4byte	.LLST151
	.4byte	.LVUS151
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x25ea
	.4byte	.LBI196
	.byte	.LVU676
	.4byte	.LLRL152
	.2byte	0x10b
	.4byte	0x1401
	.uleb128 0x3
	.4byte	0x25f5
	.4byte	.LLST153
	.4byte	.LVUS153
	.byte	0
	.uleb128 0x32
	.4byte	0x2599
	.4byte	.LBI203
	.byte	.LVU687
	.4byte	.LLRL154
	.2byte	0x10c
	.4byte	0x146a
	.uleb128 0x3
	.4byte	0x25d2
	.4byte	.LLST155
	.4byte	.LVUS155
	.uleb128 0x3
	.4byte	0x25c7
	.4byte	.LLST155
	.4byte	.LVUS155
	.uleb128 0x3
	.4byte	0x25bc
	.4byte	.LLST157
	.4byte	.LVUS157
	.uleb128 0x3
	.4byte	0x25b0
	.4byte	.LLST157
	.4byte	.LVUS157
	.uleb128 0x3
	.4byte	0x25a4
	.4byte	.LLST159
	.4byte	.LVUS159
	.uleb128 0x22
	.4byte	.LLRL154
	.uleb128 0x3a
	.4byte	0x25dd
	.4byte	.LLST160
	.4byte	.LVUS160
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	0x2569
	.4byte	.LBI206
	.byte	.LVU695
	.4byte	.LLRL161
	.2byte	0x10d
	.4byte	0x14a6
	.uleb128 0x3
	.4byte	0x258c
	.4byte	.LLST162
	.4byte	.LVUS162
	.uleb128 0x3
	.4byte	0x2580
	.4byte	.LLST163
	.4byte	.LVUS163
	.uleb128 0x3
	.4byte	0x2574
	.4byte	.LLST164
	.4byte	.LVUS164
	.byte	0
	.uleb128 0x9
	.4byte	.LVL150
	.4byte	0xf11
	.4byte	0x14c3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0x3
	.4byte	compareDrawCommands
	.byte	0
	.uleb128 0x9
	.4byte	.LVL151
	.4byte	0xed8
	.4byte	0x151a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0x8
	.byte	0x91
	.sleb128 -152
	.byte	0x6
	.byte	0xa8
	.uleb128 0x34
	.byte	0xa8
	.uleb128 0x26
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x43
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x44
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x45
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbf800000
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x9
	.4byte	.LVL159
	.4byte	0xebd
	.4byte	0x1537
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.uleb128 0x9
	.4byte	.LVL160
	.4byte	0xea2
	.4byte	0x154a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.4byte	.LVL192
	.4byte	0xebd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF284
	.byte	0xfa
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1593
	.uleb128 0x15
	.4byte	.LASF207
	.byte	0xfa
	.byte	0x21
	.4byte	0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x15
	.4byte	.LASF206
	.byte	0xfa
	.byte	0x2c
	.4byte	0x34
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x53
	.4byte	.LASF348
	.byte	0x1
	.byte	0xf8
	.byte	0x5
	.4byte	0x34
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.4byte	.LASF285
	.byte	0xf7
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15cb
	.uleb128 0x15
	.4byte	.LASF286
	.byte	0xf7
	.byte	0x1f
	.4byte	0x34
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF287
	.byte	0xf5
	.4byte	0x34
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ed
	.uleb128 0x18
	.4byte	.LVL145
	.4byte	0x2908
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF288
	.byte	0xf4
	.4byte	0x34
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160f
	.uleb128 0x18
	.4byte	.LVL144
	.4byte	0x2908
	.byte	0
	.uleb128 0x54
	.4byte	.LASF349
	.byte	0x1
	.byte	0xed
	.byte	0xc
	.4byte	0x34
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x166a
	.uleb128 0xd
	.ascii	"a\000"
	.byte	0xed
	.byte	0x2c
	.4byte	0x2cb
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x17
	.ascii	"b\000"
	.byte	0xed
	.byte	0x3b
	.4byte	0x2cb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x28
	.ascii	"ga\000"
	.byte	0xee
	.byte	0xa
	.4byte	0xcf7
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x28
	.ascii	"gb\000"
	.byte	0xef
	.byte	0xa
	.4byte	0xcf7
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x33
	.4byte	.LASF294
	.byte	0xd8
	.4byte	0x34
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1708
	.uleb128 0x1b
	.4byte	.LASF290
	.byte	0xd8
	.byte	0x30
	.4byte	0x258
	.4byte	.LLST130
	.4byte	.LVUS130
	.uleb128 0x1b
	.4byte	.LASF291
	.byte	0xd8
	.byte	0x3e
	.4byte	0x28e
	.4byte	.LLST131
	.4byte	.LVUS131
	.uleb128 0xa
	.4byte	.LASF292
	.byte	0xd9
	.byte	0x7
	.4byte	0x1708
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.ascii	"it\000"
	.byte	0xdc
	.byte	0x8
	.4byte	0x29a
	.4byte	.LLST132
	.4byte	.LVUS132
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0xde
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST133
	.4byte	.LVUS133
	.uleb128 0x10
	.4byte	.LASF293
	.byte	0xdf
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST134
	.4byte	.LVUS134
	.uleb128 0xf
	.4byte	.LVL132
	.4byte	0xf31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x25d
	.4byte	0x1718
	.uleb128 0xc
	.4byte	0xa8
	.byte	0xff
	.byte	0
	.uleb128 0x33
	.4byte	.LASF295
	.byte	0xcf
	.4byte	0x34
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1778
	.uleb128 0x15
	.4byte	.LASF290
	.byte	0xcf
	.byte	0x2b
	.4byte	0x258
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF291
	.byte	0xd0
	.byte	0xa
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0xd2
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST135
	.4byte	.LVUS135
	.uleb128 0xf
	.4byte	.LVL143
	.4byte	0x166a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF296
	.byte	0xa3
	.4byte	0x34
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19b3
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0xa3
	.byte	0x23
	.4byte	0x34
	.4byte	.LLST111
	.4byte	.LVUS111
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0xa3
	.byte	0x2a
	.4byte	0x34
	.4byte	.LLST112
	.4byte	.LVUS112
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0xa3
	.byte	0x31
	.4byte	0x34
	.4byte	.LLST113
	.4byte	.LVUS113
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0xa3
	.byte	0x3c
	.4byte	0xda
	.4byte	.LLST114
	.4byte	.LVUS114
	.uleb128 0x15
	.4byte	.LASF297
	.byte	0xa3
	.byte	0x47
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF298
	.byte	0xa3
	.byte	0x53
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.4byte	.LASF299
	.byte	0xa3
	.byte	0x5e
	.4byte	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.ascii	"fmt\000"
	.byte	0xa3
	.byte	0x71
	.4byte	0x258
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.ascii	"arg\000"
	.byte	0xa3
	.byte	0x7e
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.4byte	.LASF300
	.byte	0xa8
	.byte	0x7
	.4byte	0x1708
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x10
	.4byte	.LASF301
	.byte	0xab
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST115
	.4byte	.LVUS115
	.uleb128 0x10
	.4byte	.LASF302
	.byte	0xac
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST116
	.4byte	.LVUS116
	.uleb128 0x10
	.4byte	.LASF303
	.byte	0xae
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x10
	.4byte	.LASF290
	.byte	0xb0
	.byte	0x8
	.4byte	0x29a
	.4byte	.LLST118
	.4byte	.LVUS118
	.uleb128 0x27
	.4byte	.LLRL121
	.4byte	0x1971
	.uleb128 0x3e
	.4byte	.LASF317
	.byte	0x1
	.byte	0xb3
	.byte	0x7
	.4byte	0x29f
	.uleb128 0x22
	.4byte	.LLRL122
	.uleb128 0x10
	.4byte	.LASF304
	.byte	0xbd
	.byte	0x9
	.4byte	0x34
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x10
	.4byte	.LASF305
	.byte	0xbd
	.byte	0x20
	.4byte	0x34
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x9
	.4byte	.LVL117
	.4byte	0x1da9
	.4byte	0x1914
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -324
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -336
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -308
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x5
	.byte	0x91
	.sleb128 -332
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LVL126
	.4byte	0x1da9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 -324
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0x91
	.sleb128 -320
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -316
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -312
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -308
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x3
	.byte	0xa
	.2byte	0x294a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x220e
	.4byte	.LBI150
	.byte	.LVU402
	.4byte	.LLRL119
	.byte	0xa4
	.byte	0x2
	.4byte	0x1993
	.uleb128 0x3
	.4byte	0x2218
	.4byte	.LLST120
	.4byte	.LVUS120
	.byte	0
	.uleb128 0xf
	.4byte	.LVL99
	.4byte	0xf31
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF306
	.byte	0x9b
	.4byte	0x34
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ab3
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x9b
	.byte	0x1e
	.4byte	0x34
	.4byte	.LLST125
	.4byte	.LVUS125
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x9b
	.byte	0x25
	.4byte	0x34
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x9b
	.byte	0x2c
	.4byte	0x34
	.4byte	.LLST127
	.4byte	.LVUS127
	.uleb128 0x1b
	.4byte	.LASF195
	.byte	0x9b
	.byte	0x37
	.4byte	0xda
	.4byte	.LLST128
	.4byte	.LVUS128
	.uleb128 0x15
	.4byte	.LASF297
	.byte	0x9b
	.byte	0x42
	.4byte	0x29f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF298
	.byte	0x9b
	.byte	0x4e
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.4byte	.LASF299
	.byte	0x9b
	.byte	0x59
	.4byte	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.ascii	"fmt\000"
	.byte	0x9b
	.byte	0x6c
	.4byte	0x258
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.uleb128 0x31
	.ascii	"arg\000"
	.byte	0x9c
	.byte	0xa
	.4byte	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0x9e
	.byte	0x6
	.4byte	0x34
	.4byte	.LLST129
	.4byte	.LVUS129
	.uleb128 0xf
	.4byte	.LVL129
	.4byte	0x1778
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8
	.byte	0x94
	.byte	0x1
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF307
	.byte	0x70
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d99
	.uleb128 0x1b
	.4byte	.LASF308
	.byte	0x70
	.byte	0x21
	.4byte	0x14e
	.4byte	.LLST84
	.4byte	.LVUS84
	.uleb128 0x1b
	.4byte	.LASF309
	.byte	0x70
	.byte	0x30
	.4byte	0xce
	.4byte	.LLST85
	.4byte	.LVUS85
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x70
	.byte	0x3e
	.4byte	0x34
	.4byte	.LLST86
	.4byte	.LVUS86
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x70
	.byte	0x45
	.4byte	0x34
	.4byte	.LLST87
	.4byte	.LVUS87
	.uleb128 0x17
	.ascii	"z\000"
	.byte	0x70
	.byte	0x4c
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF310
	.byte	0x71
	.byte	0xe
	.4byte	0x1d99
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x27
	.4byte	.LLRL88
	.4byte	0x1d80
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x73
	.byte	0xb
	.4byte	0x34
	.4byte	.LLST89
	.4byte	.LVUS89
	.uleb128 0x22
	.4byte	.LLRL90
	.uleb128 0xa
	.4byte	.LASF311
	.byte	0x75
	.byte	0xb
	.4byte	0xb93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0x7b
	.byte	0xb
	.4byte	0xba3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x10
	.4byte	.LASF312
	.byte	0x87
	.byte	0xf
	.4byte	0xbb3
	.4byte	.LLST91
	.4byte	.LVUS91
	.uleb128 0x10
	.4byte	.LASF313
	.byte	0x88
	.byte	0xf
	.4byte	0xbb3
	.4byte	.LLST92
	.4byte	.LVUS92
	.uleb128 0x10
	.4byte	.LASF314
	.byte	0x89
	.byte	0xf
	.4byte	0xbb3
	.4byte	.LLST93
	.4byte	.LVUS93
	.uleb128 0x10
	.4byte	.LASF315
	.byte	0x8a
	.byte	0xf
	.4byte	0xbb3
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x10
	.4byte	.LASF227
	.byte	0x8c
	.byte	0xc
	.4byte	0xcb5
	.4byte	.LLST95
	.4byte	.LVUS95
	.uleb128 0x10
	.4byte	.LASF316
	.byte	0x8e
	.byte	0xb
	.4byte	0xda
	.4byte	.LLST96
	.4byte	.LVUS96
	.uleb128 0x27
	.4byte	.LLRL97
	.4byte	0x1cfc
	.uleb128 0x28
	.ascii	"j\000"
	.byte	0x7e
	.byte	0xc
	.4byte	0x34
	.4byte	.LLST98
	.4byte	.LVUS98
	.uleb128 0x22
	.4byte	.LLRL99
	.uleb128 0x34
	.ascii	"k\000"
	.byte	0x1
	.byte	0x7f
	.byte	0x8
	.4byte	0x34
	.uleb128 0x31
	.ascii	"p\000"
	.byte	0x80
	.byte	0xd
	.4byte	0x721
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x31
	.ascii	"v\000"
	.byte	0x82
	.byte	0xd
	.4byte	0x721
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x35
	.4byte	0x2735
	.4byte	.LBI105
	.byte	.LVU279
	.4byte	.LBB105
	.4byte	.LBE105-.LBB105
	.byte	0x81
	.byte	0x8
	.4byte	0x1ca6
	.uleb128 0x3
	.4byte	0x2759
	.4byte	.LLST100
	.4byte	.LVUS100
	.uleb128 0x3
	.4byte	0x274f
	.4byte	.LLST101
	.4byte	.LVUS101
	.uleb128 0x3
	.4byte	0x2745
	.4byte	.LLST102
	.4byte	.LVUS102
	.uleb128 0x55
	.4byte	0x2764
	.4byte	.LBI106
	.byte	.LVU281
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x3
	.byte	0x9e
	.byte	0x9
	.uleb128 0x3
	.4byte	0x2792
	.4byte	.LLST103
	.4byte	.LVUS103
	.uleb128 0x3
	.4byte	0x2788
	.4byte	.LLST104
	.4byte	.LVUS104
	.uleb128 0x3
	.4byte	0x277e
	.4byte	.LLST105
	.4byte	.LVUS105
	.uleb128 0x3
	.4byte	0x2774
	.4byte	.LLST106
	.4byte	.LVUS106
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x279d
	.4byte	.LBI107
	.byte	.LVU310
	.4byte	.LLRL107
	.byte	0x83
	.byte	0x19
	.4byte	0x1cc8
	.uleb128 0x3
	.4byte	0x27ad
	.4byte	.LLST108
	.4byte	.LVUS108
	.byte	0
	.uleb128 0x23
	.4byte	0x279d
	.4byte	.LBI116
	.byte	.LVU314
	.4byte	.LLRL109
	.byte	0x84
	.byte	0x1a
	.4byte	0x1cea
	.uleb128 0x3
	.4byte	0x27ad
	.4byte	.LLST110
	.4byte	.LVUS110
	.byte	0
	.uleb128 0xf
	.4byte	.LVL73
	.4byte	0xf63
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL68
	.4byte	0xfa9
	.4byte	0x1d24
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x53
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
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.byte	0
	.uleb128 0x9
	.4byte	.LVL69
	.4byte	0xf84
	.4byte	0x1d4c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x53
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.byte	0
	.uleb128 0x18
	.4byte	.LVL82
	.4byte	0xf51
	.uleb128 0xf
	.4byte	.LVL88
	.4byte	0xfce
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x54
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL66
	.4byte	0x2911
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x240
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xbb3
	.4byte	0x1da9
	.uleb128 0xc
	.4byte	0xa8
	.byte	0x23
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF318
	.byte	0x69
	.4byte	0x1e1e
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x1
	.byte	0x69
	.byte	0x24
	.4byte	0x34
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x1
	.byte	0x69
	.byte	0x2b
	.4byte	0x34
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x1
	.byte	0x69
	.byte	0x32
	.4byte	0x34
	.uleb128 0x7
	.ascii	"w\000"
	.byte	0x1
	.byte	0x69
	.byte	0x39
	.4byte	0x34
	.uleb128 0x7
	.ascii	"h\000"
	.byte	0x1
	.byte	0x69
	.byte	0x40
	.4byte	0x34
	.uleb128 0x7
	.ascii	"rx\000"
	.byte	0x1
	.byte	0x69
	.byte	0x47
	.4byte	0x34
	.uleb128 0x7
	.ascii	"ry\000"
	.byte	0x1
	.byte	0x69
	.byte	0x4f
	.4byte	0x34
	.uleb128 0x7
	.ascii	"rw\000"
	.byte	0x1
	.byte	0x69
	.byte	0x57
	.4byte	0x34
	.uleb128 0x7
	.ascii	"rh\000"
	.byte	0x1
	.byte	0x69
	.byte	0x5f
	.4byte	0x34
	.uleb128 0x16
	.4byte	.LASF195
	.byte	0x1
	.byte	0x69
	.byte	0x6b
	.4byte	0xda
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF319
	.byte	0x66
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2007
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x66
	.byte	0x1f
	.4byte	0x34
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x66
	.byte	0x26
	.4byte	0x34
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x66
	.byte	0x2d
	.4byte	0x34
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0xd
	.ascii	"w\000"
	.byte	0x66
	.byte	0x34
	.4byte	0x34
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x17
	.ascii	"h\000"
	.byte	0x66
	.byte	0x3b
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii	"rx\000"
	.byte	0x66
	.byte	0x42
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.ascii	"ry\000"
	.byte	0x66
	.byte	0x4a
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.ascii	"rw\000"
	.byte	0x66
	.byte	0x52
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.ascii	"rh\000"
	.byte	0x66
	.byte	0x5a
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x39
	.4byte	0x1da9
	.4byte	.LBI90
	.byte	.LVU161
	.4byte	.LLRL49
	.byte	0x1
	.byte	0x67
	.uleb128 0x3
	.4byte	0x1e11
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x3
	.4byte	0x1e06
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x3
	.4byte	0x1dfb
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x3
	.4byte	0x1df0
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x3
	.4byte	0x1de5
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x3
	.4byte	0x1ddb
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x3
	.4byte	0x1dd1
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x3
	.4byte	0x1dc7
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x3
	.4byte	0x1dbd
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x3
	.4byte	0x1db3
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x35
	.4byte	0x1da9
	.4byte	.LBI92
	.byte	.LVU165
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x69
	.byte	0x6
	.4byte	0x1fe3
	.uleb128 0x3
	.4byte	0x1e11
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x3
	.4byte	0x1e06
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x3
	.4byte	0x1dfb
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x3
	.4byte	0x1df0
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x3
	.4byte	0x1de5
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x3
	.4byte	0x1ddb
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x3
	.4byte	0x1dd1
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x3
	.4byte	0x1dc7
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x3
	.4byte	0x1dbd
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x3
	.4byte	0x1db3
	.4byte	.LLST69
	.4byte	.LVUS69
	.byte	0
	.uleb128 0xf
	.4byte	.LVL47
	.4byte	0xfce
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF320
	.byte	0x62
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21ec
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x62
	.byte	0x2a
	.4byte	0x34
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x62
	.byte	0x31
	.4byte	0x34
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x62
	.byte	0x38
	.4byte	0x34
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xd
	.ascii	"w\000"
	.byte	0x62
	.byte	0x3f
	.4byte	0x34
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x17
	.ascii	"h\000"
	.byte	0x62
	.byte	0x46
	.4byte	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF195
	.byte	0x62
	.byte	0x51
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.4byte	0x220e
	.4byte	.LBI74
	.byte	.LVU114
	.4byte	.LLRL22
	.byte	0x63
	.byte	0x2
	.4byte	0x209b
	.uleb128 0x3
	.4byte	0x2218
	.4byte	.LLST23
	.4byte	.LVUS23
	.byte	0
	.uleb128 0x39
	.4byte	0x1da9
	.4byte	.LBI80
	.byte	.LVU129
	.4byte	.LLRL24
	.byte	0x1
	.byte	0x64
	.uleb128 0x3
	.4byte	0x1e11
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x3
	.4byte	0x1e06
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x3
	.4byte	0x1dfb
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x3
	.4byte	0x1df0
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x3
	.4byte	0x1de5
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x3
	.4byte	0x1ddb
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x3
	.4byte	0x1dd1
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x3
	.4byte	0x1dc7
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x3
	.4byte	0x1dbd
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x3
	.4byte	0x1db3
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x35
	.4byte	0x1da9
	.4byte	.LBI82
	.byte	.LVU133
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x69
	.byte	0x6
	.4byte	0x21c8
	.uleb128 0x3
	.4byte	0x1e11
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x3
	.4byte	0x1e06
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x3
	.4byte	0x1dfb
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x3
	.4byte	0x1df0
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x3
	.4byte	0x1de5
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x3
	.4byte	0x1ddb
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x3
	.4byte	0x1dd1
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x3
	.4byte	0x1dc7
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x3
	.4byte	0x1dbd
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x3
	.4byte	0x1db3
	.4byte	.LLST44
	.4byte	.LVUS44
	.byte	0
	.uleb128 0xf
	.4byte	.LVL36
	.4byte	0xfce
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF321
	.byte	0x4c
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x220e
	.uleb128 0x15
	.4byte	.LASF227
	.byte	0x4c
	.byte	0x2c
	.4byte	0xaf8
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF322
	.byte	0x4b
	.4byte	0x2225
	.uleb128 0x16
	.4byte	.LASF227
	.byte	0x1
	.byte	0x4b
	.byte	0x27
	.4byte	0xcb5
	.byte	0
	.uleb128 0x56
	.4byte	.LASF350
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a4
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0x1015
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x1004
	.uleb128 0x18
	.4byte	.LVL21
	.4byte	0x1004
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0xff3
	.uleb128 0x18
	.4byte	.LVL23
	.4byte	0x1015
	.uleb128 0x9
	.4byte	.LVL24
	.4byte	0xff3
	.4byte	0x227c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 52
	.byte	0
	.uleb128 0x9
	.4byte	.LVL25
	.4byte	0xff3
	.4byte	0x2290
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.byte	0
	.uleb128 0x57
	.4byte	.LVL26
	.4byte	0xff3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+76
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF323
	.byte	0x25
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2528
	.uleb128 0x1b
	.4byte	.LASF324
	.byte	0x25
	.byte	0x1b
	.4byte	0x34
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0x31
	.byte	0xa
	.4byte	0xb2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x23
	.4byte	0x2528
	.4byte	.LBI51
	.byte	.LVU39
	.4byte	.LLRL4
	.byte	0x33
	.byte	0x2
	.4byte	0x2339
	.uleb128 0x3
	.4byte	0x2538
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x3
	.4byte	0x2544
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3
	.4byte	0x2550
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x3
	.4byte	0x255c
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x1026
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x26c5
	.4byte	.LBI55
	.byte	.LVU49
	.4byte	.LLRL9
	.byte	0x3a
	.byte	0x2
	.4byte	0x23e7
	.uleb128 0x3
	.4byte	0x26d0
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x40
	.4byte	0x26dd
	.4byte	.LBI56
	.byte	.LVU51
	.4byte	.LLRL9
	.2byte	0x141
	.uleb128 0x3
	.4byte	0x2712
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x3
	.4byte	0x2708
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x3
	.4byte	0x26fe
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x3
	.4byte	0x26f4
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x3
	.4byte	0x26e8
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x40
	.4byte	0x271d
	.4byte	.LBI58
	.byte	.LVU53
	.4byte	.LLRL16
	.2byte	0x134
	.uleb128 0x3
	.4byte	0x2728
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xf
	.4byte	.LVL14
	.4byte	0x291a
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
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL4
	.4byte	0x10de
	.4byte	0x23fc
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc00
	.byte	0
	.uleb128 0x9
	.4byte	.LVL5
	.4byte	0x10de
	.4byte	0x2411
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x4e
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.4byte	.LVL6
	.4byte	0x10c8
	.4byte	0x2426
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x118
	.byte	0
	.uleb128 0x9
	.4byte	.LVL7
	.4byte	0x10b2
	.4byte	0x243d
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL8
	.4byte	0x109c
	.4byte	0x245a
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x9
	.4byte	.LVL9
	.4byte	0x10f4
	.4byte	0x247c
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x9
	.4byte	.LVL11
	.4byte	0x107c
	.4byte	0x24a3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL12
	.4byte	0x109c
	.4byte	0x24c1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x9
	.4byte	.LVL13
	.4byte	0x109c
	.4byte	0x24df
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 100
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x9
	.4byte	.LVL16
	.4byte	0x1061
	.4byte	0x2505
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3f490fdb
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL17
	.4byte	0x1046
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3f060a92
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF331
	.byte	0x2
	.byte	0x5e
	.byte	0x13
	.4byte	0x29f
	.4byte	0x2569
	.uleb128 0x7
	.ascii	"tex\000"
	.byte	0x2
	.byte	0x5e
	.byte	0x28
	.4byte	0xcb5
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x2
	.byte	0x5e
	.byte	0x31
	.4byte	0x2ec
	.uleb128 0x16
	.4byte	.LASF206
	.byte	0x2
	.byte	0x5e
	.byte	0x3c
	.4byte	0x2ec
	.uleb128 0x16
	.4byte	.LASF216
	.byte	0x2
	.byte	0x5e
	.byte	0x51
	.4byte	0x455
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF326
	.byte	0x6
	.byte	0x4d
	.4byte	0x2599
	.uleb128 0x7
	.ascii	"env\000"
	.byte	0x6
	.byte	0x4d
	.byte	0x2f
	.4byte	0xeb8
	.uleb128 0x16
	.4byte	.LASF325
	.byte	0x6
	.byte	0x4d
	.byte	0x43
	.4byte	0x915
	.uleb128 0x16
	.4byte	.LASF213
	.byte	0x6
	.byte	0x4d
	.byte	0x59
	.4byte	0x5ca
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF327
	.byte	0x6
	.byte	0x31
	.4byte	0x25ea
	.uleb128 0x7
	.ascii	"env\000"
	.byte	0x6
	.byte	0x31
	.byte	0x2e
	.4byte	0xeb8
	.uleb128 0x16
	.4byte	.LASF325
	.byte	0x6
	.byte	0x31
	.byte	0x42
	.4byte	0x915
	.uleb128 0x7
	.ascii	"s1\000"
	.byte	0x6
	.byte	0x32
	.byte	0xd
	.4byte	0x57c
	.uleb128 0x7
	.ascii	"s2\000"
	.byte	0x6
	.byte	0x33
	.byte	0xd
	.4byte	0x57c
	.uleb128 0x7
	.ascii	"s3\000"
	.byte	0x6
	.byte	0x34
	.byte	0xd
	.4byte	0x57c
	.uleb128 0x3e
	.4byte	.LASF213
	.byte	0x6
	.byte	0x36
	.byte	0x6
	.4byte	0x34
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF328
	.byte	0x6
	.byte	0x1f
	.4byte	0x2602
	.uleb128 0x7
	.ascii	"env\000"
	.byte	0x6
	.byte	0x1f
	.byte	0x2f
	.4byte	0xeb8
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF329
	.byte	0x5
	.byte	0x26
	.4byte	0x2631
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x5
	.byte	0x26
	.byte	0x35
	.4byte	0x640
	.uleb128 0x7
	.ascii	"id\000"
	.byte	0x5
	.byte	0x26
	.byte	0x3f
	.4byte	0x34
	.uleb128 0x7
	.ascii	"mtx\000"
	.byte	0x5
	.byte	0x26
	.byte	0x52
	.4byte	0xf7f
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF330
	.byte	0x5
	.byte	0x1e
	.4byte	0x2682
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x5
	.byte	0x1e
	.byte	0x35
	.4byte	0x640
	.uleb128 0x7
	.ascii	"id\000"
	.byte	0x5
	.byte	0x1e
	.byte	0x3f
	.4byte	0x34
	.uleb128 0x7
	.ascii	"mtx\000"
	.byte	0x5
	.byte	0x1e
	.byte	0x52
	.4byte	0xf7f
	.uleb128 0x7
	.ascii	"num\000"
	.byte	0x5
	.byte	0x1e
	.byte	0x5b
	.4byte	0x34
	.uleb128 0x34
	.ascii	"i\000"
	.byte	0x5
	.byte	0x20
	.byte	0x6
	.4byte	0x34
	.uleb128 0x34
	.ascii	"ptr\000"
	.byte	0x5
	.byte	0x21
	.byte	0xc
	.4byte	0x2682
	.byte	0
	.uleb128 0xb
	.4byte	0x721
	.uleb128 0x29
	.4byte	.LASF332
	.byte	0x5
	.byte	0xf
	.byte	0x19
	.4byte	0x2682
	.4byte	0x26c5
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0x5
	.byte	0xf
	.byte	0x3c
	.4byte	0x640
	.uleb128 0x7
	.ascii	"id\000"
	.byte	0x5
	.byte	0xf
	.byte	0x46
	.4byte	0x34
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0x5
	.byte	0xf
	.byte	0x4e
	.4byte	0x34
	.uleb128 0x34
	.ascii	"i\000"
	.byte	0x5
	.byte	0x11
	.byte	0x6
	.4byte	0x34
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF333
	.2byte	0x13f
	.4byte	0x26dd
	.uleb128 0x1f
	.ascii	"out\000"
	.2byte	0x13f
	.byte	0x2a
	.4byte	0xf0c
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF334
	.2byte	0x132
	.4byte	0x271d
	.uleb128 0x1f
	.ascii	"out\000"
	.2byte	0x132
	.byte	0x2a
	.4byte	0xf0c
	.uleb128 0x1f
	.ascii	"x\000"
	.2byte	0x132
	.byte	0x35
	.4byte	0x26
	.uleb128 0x1f
	.ascii	"y\000"
	.2byte	0x132
	.byte	0x3e
	.4byte	0x26
	.uleb128 0x1f
	.ascii	"z\000"
	.2byte	0x132
	.byte	0x47
	.4byte	0x26
	.uleb128 0x1f
	.ascii	"w\000"
	.2byte	0x132
	.byte	0x50
	.4byte	0x26
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF335
	.2byte	0x11b
	.4byte	0x2735
	.uleb128 0x1f
	.ascii	"out\000"
	.2byte	0x11b
	.byte	0x27
	.4byte	0xf0c
	.byte	0
	.uleb128 0x29
	.4byte	.LASF336
	.byte	0x3
	.byte	0x9c
	.byte	0x18
	.4byte	0x721
	.4byte	0x2764
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x3
	.byte	0x9c
	.byte	0x28
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x3
	.byte	0x9c
	.byte	0x31
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x3
	.byte	0x9c
	.byte	0x3a
	.4byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LASF337
	.byte	0x3
	.byte	0x30
	.byte	0x18
	.4byte	0x721
	.4byte	0x279d
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x3
	.byte	0x30
	.byte	0x28
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x3
	.byte	0x30
	.byte	0x31
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x3
	.byte	0x30
	.byte	0x3a
	.4byte	0x26
	.uleb128 0x7
	.ascii	"w\000"
	.byte	0x3
	.byte	0x30
	.byte	0x43
	.4byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LASF338
	.byte	0x4
	.byte	0x19
	.byte	0x13
	.4byte	0x34
	.4byte	0x27b8
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x4
	.byte	0x19
	.byte	0x23
	.4byte	0x26
	.byte	0
	.uleb128 0x41
	.4byte	0x220e
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27d3
	.uleb128 0x20
	.4byte	0x2218
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x41
	.4byte	0x1da9
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2908
	.uleb128 0x3
	.4byte	0x1db3
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x3
	.4byte	0x1dbd
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x3
	.4byte	0x1dc7
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0x3
	.4byte	0x1dd1
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x20
	.4byte	0x1ddb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.4byte	0x1de5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.4byte	0x1df0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.4byte	0x1dfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.4byte	0x1e06
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.4byte	0x1e11
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x35
	.4byte	0x1da9
	.4byte	.LBI99
	.byte	.LVU204
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.byte	0x69
	.byte	0x6
	.4byte	0x28e5
	.uleb128 0x3
	.4byte	0x1e11
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x3
	.4byte	0x1e06
	.4byte	.LLST75
	.4byte	.LVUS75
	.uleb128 0x3
	.4byte	0x1dfb
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x3
	.4byte	0x1df0
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x3
	.4byte	0x1de5
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x3
	.4byte	0x1ddb
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x3
	.4byte	0x1dd1
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x3
	.4byte	0x1dc7
	.4byte	.LLST81
	.4byte	.LVUS81
	.uleb128 0x3
	.4byte	0x1dbd
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x3
	.4byte	0x1db3
	.4byte	.LLST83
	.4byte	.LVUS83
	.byte	0
	.uleb128 0xf
	.4byte	.LVL58
	.4byte	0xfce
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x58
	.4byte	.LASF351
	.4byte	.LASF351
	.uleb128 0x42
	.4byte	.LASF339
	.4byte	.LASF340
	.uleb128 0x42
	.4byte	.LASF275
	.4byte	.LASF341
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x17
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.sleb128 5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x42
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
	.sleb128 33
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x50
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x53
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
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x55
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
.LVUS136:
	.uleb128 0
	.uleb128 .LVU626
	.uleb128 .LVU626
	.uleb128 0
.LLST136:
	.byte	0x6
	.4byte	.LVL148
	.byte	0x4
	.uleb128 .LVL148-.LVL148
	.uleb128 .LVL149-.LVL148
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL149-.LVL148
	.uleb128 .LFE224-.LVL148
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS137:
	.uleb128 .LVU674
	.uleb128 .LVU716
.LLST137:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL163-.LVL161
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS138:
	.uleb128 .LVU707
	.uleb128 .LVU716
	.uleb128 .LVU716
	.uleb128 0
.LLST138:
	.byte	0x6
	.4byte	.LVL162
	.byte	0x4
	.uleb128 .LVL162-.LVL162
	.uleb128 .LVL163-.LVL162
	.uleb128 0x2
	.byte	0x74
	.sleb128 12
	.byte	0x4
	.uleb128 .LVL163-.LVL162
	.uleb128 .LFE224-.LVL162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
.LVUS139:
	.uleb128 .LVU708
	.uleb128 .LVU710
.LLST139:
	.byte	0x8
	.4byte	.LVL162
	.uleb128 .LVL162-.LVL162
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS140:
	.uleb128 .LVU709
	.uleb128 .LVU716
	.uleb128 .LVU736
	.uleb128 .LVU778
	.uleb128 .LVU799
	.uleb128 .LVU802
	.uleb128 .LVU803
	.uleb128 .LVU827
.LLST140:
	.byte	0x6
	.4byte	.LVL162
	.byte	0x4
	.uleb128 .LVL162-.LVL162
	.uleb128 .LVL163-.LVL162
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL168-.LVL162
	.uleb128 .LVL178-.LVL162
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL181-.LVL162
	.uleb128 .LVL183-.LVL162
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL183-.LVL162
	.uleb128 .LVL191-.LVL162
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS166:
	.uleb128 .LVU826
	.uleb128 .LVU827
.LLST166:
	.byte	0x8
	.4byte	.LVL190
	.uleb128 .LVL191-.LVL190
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS167:
	.uleb128 .LVU723
	.uleb128 .LVU725
	.uleb128 .LVU725
	.uleb128 .LVU736
	.uleb128 .LVU736
	.uleb128 .LVU827
.LLST167:
	.byte	0x6
	.4byte	.LVL164
	.byte	0x4
	.uleb128 .LVL164-.LVL164
	.uleb128 .LVL165-.LVL164
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL165-.LVL164
	.uleb128 .LVL168-.LVL164
	.uleb128 0x2
	.byte	0x72
	.sleb128 -32
	.byte	0x4
	.uleb128 .LVL168-.LVL164
	.uleb128 .LVL191-.LVL164
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
.LVUS168:
	.uleb128 .LVU733
	.uleb128 .LVU812
.LLST168:
	.byte	0x8
	.4byte	.LVL166
	.uleb128 .LVL184-1-.LVL166
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4a
	.byte	0
.LVUS169:
	.uleb128 .LVU734
	.uleb128 .LVU812
.LLST169:
	.byte	0x8
	.4byte	.LVL167
	.uleb128 .LVL184-1-.LVL167
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4b
	.byte	0
.LVUS170:
	.uleb128 .LVU814
	.uleb128 .LVU815
	.uleb128 .LVU815
	.uleb128 .LVU827
.LLST170:
	.byte	0x6
	.4byte	.LVL186
	.byte	0x4
	.uleb128 .LVL186-.LVL186
	.uleb128 .LVL187-1-.LVL186
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL187-1-.LVL186
	.uleb128 .LVL191-.LVL186
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS172:
	.uleb128 .LVU753
	.uleb128 .LVU754
	.uleb128 .LVU754
	.uleb128 .LVU755
	.uleb128 .LVU755
	.uleb128 .LVU760
	.uleb128 .LVU760
	.uleb128 .LVU762
	.uleb128 .LVU762
	.uleb128 .LVU771
	.uleb128 .LVU771
	.uleb128 .LVU800
.LLST172:
	.byte	0x6
	.4byte	.LVL169
	.byte	0x4
	.uleb128 .LVL169-.LVL169
	.uleb128 .LVL170-.LVL169
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x1a
	.byte	0x4
	.uleb128 .LVL170-.LVL169
	.uleb128 .LVL171-.LVL169
	.uleb128 0xe
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -24
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x16
	.byte	0x4
	.uleb128 .LVL171-.LVL169
	.uleb128 .LVL172-.LVL169
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -24
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -22
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -18
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -12
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -10
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -8
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 -6
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL172-.LVL169
	.uleb128 .LVL173-.LVL169
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.byte	0x5c
	.byte	0x93
	.uleb128 0x2
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -152
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL173-.LVL169
	.uleb128 .LVL176-.LVL169
	.uleb128 0x1f
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -152
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL176-.LVL169
	.uleb128 .LVL182-.LVL169
	.uleb128 0x1c
	.byte	0x93
	.uleb128 0x8
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x57
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -152
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -148
	.byte	0x93
	.uleb128 0x2
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0
.LVUS173:
	.uleb128 .LVU756
	.uleb128 .LVU802
.LLST173:
	.byte	0x8
	.4byte	.LVL171
	.uleb128 .LVL183-.LVL171
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS174:
	.uleb128 .LVU764
	.uleb128 .LVU802
.LLST174:
	.byte	0x8
	.4byte	.LVL174
	.uleb128 .LVL183-.LVL174
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS175:
	.uleb128 .LVU769
	.uleb128 .LVU787
	.uleb128 .LVU787
	.uleb128 .LVU791
	.uleb128 .LVU791
	.uleb128 .LVU802
.LLST175:
	.byte	0x6
	.4byte	.LVL175
	.byte	0x4
	.uleb128 .LVL175-.LVL175
	.uleb128 .LVL179-.LVL175
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL179-.LVL175
	.uleb128 .LVL180-.LVL175
	.uleb128 0x2
	.byte	0x73
	.sleb128 20
	.byte	0x4
	.uleb128 .LVL180-.LVL175
	.uleb128 .LVL183-.LVL175
	.uleb128 0x2
	.byte	0x73
	.sleb128 -52
	.byte	0
.LVUS176:
	.uleb128 .LVU776
	.uleb128 .LVU802
.LLST176:
	.byte	0x8
	.4byte	.LVL177
	.uleb128 .LVL183-.LVL177
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS177:
	.uleb128 .LVU777
	.uleb128 .LVU802
.LLST177:
	.byte	0x8
	.4byte	.LVL178
	.uleb128 .LVL183-.LVL178
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS142:
	.uleb128 .LVU634
	.uleb128 .LVU662
.LLST142:
	.byte	0x8
	.4byte	.LVL152
	.uleb128 .LVL158-.LVL152
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0
.LVUS143:
	.uleb128 .LVU634
	.uleb128 .LVU661
	.uleb128 .LVU661
	.uleb128 .LVU662
.LLST143:
	.byte	0x6
	.4byte	.LVL152
	.byte	0x4
	.uleb128 .LVL152-.LVL152
	.uleb128 .LVL157-.LVL152
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL157-.LVL152
	.uleb128 .LVL158-.LVL152
	.uleb128 0x5
	.byte	0x3
	.4byte	projUniform
	.byte	0
.LVUS144:
	.uleb128 .LVU634
	.uleb128 .LVU662
.LLST144:
	.byte	0x8
	.4byte	.LVL152
	.uleb128 .LVL158-.LVL152
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS145:
	.uleb128 .LVU637
	.uleb128 .LVU662
.LLST145:
	.byte	0x8
	.4byte	.LVL152
	.uleb128 .LVL158-.LVL152
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS146:
	.uleb128 .LVU637
	.uleb128 .LVU662
.LLST146:
	.byte	0x8
	.4byte	.LVL152
	.uleb128 .LVL158-.LVL152
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS147:
	.uleb128 .LVU636
	.uleb128 .LVU662
.LLST147:
	.byte	0x8
	.4byte	.LVL152
	.uleb128 .LVL158-.LVL152
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.byte	0
.LVUS148:
	.uleb128 .LVU636
	.uleb128 .LVU661
	.uleb128 .LVU661
	.uleb128 .LVU662
.LLST148:
	.byte	0x6
	.4byte	.LVL152
	.byte	0x4
	.uleb128 .LVL152-.LVL152
	.uleb128 .LVL157-.LVL152
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL157-.LVL152
	.uleb128 .LVL158-.LVL152
	.uleb128 0x5
	.byte	0x3
	.4byte	projUniform
	.byte	0
.LVUS149:
	.uleb128 .LVU659
	.uleb128 .LVU662
.LLST149:
	.byte	0x8
	.4byte	.LVL156
	.uleb128 .LVL158-.LVL156
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS151:
	.uleb128 .LVU637
	.uleb128 .LVU642
	.uleb128 .LVU642
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 .LVU651
	.uleb128 .LVU651
	.uleb128 .LVU655
	.uleb128 .LVU655
	.uleb128 .LVU657
.LLST151:
	.byte	0x6
	.4byte	.LVL152
	.byte	0x4
	.uleb128 .LVL152-.LVL152
	.uleb128 .LVL153-.LVL152
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL153-.LVL152
	.uleb128 .LVL154-.LVL152
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL154-.LVL152
	.uleb128 .LVL155-.LVL152
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL155-.LVL152
	.uleb128 .LVL156-.LVL152
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL156-.LVL152
	.uleb128 .LVL156-.LVL152
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS153:
	.uleb128 .LVU676
	.uleb128 .LVU685
.LLST153:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL161-.LVL161
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS155:
	.uleb128 .LVU687
	.uleb128 .LVU693
.LLST155:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL161-.LVL161
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS157:
	.uleb128 .LVU687
	.uleb128 .LVU693
.LLST157:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL161-.LVL161
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS159:
	.uleb128 .LVU687
	.uleb128 .LVU693
.LLST159:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL161-.LVL161
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS160:
	.uleb128 .LVU689
	.uleb128 .LVU693
.LLST160:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL161-.LVL161
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS162:
	.uleb128 .LVU695
	.uleb128 .LVU705
.LLST162:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL162-.LVL161
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS163:
	.uleb128 .LVU695
	.uleb128 .LVU705
.LLST163:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL162-.LVL161
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS164:
	.uleb128 .LVU695
	.uleb128 .LVU705
.LLST164:
	.byte	0x8
	.4byte	.LVL161
	.uleb128 .LVL162-.LVL161
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
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
	.uleb128 .LFE218-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE218-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU3
	.uleb128 0
.LLST2:
	.byte	0x8
	.4byte	.LVL0
	.uleb128 .LFE218-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS130:
	.uleb128 0
	.uleb128 .LVU545
	.uleb128 .LVU545
	.uleb128 0
.LLST130:
	.byte	0x6
	.4byte	.LVL130
	.byte	0x4
	.uleb128 .LVL130-.LVL130
	.uleb128 .LVL132-1-.LVL130
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL132-1-.LVL130
	.uleb128 .LFE217-.LVL130
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS131:
	.uleb128 0
	.uleb128 .LVU544
.LLST131:
	.byte	0x8
	.4byte	.LVL130
	.uleb128 .LVL131-.LVL130
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS132:
	.uleb128 .LVU546
	.uleb128 .LVU557
	.uleb128 .LVU557
	.uleb128 .LVU575
	.uleb128 .LVU575
	.uleb128 0
.LLST132:
	.byte	0x6
	.4byte	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL133-.LVL132
	.uleb128 0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL133-.LVL132
	.uleb128 .LVL140-.LVL132
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL140-.LVL132
	.uleb128 .LFE217-.LVL132
	.uleb128 0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.byte	0
.LVUS133:
	.uleb128 .LVU547
	.uleb128 .LVU557
	.uleb128 .LVU557
	.uleb128 .LVU570
	.uleb128 .LVU570
	.uleb128 .LVU572
	.uleb128 .LVU572
	.uleb128 .LVU575
	.uleb128 .LVU575
	.uleb128 0
.LLST133:
	.byte	0x6
	.4byte	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL133-.LVL132
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL133-.LVL132
	.uleb128 .LVL137-.LVL132
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL137-.LVL132
	.uleb128 .LVL138-.LVL132
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL138-.LVL132
	.uleb128 .LVL140-.LVL132
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL140-.LVL132
	.uleb128 .LFE217-.LVL132
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS134:
	.uleb128 .LVU548
	.uleb128 .LVU557
	.uleb128 .LVU557
	.uleb128 .LVU574
	.uleb128 .LVU575
	.uleb128 .LVU577
.LLST134:
	.byte	0x6
	.4byte	.LVL132
	.byte	0x4
	.uleb128 .LVL132-.LVL132
	.uleb128 .LVL133-.LVL132
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL133-.LVL132
	.uleb128 .LVL139-.LVL132
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL140-.LVL132
	.uleb128 .LVL141-.LVL132
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS135:
	.uleb128 .LVU588
	.uleb128 0
.LLST135:
	.byte	0x8
	.4byte	.LVL143
	.uleb128 .LFE216-.LVL143
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS111:
	.uleb128 0
	.uleb128 .LVU418
	.uleb128 .LVU418
	.uleb128 0
.LLST111:
	.byte	0x6
	.4byte	.LVL94
	.byte	0x4
	.uleb128 .LVL94-.LVL94
	.uleb128 .LVL99-1-.LVL94
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL99-1-.LVL94
	.uleb128 .LFE215-.LVL94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.byte	0
.LVUS112:
	.uleb128 0
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 0
.LLST112:
	.byte	0x6
	.4byte	.LVL94
	.byte	0x4
	.uleb128 .LVL94-.LVL94
	.uleb128 .LVL98-.LVL94
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL98-.LVL94
	.uleb128 .LFE215-.LVL94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.byte	0
.LVUS113:
	.uleb128 0
	.uleb128 .LVU406
	.uleb128 .LVU406
	.uleb128 .LVU418
	.uleb128 .LVU418
	.uleb128 .LVU431
	.uleb128 .LVU431
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 0
.LLST113:
	.byte	0x6
	.4byte	.LVL94
	.byte	0x4
	.uleb128 .LVL94-.LVL94
	.uleb128 .LVL95-.LVL94
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL95-.LVL94
	.uleb128 .LVL99-1-.LVL94
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL99-1-.LVL94
	.uleb128 .LVL100-.LVL94
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL100-.LVL94
	.uleb128 .LVL127-.LVL94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x4
	.uleb128 .LVL127-.LVL94
	.uleb128 .LFE215-.LVL94
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS114:
	.uleb128 0
	.uleb128 .LVU418
	.uleb128 .LVU418
	.uleb128 0
.LLST114:
	.byte	0x6
	.4byte	.LVL94
	.byte	0x4
	.uleb128 .LVL94-.LVL94
	.uleb128 .LVL99-1-.LVL94
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL99-1-.LVL94
	.uleb128 .LFE215-.LVL94
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS115:
	.uleb128 .LVU419
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU441
	.uleb128 .LVU441
	.uleb128 .LVU445
	.uleb128 .LVU445
	.uleb128 .LVU463
	.uleb128 .LVU463
	.uleb128 .LVU468
	.uleb128 .LVU468
	.uleb128 .LVU475
	.uleb128 .LVU483
	.uleb128 .LVU511
	.uleb128 .LVU513
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 0
.LLST115:
	.byte	0x6
	.4byte	.LVL99
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL101-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL101-.LVL99
	.uleb128 .LVL103-.LVL99
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL103-.LVL99
	.uleb128 .LVL104-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL104-.LVL99
	.uleb128 .LVL107-.LVL99
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL107-.LVL99
	.uleb128 .LVL108-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL108-.LVL99
	.uleb128 .LVL111-.LVL99
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL112-.LVL99
	.uleb128 .LVL122-.LVL99
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL123-.LVL99
	.uleb128 .LVL127-.LVL99
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL127-.LVL99
	.uleb128 .LFE215-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS116:
	.uleb128 .LVU420
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU475
	.uleb128 .LVU483
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 0
.LLST116:
	.byte	0x6
	.4byte	.LVL99
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL101-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL101-.LVL99
	.uleb128 .LVL111-.LVL99
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL112-.LVL99
	.uleb128 .LVL127-.LVL99
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL127-.LVL99
	.uleb128 .LFE215-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS117:
	.uleb128 .LVU421
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU438
	.uleb128 .LVU440
	.uleb128 .LVU459
	.uleb128 .LVU462
	.uleb128 .LVU475
	.uleb128 .LVU483
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 0
.LLST117:
	.byte	0x6
	.4byte	.LVL99
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL101-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL101-.LVL99
	.uleb128 .LVL102-.LVL99
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL103-.LVL99
	.uleb128 .LVL106-.LVL99
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL107-.LVL99
	.uleb128 .LVL111-.LVL99
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL112-.LVL99
	.uleb128 .LVL127-.LVL99
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL127-.LVL99
	.uleb128 .LFE215-.LVL99
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS118:
	.uleb128 .LVU422
	.uleb128 .LVU434
	.uleb128 .LVU434
	.uleb128 .LVU445
	.uleb128 .LVU445
	.uleb128 .LVU446
	.uleb128 .LVU446
	.uleb128 .LVU450
	.uleb128 .LVU450
	.uleb128 .LVU469
	.uleb128 .LVU469
	.uleb128 .LVU472
	.uleb128 .LVU472
	.uleb128 .LVU474
	.uleb128 .LVU483
	.uleb128 .LVU508
	.uleb128 .LVU508
	.uleb128 .LVU509
	.uleb128 .LVU509
	.uleb128 .LVU514
	.uleb128 .LVU514
	.uleb128 .LVU515
	.uleb128 .LVU515
	.uleb128 .LVU516
	.uleb128 .LVU516
	.uleb128 0
.LLST118:
	.byte	0x6
	.4byte	.LVL99
	.byte	0x4
	.uleb128 .LVL99-.LVL99
	.uleb128 .LVL101-.LVL99
	.uleb128 0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL101-.LVL99
	.uleb128 .LVL104-.LVL99
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL104-.LVL99
	.uleb128 .LVL104-.LVL99
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL104-.LVL99
	.uleb128 .LVL105-.LVL99
	.uleb128 0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL105-.LVL99
	.uleb128 .LVL108-.LVL99
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL108-.LVL99
	.uleb128 .LVL109-.LVL99
	.uleb128 0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL109-.LVL99
	.uleb128 .LVL110-.LVL99
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL112-.LVL99
	.uleb128 .LVL120-.LVL99
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL120-.LVL99
	.uleb128 .LVL121-.LVL99
	.uleb128 0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL121-.LVL99
	.uleb128 .LVL124-.LVL99
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL124-.LVL99
	.uleb128 .LVL125-.LVL99
	.uleb128 0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL125-.LVL99
	.uleb128 .LVL127-.LVL99
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL127-.LVL99
	.uleb128 .LFE215-.LVL99
	.uleb128 0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.byte	0
.LVUS123:
	.uleb128 .LVU494
	.uleb128 .LVU495
	.uleb128 .LVU495
	.uleb128 .LVU503
	.uleb128 .LVU515
	.uleb128 .LVU516
.LLST123:
	.byte	0x6
	.4byte	.LVL113
	.byte	0x4
	.uleb128 .LVL113-.LVL113
	.uleb128 .LVL114-.LVL113
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL114-.LVL113
	.uleb128 .LVL118-.LVL113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0x4
	.uleb128 .LVL125-.LVL113
	.uleb128 .LVL127-.LVL113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
.LVUS124:
	.uleb128 .LVU498
	.uleb128 .LVU499
	.uleb128 .LVU499
	.uleb128 .LVU500
	.uleb128 .LVU500
	.uleb128 .LVU503
	.uleb128 .LVU515
	.uleb128 .LVU516
.LLST124:
	.byte	0x6
	.4byte	.LVL115
	.byte	0x4
	.uleb128 .LVL115-.LVL115
	.uleb128 .LVL116-.LVL115
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL116-.LVL115
	.uleb128 .LVL117-1-.LVL115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.byte	0x4
	.uleb128 .LVL117-1-.LVL115
	.uleb128 .LVL118-.LVL115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0x4
	.uleb128 .LVL125-.LVL115
	.uleb128 .LVL127-.LVL115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0
.LVUS120:
	.uleb128 .LVU402
	.uleb128 .LVU411
	.uleb128 .LVU411
	.uleb128 .LVU412
.LLST120:
	.byte	0x6
	.4byte	.LVL94
	.byte	0x4
	.uleb128 .LVL94-.LVL94
	.uleb128 .LVL96-.LVL94
	.uleb128 0xa
	.byte	0x3
	.4byte	font
	.byte	0x6
	.byte	0x23
	.uleb128 0x100
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL96-.LVL94
	.uleb128 .LVL97-.LVL94
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS125:
	.uleb128 0
	.uleb128 .LVU535
	.uleb128 .LVU535
	.uleb128 0
.LLST125:
	.byte	0x6
	.4byte	.LVL128
	.byte	0x4
	.uleb128 .LVL128-.LVL128
	.uleb128 .LVL129-1-.LVL128
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL129-1-.LVL128
	.uleb128 .LFE214-.LVL128
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS126:
	.uleb128 0
	.uleb128 .LVU535
	.uleb128 .LVU535
	.uleb128 0
.LLST126:
	.byte	0x6
	.4byte	.LVL128
	.byte	0x4
	.uleb128 .LVL128-.LVL128
	.uleb128 .LVL129-1-.LVL128
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL129-1-.LVL128
	.uleb128 .LFE214-.LVL128
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS127:
	.uleb128 0
	.uleb128 .LVU535
	.uleb128 .LVU535
	.uleb128 0
.LLST127:
	.byte	0x6
	.4byte	.LVL128
	.byte	0x4
	.uleb128 .LVL128-.LVL128
	.uleb128 .LVL129-1-.LVL128
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL129-1-.LVL128
	.uleb128 .LFE214-.LVL128
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS128:
	.uleb128 0
	.uleb128 .LVU535
	.uleb128 .LVU535
	.uleb128 0
.LLST128:
	.byte	0x6
	.4byte	.LVL128
	.byte	0x4
	.uleb128 .LVL128-.LVL128
	.uleb128 .LVL129-1-.LVL128
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL129-1-.LVL128
	.uleb128 .LFE214-.LVL128
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS129:
	.uleb128 .LVU535
	.uleb128 0
.LLST129:
	.byte	0x8
	.4byte	.LVL129
	.uleb128 .LFE214-.LVL129
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS84:
	.uleb128 0
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST84:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL66-1-.LVL63
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL66-1-.LVL63
	.uleb128 .LFE213-.LVL63
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS85:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST85:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL65-.LVL63
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL65-.LVL63
	.uleb128 .LFE213-.LVL63
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS86:
	.uleb128 0
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST86:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL64-.LVL63
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL64-.LVL63
	.uleb128 .LVL66-1-.LVL63
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL66-1-.LVL63
	.uleb128 .LFE213-.LVL63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.byte	0
.LVUS87:
	.uleb128 0
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST87:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL66-1-.LVL63
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL66-1-.LVL63
	.uleb128 .LFE213-.LVL63
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.byte	0
.LVUS89:
	.uleb128 .LVU245
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 0
.LLST89:
	.byte	0x6
	.4byte	.LVL66
	.byte	0x4
	.uleb128 .LVL66-.LVL66
	.uleb128 .LVL67-.LVL66
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.LVL66
	.uleb128 .LFE213-.LVL66
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS91:
	.uleb128 .LVU324
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU384
	.uleb128 .LVU388
	.uleb128 0
.LLST91:
	.byte	0x6
	.4byte	.LVL75
	.byte	0x4
	.uleb128 .LVL75-.LVL75
	.uleb128 .LVL76-.LVL75
	.uleb128 0x7
	.byte	0x91
	.sleb128 -716
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xe
	.byte	0x4
	.uleb128 .LVL76-.LVL75
	.uleb128 .LVL89-.LVL75
	.uleb128 0xc
	.byte	0x91
	.sleb128 -716
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -724
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL91-.LVL75
	.uleb128 .LFE213-.LVL75
	.uleb128 0xc
	.byte	0x91
	.sleb128 -716
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -724
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0
.LVUS92:
	.uleb128 .LVU327
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 .LVU384
	.uleb128 .LVU388
	.uleb128 0
.LLST92:
	.byte	0x6
	.4byte	.LVL77
	.byte	0x4
	.uleb128 .LVL77-.LVL77
	.uleb128 .LVL78-.LVL77
	.uleb128 0x7
	.byte	0x91
	.sleb128 -720
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xe
	.byte	0x4
	.uleb128 .LVL78-.LVL77
	.uleb128 .LVL89-.LVL77
	.uleb128 0xc
	.byte	0x91
	.sleb128 -720
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -712
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL91-.LVL77
	.uleb128 .LFE213-.LVL77
	.uleb128 0xc
	.byte	0x91
	.sleb128 -720
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -712
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0
.LVUS93:
	.uleb128 .LVU330
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU384
	.uleb128 .LVU388
	.uleb128 0
.LLST93:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-.LVL79
	.uleb128 0x7
	.byte	0x91
	.sleb128 -708
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xe
	.byte	0x4
	.uleb128 .LVL80-.LVL79
	.uleb128 .LVL89-.LVL79
	.uleb128 0xc
	.byte	0x91
	.sleb128 -708
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -704
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL91-.LVL79
	.uleb128 .LFE213-.LVL79
	.uleb128 0xc
	.byte	0x91
	.sleb128 -708
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -704
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0
.LVUS94:
	.uleb128 .LVU332
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU384
	.uleb128 .LVU388
	.uleb128 0
.LLST94:
	.byte	0x6
	.4byte	.LVL80
	.byte	0x4
	.uleb128 .LVL80-.LVL80
	.uleb128 .LVL81-.LVL80
	.uleb128 0x5
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xe
	.byte	0x4
	.uleb128 .LVL81-.LVL80
	.uleb128 .LVL89-.LVL80
	.uleb128 0xa
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -700
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0x4
	.uleb128 .LVL91-.LVL80
	.uleb128 .LFE213-.LVL80
	.uleb128 0xa
	.byte	0x56
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -700
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0xc
	.byte	0
.LVUS95:
	.uleb128 .LVU344
	.uleb128 .LVU363
	.uleb128 .LVU363
	.uleb128 .LVU384
	.uleb128 .LVU388
	.uleb128 0
.LLST95:
	.byte	0x6
	.4byte	.LVL83
	.byte	0x4
	.uleb128 .LVL83-.LVL83
	.uleb128 .LVL87-.LVL83
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL87-.LVL83
	.uleb128 .LVL89-.LVL83
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL91-.LVL83
	.uleb128 .LFE213-.LVL83
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS96:
	.uleb128 .LVU346
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU384
	.uleb128 .LVU388
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 .LVU399
	.uleb128 .LVU399
	.uleb128 0
.LLST96:
	.byte	0x6
	.4byte	.LVL84
	.byte	0x4
	.uleb128 .LVL84-.LVL84
	.uleb128 .LVL85-.LVL84
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL85-.LVL84
	.uleb128 .LVL86-.LVL84
	.uleb128 0x25
	.byte	0x91
	.sleb128 -687
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 -688
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3a
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -686
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL86-.LVL84
	.uleb128 .LVL89-.LVL84
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL91-.LVL84
	.uleb128 .LVL92-.LVL84
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL92-.LVL84
	.uleb128 .LVL93-.LVL84
	.uleb128 0x25
	.byte	0x91
	.sleb128 -687
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x35
	.byte	0x24
	.byte	0x91
	.sleb128 -688
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3a
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -686
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL93-.LVL84
	.uleb128 .LFE213-.LVL84
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS98:
	.uleb128 .LVU261
	.uleb128 .LVU267
.LLST98:
	.byte	0x8
	.4byte	.LVL69
	.uleb128 .LVL70-.LVL69
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS100:
	.uleb128 .LVU279
	.uleb128 .LVU285
.LLST100:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL72-.LVL71
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.byte	0
.LVUS101:
	.uleb128 .LVU279
	.uleb128 .LVU285
.LLST101:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL72-.LVL71
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.byte	0
.LVUS102:
	.uleb128 .LVU279
	.uleb128 .LVU285
.LLST102:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL72-.LVL71
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x43
	.byte	0
.LVUS103:
	.uleb128 .LVU281
	.uleb128 .LVU283
.LLST103:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL71-.LVL71
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0
.LVUS104:
	.uleb128 .LVU281
	.uleb128 .LVU283
.LLST104:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL71-.LVL71
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.byte	0
.LVUS105:
	.uleb128 .LVU281
	.uleb128 .LVU283
.LLST105:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL71-.LVL71
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.byte	0
.LVUS106:
	.uleb128 .LVU281
	.uleb128 .LVU283
.LLST106:
	.byte	0x8
	.4byte	.LVL71
	.uleb128 .LVL71-.LVL71
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x43
	.byte	0
.LVUS108:
	.uleb128 .LVU310
	.uleb128 .LVU312
.LLST108:
	.byte	0x8
	.4byte	.LVL74
	.uleb128 .LVL74-.LVL74
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4c
	.byte	0
.LVUS110:
	.uleb128 .LVU314
	.uleb128 .LVU316
.LLST110:
	.byte	0x8
	.4byte	.LVL74
	.uleb128 .LVL74-.LVL74
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 0
.LLST45:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL43-.LVL42
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL43-.LVL42
	.uleb128 .LVL50-.LVL42
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL50-.LVL42
	.uleb128 .LFE211-.LVL42
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 0
.LLST46:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL46-.LVL42
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL46-.LVL42
	.uleb128 .LVL51-.LVL42
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL51-.LVL42
	.uleb128 .LFE211-.LVL42
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 0
.LLST47:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL45-.LVL42
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL45-.LVL42
	.uleb128 .LFE211-.LVL42
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 0
.LLST48:
	.byte	0x6
	.4byte	.LVL42
	.byte	0x4
	.uleb128 .LVL42-.LVL42
	.uleb128 .LVL44-.LVL42
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL44-.LVL42
	.uleb128 .LVL49-.LVL42
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL49-.LVL42
	.uleb128 .LFE211-.LVL42
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 .LVU160
	.uleb128 .LVU180
.LLST50:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x4
	.byte	0xa
	.2byte	0x7fff
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU160
	.uleb128 .LVU180
.LLST51:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
.LVUS52:
	.uleb128 .LVU160
	.uleb128 .LVU180
.LLST52:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
.LVUS53:
	.uleb128 .LVU160
	.uleb128 .LVU180
.LLST53:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
.LVUS54:
	.uleb128 .LVU160
	.uleb128 .LVU180
.LLST54:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
.LVUS55:
	.uleb128 .LVU160
	.uleb128 .LVU180
.LLST55:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
.LVUS56:
	.uleb128 .LVU160
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU180
.LLST56:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL49-.LVL46
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL49-.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 .LVU160
	.uleb128 .LVU180
.LLST57:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS58:
	.uleb128 .LVU160
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU180
.LLST58:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL51-.LVL46
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL51-.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 .LVU160
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU180
.LLST59:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL50-.LVL46
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL50-.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 .LVU165
	.uleb128 .LVU180
.LLST60:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x4
	.byte	0xa
	.2byte	0x7fff
	.byte	0x9f
	.byte	0
.LVUS61:
	.uleb128 .LVU165
	.uleb128 .LVU180
.LLST61:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
.LVUS62:
	.uleb128 .LVU165
	.uleb128 .LVU180
.LLST62:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
.LVUS63:
	.uleb128 .LVU165
	.uleb128 .LVU180
.LLST63:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
.LVUS64:
	.uleb128 .LVU165
	.uleb128 .LVU180
.LLST64:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
.LVUS65:
	.uleb128 .LVU165
	.uleb128 .LVU180
.LLST65:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
.LVUS66:
	.uleb128 .LVU165
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU180
.LLST66:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL49-.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 .LVU165
	.uleb128 .LVU180
.LLST67:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS68:
	.uleb128 .LVU165
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU180
.LLST68:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL51-.LVL48
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL51-.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS69:
	.uleb128 .LVU165
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU180
.LLST69:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL50-.LVL48
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL50-.LVL48
	.uleb128 .LVL52-.LVL48
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL32-.LVL29
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL32-.LVL29
	.uleb128 .LVL39-.LVL29
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL39-.LVL29
	.uleb128 .LFE210-.LVL29
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL34-.LVL29
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL34-.LVL29
	.uleb128 .LVL40-.LVL29
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL40-.LVL29
	.uleb128 .LFE210-.LVL29
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL30-.LVL29
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL30-.LVL29
	.uleb128 .LFE210-.LVL29
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL33-.LVL29
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL33-.LVL29
	.uleb128 .LVL38-.LVL29
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL38-.LVL29
	.uleb128 .LFE210-.LVL29
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 .LVU114
	.uleb128 .LVU121
.LLST23:
	.byte	0x8
	.4byte	.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0x6
	.byte	0x3
	.4byte	whiteTex
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 .LVU129
	.uleb128 .LVU149
.LLST25:
	.byte	0x8
	.4byte	.LVL35
	.uleb128 .LVL41-.LVL35
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS26:
	.uleb128 .LVU127
	.uleb128 .LVU149
.LLST26:
	.byte	0x8
	.4byte	.LVL34
	.uleb128 .LVL41-.LVL34
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU127
	.uleb128 .LVU149
.LLST28:
	.byte	0x8
	.4byte	.LVL34
	.uleb128 .LVL41-.LVL34
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU127
	.uleb128 .LVU149
.LLST30:
	.byte	0x8
	.4byte	.LVL34
	.uleb128 .LVL41-.LVL34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
.LVUS31:
	.uleb128 .LVU127
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU149
.LLST31:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL38-.LVL34
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL38-.LVL34
	.uleb128 .LVL41-.LVL34
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU127
	.uleb128 .LVU149
.LLST32:
	.byte	0x8
	.4byte	.LVL34
	.uleb128 .LVL41-.LVL34
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS33:
	.uleb128 .LVU127
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU149
.LLST33:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL40-.LVL34
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL40-.LVL34
	.uleb128 .LVL41-.LVL34
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU127
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU149
.LLST34:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL39-.LVL34
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL39-.LVL34
	.uleb128 .LVL41-.LVL34
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU133
	.uleb128 .LVU149
.LLST35:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS36:
	.uleb128 .LVU133
	.uleb128 .LVU149
.LLST36:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU133
	.uleb128 .LVU149
.LLST38:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU133
	.uleb128 .LVU149
.LLST40:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
.LVUS41:
	.uleb128 .LVU133
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU149
.LLST41:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL38-.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU133
	.uleb128 .LVU149
.LLST42:
	.byte	0x8
	.4byte	.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS43:
	.uleb128 .LVU133
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU149
.LLST43:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL40-.LVL37
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL40-.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS44:
	.uleb128 .LVU133
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU149
.LLST44:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL39-.LVL37
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL39-.LVL37
	.uleb128 .LVL41-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL18-.LVL2
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL18-.LVL2
	.uleb128 .LFE206-.LVL2
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST5:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x6
	.byte	0x3
	.4byte	whiteTex
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST6:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x2
	.byte	0x40
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST8:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x2
	.byte	0x37
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU50
	.uleb128 .LVU66
.LLST10:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x6
	.byte	0x3
	.4byte	iconModelMtx
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU51
	.uleb128 .LVU66
.LLST11:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS15:
	.uleb128 .LVU51
	.uleb128 .LVU66
.LLST15:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x6
	.byte	0x3
	.4byte	iconModelMtx
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 .LVU53
	.uleb128 .LVU55
.LLST17:
	.byte	0x8
	.4byte	.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x6
	.byte	0x3
	.4byte	iconModelMtx
	.byte	0x9f
	.byte	0
.LVUS70:
	.uleb128 0
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST70:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL54-.LVL53
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL54-.LVL53
	.uleb128 .LFE212-.LVL53
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 0
.LLST71:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL57-.LVL53
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL57-.LVL53
	.uleb128 .LVL61-.LVL53
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL61-.LVL53
	.uleb128 .LFE212-.LVL53
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 0
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 0
.LLST72:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL56-.LVL53
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL56-.LVL53
	.uleb128 .LFE212-.LVL53
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS73:
	.uleb128 0
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 0
.LLST73:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL55-.LVL53
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL55-.LVL53
	.uleb128 .LVL60-.LVL53
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL60-.LVL53
	.uleb128 .LFE212-.LVL53
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS74:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST74:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS75:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST75:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
.LVUS76:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST76:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
.LVUS77:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST77:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
.LVUS78:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST78:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
.LVUS79:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST79:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
.LVUS80:
	.uleb128 .LVU204
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 .LVU230
.LLST80:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL60-.LVL59
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL60-.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS81:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST81:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS82:
	.uleb128 .LVU204
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU230
.LLST82:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL61-.LVL59
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL61-.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS83:
	.uleb128 .LVU204
	.uleb128 .LVU230
.LLST83:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL62-.LVL59
	.uleb128 0x1
	.byte	0x59
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
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
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
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
.LLRL4:
	.byte	0x5
	.4byte	.LBB51
	.byte	0x4
	.uleb128 .LBB51-.LBB51
	.uleb128 .LBE51-.LBB51
	.byte	0x4
	.uleb128 .LBB54-.LBB51
	.uleb128 .LBE54-.LBB51
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB55
	.byte	0x4
	.uleb128 .LBB55-.LBB55
	.uleb128 .LBE55-.LBB55
	.byte	0x4
	.uleb128 .LBB66-.LBB55
	.uleb128 .LBE66-.LBB55
	.byte	0x4
	.uleb128 .LBB67-.LBB55
	.uleb128 .LBE67-.LBB55
	.byte	0
.LLRL16:
	.byte	0x5
	.4byte	.LBB58
	.byte	0x4
	.uleb128 .LBB58-.LBB58
	.uleb128 .LBE58-.LBB58
	.byte	0x4
	.uleb128 .LBB61-.LBB58
	.uleb128 .LBE61-.LBB58
	.byte	0
.LLRL22:
	.byte	0x5
	.4byte	.LBB74
	.byte	0x4
	.uleb128 .LBB74-.LBB74
	.uleb128 .LBE74-.LBB74
	.byte	0x4
	.uleb128 .LBB78-.LBB74
	.uleb128 .LBE78-.LBB74
	.byte	0x4
	.uleb128 .LBB79-.LBB74
	.uleb128 .LBE79-.LBB74
	.byte	0
.LLRL24:
	.byte	0x5
	.4byte	.LBB80
	.byte	0x4
	.uleb128 .LBB80-.LBB80
	.uleb128 .LBE80-.LBB80
	.byte	0x4
	.uleb128 .LBB85-.LBB80
	.uleb128 .LBE85-.LBB80
	.byte	0
.LLRL49:
	.byte	0x5
	.4byte	.LBB90
	.byte	0x4
	.uleb128 .LBB90-.LBB90
	.uleb128 .LBE90-.LBB90
	.byte	0x4
	.uleb128 .LBB96-.LBB90
	.uleb128 .LBE96-.LBB90
	.byte	0
.LLRL88:
	.byte	0x5
	.4byte	.LBB101
	.byte	0x4
	.uleb128 .LBB101-.LBB101
	.uleb128 .LBE101-.LBB101
	.byte	0x4
	.uleb128 .LBB148-.LBB101
	.uleb128 .LBE148-.LBB101
	.byte	0x4
	.uleb128 .LBB149-.LBB101
	.uleb128 .LBE149-.LBB101
	.byte	0
.LLRL90:
	.byte	0x5
	.4byte	.LBB102
	.byte	0x4
	.uleb128 .LBB102-.LBB102
	.uleb128 .LBE102-.LBB102
	.byte	0x4
	.uleb128 .LBB145-.LBB102
	.uleb128 .LBE145-.LBB102
	.byte	0x4
	.uleb128 .LBB146-.LBB102
	.uleb128 .LBE146-.LBB102
	.byte	0x4
	.uleb128 .LBB147-.LBB102
	.uleb128 .LBE147-.LBB102
	.byte	0
.LLRL97:
	.byte	0x5
	.4byte	.LBB103
	.byte	0x4
	.uleb128 .LBB103-.LBB103
	.uleb128 .LBE103-.LBB103
	.byte	0x4
	.uleb128 .LBB142-.LBB103
	.uleb128 .LBE142-.LBB103
	.byte	0x4
	.uleb128 .LBB143-.LBB103
	.uleb128 .LBE143-.LBB103
	.byte	0x4
	.uleb128 .LBB144-.LBB103
	.uleb128 .LBE144-.LBB103
	.byte	0
.LLRL99:
	.byte	0x5
	.4byte	.LBB104
	.byte	0x4
	.uleb128 .LBB104-.LBB104
	.uleb128 .LBE104-.LBB104
	.byte	0x4
	.uleb128 .LBB137-.LBB104
	.uleb128 .LBE137-.LBB104
	.byte	0x4
	.uleb128 .LBB138-.LBB104
	.uleb128 .LBE138-.LBB104
	.byte	0x4
	.uleb128 .LBB139-.LBB104
	.uleb128 .LBE139-.LBB104
	.byte	0x4
	.uleb128 .LBB140-.LBB104
	.uleb128 .LBE140-.LBB104
	.byte	0x4
	.uleb128 .LBB141-.LBB104
	.uleb128 .LBE141-.LBB104
	.byte	0
.LLRL107:
	.byte	0x5
	.4byte	.LBB107
	.byte	0x4
	.uleb128 .LBB107-.LBB107
	.uleb128 .LBE107-.LBB107
	.byte	0x4
	.uleb128 .LBB115-.LBB107
	.uleb128 .LBE115-.LBB107
	.byte	0x4
	.uleb128 .LBB125-.LBB107
	.uleb128 .LBE125-.LBB107
	.byte	0x4
	.uleb128 .LBB127-.LBB107
	.uleb128 .LBE127-.LBB107
	.byte	0x4
	.uleb128 .LBB129-.LBB107
	.uleb128 .LBE129-.LBB107
	.byte	0x4
	.uleb128 .LBB131-.LBB107
	.uleb128 .LBE131-.LBB107
	.byte	0x4
	.uleb128 .LBB135-.LBB107
	.uleb128 .LBE135-.LBB107
	.byte	0
.LLRL109:
	.byte	0x5
	.4byte	.LBB116
	.byte	0x4
	.uleb128 .LBB116-.LBB116
	.uleb128 .LBE116-.LBB116
	.byte	0x4
	.uleb128 .LBB126-.LBB116
	.uleb128 .LBE126-.LBB116
	.byte	0x4
	.uleb128 .LBB128-.LBB116
	.uleb128 .LBE128-.LBB116
	.byte	0x4
	.uleb128 .LBB130-.LBB116
	.uleb128 .LBE130-.LBB116
	.byte	0x4
	.uleb128 .LBB132-.LBB116
	.uleb128 .LBE132-.LBB116
	.byte	0x4
	.uleb128 .LBB133-.LBB116
	.uleb128 .LBE133-.LBB116
	.byte	0x4
	.uleb128 .LBB134-.LBB116
	.uleb128 .LBE134-.LBB116
	.byte	0x4
	.uleb128 .LBB136-.LBB116
	.uleb128 .LBE136-.LBB116
	.byte	0
.LLRL119:
	.byte	0x5
	.4byte	.LBB150
	.byte	0x4
	.uleb128 .LBB150-.LBB150
	.uleb128 .LBE150-.LBB150
	.byte	0x4
	.uleb128 .LBB154-.LBB150
	.uleb128 .LBE154-.LBB150
	.byte	0x4
	.uleb128 .LBB155-.LBB150
	.uleb128 .LBE155-.LBB150
	.byte	0
.LLRL121:
	.byte	0x5
	.4byte	.LBB156
	.byte	0x4
	.uleb128 .LBB156-.LBB156
	.uleb128 .LBE156-.LBB156
	.byte	0x4
	.uleb128 .LBB161-.LBB156
	.uleb128 .LBE161-.LBB156
	.byte	0x4
	.uleb128 .LBB162-.LBB156
	.uleb128 .LBE162-.LBB156
	.byte	0x4
	.uleb128 .LBB163-.LBB156
	.uleb128 .LBE163-.LBB156
	.byte	0x4
	.uleb128 .LBB164-.LBB156
	.uleb128 .LBE164-.LBB156
	.byte	0x4
	.uleb128 .LBB165-.LBB156
	.uleb128 .LBE165-.LBB156
	.byte	0
.LLRL122:
	.byte	0x5
	.4byte	.LBB157
	.byte	0x4
	.uleb128 .LBB157-.LBB157
	.uleb128 .LBE157-.LBB157
	.byte	0x4
	.uleb128 .LBB158-.LBB157
	.uleb128 .LBE158-.LBB157
	.byte	0x4
	.uleb128 .LBB159-.LBB157
	.uleb128 .LBE159-.LBB157
	.byte	0x4
	.uleb128 .LBB160-.LBB157
	.uleb128 .LBE160-.LBB157
	.byte	0
.LLRL141:
	.byte	0x5
	.4byte	.LBB182
	.byte	0x4
	.uleb128 .LBB182-.LBB182
	.uleb128 .LBE182-.LBB182
	.byte	0x4
	.uleb128 .LBB195-.LBB182
	.uleb128 .LBE195-.LBB182
	.byte	0
.LLRL150:
	.byte	0x5
	.4byte	.LBB185
	.byte	0x4
	.uleb128 .LBB185-.LBB185
	.uleb128 .LBE185-.LBB185
	.byte	0x4
	.uleb128 .LBB190-.LBB185
	.uleb128 .LBE190-.LBB185
	.byte	0x4
	.uleb128 .LBB191-.LBB185
	.uleb128 .LBE191-.LBB185
	.byte	0x4
	.uleb128 .LBB192-.LBB185
	.uleb128 .LBE192-.LBB185
	.byte	0
.LLRL152:
	.byte	0x5
	.4byte	.LBB196
	.byte	0x4
	.uleb128 .LBB196-.LBB196
	.uleb128 .LBE196-.LBB196
	.byte	0x4
	.uleb128 .LBB202-.LBB196
	.uleb128 .LBE202-.LBB196
	.byte	0x4
	.uleb128 .LBB210-.LBB196
	.uleb128 .LBE210-.LBB196
	.byte	0x4
	.uleb128 .LBB213-.LBB196
	.uleb128 .LBE213-.LBB196
	.byte	0x4
	.uleb128 .LBB215-.LBB196
	.uleb128 .LBE215-.LBB196
	.byte	0
.LLRL154:
	.byte	0x5
	.4byte	.LBB203
	.byte	0x4
	.uleb128 .LBB203-.LBB203
	.uleb128 .LBE203-.LBB203
	.byte	0x4
	.uleb128 .LBB211-.LBB203
	.uleb128 .LBE211-.LBB203
	.byte	0
.LLRL161:
	.byte	0x5
	.4byte	.LBB206
	.byte	0x4
	.uleb128 .LBB206-.LBB206
	.uleb128 .LBE206-.LBB206
	.byte	0x4
	.uleb128 .LBB212-.LBB206
	.uleb128 .LBE212-.LBB206
	.byte	0x4
	.uleb128 .LBB214-.LBB206
	.uleb128 .LBE214-.LBB206
	.byte	0
.LLRL165:
	.byte	0x5
	.4byte	.LBB216
	.byte	0x4
	.uleb128 .LBB216-.LBB216
	.uleb128 .LBE216-.LBB216
	.byte	0x4
	.uleb128 .LBB224-.LBB216
	.uleb128 .LBE224-.LBB216
	.byte	0
.LLRL171:
	.byte	0x5
	.4byte	.LBB217
	.byte	0x4
	.uleb128 .LBB217-.LBB217
	.uleb128 .LBE217-.LBB217
	.byte	0x4
	.uleb128 .LBB218-.LBB217
	.uleb128 .LBE218-.LBB217
	.byte	0x4
	.uleb128 .LBB219-.LBB217
	.uleb128 .LBE219-.LBB217
	.byte	0x4
	.uleb128 .LBB220-.LBB217
	.uleb128 .LBE220-.LBB217
	.byte	0x4
	.uleb128 .LBB221-.LBB217
	.uleb128 .LBE221-.LBB217
	.byte	0x4
	.uleb128 .LBB222-.LBB217
	.uleb128 .LBE222-.LBB217
	.byte	0x4
	.uleb128 .LBB223-.LBB217
	.uleb128 .LBE223-.LBB217
	.byte	0
.LLRL178:
	.byte	0x7
	.4byte	.LFB218
	.uleb128 .LFE218-.LFB218
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
	.byte	0x7
	.4byte	.LFB211
	.uleb128 .LFE211-.LFB211
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0x7
	.4byte	.LFB213
	.uleb128 .LFE213-.LFB213
	.byte	0x7
	.4byte	.LFB215
	.uleb128 .LFE215-.LFB215
	.byte	0x7
	.4byte	.LFB214
	.uleb128 .LFE214-.LFB214
	.byte	0x7
	.4byte	.LFB217
	.uleb128 .LFE217-.LFB217
	.byte	0x7
	.4byte	.LFB216
	.uleb128 .LFE216-.LFB216
	.byte	0x7
	.4byte	.LFB219
	.uleb128 .LFE219-.LFB219
	.byte	0x7
	.4byte	.LFB220
	.uleb128 .LFE220-.LFB220
	.byte	0x7
	.4byte	.LFB221
	.uleb128 .LFE221-.LFB221
	.byte	0x7
	.4byte	.LFB222
	.uleb128 .LFE222-.LFB222
	.byte	0x7
	.4byte	.LFB223
	.uleb128 .LFE223-.LFB223
	.byte	0x7
	.4byte	.LFB224
	.uleb128 .LFE224-.LFB224
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF330:
	.ascii	"C3D_FVUnifMtxNx4\000"
.LASF80:
	.ascii	"gfxScreen_t\000"
.LASF36:
	.ascii	"Block_Cobblestone\000"
.LASF236:
	.ascii	"cmdList\000"
.LASF62:
	.ascii	"Block_Diamond_Ore\000"
.LASF90:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF343:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/gui/Sprite"
	.ascii	"Batch.c\000"
.LASF167:
	.ascii	"GPU_GEOMETRY_PRIM\000"
.LASF312:
	.ascii	"bottomLeft\000"
.LASF70:
	.ascii	"Block_Furnace\000"
.LASF101:
	.ascii	"GPU_RGB8\000"
.LASF332:
	.ascii	"C3D_FVUnifWritePtr\000"
.LASF133:
	.ascii	"GPU_WRITE_GREEN\000"
.LASF235:
	.ascii	"capacity\000"
.LASF69:
	.ascii	"Block_Emerald_Block\000"
.LASF315:
	.ascii	"topLeft\000"
.LASF198:
	.ascii	"C3D_TexEnv\000"
.LASF220:
	.ascii	"GuiTexture_Blank\000"
.LASF320:
	.ascii	"SpriteBatch_PushSingleColorQuad\000"
.LASF160:
	.ascii	"GPU_COMBINEFUNC\000"
.LASF334:
	.ascii	"Mtx_Diagonal\000"
.LASF122:
	.ascii	"GPU_TEXFACE\000"
.LASF51:
	.ascii	"Block_Snow\000"
.LASF318:
	.ascii	"SpriteBatch_PushQuadColor\000"
.LASF221:
	.ascii	"GuiTexture_Font\000"
.LASF134:
	.ascii	"GPU_WRITE_BLUE\000"
.LASF229:
	.ascii	"fxyz\000"
.LASF223:
	.ascii	"GuiTexture_Widgets\000"
.LASF278:
	.ascii	"verticesTotal\000"
.LASF117:
	.ascii	"GPU_NEGATIVE_X\000"
.LASF119:
	.ascii	"GPU_NEGATIVE_Y\000"
.LASF121:
	.ascii	"GPU_NEGATIVE_Z\000"
.LASF43:
	.ascii	"Block_Brick\000"
.LASF194:
	.ascii	"funcAlpha\000"
.LASF38:
	.ascii	"Block_Log\000"
.LASF88:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF314:
	.ascii	"topRight\000"
.LASF209:
	.ascii	"maxLevel\000"
.LASF277:
	.ascii	"usedVertexList\000"
.LASF52:
	.ascii	"Block_Obsidian\000"
.LASF57:
	.ascii	"Block_Grass_Path\000"
.LASF178:
	.ascii	"C3D_Mtx\000"
.LASF204:
	.ascii	"C3D_TexCube\000"
.LASF196:
	.ascii	"scaleRgb\000"
.LASF6:
	.ascii	"short int\000"
.LASF184:
	.ascii	"base_paddr\000"
.LASF201:
	.ascii	"C3D_Both\000"
.LASF241:
	.ascii	"whiteTex\000"
.LASF210:
	.ascii	"minLevel\000"
.LASF125:
	.ascii	"GPU_EQUAL\000"
.LASF81:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF137:
	.ascii	"GPU_WRITE_COLOR\000"
.LASF349:
	.ascii	"compareDrawCommands\000"
.LASF340:
	.ascii	"__builtin_memcpy\000"
.LASF92:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF268:
	.ascii	"Mtx_RotateX\000"
.LASF269:
	.ascii	"Mtx_RotateY\000"
.LASF27:
	.ascii	"Direction_North\000"
.LASF261:
	.ascii	"Block_GetColor\000"
.LASF97:
	.ascii	"GPU_TEX_SHADOW_CUBE\000"
.LASF99:
	.ascii	"GPU_TEXTURE_MODE_PARAM\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF169:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF55:
	.ascii	"Block_Smooth_Stone\000"
.LASF247:
	.ascii	"screenHeight\000"
.LASF158:
	.ascii	"GPU_MULTIPLY_ADD\000"
.LASF333:
	.ascii	"Mtx_Identity\000"
.LASF151:
	.ascii	"GPU_REPLACE\000"
.LASF26:
	.ascii	"Direction_Top\000"
.LASF302:
	.ascii	"offsetY\000"
.LASF289:
	.ascii	"screen\000"
.LASF189:
	.ascii	"opAlpha\000"
.LASF249:
	.ascii	"cube_sides_lut\000"
.LASF324:
	.ascii	"projUniform_\000"
.LASF21:
	.ascii	"uint32_t\000"
.LASF174:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF344:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF109:
	.ascii	"GPU_LA4\000"
.LASF22:
	.ascii	"uint64_t\000"
.LASF105:
	.ascii	"GPU_LA8\000"
.LASF78:
	.ascii	"GFX_TOP\000"
.LASF116:
	.ascii	"GPU_POSITIVE_X\000"
.LASF118:
	.ascii	"GPU_POSITIVE_Y\000"
.LASF120:
	.ascii	"GPU_POSITIVE_Z\000"
.LASF321:
	.ascii	"SpriteBatch_BindGuiTexture\000"
.LASF135:
	.ascii	"GPU_WRITE_ALPHA\000"
.LASF273:
	.ascii	"malloc\000"
.LASF91:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF35:
	.ascii	"Block_Grass\000"
.LASF33:
	.ascii	"Block_Stone\000"
.LASF19:
	.ascii	"int16_t\000"
.LASF313:
	.ascii	"bottomRight\000"
.LASF256:
	.ascii	"Mtx_OrthoTilt\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF181:
	.ascii	"offset\000"
.LASF276:
	.ascii	"projMtx\000"
.LASF96:
	.ascii	"GPU_TEX_PROJECTION\000"
.LASF188:
	.ascii	"opRgb\000"
.LASF288:
	.ascii	"SpriteBatch_GetWidth\000"
.LASF49:
	.ascii	"Block_Door_Bottom\000"
.LASF280:
	.ascii	"divW\000"
.LASF237:
	.ascii	"currentTexture\000"
.LASF231:
	.ascii	"GuiVertex\000"
.LASF331:
	.ascii	"C3D_TexInit\000"
.LASF214:
	.ascii	"border\000"
.LASF274:
	.ascii	"linearAlloc\000"
.LASF271:
	.ascii	"Texture_Load\000"
.LASF111:
	.ascii	"GPU_A4\000"
.LASF270:
	.ascii	"C3D_TexLoadImage\000"
.LASF216:
	.ascii	"format\000"
.LASF138:
	.ascii	"GPU_WRITE_ALL\000"
.LASF59:
	.ascii	"Block_Lava\000"
.LASF299:
	.ascii	"ySize\000"
.LASF86:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF208:
	.ascii	"lodBias\000"
.LASF228:
	.ascii	"Font\000"
.LASF16:
	.ascii	"size_t\000"
.LASF71:
	.ascii	"Blocks_Count\000"
.LASF207:
	.ascii	"width\000"
.LASF293:
	.ascii	"maxLength\000"
.LASF326:
	.ascii	"C3D_TexEnvFunc\000"
.LASF246:
	.ascii	"screenWidth\000"
.LASF202:
	.ascii	"C3D_TexEnvMode\000"
.LASF325:
	.ascii	"mode\000"
.LASF75:
	.ascii	"_Bool\000"
.LASF336:
	.ascii	"FVec3_New\000"
.LASF32:
	.ascii	"Block_Air\000"
.LASF193:
	.ascii	"funcRgb\000"
.LASF347:
	.ascii	"C3D_GetBufInfo\000"
.LASF182:
	.ascii	"flags\000"
.LASF266:
	.ascii	"free\000"
.LASF13:
	.ascii	"__uint64_t\000"
.LASF262:
	.ascii	"Block_GetTexture\000"
.LASF139:
	.ascii	"GPU_WRITEMASK\000"
.LASF291:
	.ascii	"args\000"
.LASF227:
	.ascii	"texture\000"
.LASF110:
	.ascii	"GPU_L4\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF53:
	.ascii	"Block_Netherrack\000"
.LASF107:
	.ascii	"GPU_L8\000"
.LASF165:
	.ascii	"GPU_TRIANGLE_STRIP\000"
.LASF66:
	.ascii	"Block_Diamond_Block\000"
.LASF153:
	.ascii	"GPU_ADD\000"
.LASF304:
	.ascii	"texX\000"
.LASF292:
	.ascii	"fmtedText\000"
.LASF29:
	.ascii	"Direction_Invalid\000"
.LASF72:
	.ascii	"char\000"
.LASF85:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF84:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF303:
	.ascii	"maxWidth\000"
.LASF15:
	.ascii	"ptrdiff_t\000"
.LASF257:
	.ascii	"qsort\000"
.LASF152:
	.ascii	"GPU_MODULATE\000"
.LASF284:
	.ascii	"SpriteBatch_StartFrame\000"
.LASF290:
	.ascii	"text\000"
.LASF74:
	.ascii	"va_list\000"
.LASF149:
	.ascii	"GPU_PREVIOUS\000"
.LASF203:
	.ascii	"data\000"
.LASF306:
	.ascii	"SpriteBatch_PushText\000"
.LASF48:
	.ascii	"Block_Door_Top\000"
.LASF305:
	.ascii	"texY\000"
.LASF263:
	.ascii	"vec_expand_\000"
.LASF18:
	.ascii	"uint8_t\000"
.LASF68:
	.ascii	"Block_Iron_Block\000"
.LASF348:
	.ascii	"SpriteBatch_GetScale\000"
.LASF82:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF155:
	.ascii	"GPU_INTERPOLATE\000"
.LASF199:
	.ascii	"C3D_RGB\000"
.LASF230:
	.ascii	"WorldVertex\000"
.LASF143:
	.ascii	"GPU_TEXTURE0\000"
.LASF65:
	.ascii	"Block_Gold_Block\000"
.LASF322:
	.ascii	"SpriteBatch_BindTexture\000"
.LASF12:
	.ascii	"long long int\000"
.LASF103:
	.ascii	"GPU_RGB565\000"
.LASF156:
	.ascii	"GPU_SUBTRACT\000"
.LASF64:
	.ascii	"Block_Emerald_Ore\000"
.LASF335:
	.ascii	"Mtx_Zeros\000"
.LASF232:
	.ascii	"depth\000"
.LASF94:
	.ascii	"GPU_TEX_CUBE_MAP\000"
.LASF102:
	.ascii	"GPU_RGBA5551\000"
.LASF248:
	.ascii	"guiScale\000"
.LASF185:
	.ascii	"bufCount\000"
.LASF254:
	.ascii	"C3D_GetTexEnv\000"
.LASF177:
	.ascii	"C3D_FVec\000"
.LASF346:
	.ascii	"__ap\000"
.LASF265:
	.ascii	"linearFree\000"
.LASF319:
	.ascii	"SpriteBatch_PushQuad\000"
.LASF286:
	.ascii	"scale\000"
.LASF197:
	.ascii	"scaleAlpha\000"
.LASF275:
	.ascii	"memset\000"
.LASF166:
	.ascii	"GPU_TRIANGLE_FAN\000"
.LASF56:
	.ascii	"Block_Crafting_Table\000"
.LASF40:
	.ascii	"Block_Leaves\000"
.LASF300:
	.ascii	"buffer\000"
.LASF342:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF187:
	.ascii	"C3D_BufInfo\000"
.LASF212:
	.ascii	"size\000"
.LASF115:
	.ascii	"GPU_TEXFACE_2D\000"
.LASF140:
	.ascii	"GPU_PRIMARY_COLOR\000"
.LASF213:
	.ascii	"param\000"
.LASF87:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF252:
	.ascii	"C3D_TexBind\000"
.LASF93:
	.ascii	"GPU_TEX_2D\000"
.LASF132:
	.ascii	"GPU_WRITE_RED\000"
.LASF224:
	.ascii	"GuiTexture_MenuBackground\000"
.LASF351:
	.ascii	"__aeabi_idiv\000"
.LASF206:
	.ascii	"height\000"
.LASF176:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF89:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF239:
	.ascii	"projUniform\000"
.LASF179:
	.ascii	"C3D_FVUnif\000"
.LASF28:
	.ascii	"Direction_South\000"
.LASF31:
	.ascii	"Block\000"
.LASF253:
	.ascii	"BufInfo_Add\000"
.LASF114:
	.ascii	"GPU_TEXCOLOR\000"
.LASF323:
	.ascii	"SpriteBatch_Init\000"
.LASF60:
	.ascii	"Block_Iron_Ore\000"
.LASF222:
	.ascii	"GuiTexture_Icons\000"
.LASF79:
	.ascii	"GFX_BOTTOM\000"
.LASF205:
	.ascii	"cube\000"
.LASF17:
	.ascii	"long double\000"
.LASF20:
	.ascii	"uint16_t\000"
.LASF171:
	.ascii	"GPU_SHADER_TYPE\000"
.LASF23:
	.ascii	"Direction_West\000"
.LASF218:
	.ascii	"onVram\000"
.LASF34:
	.ascii	"Block_Dirt\000"
.LASF37:
	.ascii	"Block_Sand\000"
.LASF157:
	.ascii	"GPU_DOT3_RGB\000"
.LASF128:
	.ascii	"GPU_LEQUAL\000"
.LASF309:
	.ascii	"metadata\000"
.LASF219:
	.ascii	"C3D_TexInitParams\000"
.LASF24:
	.ascii	"Direction_East\000"
.LASF108:
	.ascii	"GPU_A8\000"
.LASF301:
	.ascii	"offsetX\000"
.LASF161:
	.ascii	"GPU_TEVSCALE_1\000"
.LASF162:
	.ascii	"GPU_TEVSCALE_2\000"
.LASF163:
	.ascii	"GPU_TEVSCALE_4\000"
.LASF83:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF130:
	.ascii	"GPU_GEQUAL\000"
.LASF9:
	.ascii	"long int\000"
.LASF350:
	.ascii	"SpriteBatch_Deinit\000"
.LASF329:
	.ascii	"C3D_FVUnifMtx4x4\000"
.LASF234:
	.ascii	"length\000"
.LASF238:
	.ascii	"vertexList\000"
.LASF175:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF307:
	.ascii	"SpriteBatch_PushIcon\000"
.LASF170:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF172:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF25:
	.ascii	"Direction_Bottom\000"
.LASF281:
	.ascii	"divH\000"
.LASF242:
	.ascii	"widgetsTex\000"
.LASF272:
	.ascii	"FontLoader_Init\000"
.LASF124:
	.ascii	"GPU_ALWAYS\000"
.LASF54:
	.ascii	"Block_Sandstone\000"
.LASF308:
	.ascii	"block\000"
.LASF180:
	.ascii	"C3D_FVUnifDirty\000"
.LASF296:
	.ascii	"SpriteBatch_PushTextVargs\000"
.LASF279:
	.ascii	"vtxStart\000"
.LASF58:
	.ascii	"Block_Water\000"
.LASF129:
	.ascii	"GPU_GREATER\000"
.LASF310:
	.ascii	"vertices\000"
.LASF267:
	.ascii	"C3D_TexInitWithParams\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF112:
	.ascii	"GPU_ETC1\000"
.LASF192:
	.ascii	"srcAlpha\000"
.LASF45:
	.ascii	"Block_Wool\000"
.LASF150:
	.ascii	"GPU_TEVSRC\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF316:
	.ascii	"color16\000"
.LASF41:
	.ascii	"Block_Glass\000"
.LASF240:
	.ascii	"font\000"
.LASF142:
	.ascii	"GPU_FRAGMENT_SECONDARY_COLOR\000"
.LASF141:
	.ascii	"GPU_FRAGMENT_PRIMARY_COLOR\000"
.LASF345:
	.ascii	"__va_list\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF126:
	.ascii	"GPU_NOTEQUAL\000"
.LASF113:
	.ascii	"GPU_ETC1A4\000"
.LASF0:
	.ascii	"float\000"
.LASF226:
	.ascii	"fontWidth\000"
.LASF106:
	.ascii	"GPU_HILO8\000"
.LASF298:
	.ascii	"wrap\000"
.LASF251:
	.ascii	"BufInfo_Init\000"
.LASF148:
	.ascii	"GPU_CONSTANT\000"
.LASF95:
	.ascii	"GPU_TEX_SHADOW_2D\000"
.LASF30:
	.ascii	"Direction\000"
.LASF217:
	.ascii	"type\000"
.LASF225:
	.ascii	"GuiTexture\000"
.LASF46:
	.ascii	"Block_Bedrock\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF144:
	.ascii	"GPU_TEXTURE1\000"
.LASF145:
	.ascii	"GPU_TEXTURE2\000"
.LASF146:
	.ascii	"GPU_TEXTURE3\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF341:
	.ascii	"__builtin_memset\000"
.LASF233:
	.ascii	"Sprite\000"
.LASF104:
	.ascii	"GPU_RGBA4\000"
.LASF123:
	.ascii	"GPU_NEVER\000"
.LASF245:
	.ascii	"iconModelMtx\000"
.LASF211:
	.ascii	"lodParam\000"
.LASF63:
	.ascii	"Block_Gold_Ore\000"
.LASF100:
	.ascii	"GPU_RGBA8\000"
.LASF250:
	.ascii	"C3D_DrawArrays\000"
.LASF190:
	.ascii	"opAll\000"
.LASF283:
	.ascii	"SpriteBatch_Render\000"
.LASF294:
	.ascii	"SpriteBatch_CalcTextWidthVargs\000"
.LASF259:
	.ascii	"Block_GetTextureMap\000"
.LASF327:
	.ascii	"C3D_TexEnvSrc\000"
.LASF164:
	.ascii	"GPU_TRIANGLES\000"
.LASF76:
	.ascii	"__compar_fn_t\000"
.LASF285:
	.ascii	"SpriteBatch_SetScale\000"
.LASF317:
	.ascii	"implicitBreak\000"
.LASF311:
	.ascii	"iconUV\000"
.LASF191:
	.ascii	"srcRgb\000"
.LASF195:
	.ascii	"color\000"
.LASF295:
	.ascii	"SpriteBatch_CalcTextWidth\000"
.LASF186:
	.ascii	"buffers\000"
.LASF50:
	.ascii	"Block_Snow_Grass\000"
.LASF183:
	.ascii	"C3D_BufCfg\000"
.LASF39:
	.ascii	"Block_Gravel\000"
.LASF243:
	.ascii	"iconsTex\000"
.LASF258:
	.ascii	"vsprintf\000"
.LASF200:
	.ascii	"C3D_Alpha\000"
.LASF297:
	.ascii	"shadow\000"
.LASF287:
	.ascii	"SpriteBatch_GetHeight\000"
.LASF2:
	.ascii	"signed char\000"
.LASF215:
	.ascii	"C3D_Tex\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF127:
	.ascii	"GPU_LESS\000"
.LASF47:
	.ascii	"Block_Coarse\000"
.LASF339:
	.ascii	"memcpy\000"
.LASF136:
	.ascii	"GPU_WRITE_DEPTH\000"
.LASF159:
	.ascii	"GPU_ADD_MULTIPLY\000"
.LASF168:
	.ascii	"GPU_Primitive_t\000"
.LASF282:
	.ascii	"bufInfo\000"
.LASF77:
	.ascii	"double\000"
.LASF260:
	.ascii	"Mtx_MultiplyFVec3\000"
.LASF61:
	.ascii	"Block_Coal_Ore\000"
.LASF147:
	.ascii	"GPU_PREVIOUS_BUFFER\000"
.LASF44:
	.ascii	"Block_Planks\000"
.LASF42:
	.ascii	"Block_Stonebrick\000"
.LASF98:
	.ascii	"GPU_TEX_DISABLED\000"
.LASF67:
	.ascii	"Block_Coal_Block\000"
.LASF328:
	.ascii	"C3D_TexEnvInit\000"
.LASF264:
	.ascii	"C3D_TexDelete\000"
.LASF154:
	.ascii	"GPU_ADD_SIGNED\000"
.LASF73:
	.ascii	"__gnuc_va_list\000"
.LASF244:
	.ascii	"menuBackgroundTex\000"
.LASF338:
	.ascii	"FastFloor\000"
.LASF337:
	.ascii	"FVec4_New\000"
.LASF131:
	.ascii	"GPU_TESTFUNC\000"
.LASF255:
	.ascii	"C3D_DepthTest\000"
.LASF173:
	.ascii	"NDSP_ENCODING_PCM16\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
