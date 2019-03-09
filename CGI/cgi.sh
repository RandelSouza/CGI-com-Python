#!/bin/bash

# Antes de Executar dar permisão de execução "chmod +x cgi.sh"
# Quando for executar utilizar o comando "sudo ./cgi.sh"

sudo apt-get install apache2 -y
sudo apt-get install curl -y
cd /etc/apache2/mods-enabled/
sudo ln -s ../mods-available/cgi.load
sudo a2enmod cgi
sudo systemctl restart apache2

sudo cat > /usr/lib/cgi-bin/first.py <<EOF
#!/usr/bin/env python
print "Content-type:text/html\n\n"
print "Hello CGI\n"
EOF

sudo chmod 705 /usr/lib/cgi-bin/first.py

sudo cat > /etc/apache2/conf-available/cgi-enabled.conf <<EOF
# Process .cgi and .py as CGI scripts
<Directory "/var/www/html/cgi-enabled">
    Options +ExecCGI
    AddHandler cgi-script .cgi .py
</Directory>
EOF

sudo mkdir /var/www/html/cgi-enabled
sudo a2enconf cgi-enabled
sudo systemctl restart apache2

sudo cat > /var/www/html/cgi-enabled/index.py <<EOF
#!/usr/bin/env python

print "Content-type:text/html\n\n"
print "<html>\n<body>"
print "<div style=\"width: 100%; font-size: 40px; font-weight: bold; text=align: center;\">"
print "Exemplo: Texto de Sua Escolha."
print "</div></body></html>"
EOF

sudo chmod 705 /var/www/html/cgi-enabled/index.py 



# Acessar http://localhost/cgi-enabled/index.py 
# Pra acessar o arquivo first.py faça: http://localhost/cgi-bin/first.py




  

   
