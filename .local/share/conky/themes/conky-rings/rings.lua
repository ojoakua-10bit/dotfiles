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
 
	minimum_height = 300,
	minimum_width = 620,
	maximum_width = 1024,
 
	alignment = 'top_left',
	gap_x = 0,
	gap_y = 45,
 
	-- Graphics settings --
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

	-- Text settings --
	use_xft = true,
	font = 'Akubin:size=18',
	xftalpha = 0.8,
 
	uppercase = false,
 
	default_color = '#000000',
 
	-- Lua Load --
	lua_load = '/home/anon/.local/share/conky/themes/conky-rings/clock_rings.1.lua',
	lua_draw_hook_pre = 'clock_rings',

};

conky.text = [[
  ${font Akubin:size=12}  Root   ${fs_used /}/${fs_size /}                Home   ${fs_used /home}/${fs_size /home}$font
${voffset 105}${goto 121}${font Akubin:size=24}${time %H:%M}${voffset -10}${font Akubin:size=10}${font}
${voffset -28}${goto 268}${hr 2}
${voffset -70}${goto 278}${cpugraph 50,285 6d6d6d 000000} #${voffset -18} ${alignr} ${execi 60 /home/anon/.local/share/conky/themes/conky-rings/gmailnotify.sh}
${voffset 16}${goto 285}${time %A, %d %b %Y}						
${font Akubin:size=14}${voffset -120}${goto 300}Battery     ${battery BAT0}
]]

-- vim:ft=lua
