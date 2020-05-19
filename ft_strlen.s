

			section	.text
			global	ft_strlen
ft_strlen:
			xor rax, rax
			cmp rdi, 0
			jne loop

loop:
			inc rax
			cmp byte [rdi + rax], 0
			jne loop
			ret

			