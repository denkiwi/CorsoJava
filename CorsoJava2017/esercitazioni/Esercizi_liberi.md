##Esercizio. Gestione di una biblioteca
	Una biblioteca ha dato l'incarico di implementare un software per la gestione
	dei prestiti di libri. Si costruiscano le seguenti classi:
	- Data: serve per costruire “l'orologio” virtuale. Implementare tre
	variabili d'istanza e i metodi: int getDay(), int getMonth(), int
	getYear(), void setDay(int aDay), void setMonth(int aMonth), void
	setYear(int aYear), void nextDay(), Boolean isEqual(Data date).
	- Abbonato: costruisce l'oggetto utente. Essa ha due variabili
	d'istanza e i seguenti metodi: String getCognome(), String getNome()
	- Libro: costruisce l'oggetto libro. Ha tre variabili d'istanza:
	titolo, utente a cui è prestato, data scadenza del prestito. Ha
	inoltre i relativi metodi accessori.
	- Archivio: essa implementa due arrayList, una contenente gli abbonati
	alla biblioteca e l'altra i libri presenti, oltre ad un riferimento
	alla data, e i seguenti metodi: void nuovoLibro(String unTitolo),
	void nuovoUtente(String unNome, String unCognome), int
	trovaUtente(String unNome, String unCognome), Data scadenza(Data
	date), int presta(Libro unLibro, Abbonato unUtente), void aggiorna()
	[si riferisce all'aggiornamento dell'ora], int numLibri(Abbonato
	anAbb) [restituisce il numero di libri posseduti da un dato utente]
	Consigli:
	Le classi Data, Abbonato e Libro non presentano particolari difficoltà
	d'esecuzione. La classe Archivio, invece, può risultare di difficile
	implementazione, in particolare:
	- presta(Libro unLibro, Abbonato unUtente): si passa in rassegna
	l'arraylist contenente i libri, se una copia del libro cercato
	esiste e non è in prestito, viene assegnata una data di scadenza per
	la restituzione e l'utente che l'ha preso in prestito;
	- aggiorna(): aggiorna la data, se un libro deve essere restituito nel
	medesimo giorno, allora si resettano i dati sull'utente possessore.
	- numLibri(Abbonato anAbb): restituisce quanti libri possiede un dato
	utente

##Esercizio. Corso di laurea
	La segreteria di un corso di laurea desidera sviluppare un archivio elettronico
	per la gestione di tutti gli studenti, di tutti gli appelli d'esame, e delle
	sessioni di laurea. Implementare le seguenti classi con i relativi metodi
	prescritti. Attenzione: non esistono esami diversi con lo stesso nome. Inoltre,
	potreste avere bisogno di metodi ausiliari che non ho indicato, per semplificare
	il codice: definite tali metodi ogniqualvolta lo ritenete opportuno.

```java
public class Esame {
private String nome;
private int crediti;
private int voto;
public Esame(String unNomeEsame, int numCrediti){...}
public String getNome(){...}
public String getCrediti(){...}
public String getVoto(){...}
public void setVoto(int unVoto){...}
public String toString(){...} }
public class Studente {
private String nome;
private int matricola;
private ArrayList<Esame> esamiSostenuti;
private ArrayList<Esame> pianoStudio;
public Studente(String unNomeStudente, int unaMatricola){...}
public String getNome(){...}
public String getMatricola(){...}
public void aggiungiEsame(String unNomeEsame, int numCrediti){...}
public void promosso(String unNomeEsame, int unVoto){...}
public void cancella(String unNomeEsame){...}
public double media(){...}
public double crediti(){...}
public String toString(){...} }
public class CorsoLaurea {
private String nome;
private ArrayList<Studente> immatricolati;
public static int prossimaMatricola;
public static final int MIN_CREDITI;
public CorsoLaurea(String unNomeStudente){...}
public String getNome(){...}
public void iscrivi(String unNomeStudente){...}
public void ritira(String unNomeStudente){...}
public void appello(String unNomeEsame, ArrayList<Studente> iscritti){...}
public void laurea(){...} }
```

##Esercizio. Gestione di un campo da tennis
	Fare una classe Prenotazione (di un campo da tennis) contenente il nome del
	cliente e l'ora della sua prenotazione. Implementare una classe Campo in cui ci
	sono i seguenti metodi: public boolean addPren(int inizio, int fine, String
	unNomeCliente), per prenotare il campo (controlla se i dati inseriti sono giusti
	e se il campo è disponibile dopodichè salva la prenotazione e restituisce true
	se il campo è stato prenotato); public boolean removePren (int inizio, int fine,
	String unNomeCliente), per cancellare una prenotazione (controlla se il campo è
	stato prenotato dal cliente che vuole cancellare la prenotazione dopodichè la
	cancella e restituisce true se la prenotazione è stata cancellata); public
	String toString(); public double utilizzo(), per trovare la percentuale
	dell'utilizzo del campo.


