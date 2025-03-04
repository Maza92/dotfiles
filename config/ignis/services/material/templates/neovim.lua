return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		transparent_background = false,
		color_overrides = {
			mocha = {
				base = "{{ surface }}",
				mantle = "{{ surfaceContainerLow }}",
				crust = "{{ surfaceContainerLowest }}",

				text = "{{ onSurface }}",
				subtext1 = "{{ onSurfaceVariant }}",
				subtext0 = "{{ outline }}",

				overlay2 = "{{ onSurfaceVariant }}",
				overlay1 = "{{ onSurfaceVariant }}",
				overlay0 = "{{ outlineVariant }}",

				surface2 = "{{ surfaceContainerHigh }}",
				surface1 = "{{ surfaceContainer }}",
				surface0 = "{{ surfaceContainerLow }}",

				rosewater = "{{ tertiaryContainer }}",
				flamingo = "{{ error }}",
				pink = "{{ primary }}",
				mauve = "{{ secondary }}",
				red = "{{ error }}",
				maroon = "{{ primaryContainer }}",
				peach = "{{ tertiary }}",
				yellow = "{{ tertiaryFixed }}",
				green = "{{ secondary }}",
				teal = "{{ secondaryContainer }}",
				sky = "{{ primaryFixed }}",
				sapphire = "{{ primaryFixedDim }}",
				blue = "{{ primary }}",
				lavender = "{{ secondaryFixed }}",
			},
		},
	},
}
