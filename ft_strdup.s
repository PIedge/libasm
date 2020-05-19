extern ft_strlen
extern ft_strcpy
extern malloc

			global ft_strdup
			section .text
ft_strdup:
			call ft_strlen
			push rdi
			mov rdi, rax
			inc rdi
			call malloc wrt ..plt
			cmp rax, 0
			je done
			mov rdi, rax
			pop rsi
			call ft_strcpy
			ret

done:
			pop rdi
			ret
			