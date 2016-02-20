# VAGRANT-PUPPET-SEI-AIO

Vagrantfile para instalar o SEI utilizando o módulo puppet SEI AIO (All-in-One).

#### Tabela de conteudo

1. [Sobre](#sobre)
2. [Autores](#autores)
3. [Colaboradores](#colaboradores)
4. [Coordenadores](#coordenadores)
5. [Projeto](#projeto)
6. [Requisitos](#requisitos)
7. [Setup](#setup)
8. [Acesso](#acesso)
9. [Referências](#referencias)

## Sobre

Este Vagrantfile é a forma mais fácil de testar o módulo puppet-sei-aio que foi disponibilizado para instalar o SEI usando Puppet.

## Autores

Desenvolvedores e criadores do módulo

  * Guto Carvalho (gutocarvalho@instruct.com.br)
  * Miguel Filho (gutocarvalho@instruct.com.br)

## Colaboradores

Profissionais que deram apoio na revisão e testes do vagrantfile

  * Thiago Ferreira

## Coordenadores

Coordenadores do projeto SEI na CGTI-MINC
  
  * Diego Aguilera
  * Rogério Pereira
  * Christian Miranda
  * Francisco Morais
  
## Projeto

O desenvolvimento deste Vagrantfile ocorreu através de uma iniciativa do Ministério da Cultura e Instruct durante o projeto de implantação de SEI no MINC em 2015.

## Requisitos

### Vagrant

* Depende do Vagrant 1.9.x
* Depende do plugin vagrant-hosts
* Depende da box gutocarvalho\centos6x64

### Virtualbox

* Depende do VirtualBox 4.3.x
* Pelo menos 4 gigas de RAM para a VM
* Pelo menos 2 processadores para a VM
* Pelo menos 10 GB de disco para a VM

### Network

* É necessário acesso a internet durante todo o processo.

## Setup

### Modo rápido

1) Instale o Virtualbox
2) Instale o Vagrant
3) Instale o plugin hosts

    $ vagrant plugin install vagrant-hosts
    
4) Faça download da box

    $ vagrant box add gutocarvalho/centos6x64
    
5) Execute o script

    $ bash puppet_config.sh

6) Inicie a box

    $ vagrant up
    
Em alguns minutos o SEI estará instalado, o tempo varia de acordo com a velocidade de sua conexão.

### Modo personalizado

1) Instale o Virtualbox
2) Instale o Vagrant
3) Instale o plugin

    $ vagrant plugin install vagrant-hosts

4) Faça download da box

    $ vagrant box add gutocarvalho/centos6x64

5) Execute o script

    $ bash puppet_config.sh
    
6) Abra o Vagrantfile e ajuste o que for necessário

    Você pode ajustar o IP, o nome da VM.
    Recomendo que o nome da VM seja o mesmo domínio do SEI
    
7) Abra o manifest sei.pp e ajuste conforme necessário

```puppet
node "seiaio.hacklab" {
  class { seiaio:
    docroot            => '/var/www/html/appsei',
    diretorio_seidados => '/var/www/seidados',
    dominio            => 'seiaio.hacklab',
    git_repo           => 'http://gitlab.hacklab/gutocarvalho/seiaio.git',
    sigla_organizacao  => 'HC',
    nome_organizacao   => 'Laboratorio Hacklab de pesquisas',
  }
}
```    
Para entender como o módulo puppet funciona leia o README dele no site do projeto.

    https://bitbucket.org/instruct/puppet-sei-aio
    
6) Inicie a box

    $ vagrant up
    
Em alguns minutos o SEI estará instalado, o tempo varia de acordo com a velocidade de sua conexão.   

## Acesso

### Setup rápido

Se você optou pelo setup rápido, abra seu navegador e acesse http://seiaio.hacklab (teste/teste).

### Setup personalizado

Se você optou pelo setup personalizado, abra seu navegador e acesse o endereço que você configurou no parametro dominio do arquivo sei.pp

## Pendente

1. Tentar executar o puppet_config.sh com o plugin vagrant-host-shell
    
## Referências

Sobre o SEI/PEN

* https://processoeletronico.gov.br/projects/sei/wiki/PEN
* https://softwarepublico.gov.br/social/sei

Sobre o vagrantfile

* https://bitbucket.org/instruct/vagrant-puppet-sei-aio
* https://bitbucket.org/culturagovbr/vagrant-puppet-sei-aio

Sobre o módulo

* https://bitbucket.org/culturagovbr/puppet-sei-aio
* https://bitbucket.org/instruct/puppet-sei-aio