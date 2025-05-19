#/bin/sh 
magick -density 300 $1 /tmp/tmp1.png
magick -extract 2400x1400+100+250 /tmp/tmp1.png /tmp/tmp2.png
magick /tmp/tmp2.png -rotate 90 /tmp/tmp3.png
magick /tmp/tmp3.png -density 400 -page 1600x2480 /tmp/tmp.pdf
evince /tmp/tmp.pdf
rm /tmp/tmp.pdf /tmp/tmp1.png /tmp/tmp2.png /tmp/tmp3.png
