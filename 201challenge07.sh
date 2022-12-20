sudo lshw -c cpu | grep -E 'product:|vendor:|physical id:|bus info:|width:'
lshw -c memory | grep -E 'description:|physical id:|size:' | head -n3
sudo lshw -c display | grep -E 'description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:'
sudo lshw -c network | grep -E 'description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|cock:|capabilities:|configuration:|resources:'