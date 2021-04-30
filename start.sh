echo "Adding $TARGET_HOST to the NGINX config"
sed -i -e "s,___TARGET_HOST___,$TARGET_HOST,g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
