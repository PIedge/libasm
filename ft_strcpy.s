

			global	ft_strcpy
			section	.text

ft_strcpy:	
			xor r9, r9

loop:
			mov al, byte [rsi + r9]
			mov byte [rdi + r9], al
			inc r9
			cmp byte [rsi + r9], 0
			jne loop


done:
			mov byte [rdi + r9], 0
			mov rax, rdi
			ret