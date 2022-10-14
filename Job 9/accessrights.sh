#!/bin/bash
while IFS="," read -r id prenom nom mdp role
do
  sudo useradd -m -p "$mdp" "$prenom$nom" --uid "$id"
  #echo -n "$mdp\n$mdp\n"
  if [[ "$role" =~ .*Admin.* ]];
  then
  sudo adduser "$prenom$nom" adm
  else
  echo "$prenom$nom a le role user"
  fi
done < <(tail -n +2 Shell_Userlist.csv)
