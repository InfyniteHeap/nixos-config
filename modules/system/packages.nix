{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Git & Version Control
    git # distributed version control system
    lazygit # terminal UI for git

    # Editors
    helix # modern terminal editor

    # File Management
    yazi # terminal file manager
    eza # modern ls replacement with icons and git support
    wget # command-line file downloader
    rsync # fast incremental file transfer and sync
    _7zz # current 7-Zip CLI archiver

    # Search & Filter
    ripgrep # fast recursive text search tool
    fd # fast and user-friendly alternative to find

    # Shell Enhancements
    fastfetch # fast system information display tool

    # System Monitoring
    btop # interactive resource monitor
    procs # modern ps replacement with color output
    lsof # list open files and associated processes
    dust # disk usage analyzer, intuitive du alternative
    duf # disk usage overview, df alternative

    # Data Processing
    jq # lightweight JSON processor
    yq # YAML, JSON, XML, and TOML processor
    bat # cat alternative with syntax highlighting
    ffmpeg # audio and video processing toolkit

    # Nix Toolchain
    nixd # Nix language server
    alejandra # opinionated Nix code formatter
    nix-output-monitor # enhanced Nix build output display
    nix-tree # interactively browse Nix store dependencies

    # Security & Encryption
    gnupg # GPG encryption and signing toolkit
    pinentry-curses # terminal-based PIN entry for GPG
  ];
}
