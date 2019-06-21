conky.config = {
	
	-- Conky settings --
	background = false,
	update_interval = 1,
 
	cpu_avg_samples = 2,
	net_avg_samples = 2,
 
	override_utf8_locale = true,
 
	double_buffer = true,
	no_buffers = true,
 
	text_buffer_size = 2048,
	imlib_cache_size = 0,
 
	-- Window specifications --
 
	own_window = true,
	own_window_type = 'override',
	own_window_transparent = true,
	own_window_hints = 'undecorated,sticky,skip_taskbar,skip_pager,below',
 
	border_inner_margin = 0,
	border_outer_margin = 0,
 
	minimum_height = 100,
	minimum_width = 160,
	maximum_width = 160,
 
	alignment = 'top_left',
	gap_x = 40,
	gap_y = 362,
 
	-- Graphics settings --
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,
 
	-- Text settings --
	use_xft = true,
	font = 'Akubin:size=10',
	xftalpha = 0.8,
 
	uppercase = false,
 
	default_color = '#000000',
 
};

conky.text = [[
${font Akubin:size=14}RAM ${alignr}$memperc%${font}
${font Akubin:size=12}${stippled_hr}${font}

${top_mem name 1} ${alignr}${top_mem mem 1}%
${top_mem name 2} ${alignr}${top_mem mem 2}%
${top_mem name 3} ${alignr}${top_mem mem 3}%
${top_mem name 4} ${alignr}${top_mem mem 4}%
${top_mem name 5} ${alignr}${top_mem mem 5}%
]]

-- vim:ft=lua