##Esercizio. concessionario d'auto.

	Supponiamo di voler gestire i dati relativi ai modelli in vendita presso un concessionario d'auto.
	Per ogni modello occorre tener traccia della marca, del nome, della cilindrata, della capacità del serbatoio e del numero dei chilometri che il modello è in grado di percorrere con un litro di carburante. Il titolare del concessionario vuole calcolare l'autonomia di ogni modello (in chilometri). 
	Inoltre, potrebbe essere utile poter costruire facilmente un nuovo modello d'auto che sia del tutto simile ad un modello esistente, ma che abbia una cilindrata diversa.
	Progettare ed implementare una classe automobile che sia in grado di soddisfare le esigenze del titolare del concessionario in questione.

##Esercizio. scuola superiore
	Una scuola superiore è organizzata in classi, ciascuna delle quali è composta da un certo numero di studenti. 
	Ogni classe ha un nome (che possiamo pensare essere una stringa di caratteri, ad esempio “5A” o “3C”) e ad essa è associato un anno, ossia l'anno di nascita degli studenti che normalmente frequentano tale classe. 
	Per ogni studente occorre tener traccia della data e del luogo di nascita, oltre che del cognome e del nome. Il preside della scuola superiore vuole determinare il numero di studenti della classe in questione. 
	Inoltre, il preside vuole sapere se di una certa classe fa parte anche qualche studente bocciato. 
	Progettare ed implementare una gerarchia di classi che sia in grado di soddisfare le esigenze del preside.

##Esercizio. azienda di trasporti
	Si supponga di voler progettare e implementare parte del sistema informativo di una azienda
	di trasporti su rotaia. Per ogni treno occorrerà tenere traccia delle stazioni di fermata, della stazione di partenza e di quella di arrivo, oltre che dei relativi orari. Occorre poi che ad ogni treno sia associato il numero dei posti a sedere disponibili e il numero totale di chilometri percorsi.
	Nei treni espressi, infine, è previsto anche un servizio ristorante, e anche per questo servizio è necessario tenere traccia del numero di posti disponibili. Un utente di questo sistema informativo vuole determinare il numero di fermate effettuate da ciascun treno. 
	Inoltre, chi utilizza tale sistema informativo vuole determinare il massimo ricavo realizzabile nell'erogazione di questo servizio. Tale ricavo dipende chiaramente da un parametro, ovvero dal prezzo che ogni passeggero dovrà pagare per percorrere un chilometro. Nei treni espressi occorrerà tenere conto anche del ricavo che si presume di ottenere in ogni chilometro da ognuno dei posti disponibili nel vagone ristorante (anch'esso fornito come parametro).

##Esercizio. biblioteca
	Una biblioteca ha la necessità di tenere traccia dei prestiti dei libri e dei DVD in catalogo. Ad ogni libro o DVD sarà quindi associata una sequenza di prestiti, ad ognuno dei quali corrispondono la data di inizio prestito, la data di riconsegna, il nome e cognome dell'utente. 
	Inoltre, per i DVD occorrerà tenere traccia della durata, mentre per i libri occorrerà tenere traccia del numero di pagine. Ad entrambi i tipi di supporti, infine, bisogna associare il titolo e l'anno di pubblicazione.
	Il bibliotecario vuole calcolare il periodo più lungo (in giorni) in cui un libro o un DVD è rimasto a prestito ad una persona. Occorre, infinte, permettere al bibliotecario di controllare se nella lista di prestiti relativi ad un libro ad un DVD esistano inconsistenze, ovvero se un prestito nella lista sia iniziato prima che un altro prestito fosse concluso.

##Esercizio. alberi genealogici
	Si progetti parte di un programma per la gestione degli alberi genealogici. Per ogni persona occorre tenere traccia del nome, del cognome, della data e del luogo di nascita. 
	Non è detto che di ogni persona si conoscano entrambi i genitori: potrebbe essere noto solo uno dei due genitori oppure nessuno dei due. 
	Per ogni persona, occorre poi essere in grado di calcolare la dimensione del
	rispettivo albero genealogico, ossia il numero di antenati conosciuti. 
	Inoltre, dato un numero naturale n e una persona, occorre poter calcolare se sono noti tutti gli antenati della persona vissuti n generazioni prima della generazione corrente. Per esempio, se n è 2, si deve determinare se tutti i nonni della persona in questione sono noti.
	Successivamente, si costruiscano un metodo che calcola la lista di tutti gli antenati della persona in questione e un altro metodo, che dato un numero n, calcola la lista di tutti gli antenati vissuti esattamente n generazioni prima della generazione corrente.

