#!/bin/bash
while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4 rec_column5
do
  echo "id: $rec_column1"
  echo "Prenom: $rec_column2"
  echo "Nom: $rec_column3"
  echo "Mdp: $rec_column4"
  echo "Rôle: $rec_column5"
  echo ""
done < <(tail -n +2 Shell_Userlist.csv)
