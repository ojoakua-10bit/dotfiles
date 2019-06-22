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
 
	minimum_height = 160,
	minimum_width = 160,
	maximum_width = 160,
 
	alignment = 'top_left',
	gap_x = 260,
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
${font Akubin:size=14}CPU ${alignr}$cpu%${font}
${font Akubin:size=12}${stippled_hr}${font}

Temp: ${alignr}${execi 10 sensors | grep 'Core 0' | awk {'print $3'}}
Process: ${alignr}${running_processes}/${processes}

Top 5 Processes:
${stippled_hr}
${top name 1} ${alignr}${top cpu 1}%
${top name 2} ${alignr}${top cpu 2}%
${top name 3} ${alignr}${top cpu 3}%
${top name 4} ${alignr}${top cpu 4}%
${top name 5} ${alignr}${top cpu 5}%
]]

-- vim:ft=lua
