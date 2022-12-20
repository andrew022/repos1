sudo lshw -c cpu | grep -E 'product:|vendor:|physical id:|bus info:|width:'
lshw -c memory | grep -E 'description:|physical id:|size:' | head -n3