#!/bin/sh

#Altere as variáveis abaixo de acordo com a sua necessidade
#na variável repositório, prefira a url do repositório baseada em https para nao termos que configurar SSH
export name='Olga Leticia Lopes'
export email="leticiaolgalopes@gmail.com"
export repositorio="https://github.com/olgaleticialopes/cardapio";

#Daqui pra baixo mexa somente se for realmente necessário ou se souber o que está fazendo :P

export branch_name="aula-$(date -I)"

#add linux, mac and windows folders to gitignore
echo "" >> .gitignore
echo "#ignoring windows, macos and linux folders" >> .gitignore
echo "windows" >> .gitignore
echo "macos" >> .gitignore
echo "linux" >> .gitignore

rm -Rf .git // para perder as referencias se vc clonou de outro repositorio

git init
git remote add origin $repositorio
git checkout -b $branch_name

git config --global user.name $name
git config --global user.email $email

git add .gitignore
git commit -m "added ignored files" .gitignore

git add .

git commit -am "branch com o código do dia $(date)"

git push origin $branch_name


//github.sh