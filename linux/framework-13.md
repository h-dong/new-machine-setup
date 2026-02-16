# Framework 13

## GPU

Run this command to install the required library for AMD GPU monitoring:

```bash
sudo pacman -S rocm-smi-lib
```

Then it should appear in BTOP++ app.

## Sound

Install EasyEffects and the Filter Plugin by running this in the terminal to grab the main app and the specific AI noise-reduction plugin:

```bash
sudo pacman -S easyeffects
yay -S libdeep_filter_ladspa-bin
```

Change it so the app starts every time you reboot:

- Click the Menu (three lines) in the top right of EasyEffects.
- Go to Preferences -> General.
- Enable Launch Easy Effects at Startup.
- Enable Shutdown on Window Close (this keeps it running in the tray/background when you "X" out).

### Output

Use recommended official settings via EasyEffects:

```bash
# Create the directory if it doesn't exist
mkdir -p ~/.config/easyeffects/output/

# Download the official Framework 13 preset
curl -L https://raw.githubusercontent.com/FrameworkComputer/linux-docs/main/easy-effects/fw13-easy-effects.json -o ~/.config/easyeffects/output/fw13-official.json
```

Apply the Preset in EasyEffects:

- Open EasyEffects.
- Switch to the Output tab (speaker icon) at the top.
- Click the Presets button (top left).
- You should now see fw13-official in the list. Select it and click Load.

### Input

#### Configure the Noise Filter

Once installed, open EasyEffects from your app menu and follow these steps:

- Select the Input Tab: Look at the top left and ensure you are on the Input (Microphone) tab, not Output.
- Add the Effect: Click the + Add Effect button on the left sidebar.
- Choose "Deep Noise Remover": Select this from the list.
- Enable it: In the "Deep Noise Remover" settings that appear, ensure the dropdown menu is set to DeepFilterNet.
- Important: Turn the Bypass switch to Off (so the light is active/blue) to start the filtering.

#### The "Framework 13" Mono Tweak

As we discussed earlier, the Framework 13's mic often has phase issues. In EasyEffects, you can fix this permanently:

- In the same Input tab, click Add Effect again and choose Stereo Tools.
- Set the Mode to Mono.
- This forces the system to use one clean channel instead of two fighting ones.

#### Install calf if not already

Calf is needed by EasyEffects.

Run this to grab the suite that includes Stereo Tools:

```bash
sudo pacman -S calf
```