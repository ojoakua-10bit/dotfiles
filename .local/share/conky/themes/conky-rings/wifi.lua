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

	maximum_width = 200,
	minimum_width = 200,
	minimum_height = 80,
 
	alignment = 'top_left',
	gap_x = 480,
	gap_y = 320,
 
	-- Graphics settings --
	draw_shades = false,
	draw_outline = false,
	draw_borders = false,
	draw_graph_borders = false,

	-- MPD settings --
	mpd_host = 'localhost',
	mpd_port = 6600,

	-- Text settings --
	use_xft = true,
	font = 'Akubin:size=10',
	xftalpha = 0.8,
 
	uppercase = false,
 
	default_color = '#000000',

};

conky.text = [[
${font Akubin:size=14}Wlan${alignr}${font Akubin:size=12}${font}${alignr}${addr wlp2s0}
${stippled_hr}
${voffset 10}Current Speed
${font Font Awesome 5 Free Solid}${font} ${upspeed wlp2s0} ${tab 56}${font Font Awesome 5 Free Solid}${font} ${downspeed wlp2s0}

Today
${font Font Awesome 5 Free Solid}${font} ${execi 60 vnstat -i wlp2s0 --oneline | cut -d\; -f5} ${tab 56}${font Font Awesome 5 Free Solid}${font} ${execi 60 vnstat -i wlp2s0 --oneline | cut -d\; -f4}

This Month
${font Font Awesome 5 Free Solid}${font} ${execi 60 vnstat -i wlp2s0 --oneline | cut -d\; -f10} ${tab 56}${font Font Awesome 5 Free Solid}${font} ${execi 60 vnstat -i wlp2s0 --oneline | cut -d\; -f9}

# ${stippled_hr 1}
]]

-- vim:ft=lua