##Esercizio. dipendenti azienda

	Un'azienda ha bisogno di gestire i dati relativi ai propri dipendenti. Per ogni dipendente, occorre tener traccia del nome, del cognome e della data di nascita, oltre che della data di assunzione. 
	Il titolare dell'azienda vuole determinare se un dipendente compia gli anni in un certo mese (per esempio in febbraio) oppure se due dipendenti distinti siano stati assunti nello stesso mese dello stesso anno (per esempio, se entrambi siano stati assunti nel dicembre delloscorso anno). Progettare ed implementare una gerarchia di classi che sia in grado di soddisfare le esigenze dell'azienda.

##Esercizio. parco veicoli
	Un'azienda ha bisogno di gestire il suo parco veicoli tramite uno strumento informatico. 
	Per ogni veicolo occorrerà tenere traccia della targa, dell'anno di immatricolazione, dei chilometri percorsi e del costo di acquisto. Occorre poi tenere traccia degli interventi di manutenzione effettuati, per ciascuno dei quali occorre ricordare la data e il costo. 
	Fornire un metodo per determinare, per ogni veicolo, il totale dei costi sostenuti per il suo acquisto e la sua manutenzione. 
	Determinare il totale dei costi sostenuti per l'aquisto e la manutenzione di un veicolo in un dato anno, specificato dall'utente. Progettare ed implementare una gerarchia di classi che sia in grado di soddisfare le esigenze dell'azienda.

##Esercizio. ristorante
	Un ristorante offre un certo numero di pietanze, ognuna delle quali ha un nome e un prezzo al pubblico. 
	Per ognuna di esse è nota una lista degli ingredienti necessari alla sua preparazione, ognuno dei quali ha un nome e un costo. Nelle pietanze calde, a differenza di quelle fredde, il costo di cottura della pietanza è rilevante e occorre tenerne traccia. Il titolare del ristorante vuole determinare quale sia il guadagno totale atteso dalla vendita di un piatto. Inoltre, Fornire un metodo per determinare il numero di ingredienti necessari alla preparazione di una pietanza. 
	Progettare ed implementare una gerarchia di classi che sia in grado di soddisfare le esigenze del ristorante.

##Esercizio. corso di laurea in informatica
	Uno studente del corso di laurea in informatica vuole gestire in modo automatizzato il registro degli esami che ha sostenuto. Per ogni esame occorre tenere traccia del nome del corso, della data di superamento dell'esame, del voto conseguito (che si suppone espresso in trentesimi) e dell'eventuale lode. 
	Lo studente vuole calcolare la media aritmetica dei voti conseguiti in tutti gli esami sostenuti. Potrebbe poi essere interessato a sapere il numero di esami che ha sostenuto con profitto. 
	Progettare ed implementare una gerarchia di classi JAVA che sia in grado di soddisfare le esigenze dello studente.

##Esercizio. punteggi ottenuti dagli studenti 
	Il docente di un corso vuole tenere traccia dei punteggi ottenuti dagli studenti in una certa prova scritta. 
	La prova scritta è strutturata in tre esercizi, ad ognuno dei quali è attribuito un punteggio. 
	La somma dei punteggi ottenuti nei tre esercizi rappresenta poi il voto finale assegnato allo studente (espresso in trentesimi). Il docente potrebbe essere interessato a determinare quanti tra gli studenti abbiano ottenuto un voto sufficiente (quindi maggiore o uguale a 18) nella prova scritta. 
	Calcolare la percentuale di studenti con un voto insufficiente sul totale. 
	Progettare ed implementare una gerarchia di classi JAVA che sia in grado di soddisfare le esigenze del docente.

##Esercizio. negozio di vestiti
	Il titolare di un negozio di vestiti è interessato a realizzare un registro elettronico dei suoi clienti.
	Per ogni cliente, occorre tener traccia del nome e dell'indirizzo. Inoltre, occorre tener traccia di tutti gli acquisti effettuati dal cliente presso il negozio. Ciascun acquisto, a sua volta, consterà di una data e di una lista di prodotti. Infine, ogni prodotto ha un prezzo e nome. 
	Il negoziante vuole determinare quanti clienti abbiano acquistato prodotti in un certo
	mese di un certo anno. 
	Inoltre, al negoziante potrebbe interessare sapere la lista di tutti i prodotti
	venduti in una certa data. Infine, per il titolare del negozio determinare quante volte un certo prodotto (con un certo nome) sia stato venduto, complessivamente. 
	Si progetti e si implementi una gerarchia di classi JAVA che sia in grado di soddisfare le esigenze del negoziante.