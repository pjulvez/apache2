<VirtualHost *:80>	
	ServerAdmin pjulvez@almata.cat
	ServerName ciclos.almata.com
	ServerAlias www.ciclos.almata.com
	DocumentRoot /var/www/html/ciclos
	CustomLog ${APACHE_LOG_DIR}/access.log combined
	Errorlog ${APACHE_LOG_DIR}/access.log combined






</Virtualhost>
<Virtualhost>
<Directory "/var/www/html/ciclos/professors>
	Option Indexes
	Options FollowSymLinks
	Replace user
</Directory>
<Files index.html>
	Order allow,deny
	Deny from all
</Files>
	
</Virtualhost>
<VirtualHost>	
	ServerAdmin pjulvez@almata.cat
	ServerName ciclos.almata.professors.com
	ServerAlias www.ciclos.almata.professors.com
	DocumentRoot /var/www/html/ciclos/professors
	CustomLog ${APACHE_LOG_DIR}/access.log combined
	Errorlog ${APACHE_LOG_DIR}/access.log combined

</Virtualhost>





</Virtualhost>
