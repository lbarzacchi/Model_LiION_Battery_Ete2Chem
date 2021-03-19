AGGIORNAMENTO 19 Marzo 2021

Questa cartella contiene vari file e cartelle che riassumono il lavoro svolto dopo la tesi


////////////////////////////////		Algorithm.pdf		////////////////////////////////////////////////////////////

Rappresenta la bozza dello schema a blocchi dell'algoritmo utilizzato per ricavare i parametri chimici del modello partendo dai parametri elettrici dell'ECM




////////////////////////////////		ResidualCapacity.xlsx		////////////////////////////////////////////////

Tabelle dove viene riportata la capacità residua della batteria per diversi valori dei parametri chimici del modello




////////////////////////////////		ComparisonChargeDischarge		////////////////////////////////////////////

Cartella contenente immagini che rappresentano i grafici dei parametri dell'ECM per scariche e cariche a confronto variando i parametri chimici del modello


----------	ChargeDischargeComparison.png/fig	----------

Rappresenta i grafici dei parametri dell'ECM per scariche e cariche variando i parametri chimici del modello

OSSERVAZIONI

-Sia per cariche che per scariche i parametri elettrici hanno le seguenti caratteristiche
	-R0 varia per Dchem/i00n/p
	-RC1, si riconoscono variazioni più spinte per Dchem a medi soc
	-R2, varia a bassi soc per Dsn, ad alti soc per Dsp e ~uniformemente per Dchem
	-C2, varia per Dsn e Dsp e Dchem

-Differenze carica/scarica
	-variazioni di R0 per Dchem in carica più spinte per bassi soc (dovuti a gradiente?)





////////////////////////////		Discharge_oneParamConstantOtherRandom		///////////////////////////////////////

Cartella contenente varie immagini, ognuna rappresenta i grafici dei parametri dell'ECM per scariche variando i parametri chimici del modello


----------	EteParams_StdVariation.png	----------

Rappresenta i grafici dei parametri dell'ECM per scariche variando linearmente ad uno ad uno i parametri chimici del modello
OSSERVAZIONI:
	-R0, varia per Dchem/i00n/p
	-RC1, si riconoscono variazioni più spinte per Dchem a medi soc
	-R2, varia a bassi soc per Dsn, ad alti soc per Dsp e ~uniformemente per Dchem
	-C2, varia per Dsn e Dsp e Dchem


----------	EteParams_RandomChemVaried_DchemConst.png	----------

Rappresenta i grafici dei parametri dell'ECM per scariche con Dchem costante al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0, varia solo quando ho una variazione di i00n/p (ciò conferma che tolto l'effetto di Dchem da R0 posso vedere le variazioni di i00n/p)
	-RCT1, variano poco, si conferma il fatto che dipendono principalmente da Dchem
	-R2, variazioni principali solo per alti e bassi soc dovute a Dsn/p (ciò conferma che tolto l'effetto di Dchem da R2 posso vedere le variazioni di Dsn/p)
	-CT2, variazioni incerte


----------	EteParams_RandomChemVaried_i00ni00pConst.png	----------

Rappresenta i grafici dei parametri dell'ECM per scariche con i00n/p costanti al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0, varia solamente per Dchem
	-RCT1, variano solamente per Dchem
	-R2, variazioni principali solo per alti e bassi soc dovute a Dsn/p e per medi soc dovute a Dchem
	-CT2, variazioni incerte


----------	EteParams_RandomChemVaried_Dchemi00ni00pConst.png	----------

Rappresenta i grafici dei parametri dell'ECM per scariche con Dchem/i00n/p costanti al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0 non varia
	-RCT1, non variano
	-R2, variazioni principali solo per alti e bassi soc dovute a Dsn/p 
	-CT2, variazioni incerte


----------	EteParams_RandomChemVaried_DsnDspConst.png	----------

Rappresenta i grafici dei parametri dell'ECM per scariche con Dsn/p costanti al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0 varia per Dchem/i00n/p
	-RCT1, variano per Dchem
	-R2, variazioni principali per Dchem
	-CT2, variazioni incerte

----------	cartellaFIG	----------

Al suo interno ci sono le figure sopra elencate in formato .fig, utilizzabili con MATLAB (interattive)


Tutti i grafici rappresentano le variazioni assolute (quindi Vmisurato - V_standard) dei parametri elettrici dell'ECM come specificato 






////////////////////////////		polinomialFunctionInterpolation			///////////////////////////////////////

Cartella contenente varie immagini, ognuna rappresenta l'andamento dei parametri elettrici variando i parametri chimici in 3 modi differenti:
	-	Rappresentazione sia dei 6 punti trovati variando i parametri chimici di 6 valori diversi (-12.5%, -25%, -37.5%, -50%, -62.5%, -75%) e fittando i parametri elettrici
	-	Sia della funzione polinomiale che interpola i dati sopra
	-	Sia la funzione iperbolica, che forse, ipotizza il valore dei parametri elettrici al di fuori dell'intervallo 100%/25% usato nelle simulazioni

----------	0-75_results		----------

Ci sono le immagini di queste 3 rappresentazioni per R0,RCT1 e R2. I parametri elettrici che mi permettono di ricavare delle informazioni sui parametri chimici
I limiti dell'asse delle x sono tra il 100% e 25% del parametro chimico variato per vedere principalmente l'andamento della funzione polinomiale  


----------	0-95_results		----------

Ci sono le immagini di queste 3 rappresentazioni per R0,RCT1 e R2. I parametri elettrici che mi permettono di ricavare delle informazioni sui parametri chimici
I limiti dell'asse delle x sono tra il 25% e 5% del parametro chimico variato per vedere principalmente l'andamento della funzione iperbolica



