#!/bin/bash

# http://ss64.com/osx/syntax-strftime.html
# https://github.com/gf3/dotfiles/blob/v1.0.0/.bash_prompt
# http://git.io/solarized-colors
# http://www.isthe.com/chongo/tech/comp/ansi_escapes.html
# https://github.com/gf3/dotfiles
# https://blog.nerdery.com/2013/04/tech-tips-4-great-things-to-do-with-your-shell-prompt/
# https://en.wikipedia.org/wiki/X11_color_names#Color_name_chart
# http://unix.stackexchange.com/questions/269077/
# http://unix.stackexchange.com/a/269085/67282
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
# http://superuser.com/questions/382456/
# http://stackoverflow.com/a/15234931/922323

#-------------------------------------------------------------------------------

# fromhex A52A2A
# fromhex "#A52A2A"
# BLUE_VIOLET=$(fromhex "#8A2BE2")
function fromhex() {
  hex=$1
  if [[ $hex == "#"* ]]; then
    hex=$(echo $1 | awk '{print substr($0,2)}')
  fi
  r=$(printf '0x%0.2s' "$hex")
  g=$(printf '0x%0.2s' ${hex#??})
  b=$(printf '0x%0.2s' ${hex#????})
  echo -e `printf "%03d" "$(((r<75?0:(r-35)/40)*6*6+(g<75?0:(g-35)/40)*6+(b<75?0:(b-35)/40)+16))"`
}

function nice() {
  stamp="$(date '+%l:%M:%S%p')"
  echo -e ${stamp%?} | awk '{print tolower($0)}'
}

function emoji() {
  chars=(😄 😃 😀 😊 ☺ 😉 😍 😘 😚 😗 😙 😜 😝 😛 😳 😁 😔 😌 😒 😞 😣 😢 😂 😭 😪 😥 😰 😅 😓 😩 😫 😨 😱 😠 😡 😤 😖 😆 😋 😷 😎 😴 😵 😲 😟 😦 😧 😈 👿 😮 😬 😐 😕 😯 😶 😇 😏 😑 👲 👳 👮 👷 💂 👶 👦 👧 👨 👩 👴 👵 👱 👼 👸 😺 😸 😻 😽 😼 🙀 😿 😹 😾 👹 👺 🙈 🙉 🙊 💀 👽 💩 🔥 ✨ 🌟 💫 💥 💢 💦 💧 💤 💨 👂 👀 👃 👅 👄 👍 👎 👌 👊 ✊ ✌ 👋 ✋ 👐 👆 👇 👉 👈 🙌 🙏 ☝ 👏 💪 🚶 🏃 💃 👫 👪 👬 👭 💏 💑 👯 🙆 🙅 💁 🙋 💆 💇 💅 👰 🙎 🙍 🙇 🎩 👑 👒 👟 👞 👡 👠 👢 👕 👔 👚 👗 🎽 👖 👘 👙 💼 👜 👝 👛 👓 🎀 🌂 💄 💛 💙 💜 💚 ❤ 💔 💗 💓 💕 💖 💞 💘 💌 💋 💍 💎 👤 👥 💬 👣 💭 🐶 🐺 🐱 🐭 🐹 🐰 🐸 🐯 🐨 🐻 🐷 🐽 🐮 🐗 🐵 🐒 🐴 🐑 🐘 🐼 🐧 🐦 🐤 🐥 🐣 🐔 🐍 🐢 🐛 🐝 🐜 🐞 🐌 🐙 🐚 🐠 🐟 🐬 🐳 🐋 🐄 🐏 🐀 🐃 🐅 🐇 🐉 🐎 🐐 🐓 🐕 🐖 🐁 🐂 🐲 🐡 🐊 🐫 🐪 🐆 🐈 🐩 🐾 💐 🌸 🌷 🍀 🌹 🌻 🌺 🍁 🍃 🍂 🌿 🌾 🍄 🌵 🌴 🌲 🌳 🌰 🌱 🌼 🌐 🌞 🌝 🌚 🌑 🌒 🌓 🌔 🌕 🌖 🌗 🌘 🌜 🌛 🌙 🌍 🌎 🌏 🌋 🌌 🌠 ⭐ ☀ ⛅ ☁ ⚡ ☔ ❄ ⛄ 🌀 🌁 🌈 🌊  🎍 💝 🎎 🎒 🎓 🎏 🎆 🎇 🎐 🎑 🎃 👻 🎅 🎄 🎁 🎋 🎉 🎊 🎈 🎌 🔮 🎥 📷 📹 📼 💿 📀 💽 💾 💻 📱 ☎ 📞 📟 📠 📡 📺 📻 🔊 🔉 🔈 🔇 🔔 🔕 📢 📣 ⏳ ⌛ ⏰ ⌚ 🔓 🔒 🔏 🔐 🔑 🔎 💡 🔦 🔆 🔅 🔌 🔋 🔍 🛁 🛀 🚿 🚽 🔧 🔩 🔨 🚪 🚬 💣 🔫 🔪 💊 💉 💰 💴 💵 💷 💶 💳 💸 📲 📧 📥 📤 ✉ 📩 📨 📯 📫 📪 📬 📭 📮 📦 📝 📄 📃 📑 📊 📈 📉 📜 📋 📅 📆 📇 📁 📂 ✂ 📌 📎 ✒ ✏ 📏 📐 📕 📗 📘 📙 📓 📔 📒 📚 📖 🔖 📛 🔬 🔭 📰 🎨 🎬 🎤 🎧 🎼 🎵 🎶 🎹 🎻 🎺 🎷 🎸 👾 🎮 🃏 🎴 🀄 🎲 🎯 🏈 🏀 ⚽ ⚾ 🎾 🎱 🏉 🎳 ⛳ 🚵 🚴 🏁 🏇 🏆 🎿 🏂 🏊 🏄 🎣 ☕ 🍵 🍶 🍼 🍺 🍻 🍸 🍹 🍷 🍴 🍕 🍔 🍟 🍗 🍖 🍝 🍛 🍤 🍱 🍣 🍥 🍙 🍘 🍚 🍜 🍲 🍢 🍡 🍳 🍞 🍩 🍮 🍦 🍨 🍧 🎂 🍰 🍪 🍫 🍬 🍭 🍯 🍎 🍏 🍊 🍋 🍒 🍇 🍉 🍓 🍑 🍈 🍌 🍐 🍍 🍠 🍆 🍅 🌽  🏠 🏡 🏫 🏢 🏣 🏥 🏦 🏪 🏩 🏨 💒 ⛪ 🏬 🏤 🌇 🌆 🏯 🏰 ⛺ 🏭 🗼 🗾 🗻 🌄 🌅 🌃 🗽 🌉 🎠 🎡 ⛲ 🎢 🚢 ⛵ 🚤 🚣 ⚓ 🚀 ✈ 💺 🚁 🚂 🚊 🚉 🚞 🚆 🚄 🚅 🚈 🚇 🚝 🚋 🚃 🚎 🚌 🚍 🚙 🚘 🚗 🚕 🚖 🚛 🚚 🚨 🚓 🚔 🚒 🚑 🚐 🚲 🚡 🚟 🚠 🚜 💈 🚏 🎫 🚦 🚥 ⚠ 🚧 🔰 ⛽ 🏮 🎰 ♨ 🗿 🎪 🎭 📍 🚩    🔣 ⬆ ⬇ ⬅ ➡ 🔠 🔡 🔤 ↗ ↖ ↘ ↙ ↔ ↕ 🔄 ◀ ▶ 🔼 🔽 ↩ ↪ ℹ ⏪ ⏩ ⏫ ⏬ ⤵ ⤴ 🆗 🔀 🔁 🔂 🆕 🆙 🆒 🆓 🆖 📶 🎦 🈁 🈯 🈳 🈵 🈴 🈲 🉐 🈹 🈺 🈶 🈚 🚻 🚹 🚺 🚼 🚾 🚰 🚮 🅿 ♿ 🚭 🈷 🈸 🈂 Ⓜ 🛂 🛄 🛅 🛃 🉑 ㊙ ㊗ 🆑 🆘 🆔 🚫 🔞 📵 🚯 🚱 🚳 🚷 🚸 ⛔ ✳ ❇ ❎ ✅ ✴ 💟 🆚 📳 📴 🅰 🅱 🆎 🅾 💠 ➿ ♻ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ ⛎ 🔯 🏧 💹 💲 💱 © ® ™ ❌ ‼ ⁉ ❗ ❓ ❕ ❔ ⭕ 🔝 🔚 🔙 🔛 🔜 🔃 🕛 🕧 🕐 🕜 🕑 🕝 🕒 🕞 🕓 🕟 🕔 🕠 🕕 🕖 🕗 🕘 🕙 🕚 🕡 🕢 🕣 🕤 🕥 🕦 ✖ ➕ ➖ ➗ ♠ ♥ ♣ ♦ 💮 💯 ✔ ☑ 🔘 🔗 ➰ 〰 〽 🔱 🔺 🔲 🔳 ⚫ ⚪ 🔴 🔵 🔻 ⬜ ⬛ 🔶 🔷   ☄ ⚡ ⛏ ⛳ ⛱ ⛷ ⚒ ⚓ ⚔ ♲ ♳ ♴ ♵ ♶ ♷ ♸ ♹ ♺ ♻ ♼ ♽ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷ ☠ ☀ ☁ ☂ ☃)
  echo -e "`echo ${chars[$RANDOM % ${#chars[@]}]}`"
}

function trunk() {
  # Define the awk script using heredoc notation for easy modification:
  auk=$(cat << 'EOF'
    BEGIN { FS = OFS = "/" } {
      sub(ENVIRON["HOME"], "~")
      if (length($0) > 16 && NF > 4)
        print $1,$2,"…" NF-4 "…",$(NF-1),$NF
      else
        print $0
    }
EOF
  )
  dur=`echo $(echo -n "$PWD" | awk "$auk")`
  echo -e $(eval 'echo "${dur}"')
}

#-------------------------------------------------------------------------------

if [[ -s "$HOME/.scripts/git-prompt.sh" ]]; then
  
  source "$HOME/.scripts/git-prompt.sh"
  
  # Unstaged (*) and staged (+) changes will be shown next to the branch name.
  GIT_PS1_SHOWDIRTYSTATE=1
  
  # If something is stashed, then a '$' will be shown next to the branch name.
  GIT_PS1_SHOWSTASHSTATE=1
  
  # If there're untracked files, then a '%' will be shown next to the branch name.
  GIT_PS1_SHOWUNTRACKEDFILES=1
  
  # See the difference between HEAD and its upstream.
  # A "<" indicates you are behind, ">" indicates you are ahead, "<>" indicates
  # you have diverged and "=" indicates that there is no difference.
  GIT_PS1_SHOWUPSTREAM=("auto" "verbose" "name")
  
  # See more information about the identity of commits.
  GIT_PS1_DESCRIBE_STYLE="default"
  
  # Colored hint about the current dirty state.
  GIT_PS1_SHOWCOLORHINTS=1
  
fi

#-------------------------------------------------------------------------------

export TERM=xterm-256color

tput sgr0; # reset colors

STANDOUT=$(tput smso)
BOLD=$(tput bold)
UNDERLINE=$(tput sgr 0 1)
BLINK=$(tput blink)
REVERSE=$(tput smso)
RESET=$(tput sgr0)

ALICE_BLUE=$(tput setaf $(fromhex "#F0F8FF"))
ANTIQUE_WHITE=$(tput setaf $(fromhex "#FAEBD7"))
AQUA=$(tput setaf $(fromhex "#00FFFF"))
AQUAMARINE=$(tput setaf $(fromhex "#7FFFD4"))
AZURE=$(tput setaf $(fromhex "#F0FFFF"))
BEIGE=$(tput setaf $(fromhex "#F5F5DC"))
BISQUE=$(tput setaf $(fromhex "#FFE4C4"))
BLACK=$(tput setaf $(fromhex "#000000"))
BLANCHED_ALMOND=$(tput setaf $(fromhex "#FFEBCD"))
BLUE=$(tput setaf $(fromhex "#0000FF"))
BLUE_VIOLET=$(tput setaf $(fromhex "#8A2BE2"))
BROWN=$(tput setaf $(fromhex "#A52A2A"))
BURLYWOOD=$(tput setaf $(fromhex "#DEB887"))
CADET_BLUE=$(tput setaf $(fromhex "#5F9EA0"))
CHARTREUSE=$(tput setaf $(fromhex "#7FFF00"))
CHOCOLATE=$(tput setaf $(fromhex "#D2691E"))
CORAL=$(tput setaf $(fromhex "#FF7F50"))
CORNFLOWER=$(tput setaf $(fromhex "#6495ED"))
CORNSILK=$(tput setaf $(fromhex "#FFF8DC"))
CRIMSON=$(tput setaf $(fromhex "#DC143C"))
CYAN=$(tput setaf $(fromhex "#00FFFF"))
DARK_BLUE=$(tput setaf $(fromhex "#00008B"))
DARK_CYAN=$(tput setaf $(fromhex "#008B8B"))
DARK_GOLDENROD=$(tput setaf $(fromhex "#B8860B"))
DARK_GRAY=$(tput setaf $(fromhex "#A9A9A9"))
DARK_GREEN=$(tput setaf $(fromhex "#006400"))
DARK_KHAKI=$(tput setaf $(fromhex "#BDB76B"))
DARK_MAGENTA=$(tput setaf $(fromhex "#8B008B"))
DARK_OLIVE_GREEN=$(tput setaf $(fromhex "#556B2F"))
DARK_ORANGE=$(tput setaf $(fromhex "#FF8C00"))
DARK_ORCHID=$(tput setaf $(fromhex "#9932CC"))
DARK_RED=$(tput setaf $(fromhex "#8B0000"))
DARK_SALMON=$(tput setaf $(fromhex "#E9967A"))
DARK_SEA_GREEN=$(tput setaf $(fromhex "#8FBC8F"))
DARK_SLATE_BLUE=$(tput setaf $(fromhex "#483D8B"))
DARK_SLATE_GRAY=$(tput setaf $(fromhex "#2F4F4F"))
DARK_TURQUOISE=$(tput setaf $(fromhex "#00CED1"))
DARK_VIOLET=$(tput setaf $(fromhex "#9400D3"))
DEEP_PINK=$(tput setaf $(fromhex "#FF1493"))
DEEP_SKY_BLUE=$(tput setaf $(fromhex "#00BFFF"))
DIM_GRAY=$(tput setaf $(fromhex "#696969"))
DODGER_BLUE=$(tput setaf $(fromhex "#1E90FF"))
FIREBRICK=$(tput setaf $(fromhex "#B22222"))
FLORAL_WHITE=$(tput setaf $(fromhex "#FFFAF0"))
FOREST_GREEN=$(tput setaf $(fromhex "#228B22"))
FUCHSIA=$(tput setaf $(fromhex "#FF00FF"))
GAINSBORO=$(tput setaf $(fromhex "#DCDCDC"))
GHOST_WHITE=$(tput setaf $(fromhex "#F8F8FF"))
GOLD=$(tput setaf $(fromhex "#FFD700"))
GOLDENROD=$(tput setaf $(fromhex "#DAA520"))
GRAY=$(tput setaf $(fromhex "#BEBEBE"))
WEB_GRAY=$(tput setaf $(fromhex "#808080"))
GREEN=$(tput setaf $(fromhex "#00FF00"))
WEB_GREEN=$(tput setaf $(fromhex "#008000"))
GREEN_YELLOW=$(tput setaf $(fromhex "#ADFF2F"))
HONEYDEW=$(tput setaf $(fromhex "#F0FFF0"))
HOT_PINK=$(tput setaf $(fromhex "#FF69B4"))
INDIAN_RED=$(tput setaf $(fromhex "#CD5C5C"))
INDIGO=$(tput setaf $(fromhex "#4B0082"))
IVORY=$(tput setaf $(fromhex "#FFFFF0"))
KHAKI=$(tput setaf $(fromhex "#F0E68C"))
LAVENDER=$(tput setaf $(fromhex "#E6E6FA"))
LAVENDER_BLUSH=$(tput setaf $(fromhex "#FFF0F5"))
LAWN_GREEN=$(tput setaf $(fromhex "#7CFC00"))
LEMON_CHIFFON=$(tput setaf $(fromhex "#FFFACD"))
LIGHT_BLUE=$(tput setaf $(fromhex "#ADD8E6"))
LIGHT_CORAL=$(tput setaf $(fromhex "#F08080"))
LIGHT_CYAN=$(tput setaf $(fromhex "#E0FFFF"))
LIGHT_GOLDENROD=$(tput setaf $(fromhex "#FAFAD2"))
LIGHT_GRAY=$(tput setaf $(fromhex "#D3D3D3"))
LIGHT_GREEN=$(tput setaf $(fromhex "#90EE90"))
LIGHT_PINK=$(tput setaf $(fromhex "#FFB6C1"))
LIGHT_SALMON=$(tput setaf $(fromhex "#FFA07A"))
LIGHT_SEA_GREEN=$(tput setaf $(fromhex "#20B2AA"))
LIGHT_SKY_BLUE=$(tput setaf $(fromhex "#87CEFA"))
LIGHT_SLATE_GRAY=$(tput setaf $(fromhex "#778899"))
LIGHT_STEEL_BLUE=$(tput setaf $(fromhex "#B0C4DE"))
LIGHT_YELLOW=$(tput setaf $(fromhex "#FFFFE0"))
LIME=$(tput setaf $(fromhex "#00FF00"))
LIME_GREEN=$(tput setaf $(fromhex "#32CD32"))
LINEN=$(tput setaf $(fromhex "#FAF0E6"))
MAGENTA=$(tput setaf $(fromhex "#FF00FF"))
MAROON=$(tput setaf $(fromhex "#B03060"))
WEB_MAROON=$(tput setaf $(fromhex "#7F0000"))
MEDIUM_AQUAMARINE=$(tput setaf $(fromhex "#66CDAA"))
MEDIUM_BLUE=$(tput setaf $(fromhex "#0000CD"))
MEDIUM_ORCHID=$(tput setaf $(fromhex "#BA55D3"))
MEDIUM_PURPLE=$(tput setaf $(fromhex "#9370DB"))
MEDIUM_SEA_GREEN=$(tput setaf $(fromhex "#3CB371"))
MEDIUM_SLATE_BLUE=$(tput setaf $(fromhex "#7B68EE"))
MEDIUM_SPRING_GREEN=$(tput setaf $(fromhex "#00FA9A"))
MEDIUM_TURQUOISE=$(tput setaf $(fromhex "#48D1CC"))
MEDIUM_VIOLET_RED=$(tput setaf $(fromhex "#C71585"))
MIDNIGHT_BLUE=$(tput setaf $(fromhex "#191970"))
MINT_CREAM=$(tput setaf $(fromhex "#F5FFFA"))
MISTY_ROSE=$(tput setaf $(fromhex "#FFE4E1"))
MOCCASIN=$(tput setaf $(fromhex "#FFE4B5"))
NAVAJO_WHITE=$(tput setaf $(fromhex "#FFDEAD"))
NAVY_BLUE=$(tput setaf $(fromhex "#000080"))
OLD_LACE=$(tput setaf $(fromhex "#FDF5E6"))
OLIVE=$(tput setaf $(fromhex "#808000"))
OLIVE_DRAB=$(tput setaf $(fromhex "#6B8E23"))
ORANGE=$(tput setaf $(fromhex "#FFA500"))
ORANGE_RED=$(tput setaf $(fromhex "#FF4500"))
ORCHID=$(tput setaf $(fromhex "#DA70D6"))
PALE_GOLDENROD=$(tput setaf $(fromhex "#EEE8AA"))
PALE_GREEN=$(tput setaf $(fromhex "#98FB98"))
PALE_TURQUOISE=$(tput setaf $(fromhex "#AFEEEE"))
PALE_VIOLET_RED=$(tput setaf $(fromhex "#DB7093"))
PAPAYA_WHIP=$(tput setaf $(fromhex "#FFEFD5"))
PEACH_PUFF=$(tput setaf $(fromhex "#FFDAB9"))
PERU=$(tput setaf $(fromhex "#CD853F"))
PINK=$(tput setaf $(fromhex "#FFC0CB"))
PLUM=$(tput setaf $(fromhex "#DDA0DD"))
POWDER_BLUE=$(tput setaf $(fromhex "#B0E0E6"))
PURPLE=$(tput setaf $(fromhex "#A020F0"))
WEB_PURPLE=$(tput setaf $(fromhex "#7F007F"))
REBECCA_PURPLE=$(tput setaf $(fromhex "#663399"))
RED=$(tput setaf $(fromhex "#FF0000"))
ROSY_BROWN=$(tput setaf $(fromhex "#BC8F8F"))
ROYAL_BLUE=$(tput setaf $(fromhex "#4169E1"))
SADDLE_BROWN=$(tput setaf $(fromhex "#8B4513"))
SALMON=$(tput setaf $(fromhex "#FA8072"))
SANDY_BROWN=$(tput setaf $(fromhex "#F4A460"))
SEA_GREEN=$(tput setaf $(fromhex "#2E8B57"))
SEASHELL=$(tput setaf $(fromhex "#FFF5EE"))
SIENNA=$(tput setaf $(fromhex "#A0522D"))
SILVER=$(tput setaf $(fromhex "#C0C0C0"))
SKY_BLUE=$(tput setaf $(fromhex "#87CEEB"))
SLATE_BLUE=$(tput setaf $(fromhex "#6A5ACD"))
SLATE_GRAY=$(tput setaf $(fromhex "#708090"))
SNOW=$(tput setaf $(fromhex "#FFFAFA"))
SPRING_GREEN=$(tput setaf $(fromhex "#00FF7F"))
STEEL_BLUE=$(tput setaf $(fromhex "#4682B4"))
TAN=$(tput setaf $(fromhex "#D2B48C"))
TEAL=$(tput setaf $(fromhex "#008080"))
THISTLE=$(tput setaf $(fromhex "#D8BFD8"))
TOMATO=$(tput setaf $(fromhex "#FF6347"))
TURQUOISE=$(tput setaf $(fromhex "#40E0D0"))
VIOLET=$(tput setaf $(fromhex "#EE82EE"))
WHEAT=$(tput setaf $(fromhex "#F5DEB3"))
WHITE=$(tput setaf $(fromhex "#FFFFFF"))
WHITE_SMOKE=$(tput setaf $(fromhex "#F5F5F5"))
YELLOW=$(tput setaf $(fromhex "#FFFF00"))
YELLOW_GREEN=$(tput setaf $(fromhex "#9ACD32"))

user="\[$DEEP_PINK\]\u"
at="\[$REBECCA_PURPLE\]@"
host="\[$DODGER_BLUE\]\h"
colon="\[$TURQUOISE\]:"
path="\[$TOMATO\]\$(trunk)\[$RESET\]"
dt="\[$YELLOW_GREEN\]\$(nice)"
eol="\[$STEEL_BLUE\]¬\n"
char="\$(emoji)"
top="\[$STEEL_BLUE\]\n┌─"
bottom="\[$STEEL_BLUE\]└─"
prompt="\[$YELLOW\]$\[$RESET\]" # https://github.com/mhulse/dotfizzles/issues/79

# @TODO: Clean this up (make like syntax above):
# "who am i" is a check to see if logged in over ssh
#if [[ -n "$(who am i | grep \()" ]]; then
#  host=${red}
#  path=${white}
#else
#  host=${green}
#  path=${purple}
#fi
#host+="\h:"
#path+='$(eval "echo ${truncated_path}")'"$ "

export PS1=""
export PS2="\[$ORANGE\]➜ \[$RESET\]"

export PROMPT_COMMAND='__git_ps1 "${top}${user}${at}${host}${colon}${path}" " ${dt}${eol}${bottom}${char} ${prompt} "'
