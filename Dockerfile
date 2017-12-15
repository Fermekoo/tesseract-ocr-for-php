FROM ubuntu

RUN apt-get -y update \
 && apt-get -y install \
      curl unzip \
      php-cli php-mbstring php-xml php-xdebug \
      tesseract-ocr tesseract-ocr-eng tesseract-ocr-deu tesseract-ocr-jpn tesseract-ocr-spa

RUN curl -O https://getcomposer.org/installer \
 && php installer \
 && mv composer.phar /usr/bin/composer \
 && rm installer
