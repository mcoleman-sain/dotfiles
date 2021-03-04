{ pkgs, lib, ... }:
{
  programs = {
    vscode = {
      extensions = [ pkgs.vscode-extensions.dracula-theme.theme-dracula ];
      userSettings."workbench.colorTheme" = "Dracula";
    };
    zsh.initExtra = ''
      # Colorful ls
      export LS_COLORS="no=00;38;5;15:rs=0:di=00;38;5;6:ln=00;38;5;2:mh=00:pi=48;5;0;38;5;3;01:so=48;5;0;38;5;3;01:do=48;5;0;38;5;3;01:bd=48;5;0;38;5;15;01:cd=48;5;0;38;5;15;01:or=48;5;0;38;5;1:su=48;5;1;38;5;3:sg=48;5;1;38;5;3:ca=30;41:tw=48;5;2;38;5;3:ow=48;5;0;38;5;6:st=48;5;6;38;5;3:ex=00;38;5;2:*.tar=00;38;5;4:*.tgz=00;38;5;4:*.arj=00;38;5;4:*.taz=00;38;5;4:*.lzh=00;38;5;4:*.lzma=00;38;5;4:*.tlz=00;38;5;4:*.txz=00;38;5;4:*.zip=00;38;5;4:*.z=00;38;5;4:*.Z=00;38;5;4:*.dz=00;38;5;4:*.gz=00;38;5;4:*.lz=00;38;5;4:*.xz=00;38;5;4:*.bz2=00;38;5;4:*.bz=00;38;5;4:*.tbz=00;38;5;4:*.tbz2=00;38;5;4:*.tz=00;38;5;4:*.deb=00;38;5;4:*.rpm=00;38;5;4:*.jar=00;38;5;4:*.rar=00;38;5;4:*.ace=00;38;5;4:*.zoo=00;38;5;4:*.cpio=00;38;5;4:*.7z=00;38;5;4:*.rz=00;38;5;4:*.apk=00;38;5;4:*.gem=00;38;5;4:*.jpg=00;38;5;3:*.JPG=00;38;5;3:*.jpeg=00;38;5;3:*.gif=00;38;5;3:*.bmp=00;38;5;3:*.pbm=00;38;5;3:*.pgm=00;38;5;3:*.ppm=00;38;5;3:*.tga=00;38;5;3:*.xbm=00;38;5;3:*.xpm=00;38;5;3:*.tif=00;38;5;3:*.tiff=00;38;5;3:*.png=00;38;5;3:*.PNG=00;38;5;3:*.svg=00;38;5;3:*.svgz=00;38;5;3:*.mng=00;38;5;3:*.pcx=00;38;5;3:*.dl=00;38;5;3:*.xcf=00;38;5;3:*.xwd=00;38;5;3:*.yuv=00;38;5;3:*.cgm=00;38;5;3:*.emf=00;38;5;3:*.eps=00;38;5;3:*.CR2=00;38;5;3:*.ico=00;38;5;3:*.tex=00;38;5;7:*.rdf=00;38;5;7:*.owl=00;38;5;7:*.n3=00;38;5;7:*.ttl=00;38;5;7:*.nt=00;38;5;7:*.torrent=00;38;5;7:*.xml=00;38;5;7:*Makefile=00;38;5;7:*Rakefile=00;38;5;7:*Dockerfile=00;38;5;7:*build.xml=00;38;5;7:*rc=00;38;5;7:*1=00;38;5;7:*.nfo=00;38;5;7:*README=00;38;5;7:*README.txt=00;38;5;7:*readme.txt=00;38;5;7:*.md=00;38;5;7:*README.markdown=00;38;5;7:*.ini=00;38;5;7:*.yml=00;38;5;7:*.cfg=00;38;5;7:*.conf=00;38;5;7:*.h=00;38;5;7:*.hpp=00;38;5;7:*.c=00;38;5;7:*.cpp=00;38;5;7:*.cxx=00;38;5;7:*.cc=00;38;5;7:*.objc=00;38;5;7:*.sqlite=00;38;5;7:*.go=00;38;5;7:*.sql=00;38;5;7:*.csv=00;38;5;7:*.log=00;38;5;8:*.bak=00;38;5;8:*.aux=00;38;5;8:*.lof=00;38;5;8:*.lol=00;38;5;8:*.lot=00;38;5;8:*.out=00;38;5;8:*.toc=00;38;5;8:*.bbl=00;38;5;8:*.blg=00;38;5;8:*~=00;38;5;8:*#=00;38;5;8:*.part=00;38;5;8:*.incomplete=00;38;5;8:*.swp=00;38;5;8:*.tmp=00;38;5;8:*.temp=00;38;5;8:*.o=00;38;5;8:*.pyc=00;38;5;8:*.class=00;38;5;8:*.cache=00;38;5;8:*.aac=00;38;5;1:*.au=00;38;5;1:*.flac=00;38;5;1:*.mid=00;38;5;1:*.midi=00;38;5;1:*.mka=00;38;5;1:*.mp3=00;38;5;1:*.mpc=00;38;5;1:*.ogg=00;38;5;1:*.opus=00;38;5;1:*.ra=00;38;5;1:*.wav=00;38;5;1:*.m4a=00;38;5;1:*.axa=00;38;5;1:*.oga=00;38;5;1:*.spx=00;38;5;1:*.xspf=00;38;5;1:*.mov=00;38;5;1:*.MOV=00;38;5;1:*.mpg=00;38;5;1:*.mpeg=00;38;5;1:*.m2v=00;38;5;1:*.mkv=00;38;5;1:*.ogm=00;38;5;1:*.mp4=00;38;5;1:*.m4v=00;38;5;1:*.mp4v=00;38;5;1:*.vob=00;38;5;1:*.qt=00;38;5;1:*.nuv=00;38;5;1:*.wmv=00;38;5;1:*.asf=00;38;5;1:*.rm=00;38;5;1:*.rmvb=00;38;5;1:*.flc=00;38;5;1:*.avi=00;38;5;1:*.fli=00;38;5;1:*.flv=00;38;5;1:*.gl=00;38;5;1:*.m2ts=00;38;5;1:*.divx=00;38;5;1:*.webm=00;38;5;1:*.axv=00;38;5;1:*.anx=00;38;5;1:*.ogv=00;38;5;1:*.ogx=00;38;5;1:"
    '';
    rofi.theme = ./rofi.rasi;
    alacritty.settings = {
      font = {
        size = 14;
        normal = {
          family = "Hack";
          style = "Regular";
        };
        bold = {
          family = "Hack";
          style = "Bold";
        };
        italic = {
          family = "Hack";
          style = "Italic";
        };
        bold_italic = {
          family = "Hack";
          style = "Bold Italic";
        };
      };
      colors = {
        primary = {
          background = "0x282a36";
          foreground = "0xf8f8f2";
        };
        cursor = {
          text = "CellBackground";
          cursor = "CellForeground";
        };
        vi_mode_cursor = {
          text = "CellBackground";
          cursor = "CellForeground";
        };
        search = {
          matches = {
            foreground = "0x44475a";
            background = "0x50fa7b";
          };
          focused_match = {
            foreground = "0x44475a";
            background = "0xffb86c";
          };
          bar = {
            background = "0x282a36";
            foreground = "0xf8f8f2";
          };
        };
        line_indicator = {
          foreground = "None";
          background = "None";
        };
        selection = {
          text = "CellForeground";
          background = "0x44475a";
        };
        normal = {
          black = "0x000000";
          red = "0xff5555";
          green = "0x50fa7b";
          yellow = "0xf1fa8c";
          blue = "0xbd93f9";
          magenta = "0xff79c6";
          cyan = "0x8be9fd";
          white = "0xbfbfbf";
        };
        bright = {
          black = "0x4d4d4d";
          red = "0xff6e67";
          green = "0x5af78e";
          yellow = "0xf4f99d";
          blue = "0xcaa9fa";
          magenta = "0xff92d0";
          cyan = "0x9aedfe";
          white = "0xe6e6e6";
        };
        dim = {
          black = "0x14151b";
          red = "0xff2222";
          green = "0x1ef956";
          yellow = "0xebf85b";
          blue = "0x4d5b86";
          magenta = "0xff46b0";
          cyan = "0x59dffc";
          white = "0xe6e6d1";
        };
      };
    };
  };
}
