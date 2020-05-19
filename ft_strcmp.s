
			global	ft_strcmp
			section	.text
ft_strcmp:
			xor r9, r9

comp:
			xor rax, rax
			mov al, byte [rdi + r9]
			cmp rax, 0
			je done
			cmp byte [rsi + r9], 0
			je done
			cmp al, byte [rsi + r9]
			je incre

done:
			sub al, byte [rsi + r9]
			movsx rax, al 			;la meme que mov, juste "étand" le bit de signe a rax
			ret

incre:		
			inc r9
			jmp comp

