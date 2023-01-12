password=""

while [ "$password" = "" ]
do
  password=$(curl -s https://www.firstinspires.org/resource-library/frc/competition-manual-qa-system | grep -i "code:" | python3 decode.py)
  echo "password:   $password"
  sleep 2
done

qpdf --password="$password" --decrypt 2023FRCGameManual.pdf 2023FRCGameManualDecoded.pdf

open 2023FRCGameManualDecoded.pdf