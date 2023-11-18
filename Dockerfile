FROM ubuntu:jammy-20231004

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs

RUN apt-get install -y unoconv=0.7-2ubuntu1 ffmpeg=7:4.4.2-0ubuntu0.22.04.1 imagemagick=8:6.9.11.60+dfsg-1.3ubuntu0.22.04.3 curl=7.81.0-1ubuntu1.14 libreoffice=1:7.3.7-0ubuntu0.22.04.3 python3-uno=1:7.3.7-0ubuntu0.22.04.3 ghostscript=9.55.0~dfsg1-0ubuntu5.5

RUN sed -i_bak 's/rights="none" pattern="PDF"/rights="read | write" pattern="PDF"/' /etc/ImageMagick-6/policy.xml