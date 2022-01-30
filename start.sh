if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://git.heroku.com/luciferevamaria.git /luciferevamaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /luciferevamaria
fi
cd /luciferevamaria
pip freeze > requirements.txt
echo "Starting Bot...."
python3 bot.py
