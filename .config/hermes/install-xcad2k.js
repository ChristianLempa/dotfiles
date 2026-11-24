(() => {
  if (!window.hermesDesktop?.themes) throw new Error('Run this in the Hermes Desktop console.');

  const palette = ({ background, foreground, sidebar, card, input, muted, border, primary, onPrimary, selection, error, onError }) => ({
    background, foreground, sidebarBackground: sidebar, sidebarBorder: border,
    card, cardForeground: foreground, popover: card, popoverForeground: foreground,
    muted: card, mutedForeground: muted, border, input,
    primary, primaryForeground: onPrimary, ring: primary, composerRing: primary,
    midground: primary, midgroundForeground: onPrimary,
    accent: selection, accentForeground: foreground, secondary: card, secondaryForeground: foreground,
    userBubble: card, userBubbleBorder: border, destructive: error, destructiveForeground: onError,
  });

  // shortcut: Hermes Desktop does not yet import a paired local theme file; use its renderer theme registry until it does.
  const key = 'hermes-desktop-user-themes-v1';
  const themes = JSON.parse(localStorage.getItem(key) ?? '{}');
  if (!themes || typeof themes !== 'object' || Array.isArray(themes)) throw new Error('Unexpected Hermes theme registry format.');
  themes.xcad2k = {
    name: 'xcad2k', label: 'xcad2k', description: 'Neutral work surfaces with xcad2k terminal colors',
    colors: palette({ background: '#EFEFEF', foreground: '#303030', sidebar: '#E6E6E6', card: '#E6E6E6', input: '#FAFAFA', muted: '#555555', border: '#858585', primary: '#673BB3', onPrimary: '#FFFFFF', selection: '#DCD0F6', error: '#A22748', onError: '#FFFFFF' }),
    darkColors: palette({ background: '#252525', foreground: '#D1D1D1', sidebar: '#171717', card: '#2C2C2C', input: '#191919', muted: '#A7A7A7', border: '#666666', primary: '#C29AFF', onPrimary: '#181320', selection: '#424242', error: '#FFA0AA', onError: '#181320' }),
    terminal: { foreground: '#333139', cursor: '#006783', selectionBackground: '#DCD0F6', black: '#222026', red: '#A22748', green: '#286343', yellow: '#755200', blue: '#254AB3', magenta: '#82369E', cyan: '#006783', white: '#333139', brightBlack: '#595460', brightRed: '#922341', brightGreen: '#205638', brightYellow: '#684700', brightBlue: '#204099', brightMagenta: '#712886', brightCyan: '#005B74', brightWhite: '#443F4D' },
    darkTerminal: { foreground: '#F1F1F1', cursor: '#28B9FF', selectionBackground: '#393050', black: '#A09AA9', red: '#FFA0AA', green: '#93D6AE', yellow: '#F0CB7B', blue: '#8CADFF', magenta: '#E5A2FF', cyan: '#73D7FF', white: '#F1F1F1', brightBlack: '#B9B2C3', brightRed: '#FFC1C8', brightGreen: '#B5ECCB', brightYellow: '#FFE2A4', brightBlue: '#B1C8FF', brightMagenta: '#F0C1FF', brightCyan: '#9AE6FF', brightWhite: '#FFFFFF' },
  };
  localStorage.setItem(key, JSON.stringify(themes));
  return 'xcad2k installed. Reopen Hermes Desktop and select xcad2k in Settings > Appearance > Theme.';
})();
