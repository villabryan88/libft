/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bvilla <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/07 18:49:32 by bvilla            #+#    #+#             */
/*   Updated: 2018/11/07 19:36:04 by bvilla           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, t_list *(*f)(t_list *elem))
{
	t_list	*new;
	t_list	*i;

	new = NULL;
	while (lst && f)
	{
		if (!new)
		{
			new = f(lst);
			i = new;
		}
		else
		{
			i->next = f(lst);
			i = i->next;
		}
		lst = lst->next;
	}
	return (new);
}
