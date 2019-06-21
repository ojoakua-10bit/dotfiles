conky.config = {

	-- Conky settings --
	background = false,
	update_interval = 15,
 
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

	minimum_width = 390,
	maximum_width = 390,
	minimum_height = 80,
 
	alignment = 'top_left',
	gap_x = 30,
	gap_y = 590,
 
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
${font Akubin:size=14}${alignc}TO-DO リスト${alignr}${font Akubin:size=12}(${lines /home/anon/tmp})${font}
${stippled_hr}
${voffset 10}${execp /home/anon/.local/share/conky/themes/conky-rings/viewnotes.sh}

# ${stippled_hr 1}
]]

-- vim:ft=lua
