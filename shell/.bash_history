cd OpenWebUI/
python -m venv venv
source venv/bin/activate
pip install open-webui
sudo pacman -S python python-pip
pip install open-webui
exit
paru -S open-webui-git
sudo pacman -S docker
docker run -d -p 3000:8080 --gpus=all -v ollama:/root/.ollama -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama
sudo systemctl enable docker
sudo systemctl start docker
docker run -d -p 3000:8080 --gpus=all -v ollama:/root/.ollama -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama
sudo usermod doxy -aG docker
docker run -d -p 3000:8080 --gpus=all -v ollama:/root/.ollama -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama
docker run -d -p 3000:8080 --gpus=all -v ollama:/root/.ollama -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama
docker ps
docker list containers
docker --help
docker container list
docker start openweb-ui
docker rm openweb-ui
docker run -d -p 3000:8080 --gpus=all -v ollama:/root/.ollama -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:ollama
docker start open-webui
docker run -d --restart always --device /dev/kfd --device /dev/dri -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:rocm
ollama
ollama ps
systemctl stop ollama
docker run -d --restart always --device /dev/kfd --device /dev/dri -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:rocm
docker prune
docker container list
docker container list --all
docker container remove ollama open-webui
docker run -d --restart always --device /dev/kfd --device /dev/dri -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama:rocm
docker exec ollama ollama list
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker exec ollama for m in gpt-oss:20b phi4 qwen2.5:14b qwen2.5-coder:14b llama3.1:8b deepseek-r1:8b mistral llama3.2-vision gemma3:12b; do
    ollama pull "$m" &
