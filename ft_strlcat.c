/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bvilla <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/29 15:49:51 by bvilla            #+#    #+#             */
/*   Updated: 2018/10/29 17:56:44 by bvilla           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t	dlen;
	size_t	slen;

	dlen = strlen(dst);
	slen = strlen(src);
	if (dlen < dstsize)
		dstsize -= dlen;
	else
		return (dlen + slen);
	dst += dlen;
	while (--dstsize)
	{
		*(dst++) = *(src);
		if (!*src)
			return (dlen + slen);
		else
			src++;
	}
	*dst = '\0';
	return (dlen + slen);
}
