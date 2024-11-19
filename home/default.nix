{
  config,
  pkgs,
  ...
}: {
  home.username = "rzrtag";
  home.homeDirectory = "/home/rzrtag";

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    git
    neovim
    htop
    btop
    ripgrep
    fd
    zsh
    starship
    bat
    exa
  ];

  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      plugins = ["git" "z" "sudo"];
    };
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      prompt_order = [
        "username"
        "hostname"
        "directory"
        "git_branch"
        "git_status"
        "cmd_duration"
        "line_break"
        "jobs"
        "character"
      ];
    };
  };
}
