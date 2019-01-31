fundle plugin 'tuvistavie/fish-ssh-agent'
fundle plugin 'edc/bass'
fundle plugin 'tuvistavie/fish-fastdir'
# fundle plugin 'tuvistavie/fish-theme-afowler'

fundle init

set -gx PATH /usr/local/anaconda3/bin $PATH

# source (conda info --root)/etc/fish/conf.d/conda.fish

# conda activate root

# Nix
#if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
#  fenv source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
#end
# End Nix

set -x BOOT_JVM_OPTIONS "-client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none -XX:-OmitStackTraceInFastThrow"

set -x FLYBOT_NEXUS_USERNAME flybot
set -x FLYBOT_NEXUS_PASSWORD sharpen-haggle-dismast

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
