#! /bin/bash

# Sort all explicitly installed pacman pkgs by data
# Source: https://www.reddit.com/r/archlinux/comments/65ocd3/pacman_q_installed_list_sort_by_date_arch/

for i in $(pacman -Qe)
do
  grep "\[ALPM\] installed $i" /var/log/pacman.log
done | \
  sort -u | \
  sed -e 's/\[ALPM\] installed //' -e 's/(.*$//'

