# wezterm_setting
This repo is my configuration for `wezterm`.

## Install wezterm
### For ubuntu
First, please run the commands to set the configuration for your system.
```bash
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
```

And then you need run this command to update the dependencies.
```bash
sudo apt-get update
```

Please run this command to install `wezterm`.
```bash
sudo apt-get install wezterm
```

## Set the configuration for wezterm
Please run the commands to set the configuration for `wezterm`.
```bash
mkdir -p $HOME/.config/wezterm
cp wezterm.lua $HOME/.config/wezterm
```

