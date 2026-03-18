{pkgs, ...}: {
  # Set user
  users.users.infyniteheap = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "audio"
      "video"
    ];
  };

  # Set default shell to fish
  programs.fish.enable = true;
  users.users.infyniteheap.shell = pkgs.fish;

  # Enable starship
  programs.starship.enable = true;

  # Set default editor to neovim
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
