# docker_webserver
setting php, mariadb and nginx with docker &amp; docker-compose

실행영상(한글): [https://youtu.be/FxH1M8DXngo]

<hr/>

## 1. Start command
<pre>
  <code>
git clone https://github.com/shyuni4u/docker_webserver.git
sudo chmod +x install_docker_18.04.sh
./install_docker_18.04.sh [app_name]
  </code>
</pre>

## 2. Command file

  + Restart docker
  <pre>
    <code>
    ./004_docker/restart.sh
    </code>
  </pre>
  
  + Connect Mariadb
  <pre>
    <code>
    ./004_docker/conn_mariadb.sh
    </code>
  </pre>
  
  + Connect NginX
  <pre>
    <code>
    ./004_docker/conn_nginx.sh
    </code>
  </pre>
  
  + Connect PHP
  <pre>
    <code>
    ./004_docker/conn_php-fpm.sh
    </code>
  </pre>
  
## 3. Setting file
  <pre>
    <code>
    nano ./004_docker/docker-compose.yml
    </code>
  </pre>
  
## 4. Password file
  <pre>
    <code>
    nano ./004_docker/.env
    </code>
  </pre>
