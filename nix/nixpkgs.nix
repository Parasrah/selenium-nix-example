# this file is used to pin the version of the store this project depends on
# ensuring that every developer has the exact same version of each package
builtins.fetchGit {
  # Descriptive name to make the store path easier to identify
  name = "nixpkgs-unstable";
  url = "https://github.com/nixos/nixpkgs-channels/";
  # Commit hash for nixos-unstable as of 2020-05-27
  # `git ls-remote https://github.com/nixos/nixpkgs-channels nixos-unstable`
  ref = "refs/heads/nixpkgs-unstable";
  # if you want to update the version of the store, add a newer revision from the
  # github repo listed above
  rev = "61525137fd1002f6f2a5eb0ea27d480713362cd5";
}
