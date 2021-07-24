config.vm.provision "shell", inline: <<-SCRIPT
    if ! type docker >/dev/null; then
        echo -e "\n\n========= installing docker..."
        curl -sL https://get.docker.io/ | sh
        adduser vagrant docker
    fi
    if ! type pip >/dev/null; then
        echo -e "\n\n========= installing pip..."
        curl -sk https://bootstrap.pypa.io/get-pip.py | python  
    fi
    if ! type docker-compose >/dev/null; then
        echo -e "\n\n========= installing docker-compose..."
        pip install -U docker-compose
        echo -e "\n\n========= installing docker-compose command completion..."
        curl -sL https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
    fi
    apt-get update
    apt install -y git make
SCRIPT

config.vm.provision "shell", inline: <<-SCRIPT
    
    docker-compose up -d 
SCRIPT
