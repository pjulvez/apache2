<VirtualHost *:80>	
	ServerAdmin pjulvez@almata.cat
	ServerName eso.almata.com
	ServerAlias www.eso.almata.com
	DocumentRoot /var/www/html/eso
	CustomLog ${APACHE_LOG_DIR}/access.log combined
	Errorlog ${APACHE_LOG_DIR}/access.log combined


</Virtualhost>
