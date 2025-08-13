hexdump -c esp/EFI/BOOT/BOOTX64.EFI | head
nvim .config/
nvim .
cd AkatoshAGI/
ls
cd AkatoshOS/
ls
nvim .
nvim .
nvim .
ls
cd ../
cd ../
ls
rm -rf AkatoshAGI/
rm akatosh_setup.sh 
nvim akatosh_setup.sh
chmod +x akatosh_setup.sh 
./akatosh_setup.sh 
clang++ -target x86_64-pc-win32-coff -ffreestanding -fno-exceptions -fno-rtti   -mno-red-zone -nostdlib -Wall -Wextra   -Wno-unused-parameter -fshort-wchar   -o BOOTX64.EFI efi_main.cpp   -Wl,-subsystem,efi_application   -Wl,-entry:efi_main
cd AkatoshAGI/AkatoshOS/boot/
clang++ -target x86_64-pc-win32-coff -ffreestanding -fno-exceptions -fno-rtti   -mno-red-zone -nostdlib -Wall -Wextra   -Wno-unused-parameter -fshort-wchar   -o BOOTX64.EFI efi_main.cpp   -Wl,-subsystem,efi_application   -Wl,-entry:efi_main
clang++ -target x86_64-pc-win32-coff -ffreestanding -fno-exceptions -fno-rtti   -mno-red-zone -nostdlib -Wall -Wextra   -Wno-unused-parameter -fshort-wchar   -o BOOTX64.EFI efi_main.cpp   -Wl,-subsystem,efi_application   -Wl,-entry:efi_main
export AKATOSH_SRC="$HOME/AkatoshAGI"
export AKATOSH_BUILD="$AKATOSH_SRC/build"
rm -rf "$AKATOSH_BUILD"
cmake -B "$AKATOSH_BUILD" -S "$AKATOSH_SRC"
cd ../
ls
export AKATOSH_SRC="$HOME/AkatoshAGI/AkatoshOS"
export AKATOSH_BUILD="$AKATOSH_SRC/build"
rm -rf "$AKATOSH_BUILD"
cmake -B "$AKATOSH_BUILD" -S "$AKATOSH_SRC"
cmake -B "$AKATOSH_BUILD" =S "$AKATOSH_SRC"
cmake -B "$AKATOSH_BUILD" -S "$AKATOSH_SRC"
file "$AKATOSH_BUILD/esp/EFI/BOOT/BOOTX64.EFI"
ls -al
ls build/
cd ../
ls
nvim .
cd ../
rm -rf AkatoshAGI/
./akatosh_setup.sh 
AkatoshAGI/AkatoshOS/boot_g1/scripts/run_qemu.sh 
ls
ls -al
cd ../
ls -al
rm -rf .git
ls
cd AkatoshOS/
ls
nvim akatosh_setup.sh 
cd "$ROOT/AkatoshOS/boot_g1"
cd AkatoshAGI/AkatoshOS/boot_g1/
make -j
ls
scripts/run_qemu.sh 
nvim .
cd AkatoshAGI/
nvim .
ls -al
nvim .
~/AkatoshAGI/AkatoshOS/boot_g1/scripts/run_qemu.sh 
ls
cp akatosh_setup.sh akatosh_setup.sh.bak
nvim .
pacman -S cursor
sudo pacman -S cursor
paru -S cursor
paru -S cursor-bin
ls
rm akatosh_setup.sh
mv akatosh_setup.sh.bak akatosh_setup.sh
mkdir AkatoshAGI-v1-0-0-0-1-alpha
mv akatosh_setup.sh AkatoshAGI-v1-0-0-0-1-alpha/
mv AkatoshAGI AkatoshAGI-v1-0-0-0-1-alpha/
sudo pacman -S dolphin
sudo pacman -S pcmanfm
tar -cJvf AkatoshAGI-G1-Working.tar.xz AkatoshAGI-v1-0-0-0-1-alpha/
sudo pacman -S zip
zip -r AkatoshAGI-G1-Working.zip AkatoshAGI-v1-0-0-0-1-alpha/
ls
ls Projects/
cd Projects/
ls
ls AkatoshAGI/
rmdir AkatoshAGI/
ls
cd
mv AkatoshAGI* Projects/
l;s
ls
rm -rf DevConfigs/
ls
clear
mkdir AkatoshAGI
nvim AkatoshAGI/
pip install open-webui
sudo pacman -S python-open-webui
paru -S python-open-webui
ls
cd Projects/
ls
rm AkatoshAGI-G1-Working.*
ls
mkdir OpenWebUI
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
