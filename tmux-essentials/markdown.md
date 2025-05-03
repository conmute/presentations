# TMUX essentials…

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

===

## Improve ur's Terminal Gene!

![BLAME megastructure](https://c4.wallpaperflare.com/wallpaper/100/389/106/blame-manga-wallpaper-preview.jpg)

<aside class="notes">
    CLI is usually one of the things that we do very very often… We can use sessions, windows and even panes!
</aside>

===

## Quick DEMO!

===

## Installation

```bash
<pacman> install tmux
brew install tmux
```

<aside class="notes">
    This command will add the powerfull session management to your cli experience
</aside>

===

## Extending TMUX

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

<aside class="notes">
    That is how we can add even more stuff to tmux!
</aside>

===

## Configuration

```bash [1-2|4-7|9-13|15-19|21-22|24-28|30|32-38|40|42-43|45-49|51-54|56-57|60|61|62|63|64|65|67-68|70-71|74]
set-option -sa terminal-overrides ",xterm*:Tc"
set -g default-terminal "screen-256color"

# readjust <lead> setup
set -g prefix C-a
unbind C-b
bind-key C-a send-prefix

# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on

# rebind % and " to more meaningfull | and -
unbind %
unbind '"'
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

unbind r
bind r source-file ~/.tmux.conf

# added vim navigation to resize pane!
bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
bind -r h resize-pane -L 5

bind -r m resize-pane -Z

# Shift Alt vim keys to switch windows
bind -n M-H previous-window
bind -n M-L next-window

# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window

set -g mouse on

# VI specific configuration
set-window-option -g mode-keys vi

# keybindings
bind-key -T copy-mode-vi v send-keys -X begin-selection # start selecting text with "v"
bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel # copy text with "y"
# bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"

unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode when dragging with mouse

# remove delay for exiting insert mode with ESC in Neovim
set -sg escape-time 10

# tpm plugin
set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'jimeh/tmux-themepack'
set -g @plugin 'tmux-plugins/tmux-resurrect' # persist tmux sessions after computer restart
set -g @plugin 'tmux-plugins/tmux-continuum' # automatically saves sessions for you every 15 minutes
set -g @plugin 'tmux-plugins/tmux-sensible'  # twicks to make tmux more sensible to all users
set -g @plugin 'tmux-plugins/tmux-yank'

# theme
set -g @themepack 'powerline/default/cyan'

set -g @resurrect-capture-pane-contents 'on'
set -g @continuum-restore 'on'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

<aside class="notes">
Shhh, these are your private notes 📝
</aside>

===

## QA
