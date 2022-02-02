/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mamaro-d <mamaro-d@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/02 01:23:49 by mamaro-d          #+#    #+#             */
/*   Updated: 2022/02/02 14:55:41 by mamaro-d         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	print_stack(t_stack *stack)
{
	while(stack)
	{
		printf("%d\n", stack->data);
		stack = stack->next;
	}	
}
int	main(int argc, char *argv[])
{
	t_stack	*stack_a;
	t_stack	*stack_b;

	stack_a = init_stack();
	printf("%lubytes\n", sizeof(t_stack *));
	if(!validate_args(argc, argv))
	{
		write(2, "Error\n", 6);
		return (1);
	}
	else
	{
		populate_stack(argc, argv, stack_a);
	}
	print_stack(stack_a);
	free_stack(stack_a);
}

