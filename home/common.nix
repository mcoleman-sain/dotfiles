{ pkgs, lib, ... }:
let
  configDir = ../config;
in
{
  imports = [
    ./modules/vscode.nix
    ./modules/zsh.nix
  ];

  home.packages = with pkgs; [
    awscli
    ncdu
    tree
    watch
    wget
    gnumake
    neofetch
    coreutils
    inetutils
    terraform-docs
    terraform_0_14
    nix
    nixfmt
    pipenv
    python27Full
    python37Full
    python37Packages.pylint
    python37Packages.flake8
    python37Packages.black
  ];

  programs = {
    alacritty.enable = true;
    firefox.enable = true;
    home-manager.enable = true;
    htop = {
      enable = true;
      enableMouse = true;
    };
    tmux = {
      enable = true;
      clock24 = true;
      keyMode = "vi";
      shortcut = "\\\\"; # \o/
      baseIndex = 1;
      extraConfig = ''
        bind \\ split-window -h
        bind / split-window -v

        bind h select-pane -L
        bind j select-pane -D 
        bind k select-pane -U
        bind l select-pane -R

        bind -n M-h select-pane -L
        bind -n M-l select-pane -R
        bind -n M-k select-pane -U
        bind -n M-j select-pane -D

        set -g mouse on
      '';
    };
    emacs.enable = true;
    go.enable = true;
    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      withPython3 = true;
    };
    lf.enable = true;
    git = {
      enable = true;
      userName = "Matt Coleman";
      userEmail = "matt.coleman@sainsburys.co.uk";
      extraConfig = {
        pull.rebase = "false";
        init.defaultBranch = "master";
      };
    };
    ssh.enable = true;
  };
  xdg = {
    enable = true;
    configFile = {
      "i3/config".source = "${configDir}/i3/config";
      "polybar/config".source = "${configDir}/polybar/config";
    };
  };
}
