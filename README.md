# AnyDesk Timer Fix

Guia rápido e script automatizado para remover o cronômetro de contagem regressiva (60s ou 999s) do AnyDesk no Windows, mantendo todas as suas configurações e senhas salvas.

---

## ⚡ Execução Automática (Recomendado)

Você pode fazer todo o processo com um clique usando o script disponível neste repositório.

1. Baixe o arquivo **`reset-anydesk.bat`** aqui do repositório.
2. Dê um duplo clique no arquivo para executar.
3. Clique em **Sim** quando o Windows solicitar permissão de Administrador.
4. Aguarde a janela fechar e o AnyDesk abrir automaticamente sem o bloqueio.

---

## 🛠️ Execução Manual

Caso prefira não usar o script, siga os passos abaixo manualmente:

1. **Feche o AnyDesk completamente.** Saia do programa pela bandeja do sistema (perto do relógio).
2. **Encerre o processo em segundo plano.** Abra o Gerenciador de Tarefas (`Ctrl + Shift + Esc`) e finalize todas as tarefas chamadas **AnyDesk**.
3. **Acesse a pasta do sistema.** Abra o Explorador de Arquivos, cole o caminho abaixo na barra de endereço e aperte `Enter`:
   `C:\ProgramData\AnyDesk`
4. **Exclua o arquivo de registro.** Encontre o arquivo **`service.conf`** e apague-o.
5. **Abra o AnyDesk novamente.** O programa gerará um novo ID sem o cronômetro de bloqueio.
