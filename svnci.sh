#/bin/sh
cd /home/kyle/dot/
svn add *
svn ci -m "routine commit."
echo "$(date): Done."
