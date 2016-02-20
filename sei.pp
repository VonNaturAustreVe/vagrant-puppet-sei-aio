node "seiaio.hacklab" {
  class { seiaio:
    docroot            => '/var/www/html/appsei',
    diretorio_seidados => '/var/www/seidados',
    dominio            => 'seiaio.hacklab',
    git_repo           => 'http://gitlab.hacklab/gutocarvalho/seiaio.git',
    sigla_organizacao  => 'Hacklab',
    nome_organizacao   => 'Laboratorio de pesquisas',
  }
}
