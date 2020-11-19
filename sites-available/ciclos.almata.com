<VirtualHost *:80>	
	ServerAdmin pjulvez@almata.cat
	ServerName ciclos.almata.com
	ServerAlias www.ciclos.almata.com
	DocumentRoot /var/www/html/ciclos
	CustomLog ${APACHE_LOG_DIR}/access.log combined
	Errorlog ${APACHE_LOG_DIR}/access.log combined


<Directory "/var/www/html/ciclos/m6">
		AuthType Basic
		AuthName "m6"
		AuthGroupFile "/etc/apache2/grupos"
		AuthUserFile /etc/apache2/contr_basic
		Require group professors director
		Require user Santi Tito Eduard Mireia


	</Directory>
		<Directory "/var/www/html/ciclos/m2/notes.xls>
		AuthType Basic
		AuthName "m2"
		AuthGroupFile "/etc/apache2/grupos"
		AuthUserFile /etc/apache2/contr_basic
		Require group professors director
		Require user Santi Tito Eduard Mireia
	</Directory>
	
	</Directory>
		<Directory "/var/www/html/ciclos/m2/index.html>
		AuthType Basic
		AuthName "m2"
		AuthUserFile /etc/apache2/contr_basic
		Require valid-user
	</Directory>
	</Directory>
		<Directory "/var/www/html/ciclos/m6/index.html>
		AuthType Basic
		AuthName "m6"
		AuthUserFile /etc/apache2/contr_basic
		Require valid-user
	</Directory>




</Virtualhost>

