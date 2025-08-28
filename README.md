# Ubuntu Bash Settings Installer

Этот репозиторий содержит скрипт `install.sh` для автоматической настройки Ubuntu.

## Быстрый старт

Выполните команду, чтобы скачать и запустить скрипт:

```bash
curl -fsSL https://raw.githubusercontent.com/yourusername/my_ubuntu_bash_settings/main/install.sh | bash
```

По умолчанию скрипт клонирует репозиторий в `~/my_ubuntu_bash_settings` и устанавливает:

- основные CLI-пакеты: `git`, `curl`, `wget`, `htop`;
- приложения через Snap: Vivaldi, Telegram Desktop, VS Code;
- инструменты разработки: `uv`, `ruff`.

### Переменные окружения

Можно переопределить следующие параметры перед запуском скрипта:

- `REPO_URL` – адрес репозитория с конфигурацией;
- `INSTALL_DIR` – каталог, куда будет склонирован репозиторий.

## Лицензия

MIT

