![Build A Phish Logo](/images/build_a_phish_lego.png)

# Build_A_Phish

![GitHub](https://img.shields.io/github/license/ralphte/build_a_phish) ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/ralphte/build_a_phish) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/ralphte/build_a_phish)

Table of contents 
------------------
  * [Overview](#overview)
  * [Features](#features)
  * [Containers](#containers)
  * [Setup](#setup)
  * [Usage](#usage)
  
## Overview

Build a Phish consist of a Ansible playbook to deploy a phishing engagement in the cloud. The Playbook combines both Terraform & Ansible to deploy and configure virtual machines for different use cases. This playbook is highly customizable and includes operational security out of box. The design of this playbook is much more then automation. This playbook implements real world TTP’s to improve OPSEC, lower operational cost and speedup deployment time. This project is the real-world demonstration from the Black Hills Information Security Webcast “How to Build a Phishing Engagement - Coding TTP's”

## Features

* Pure Ansible playbook with low dependencies and easy modification.
* Security from the ground up
* Docker containers for each application.
* Designed around a phishing engagment

## Containers

| Logo | Service | Image |
| ------ | ----- | ------ |
|  <img src='https://raw.githubusercontent.com/kgretzky/evilginx2/master/media/img/evilginx2-logo-512.png' width='40'>                                                                                                                         | Evilginx2  | [warhorse/evilginx2](https://github.com/warhorse/docker-evilginx2)|
| <img src='https://github.com/gophish/gophish/raw/master/static/images/logo_purple.png' width='40'>                                                                                                                             | Gophish     | [gophish/gophish](https://github.com/gophish/gophish)|
| <img src='https://d1q6f0aelx0por.cloudfront.net/product-logos/library-nginx-logo.png' width='40'>                                                                                                                             | Nginx    | [nginx](https://hub.docker.com/_/nginx)|

## Supported Cloud Providers

| Logo | Provider | Services |
| ------ | ----- | ------ |
|  <img src='https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/DigitalOcean_logo.svg/1200px-DigitalOcean_logo.svg.png' width='40'> | Digital Ocean  | Droplet,DNS |
| <img src='https://download.logo.wine/logo/Microsoft_Azure/Microsoft_Azure-Logo.wine.png' width='40'> | Azure    | CDN|

## Webcast

Coming Soon

## Blog Post

Coming Soon

## Requirements

 - Managment Domain
 - Linux or MacOS
 - Ansible
 - Terraform
 - (optional) Secrets Provider cli
    - lpass (lastpass)
    - op (onepasword)
    - bw (Bitwarden)

## Setup

### DNS records
You will need a managment domain. This domian can be the same domian used for phishing emails. After you buy a domain set the name server records to Digital Ocean.


1. Install Ansible & Terraform

    Ansible
    - OSX `brew install ansible`
    - Linux `pip install ansible`
    - Install Ansible General Modules 

        `ansible-galaxy collection install community.general`

    Terraform
    - OSX `brew install terraform`
    - Linux https://learn.hashicorp.com/tutorials/terraform/install-cli

2. Git clone this repo 

    `git clone https://github.com/ralphte/build_a_phish`

3. Customize the variables inside the vars folder.
   

4. Create API keys for both Digital Ocean & Azure.
   
    - Digital Ocean API Key https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/#:~:text=To%20generate%20a%20personal%20access,the%20Generate%20New%20Token%20button.

    - Azure CLI https://docs.microsoft.com/en-us/cli/azure/install-azure-cli

## Usage
 
### Create

`ansible-playbook deploy.yml --tags phish`

### Destroy

`ansible-playbook destroy.yml --tags phish`

### Secrets

You have three choices

1. Hard code (Don't do this)
2. Use a Secrets CLI https://docs.ansible.com/ansible/latest/collections/community/general/lastpass_lookup.html
3. Use Ansible Vaults https://docs.ansible.com/ansible/latest/user_guide/vault.html

### Evilginx2

If you would like to modify the phishlet or change lures, please edit the following files.

`roles\evilginx2-docker\templates\config.yaml.j2`

`roles\evilginx2-docker\templates\o365.yaml.j2`

You can check the evilginx logs for session data with the following command.

`docker logs evilginx2`

### Gophish

You can access gophish via the hostname set for "gophish_admin_hostname"

To get the password on first login check the docker logs

`docker logs gophish`

## Development

Does none of this work for you? Submit a issue and I will see what the problem is.

Want to add a cool new feature shoot me that sweet pull request.

## Acknowledgements

Gophish https://getgophish.com/

Evilginx https://github.com/kgretzky/evilginx2

Ansible roles from https://github.com/geerlingguy


## License

MIT.
