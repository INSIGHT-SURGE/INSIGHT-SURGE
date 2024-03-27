if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/INSIGHT-SURGE/INSIGHT-SURGE.git /INSIGHT-SURGE
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /INSIGHT-SURGE
fi
cd /INSIGHT-SURGE
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
