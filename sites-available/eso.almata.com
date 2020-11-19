<VirtualHost *:80>	
	ServerAdmin pjulvez@almata.cat
	ServerName eso.almata.com
	ServerAlias www.eso.almata.com
	DocumentRoot /var/www/html/eso
	CustomLog ${APACHE_LOG_DIR}/access.log combined
	Errorlog ${APACHE_LOG_DIR}/access.log combined

<Directory "/var/www/html/eso/mates">
	<files "notes.xls">
		AuthType Basic
		AuthName "mates"
		AuthGroupFile "/etc/apache2/grupos"
		AuthUserFile /etc/apache2/contr_basic
		Require user Maite Jose Ramon Mireia
		Require group professors director

	</files>
</Directory>
<Directory "/var/www/html/eso/tecno">
	<files "notes.xls">
		AuthType Basic
		AuthName "tecno"
		AuthGroupFile "/etc/apache2/grupos"
		AuthUserFile /etc/apache2/contr_basic
		Require user Maite Jose Ramon Mireia
		Require group professors2 director

	</files>
</Directory>
	

</Virtualhost>



