/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pixel.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: thibaud <thibaud@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/29 20:54:22 by thibaud           #+#    #+#             */
/*   Updated: 2024/06/29 21:54:51 by thibaud          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PIXEL_H
# define PIXEL_H

typedef struct s_data
{
	void			*img;
	char			*addr;
	int				bits_per_pixel;
	int				line_length;
	int				endian;
}					t_data;

typedef struct s_vars
{
	void	*mlx;
	void	*win;
}				t_vars;

typedef struct s_struct
{
	t_vars			*vars;
	t_data			*img;
}				t_struct;

#endif