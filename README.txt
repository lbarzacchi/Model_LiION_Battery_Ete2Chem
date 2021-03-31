Archivied Results

Da fare:
- Da aggiornare cartella algoritmo con algoritmo nuovo e polyfit da rifare con i dati del 2% Eloss

////////////////////////////		001_YeVerification
Questa cartella contiene vari file e cartelle che riassumono le verifiche fatte per validare il nostro modello con i dati dell'articolo di Ye


///	000_ConstantDischargeCompare
Cartella contenente immagini che rappresentano la tensione della cella per scariche a corrente costante, per diversi Crate ( Correnti di scarica 10.2A, 11.545A )
Comparazione tra dati Ye e del nostro modello


///	001_ComparisonTemperature
Cartella contenente file Excel che rappresentano la Temperatura della cella per scariche/cariche a corrente costante, per diversi Crate ( Corrente di scarica 11.545A )
Comparazione tra dati Ye e del nostro modello


///	002_PulsedDischarge		
Cartella contenente immagini che rappresentano la tensione della cella per scariche a corrente pulsata, per diversi Crate (Figure 12,13,14,15 dell'articolo Ye)
Comparazione tra dati Ye e del nostro modello



////////////////////////////		002_ElectricParameters
Questa cartella contiene vari file e cartelle che riassumono le verifiche fatte per validare il nostro modello con i dati dell'articolo di Ye


///	001_ComparisonElectricParam20soc_min01max10
Cartella contenente immagini che rappresentano i parametri dell'ECM analizzando delle scariche pulsate (-5% ognuna) variando un parametro del modello
(Dsn, Dsp, Dchem, i00n, i00p, Temperatura) in un range di valori (+900%, +400%, +100%, -50%, -80%, -90%)


///	002_ComparisonElectricParam3soc
Cartella contenente immagini che rappresentano i parametri dell'ECM analizzando delle scariche pulsate in 3 stati della batteria, Basse, Medie ed Alte percentuali di carica (20%, 50%, 80%)
variando un parametro del modello (Dsn, Dsp, Dchem, i00n, i00p) in un range di valori

/	075
Il range di valori scelto è [-12.5%, -25%, -37.5%, -50%, -62.5%, -75%] in modo da simulare una degradazione della batteria

/ElossMax2%
Il range di valori è stato scelto in base a quanto ogni parametro chimico influisce sull'energia della batteria(guarda cartella 003_Energy) prendendo come variazione massima una perdita di energia del 2% rispetto ad una scarica costante a 1C
Successivamente ogni parametro chimico aveva un suo range di variazione, sei valori considerando come massima variazione quella con energia persa = 2%


///	003_ComparisonElectricParamDischarge_resume
Cartella contenente immagini che rappresentano i parametri dell'ECM analizzando delle scariche pulsate in 3 stati della batteria, Basse, Medie ed Alte percentuali di carica (20%, 50%, 80%)
variando un parametro alla volta del modello (Dsn, Dsp, Dchem, i00n, i00p) in un range di valori ( 0%-75% o in base all'energia persa del 2%).
Nelle immagini viene rappresentata una tabella che tiene traccia dei valori di ogni parametro chimco per ogni simulazione.
Ogni grafico a barre rappresenta un parametro elettrico dell'ECM, per ogni simulazione ho 3 barre che rappresentano diverse percentuali di carica ( come da legenda)
Sull'asse delle y vengono riportati i valori assoluti dei parametri elettrici.


///	004_ComparisonDischargeCharge
Cartella contenente immagini che comparano i valori dei parametri elettrici per Cariche e Scariche(risultati nella cartella precedente) in un range di valori ( 0%-75% o in base all'energia persa del 2%).


///	005_ComparisonDischarge_oneParamConstantOtherRandom
Cartella contenente immagini che rappresentano i parametri dell'ECM analizzando delle scariche pulsate in 3 stati della batteria, Basse, Medie ed Alte percentuali di carica (20%, 50%, 80%)
Lasciando costante uno o più parametri chimci del modello e variando gli altri casualmente in un range di valori [-12.5%, -25%, -37.5%, -50%, -62.5%, -75%] 
In modo da associare ad ogni parametro elettrico dell'ECM un parametro chimico del modello
Nelle immagini viene rappresentata una tabella che tiene traccia dei valori di ogni parametro chimco per ogni simulazione.
Ogni grafico a barre rappresenta un parametro elettrico dell'ECM, per ogni simulazione ho 3 barre che rappresentano diverse percentuali di carica ( come da legenda)
Sull'asse delle y vengono riportati i valori assoluti dei parametri elettrici.

/	Variation_075
Il range di valori scelto è [-12.5%, -25%, -37.5%, -50%, -62.5%, -75%] in modo da simulare una degradazione della batteria

/	Variation_Eloss2
Il range di valori è stato scelto in base a quanto ogni parametro chimico influisce sull'energia della batteria(guarda cartella 003_Energy) prendendo come variazione massima una perdita di energia del 2% rispetto ad una scarica costante a 1C
Successivamente ogni parametro chimico aveva un suo range di variazione, sei valori considerando come massima variazione quella con energia persa = 2%



////////////////////////////		003_Energy
Questa cartella contiene immagini e file Excel che comparano l'energia della cella per diversi Crate o i valori dei parametri chimci


///	EnergyCrateCmp.fig
Immagine che rappresenta i profili di tensione di una cella scaricata a diversi Crate (area evidenziata ~= Energia cella)

///	EnergyPerc2Cmp.fig
Immagine che rappresenta i profili di tensione di una cella scaricata a 1C variando un parametro chimico in modo da avere una perdita di enegia rispetto a 1C del 2%

///	EnergyPerc5Cmp.fig
Immagine che rappresenta i profili di tensione di una cella scaricata a 1C variando un parametro chimico in modo da avere una perdita di enegia rispetto a 1C del 5%

///	EnergyCMP.xlsx
File Excel che rappresenta i valori dell'energia della cella variando Crate o i valori dei parametri chimci



////////////////////////////		004_Algorithm
Questa cartella contiene immagini e file che rappresenta la bozza dello schema a blocchi e delle funzioni di interpolazione dell'algoritmo 
utilizzato per ricavare i parametri chimici del modello partendo dai parametri elettrici dell'ECM



////////////////////////////		Scaletta.docx
Word contenente la bozza della scaletta dell'articolo