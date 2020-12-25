# !bin/bash
if [[ $# != 1 ]]; then
echo "Invalid number of argument"
exit 1
fi

if [[ ! -f $1 ]]; then
echo "File does not exist"
exit 2
fi 

exists="trash"

if [[ "$(find /$HOME)" != exists ]]; then
mkdir $HOME/trash 
echo "Catalog created succesfully"
exists="1"
fi

date=$(date +'%F_%H-%M-%S')
ln $1 $HOME/trash/$date

if [[ "$exists" == 1 ]]; then
echo "Catalog exists"
echo "$PWD/$1 , $date" >> $HOME/trash.log
fi
rm $1
