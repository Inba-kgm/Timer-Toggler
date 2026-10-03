	.file	"fastpwm.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x4,1
	sbi 0x5,1
	lds r24,128
	ori r24,lo8(-126)
	sts 128,r24
	lds r24,129
	ori r24,lo8(29)
	sts 129,r24
	ldi r24,lo8(17)
	ldi r25,lo8(122)
	sts 134+1,r25
	sts 134,r24
	ldi r24,lo8(-124)
	ldi r25,lo8(30)
	sts 136+1,r25
	sts 136,r24
.L2:
	rjmp .L2
	.size	main, .-main
	.ident	"GCC: (GNU) 16.1.0"
