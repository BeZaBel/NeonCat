SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

conky -c $SCRIPTPATH/clock.conf

echo "Conky launched"
