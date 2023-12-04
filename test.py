from tweety import Twitter
import os
from tweety.exceptions_ import ActionRequired

username = os.environ.get("xu")
password = os.environ.get("xp")
extra = os.environ.get("xe")

app = Twitter("session")
try:
    app.sign_in(username, password, extra=extra)
except ActionRequired as e:
    action = input(f"Action Required :> {str(e.message)} : ")
    app.sign_in(username, password, extra=action)

    
target_username = "elonmusk"

user = app.get_user_info(target_username)
all_tweets = app.get_tweets(user)

for tweet in all_tweets:
    print(tweet)