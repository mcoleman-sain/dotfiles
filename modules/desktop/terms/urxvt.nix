{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ rxvt_unicode ];

  services.xserver.displayManager.sessionCommands = ''
      xrdb "${
    pkgs.writeText "xrdb.conf" ''
      URxvt.font:                 xft:Hack:size=11
      URxvt.iconFile:             /usr/share/icons/elementary/apps/24/terminal.svg
      URxvt.letterSpace:          0
      URxvt.depth:                32
      URxvt.background:           rgba:0000/0000/0200/c800
      URxvt.foreground:           #FFFFFF
      ! black
      URxvt.color0  :             #2E3436
      URxvt.color8  :             #555753
      ! red
      URxvt.color1  :             #CC0000
      URxvt.color9  :             #EF2929
      ! green
      URxvt.color2  :             #4E9A06
      URxvt.color10 :             #8AE234
      ! yellow
      URxvt.color3  :             #C4A000
      URxvt.color11 :             #FCE94F
      ! blue
      URxvt.color4  :             #3465A4
      URxvt.color12 :             #729FCF
      ! magenta
      URxvt.color5  :             #75507B
      URxvt.color13 :             #AD7FA8
      ! cyan
      URxvt.color6  :             #06989A
      URxvt.color14 :             #34E2E2
      ! white
      URxvt.color7  :             #D3D7CF
      URxvt.color15 :             #EEEEEC
      URxvt*saveLines:            32767
      URxvt.colorUL:              #AED210
      URxvt.perl-ext:             default,url-select
      URxvt.keysym.M-u:           perl:url-select:select_next
      URxvt.url-select.launcher:  /usr/bin/firefox -new-tab
      URxvt.url-select.underline: true
      URxvt.scrollBar:            false
      URxvt*scrollTtyKeypress:    true
      URxvt*scrollTtyOutput:      false
      URxvt*scrollWithBuffer:     false
      URxvt*scrollstyle:          plain
      URxvt*secondaryScroll:      true
    ''
    }"
  '';
}
