{config, pkgs, ... }:
{
	programs.emacs = {
		enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
      epkgs.haskell-mode
    ];
  };

  programs.firefox = {
    enable = true;
    profiles = {
      sirkku = {
        settings = {
          "general.smoothScroll" = false;
					"browser.startup.homepage" = "https://nixos.org";
					"browser.search.region" = "FI";
					"browser.search.isUS" = false;
					"browser.bookmarks.showMobileBookmarks" = true;
        };
      };
    };
  };
	
	xsession.windowManager.bspwm = {
		enable = true;
		startupPrograms = [ "systemctl --user restart polybar" ];
		settings = {
			border_width = 3;
			window_gap = 10;
			focus_follows_pointer = true;
			pointer_modifier = "mod1";
			pointer_action1 = "move";
			pointer_action2 = "resize_side";
			pointer_action3 = "resize_corner";
			split_ratio = 0.60;
			borderless_monocle = true;
			gapless_monocle = true;
		};
		rules = {
  		"Gimp" = {
    		desktop = "^2";
    		state = "floating";
    		follow = true;
			};
			"Emacs" = {
				desktop = "^3";
				state = "monacle";
				follow = "false";
				splitRatio = 70;
			};
			"Sxiv" = {
				state = "floating";
				center = true;
			};
			"Save Image" = {
				state = "floating";
				center = true;
			};
  	};
  };
	services.polybar = {
		enable = true;
		package = pkgs.polybarFull;
		config = "/home/user/.config/polybar/config";
	};

} 
