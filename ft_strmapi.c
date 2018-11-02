/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bvilla <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/01 18:31:51 by bvilla            #+#    #+#             */
/*   Updated: 2018/11/01 18:42:25 by bvilla           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strmapi(char const *s, char(*f)(unsigned int, char))
{
	char			*ret;
	unsigned int	i;

	i = ft_strlen(s);
	if((ret = (char*)malloc(i + 1)))
	{
		ret[i] = '\0';
		while (i--)
			ret[i] = f(i, s[i]);
		return (ret);
	}
	else
		return (NULL);
}
