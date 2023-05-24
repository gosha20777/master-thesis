# master-thesis
Выпускная квалификационная работа (ВКР) магистра в LaTeX, оформленная в соответствии с нормоконтролем Московского Физико-Технического Интитута (МФТИ) в 2021-2023 гг.

## Сборка

### debian / ubuntu
- установка зависимостей
```bash
sudo apt update
sudo apt install \
    texlive-full
    latexmk \
    install ttf-mscorefonts-installer
```
- сборка
```bash
make
```

### Docker
```bash
docker build -t docker-latex .
make docker
```
