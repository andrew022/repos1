echo "Input specific component to display or all of them. [CPU, Memory, Display, Network, All]"
read input

if [ $input == "CPU" ]
then
    sudo lshw -c cpu | grep -E 'product:|vendor:|physical id:|bus info:|width:'
elif [ $input == "Memory" ]
then
    lshw -c memory | grep -E 'description:|physical id:|size:' | head -n3
elif [ $input == "Display" ]
then
    sudo lshw -c display | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:'
elif [ $input == "Network" ]
then
    sudo lshw -c network | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|cock:|capabilities:|configuration:|resources:'
elif [ $input == "All" ]
then
    echo "CPU"
    sudo lshw -c cpu | grep -E 'product:|vendor:|physical id:|bus info:|width:'
    echo "RAM"
    lshw -c memory | grep -E 'description:|physical id:|size:' | head -n3
    echo "Display"
    sudo lshw -c display | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:'
    echo "Network"
    sudo lshw -c network | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|cock:|capabilities:|configuration:|resources:'
else
    echo "Invalid input."
    ./201challenge07.sh
fi