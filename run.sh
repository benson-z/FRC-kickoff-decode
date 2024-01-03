password=""

while [ "$password" = "" ]
do
  password=$(curl -s https://www.firstinspires.org/resource-library/frc/competition-manual-qa-system | grep -i "code:" | python3 decode.py)
  echo "password:   $password"
  sleep 2
done

qpdf --password="$password" --decrypt 2024GameManual.pdf 2024GameManualDecoded.pdf

open 2024GameManualDecoded.pdf
