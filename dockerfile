FROM webdevops/php-nginx:latest
ENV TIMEZONE Asia/Bangkok
ENV PHP_UPLOAD_MAX_FILESIZE: 500m
ENV PHP_POST_MAX_SIZE: 500m
ENV FPM_PM_MAX_CHILDREN: 100
ENV FPM_PM_START_SERVERS: 50
ENV FPM_PM_MIN_SPARE_SERVERS: 25
ENV FPM_PM_MAX_SPARE_SERVERS: 100
ENV FPM_PROCESS_IDLE_TIMEOUT: 10s
ENV fpm.pool.listen: 0.0.0.0:9000
ENV fpm.pool.pm.status_path: /status.php
ENV WEB_DOCUMENT_ROOT: /app/html
RUN cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime \
&& echo "${TIMEZONE}" >  /etc/timezone
RUN git clone https://github.com/Airl3uZ/demo-php-ci.git
RUN mv demo-php-ci /app
WORKDIR /app
RUN composer update


