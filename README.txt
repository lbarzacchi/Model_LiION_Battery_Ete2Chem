AGGIORNAMENTO 16 Marzo 2021

Nella cartella lib ci sono vari file e cartelle che riassumono il lavoro svolto in questo periodo



////////////////////////////////		Algorithm.pdf		////////////////////////////////////////////////////////////

Rappresenta la bozza dello schema a blocchi dell'algoritmo utilizzato per ricavare i parametri chimici del modello partendo dai parametri elettrici dell'ECM




////////////////////////////////		testResidualCapacity.xlsx		////////////////////////////////////////////////

Tabelle dove viene riportata la capacità residua della batteria per diversi valori dei parametri chimici del modello




////////////////////////////////		ChargeDischargeComparison.png		////////////////////////////////////////////

Rappresenta i grafici dei parametri dell'ECM per scariche e cariche variando i parametri chimici del modello

OSSERVAZIONI

-Sia per cariche che per scariche i parametri elettrici hanno le seguenti caratteristiche
	-R0 varia per Dchem/i00n/p
	-RC1, si riconoscono variazioni più spinte per Dchem a medi soc
	-R2, varia a bassi soc per Dsn, ad alti soc per Dsp e ~uniformemente per Dchem
	-C2, varia per Dsn e Dsp e Dchem

-Differenze carica/scarica
	-variazioni di R0 per Dchem in carica più spinte per bassi soc (dovuti a gradiente?)




////////////////////////////		Simulation_oneParamConstantOtherRandom		///////////////////////////////////////

Cartella contenente varie immagini, ognuna rappresenta i grafici dei parametri dell'ECM per scariche variando i parametri chimici del modello


/////	EteParams_StdVariation.png	/////

Rappresenta i grafici dei parametri dell'ECM per scariche variando linearmente ad uno ad uno i parametri chimici del modello
OSSERVAZIONI:
	-R0, varia per Dchem/i00n/p
	-RC1, si riconoscono variazioni più spinte per Dchem a medi soc
	-R2, varia a bassi soc per Dsn, ad alti soc per Dsp e ~uniformemente per Dchem
	-C2, varia per Dsn e Dsp e Dchem


/////	EteParams_RandomChemVaried_DchemConst.png	/////

Rappresenta i grafici dei parametri dell'ECM per scariche con Dchem costante al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0, varia solo quando ho una variazione di i00n/p (ciò conferma che tolto l'effetto di Dchem da R0 posso vedere le variazioni di i00n/p)
	-RCT1, variano poco, si conferma il fatto che dipendono principalmente da Dchem
	-R2, variazioni principali solo per alti e bassi soc dovute a Dsn/p (ciò conferma che tolto l'effetto di Dchem da R2 posso vedere le variazioni di Dsn/p)
	-CT2, variazioni incerte


/////	EteParams_RandomChemVaried_i00ni00pConst.png	/////

Rappresenta i grafici dei parametri dell'ECM per scariche con i00n/p costanti al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0, varia solamente per Dchem
	-RCT1, variano solamente per Dchem
	-R2, variazioni principali solo per alti e bassi soc dovute a Dsn/p e per medi soc dovute a Dchem
	-CT2, variazioni incerte


/////	EteParams_RandomChemVaried_Dchemi00ni00pConst.png	/////

Rappresenta i grafici dei parametri dell'ECM per scariche con Dchem/i00n/p costanti al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0 non varia
	-RCT1, non variano
	-R2, variazioni principali solo per alti e bassi soc dovute a Dsn/p 
	-CT2, variazioni incerte


/////	EteParams_RandomChemVaried_DsnDspConst.png	/////

Rappresenta i grafici dei parametri dell'ECM per scariche con Dsn/p costanti al suo valore standard e variando casualmente gli altri parametri chimci
OSSERVAZIONI:
	-R0 varia per Dchem/i00n/p
	-RCT1, variano per Dchem
	-R2, variazioni principali per Dchem
	-CT2, variazioni incerte


Tutti i grafici rappresentano le variazioni assolute (quindi Vmisurato - V_standard) dei parametri elettrici dell'ECM come specificato 