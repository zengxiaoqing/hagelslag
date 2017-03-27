#!/bin/csh
cd /glade/p/work/ahijevyc/hagelslag/out/ge1px
set f=WSPD10MAX_15_WSPD10MAX_15
foreach d (3km_pbl?_1km_on_3km_pbl?_20????????_$f.png)
	convert -crop 980x900+136+1040 -trim +repage $d overlay.$d
end
montage -geometry 75% -tile 5x overlay*$f.png $f.png
