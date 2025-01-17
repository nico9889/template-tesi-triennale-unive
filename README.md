# Template tesi triennale
Questo repository doveva inizialmente contenere il sorgente LaTeX della mia tesi triennale.

Per pignoleria mi sono ritrovato a perdere svariate ore a tentare di riprodurre il frontespizio predisposto dall'[Università](https://www.unive.it/pag/8751/#c41502), basandomi sul template in questo repository https://github.com/veneres/unive-ms-thesis-template/.


Ho passato diverso tempo anche a pulire il template originale (perlopiù togliere i package duplicati) ed ad adattarlo per la tesi triennale, normalmente fatta in italiano.

Vista la quantità di tempo perso ho deciso infine che questo repository sarebbe diventato un nuovo repository template, giusto per avere qualche alternativa in più.

Nel momento in cui sto scrivendo sto ancora imparando LaTeX, pertanto il template potrebbe contenere errori.

# Contenuto
Il repository contiene diversi file ereditati dal template originale:
* `main.tex`

Contiene lo scheletro di quella che infine sarà la tua tesi

* `introduction.tex`, `conclusion.tex`

Sono esempi su come suddividere la tesi in capitoli.

* `univebachelor.cls`

Contiene una pletora di package di uso comune e qualche utility macro, tra le quali quella che genera il frontespizio.

Sistemare dinamicamente i generi dei ruoli delle persone nel frontespizio avrebbe richiesto ulteriore tempo, solo che ne ho già speso abbastanza.
Se devi sistemarli trovi quello che ti serve in fondo a questo file.

* `references.bib`

Contiene i dati necessari per generare la bibliografia in automatico nel momento in cui fai una citazione. 

**Assicurati di compilarlo correttamente.**

* `/.vscode`

Questa cartella contiene la configurazione per due/tre plugin di VS Code: Code Spell Checker e LaTeX WorkShop.

Se apri questo repository con VS Code, questo dovrebbe raccomandarti l'installazione dei plugin.

Se hai Docker preinstallato, LaTeX WorkShop è pre-configurato per scaricare in automatico un'immagine con tutti gli strumenti per usare LaTeX (opzionalmente anche su ARM64), senza dover installare una miriade di software sul tuo PC.

Il tutto è pre-configurato per avere gratis (senza far fatica) un editor LaTeX WYSIWYG con spell checking bi-lingue (italiano e inglese).

# F.A.Q.

## Come uso questo template?
Se hai terminato con successo i tuoi studi in triennale di Informatica spero di non doverti spiegare come:
* clonare un repository;
* aprire un progetto su VS Code;
* installare Docker.

**Su PC Windows se ne raccomanda l'uso tramite WSL.**

Se sei capitato qui per sbaglio e hai terminato i tuoi studi seguendo qualche altro percorso, se ci tieni veramente ad usare questo template, la cosa più veloce che puoi fare è scaricarlo tramite il tasto verde all'inizio di questa pagina "Code -> Download as ZIP".

I restanti strumenti sono
* [Visual Studio Code](https://code.visualstudio.com/)
* [Docker](https://www.docker.com/)
* [WSL](https://learn.microsoft.com/it-it/windows/wsl/install) (Opzionale ma raccomandato)

Essendo strumenti più o meno complessi pensati principalmente per sviluppatori, la spiegazione di come funzionano esula da questo README.

Se qualche tutorial su YouTube non è sufficiente per usare i suddetti software, forse dovresti valutare l'uso di Microsoft Word/Google Docs (se permesso dal relatore) o un metodo alternativo per l'uso di LaTeX.

## Perché il testo è tutto spostato a destra?
Nel momento in cui ho scritto questo non ho ancora scritto la tesi, quindi non ne sono sicuro :) se devo tirare a indovinare LaTeX lascia in automatico dello spazio aggiuntivo per effettuare la rilegatura.

