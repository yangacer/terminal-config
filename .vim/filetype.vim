au BufRead,BufNewFile /usr/local/etc/nginx/*,/usr/pi-coral/libdata/* if &ft == '' | setfiletype nginx | endif
au BufRead,BufNewFile *.js if &ft == '' | setf javascript | endif 