done
wait
docker exec ollama for m in gpt-oss:20b phi4 qwen2.5:14b qwen2.5-coder:14b llama3.1:8b deepseek-r1:8b mistral llama3.2-vision gemma3:12b; do 
docker exec ollama for m in gpt-oss:20b phi4 qwen2.5:14b qwen2.5-coder:14b llama3.1:8b deepseek-r1:8b mistral llama3.2-vision gemma3:12b; do \
docker exec ollama for m in gpt-oss:20b phi4 qwen2.5:14b qwen2.5-coder:14b llama3.1:8b deepseek-r1:8b mistral llama3.2-vision gemma3:12b; do ollama pull "$m" & done wait
cd Documents/
nvim akatosh_presets.json
cd Documents/
nvim akatosh_workspace_models.json
docker ps
docker container down ollama
docker down ollama
docker container remove ollama
docker stop ollama
docker container remove ollama
docker stop openweb-ui
docker stop open-webui
docker container remove openweb-ui
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=host.docker.internal:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker container remove open-webui
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=host.docker.internal:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
ollama
sudo systemctl enable ollama
ollama serve
ollama start
sudo systectl start ollama
sudo systemctl start ollama
sudo systemctl status ollama
cd ../Downloads/
zip --help
zip -h2
sudo pacman -S unzip
unzip akatosh_ollama_models.zip 
ls
mkdir ~/Ollama/AkatoshModels -p
mv akatosh* ~/Ollama/AkatoshModels/
ls
mv create_all.sh ~/Ollama/AkatoshModels/
mv README.md  ~/Ollama/AkatoshModels/
cd ~/Ollama/AkatoshModels/
ls
./create_all.sh 
docker stop open-webui
docker container remove open-webui
docker run -d --network=host -v open-webui:/app/backend/data -e --add-host=host.docker.internal:host-gateway --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker stop open-webui
docker container remove open-webui
docker volume remove open-webui
docker run -d -v open-webui:/app/backend/data -e --add-host=host.docker.internal:host-gateway --name open-webui --restart always ghcr.io/open-webui/open-webui:main --gpus=all
docker run -d -p --gpus=all open-webui:/app/backend/data -e --add-host=host.docker.internal:host-gateway --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker run -d -p --gpus=all open-webui:/app/backend/data -e --add-host=host.docker.internal:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker run -d -v --gpus=all open-webui:/app/backend/data -e --add-host=host.docker.internal:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker run -d -v open-webui:/app/backend/data -e --add-host=host.docker.internal:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker container remove open-webui
docker run -d -v open-webui:/app/backend/data -e --add-host=host.docker.internal:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker stop open-webui
docker volume remove open-webui
docker container remove open-webui
docker volume remove open-webui
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker ps
docker logs open-webui
ollama
ollama ps
ollama list
docker stop openweb-ui
docker ps
docker stop open-webui
docker container remove open-webui
docker run -d -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main --network=host
docker run -d -p 3000:8080 --network=host --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker stop open-webui
docker container remove open-webui
docker run -d -p 3000:8080 --network=host --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker stop open-webui
docker container remove open-webui
docker run -d --network=host -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11434 --name open-webui --restart always ghcr.io/open-webui/open-webui:main
nvim ~/.bash_profile 
llama
exec bash
llama
nvim ~/.bash_profile 
exec bash
llama
exit
llama
nvim .bashrc
exec bash
llama
nvim .bashrc
sudo systemctl start ollama
btop
exit
ls
cd Ollama/
ls
cd AkatoshModels/
ls
nvim akatosh-model-advisor.Modelfile
ollama create akatosh-model-advisor -f ./akatosh-model-advisor.Modelfile
radeontop
exit
sudo pacman -S okular
exit
sudo systemctl restart ollama
exit
radeontop
exit
nvim .
ls
cd Projects/
ls
mkdir Archived
mv AkatoshAGI-v1-0-0-0-1-alpha/ Archived/
ls
ls ~/Documents/
ls ~/Documents/Obsidian/
ls ~/Documents/Obsidian/AkatoshAGI/
chmod +x AkatoshAGI.setup.sh 
./AkatoshAGI.setup.sh --project-root=. --obsidian=~/Documents/Obsidian --documentation=~/Documents/Obsidian/AkatoshAGI --dry-run
nvim AkatoshAGI.setup.sh 
./AkatoshAGI.setup.sh --project-root . --obsidian ~/Documents/Obsidian --documentation ~/Documents/Obsidian/AkatoshAGI --dry-run
nvim AkatoshAGI.setup.sh 
./AkatoshAGI.setup.sh --project-root . --obsidian ~/Documents/Obsidian --documentation ~/Documents/Obsidian/AkatoshAGI --dry-run
ls -al
rm -rf .git
ls
mkdir AkatoshAGI
./AkatoshAGI.setup.sh --project-root ./AkatoshAGI --obsidian ~/Documents/Obsidian --documentation ~/Documents/Obsidian/AkatoshAGI --dry-run
ls -al
cd AkatoshAGI
ls
ls -al
rm -rf .git
cd ../
./AkatoshAGI.setup.sh --project-root ./AkatoshAGI --obsidian ~/Documents/Obsidian --documentation ~/Documents/Obsidian/AkatoshAGI
cd AkatoshAGI
cmake --preset default
cmake --build --preset default
git log --oneline --decorate -1
find . -type f \( -name '*.cpp' -o -name '*.hpp' -o -n '*.s' \) -print
find . -type f \( -name '*.cpp' -o -name '*.hpp' -o -name '*.s' \) -print
ls -al
rm -rf .*
rm -rf *
ls
ls -al
cd ../
./AkatoshAGI.setup.sh --project-root ./AkatoshAGI --obsidian ~/Documents/Obsidian --documentation ~/Documents/Obsidian/AkatoshAGI
ls
cd AkatoshAGI
find . -type f \( -name '*.cpp' -o -name '*.hpp' -o -name '*.s' \) -print
ls
ls assets/
ls assets/Obsidian/
ls assets/Documentation/
nvim .
exit
cd Projects/
ls
git clone git@github.com:baileycarroll/baileycarroll.dev.git
cd baileycarroll.dev/
ls
git branch list
git branch -list
git branch --list
git branch remove list
git branch --list
git branch --remove list
git branch --delete list
git branch --delete remove
git branch --list
git branch v2.0.0
git checkout v2.0.0
git status
git push -u origin v2.0.0
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm git base-devel curl unzip xz jq ripgrep fd fzf
sudo pacman -S --needed --noconfirm nvm
nvim ~/.bashrc
echo '[ -s /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
exec $SHELL -l
cd /tmp
tar -xvf baileycarroll-dev-backup-20250808-233202.tar.zst 
ls
cp baileycarroll-dev-backup-20250808-233202.tar.zst ~
cd ~
ls
tar -xvf baileycarroll-dev-backup-20250808-233202.tar.zst 
cd baileycarroll-dev-backup-20250808-233202.tar.zst 
ls
rm -rf components*
rm -rf *.ts
ls
rm -rf lib node_modules/ package.json pnpm-* postcss.config.mjs  public/ tsconfig.json  eslint.config.mjs 
ls
rm README.md 
rm baileycarroll-dev-backup-20250808-233202.tar.zst 
cd scripts/
ls
cd ../
mv scripts/ Scripts
cd Scripts/
ls
nvim 10-bootstrap-next.sh 
cd ../
ls -al
exit
nvim install --lts
nvm install --lts
nvm alias default 'lts/*'
corepack enable
corepack prepare pnpm@latest --activate
ls -al
mkdir scripts
nvim scripts/10-bootstrap-next.sh
chmod +x scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
ls -al
set +u; [ -s /usr/share/nvm/init-nvm.sh ] && . /usr/share/nvm/init-nvm.sh || { [ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"; }; nvm install --lts; nvm alias default 'lts/*'; nvm use --lts; set -u
set +u; [ -s /usr/share/nvm/init-nvm.sh ] && . /usr/share/nvm/init-nvm.sh || { [ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"; }; nvm install --lts; nvm alias default 'lts/*'; nvm use --lts; set -u
corepack enable
corepack prepare pnpm@latest --activate
nvm --version && node -v && pnpm -v
nvim scripts/10-bootstrap-next.sh 
chmod +x scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
ls -al
pnpm approve-builds
grep -n 'tailwindcss' app/globals.css || sed -i '1i @import "tailwindcss";' app/globals.css
pnpm dlx shadcn@canary init
pnpm dlx shadcn@canary add button card input label separator tabs sonner
ls -l
mkdir scripts
nvim 10-bootstrap-next.sh
chmod +x 10-bootstrap-next.sh 
mv 10-bootstrap-next.sh scripts/
ls
ls -l
scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
ls -al
ls /tmp
ls
mkdir scripts
cp ~/Scripts/10 scripts/
cp ~/Scripts/10-bootstrap-next.sh scripts/
scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
ls -al
nvim .env.local 
ls
mkdir scripts
cp ~/Scripts/10-bootstrap-next.sh scripts/
scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
sudo pacman -S dotenv
paru -S dotenv
cp -r ~/Scripts/10-bootstrap-next.sh .
ls
mkdir scripts
mv 10-bootstrap-next.sh scripts/
scripts/10
scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
Confirm with pnpm exec dotenv --version.
pnpm exec dotenv --version
mkdir scripts
cp ~/Scripts/10-bootstrap-next.sh scripts/
scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
ls
scripts/10-bootstrap-next.sh 
scripts/10-bootstrap-next.sh --i-understand
pnpm setup
exec bash
cd Scripts/
nvim .
cp .env.example .env.local 
pnpm -i -D dotenv-cli tsx typescript
pnpm -i -D dotenv tsx typescript
pnpm prisma:format
pnpm prisma:db:push
pnpm prisma:db:push
sudo pacman -S postgresql
su postgres
scripts/10-bootstrap-next.sh --i-understand
ls
git config --global user.email "baileyrcarroll@gmail.com"
git config --global user.name "Bailey Carroll | Doxy"
mkdir scripts
cp ~/Scripts/10-bootstrap-next.sh scripts/
scripts/10-bootstrap-next.sh --i-understand
mkdir scripts
cp ~/Scripts/10-bootstrap-next.sh scripts/
git status
git add .
git commit -m "Added setup script"
pnpm dev
exit
sudo su postgres
sudo systemctl start postgresql.service
sudo systemctl enable postgreql.service
sudo systemctl enable postgresql.service
sudo su postgres
psql doxy
pnpm prisma:db:push
pnpm dlx shadcn@latest init -d
pnpm dlx shadcn@latest add button card
pnpm add -D @tailwindcss/typography
pnpm add next-mdx-remote gray-matter zod remark-gfm
pnpm dev
pnpm dev
rm -rf .next/
pnpm dev
pnpm dev
git add .
git commit -m "working on v2 auth and emailer"
git push
exit
pnpm add next-auth@beta @auth/prisma-adapter @simplewebauthn/browser@9.0.1 @simplewebauthn/server@9.0.3
pnpm add nodemailer
pnpm prisma:format
pnpm prisma:migrate:dev -n "auth_and_passkeys"
sudo su psql
sudo su postgres
pnpm prisma:migrate:dev -n "auth_and_passkeys"
pnpm prisma:format
pnpm prisma:migrate:dev -n "auth_and_passkeys"
pnpm prisma:db:push
pnpm prisma:format
pnpm prisma:migrate:dev -n "auth_and_passkeys"
pnpm prisma:migrate:dev -n "auth_and_passkeys"
exit
shutdown -t now
sudo systemctl status postgres
sudo systemctl status postgresql
pnpm prisma db push
pnpm prisma db push
pnpm prisma db pull
sudo systemctl status postgresql
pnpm tsx scripts/seed.ts
pnpm db:seed
pnpm db:seed
pnpm db:seed
pnpx auth secret
pnpm add @tiptap/react @tiptap/starter-kit sanitize-html react-hook-form @hookform/resolvers zod
pnpm remove nodemailer && pnpm add nodemailer@^6.9.0
pnpm prisma db push --force-reset
pnpm tsx scripts/fix-user-roles.ts
pnpm prisma:db:push
pnpm db:seed
pnpm add @tiptap/html @tiptap/starter-kit sanitize-html && pnpm add -D @types/sanitize-html
shutdown -t 5
nvim dotfiles/
ls
cd ./con
cd .config
ls
mv nvim/ ../dotfiles/nvim/.config/
rm -rf ~/dotfiles/nvim/.config/nvim/
mv nvim/ ../dotfiles/nvim/.config/
cd ~/dotfiles/nvim/.config/
ls
ls nvim/
cd ../
cd ../
pwd
stow -v -t "$HOME" shell starship nvim ghostty git
cd ~
cd .config/
ls
rm nvim ghostty -rf
cd 
rm .bash*
ls -al
cd dotfiles/
stow -v -t "$HOME" shell starship nvim ghostty git
ls
nvim .
chmod +x scripts/bootstrap.sh 
git add -A
git commit -m "init: stow-based dotfiles (shell, nvim, starship, ghostty, git)"
# What will stow do?
stow -n -v -t "$HOME" shell starship nvim ghostty git   # dry run
# What did stow link?
ls -l ~/.zshrc ~/.config/nvim ~/.config/starship.toml ~/.config/ghostty/config
ls -al
cd
ls -al
dotfiles/scripts/bootstrap.sh 
chsh -s "/usr/bin/zsh"
exit
lsblk
lsblk
dmesg -w
sudo dmesg -w
lsusb
lsusb
lsusb
lsblk
uname -a
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
dmesg -w
sudo dmesg -w
clear
lsblk
sudo parted
clear
sudo parted /dev/sdc --script mklabel gpt mkpart SYRA_BOOT fat32 1MiB 2048MiB set 1 esp on \
clear
lsblk
sudo parted /dev/sdc --script mklabel gpt mkpart SYRA_BOOT fat32 1MiB 2048MiB set 1 esp on mkpart SYRA_DOCS fat32 2048MiB 16384MiB mkpart SYRA_DATA ext4 16384MiB 100%
sudo mkfs.vfat -F32 -n SYRA_BOOT /dev/sdc1
sudo mkfs.exfat -n SYRA_DOCS /dev/sdc2
sudo pacman -S exfatprogs
sudo mkfs.exfat -n SYRA_DOCS /dev/sdc2
sudo cryptsetup luksFormat /dev/sdc3
sudo cryptsetup open /dev/sdc3 syra_data_crypt
sudo mkfs.ext4 -L SYRA_DATA /dev/mapper/syra_data_crypt
lsblk
sudo mkfs.ext4 -L SYRA_DATA /dev/mapper/syra_data_crypt
sudo smartctl -a /dev/sdc
sudo pacman -S smartctl
paru -S smartctl
sudo pacman -S smartmontools
sudo smartctl -a /dev/sdc
sudo smartctl -a /dev/sdd
clear
lsblk
sudo cryptsetup close syra_data_crypt
sudo umount /mnt/syra_data 2>/dev/null
sudo udisksctl power-off -b /dev/sdc
sudo udisksctl power-off -b /dev/sdd
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
lsblk
sudo cryptsetup open /dev/sdc3 syra_data_crypt
sudo mkfs.ext4 -L SYRA_DATA /dev/mapper/syra_data_crypt 
sudo badblocks -sv /dev/mapper/syra_data_crypt
shutdown -t now
shutdown -c
shutdown --help
shutdown -P now
