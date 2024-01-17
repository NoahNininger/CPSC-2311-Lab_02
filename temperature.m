                 comment(`this program prints out converted temperatures')
                 comment(`numbers where 0, 1 are the 0th and 1st elements')
                 comment(`of the sequence respectively.')

iconst_-40       comment(`push -40 onto the stack to be used as the start')
istore_1         comment(`store the first value into local register 1')

label(loop)      comment(`beginning of the loop')

istore_3         comment(`store the top of the stack in local register 3')
iload_3          comment(`load back since it was popped off during the store')

imul(9)          comment(`performing calculation, F = (C * 9/5) + 32,')
idiv(5)          comment(`but also erases from the stack')
iadd(32)

istore_2         comment(`store the calculation')

iload_3          comment(`put the old number back on the stack for next time')
iload_2          comment(`put the number we just calculated on the stack')

iconst_1         comment(`set the print statement to print local register 1, C')
invokevirtual(1) comment(`1 == print with no new line') 

iconst_2         comment(`set the print statement to print local register 2, F')
invokevirtual(2) comment(`2 == print with a new line at the end') 

iinc(1,10)       comment(`increment local register 1 (C) by 10')

iload_1          comment(`push the loop C onto the stack')
bipush(120)      comment(`push the loop limit onto the stack')

ifle(loop)       comment(`if top of stack <= 0 (our loop count is <= 120) goto loop, this also pops')

return
