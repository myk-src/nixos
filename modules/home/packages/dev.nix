{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    ## Lsp
    nixd # nix

    ## formating
    shfmt
    treefmt
    nixfmt

    ## C / C++
    gcc
    gdb
    gef
    cmake
    gnumake
    valgrind
    llvmPackages_20.clang-tools

    ## Python
    python3
    python312Packages.ipython

    # Agents
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.claude-code
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.claude-desktop
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.gemini-cli
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.antigravity-cli
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.antigravity-hub
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.claw-code
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.chatgpt
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.agent-manager
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.agent-deck
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.backlog-md
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.beads-viewer
    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.claude-code
  ];
}
