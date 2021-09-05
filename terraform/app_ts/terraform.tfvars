keypair_name = "main"
ami_id       = "ami-09e67e426f25ce0d7"
setup_script = <<-EOF
                #!/bin/bash
                sudo apt update -y

                sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
                curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
                sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
                apt-cache policy docker-ce
                sudo apt install docker-ce -y

                sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
                sudo chmod +x /usr/local/bin/docker-compose
                EOF