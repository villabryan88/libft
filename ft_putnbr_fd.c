/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bvilla <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/03 18:24:12 by bvilla            #+#    #+#             */
/*   Updated: 2018/11/05 21:37:39 by bvilla           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	int		neg;

	neg = 1;
	if (n < 0)
	{
		ft_putchar_fd('-', fd);
		neg = -1;
	}
	if (n > 9 || n < -9)
		ft_putnbr_fd((n / 10) * neg, fd);
	ft_putchar_fd((n % 10) * neg + '0', fd);
}
