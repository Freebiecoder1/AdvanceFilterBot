if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Freebiecoder1/AdvanceFilterBot /AdvanceFilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AdvanceFilterBot
fi
cd /AdvanceFilterBot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
