#!/bin/bash
while sleep .1; do
  IFS=""
  miato="$(./shfire/read 823178459734867999 id | sed $'s/DIL/\035/')"
  msg=$(echo "$miato" | head -2 | sed '/^$/d' | tr -d '.'); msg=${msg% } #; msg=$(echo $msg | tr -s '"')
  id=$(echo $msg | cut -d'' -f1); id=${id#\"}; mesg=$(echo $msg | cut -d'' -f2)
  [ "$id" != "813231200147472394" ] && {
    IFS=  
  #  mesg=${mesg#\"}
  #  echo $mesg | grep '"' -q && {
  #    num=$(echo $mesg | awk -F'"' '{print NF-1}')
  #    [ $num -eq 1 ] 2>/dev/null && {
  #      export mesg=${mesg%\"}
  #    }
  #  }
  case $mesg in
  [A-z][Ww][A-z]*|?[Ww]?)
    echo -e "$mesg" | ./shfire/send "823178459734867999"
	;;
  *[Uu]?[Ww]?[Uu]*|*[Uu][Ww][Uu]*)
    echo -e "$mesg" | ./shfire/send "823178459734867999"
	;;
  *[Oo]?[Ww]?[Oo]*|*[Oo][Ww][Oo]*)
    echo -e "$mesg" | ./shfire/send "823178459734867999"
	;;
  *[Nn]y*a*|*[Nn]y*a*~|[*Nn][Yy]*[Aa]*|*[Nn][Yy]*[Aa]*~|*[Nn][Yy][Aa])
    echo -e "Nyaa~ uwu" | ./shfire/send "823178459734867999"
	;;
  *[U-u]/*/[U-u])
    echo -e "$mesg" | ./shfire/send "823178459734867999"
	;;
  *'*hug'*'*'*[Mm]iato*|*'*patpat*'*[Mm]iato*|*'*pat'*'*'*[Mm]iato*|*pat*[Mm]iato*|*hug*[Mm]iato*|*patpat*[Mm]iato*)
	  echo "UWU? Huggies/Pats for Me? uwuuwu" | ./shfire/send "823178459734867999"
	  echo "<3 *hugs <@!$id> bk*" | ./shfire/send "823178459734867999"
	;;
  *'*hug'*'*'*|*'*patpat*'*|*'*pat'*'*'*|*pat*|*hug*|*patpat*)
    echo -e "uUwUu $mesg" | ./shfire/send "823178459734867999"
	;;
  [Mm]*[Mm]|[Mm]*[Uu])
	  echo "mu" | ./shfire/send "823178459734867999"
	;;
  esac
  }
done
