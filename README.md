# Christian's "Dotfiles"

[![Welcome](https://cnd-prod-1.s3.us-west-004.backblazeb2.com/new-banner4-scaled-for-github.jpg)](https://youtu.be/apgp9egIKK8)

**Hey, there!**

**I’m Christian, and I’m passionate about creating educational tech content for IT Pros and Homelab nerds.**

This Repository **Dotfiles** contain my personal config files. Here you'll find configs, customizations, themes, and whatever I need to personalize my mac OS experience.

> :warning: Be aware, products can change over time. I do my best to keep up with the latest changes and releases, but please understand that this won’t always be the case.

I created them as free resources to be used in your specific use cases. If you're searching for detailed, in-depth tutorials on some tools or technologies, check out my [YouTube Channel](https://www.youtube.com/@christianlempa).

## Terminal and Application Icons with Nerd-Fonts

To display icons in terminal or applications Fonts, I'm using [Nerd-Fonts](https://www.nerdfonts.com). I'm currently using the **Hack Nerd Font Mono** in terminal applications, and **Hack Nerd Font** in applications.

## xcad2k themes

xcad2k combines the neutral grays and white accents of [The Digital Life VS Code theme](https://github.com/ChristianLempa/vscode-thedigitallife) with Ghostty-inspired purple, blue, and cyan syntax colors. Red, amber, and green remain distinct for terminal statuses and diagnostics. The light variant uses charcoal accents instead of white to keep controls readable. In dark mode, editor and note surfaces are lighter than the terminal and sidebars.

After pulling the dotfiles with yadm:

- **Ghostty:** The tracked config selects `xcad2k-light` or `xcad2k-dark` based on system appearance. Reload Ghostty's config after pulling.
- **Zed:** Open the theme selector and choose `xcad2k Light` or `xcad2k Dark`. To use both automatically, set `"theme": { "mode": "system", "light": "xcad2k Light", "dark": "xcad2k Dark" }` in your Zed settings.
- **Obsidian:** Run `~/.config/obsidian/install-xcad2k /path/to/your/vault`, then choose `xcad2k` under **Settings > Appearance > Themes**. The single theme package supports both base color schemes. Rerun the installer after pulling theme updates.
- **Orca:** Run `orca plugin install ~/.orca/plugins/xcad2k`. Under **Settings > Appearance**, select `xcad2k Light` and `xcad2k Dark` for the matching app and terminal modes. Leave both editor themes on **Same as app theme** to use xcad2k syntax colors. Rerun the install command after pulling plugin updates.
- **Hermes Desktop:** The native skin files are in `~/.hermes/skins/`. In the local Hermes profile's `config.yaml`, set `display.skin` to `xcad2k-dark` or `xcad2k-light`, then reopen Desktop and pick the skin under **Settings > Appearance > Theme** if it isn't already selected. This uses the same `display.skin` setting as the TUI and does not auto-switch between the two files. For a named local profile, copy the desired file to that profile's `skins/` directory first.

## Contribution

If you’d like to contribute to this project, reach out to me on social media or [Discord](https://christianlempa.de/discord), or create a pull request for the necessary changes.

## Other Resources

- [Boilerplates](https://github.com/christianlempa/boilerplates) - Templates for various projects like Docker, K8S, Ansible, etc
- [Cheat-Sheets](https://github.com/christianlempa/cheat-sheets) - Command Reference for various tools and technologies

💜 Support me and become a Fan! → https://www.youtube.com/channel/UCZNhwA1B5YqiY1nLzmM0ZRg/join
