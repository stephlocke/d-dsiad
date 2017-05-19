FROM rocker/tidyverse
MAINTAINER Steph Locke <steph@itsalocke.com>
RUN apt-get install whois
RUN  R -e 'devtools::install_github("lockedata/TR-dsiad")' 
ADD https://gist.github.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/830c39a1e683ed0c168d069dfacba6afd9a451b7/mkusersdsiad.sh /
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/6d967c19d9c73cecd1e2d4da0eed2cd646790bd5/users.csv /
RUN chmod 777 /mkusersdsiad.sh
RUN /mkusersdsiad.sh