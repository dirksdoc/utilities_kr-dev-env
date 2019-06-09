FROM gcr.io/cloudshell-images/cloudshell:latest

# Add your content here

# Install Krypton (Krypt.co)
RUN apt-get install software-properties-common dirmngr apt-transport-https -y
RUN apt-key adv --no-tty --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C4A05888A1C4FA02E1566F859F2A29A569653940
RUN add-apt-repository "deb http://kryptco.github.io/deb kryptco main"
RUN apt-get update
RUN apt-get install kr -y

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install yarn -y

# To trigger a rebuild of your Cloud Shell image:

# 1. Commit your changes locally: git commit -a
# 2. Push your changes upstream: git push origin master

# This triggers a rebuild of your image hosted at https://gcr.io/electronicsgarden-44d3c/krypton-dev
# You can find the Cloud Source Repository hosting this file at https://source.developers.google.com/p/electronicsgarden-44d3c/r/krypton-dev