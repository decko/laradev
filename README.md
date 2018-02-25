# Laradev
A simple docker image with laravel environment

Já imaginou conseguir configurar uma imagem docker com tudo o que vc precisa de PHP sem ter q ficar instalando e controlando versões diretamente na sua maquina?

O Laradev é uma imagem docker com o PHP 7.2.1(empacotado pelos caras do [CodeCasts](https://github.com/codecasts/php-alpine)), juntamente com o Composer e o Laravel instalados. A partir disso, você pode rodar os comandos do Laravel e do artisan para criar e manter seus projetos.

```
docker pull docker.io/laradev
docker run -v $PWD:/home/laravel/workdir -ti laradev laravel new blog
```

Você pode ainda configurar alguns aliases que facilitem o uso da imagem:
```bash
alias laravel='docker run -v $PWD:/home/laravel/workdir -ti laradev laravel'
alias artisan='docker run -v $PWD:/home/laravel/workdir -ti php artisan'
```
e a partir disso usar os comandos _laravel_ e _artisan_ diretamente para tocar seus projetos.

```bash
laravel new blog
artisan serve
```
