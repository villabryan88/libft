/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bvilla <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/30 15:22:30 by bvilla            #+#    #+#             */
/*   Updated: 2018/10/30 18:11:39 by bvilla           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	unsigned int	i;

	if (!haystack)
		return (NULL);
	while (*haystack && len)
	{
		i = 0; 
		while (len && len-- && haystack[i] == needle[i] && needle[i])
			i++;
		if (needle[i] == '\0')
			return ((char*)haystack);
		if (len == 0)
			return (NULL);
		if (i)
			len++;
		haystack += i ? i : 1;
	}
	return (NULL);
}
