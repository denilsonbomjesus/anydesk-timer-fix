# Remover cronômetro de contagem regressiva do AnyDesk

Este método remove o bloqueio de tempo (60s ou 999s) mantendo todas as suas configurações e senhas salvas.

1. **Feche o AnyDesk completamente.** Saia do programa pela bandeja do sistema (perto do relógio).
2. **Encerre o processo em segundo plano.** Abra o Gerenciador de Tarefas (`Ctrl + Shift + Esc`) e finalize todas as tarefas chamadas **AnyDesk**.
3. **Acesse a pasta do sistema.** Abra o Explorador de Arquivos, cole o caminho abaixo na barra de endereço e aperte `Enter`:
   `C:\ProgramData\AnyDesk`
4. **Exclua o arquivo de registro.** Encontre o arquivo **`service.conf`** e apague-o.
5. **Abra o AnyDesk novamente.** O programa gerará um novo ID sem o cronômetro de bloqueio.
