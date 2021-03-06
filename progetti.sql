USE [ACL]
GO
SET IDENTITY_INSERT [dbo].[NV_DevelopT] ON 

INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (1, N'Righe Carichi Whse', N'Carichi Whse, gestione lotto Colussi', 1, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2), NULL, N'Primo rilascio il 02/07/2020

Per generare un carico : Righe carichi Whse.

Per vedere il ricevimento generato : Ricezioni acquisti reg.', 1, CAST(N'2020-07-14T09:46:35.7655850' AS DateTime2), 1, CAST(N'2020-08-13T15:40:14.2433291' AS DateTime2), NULL, N'Cesarani Gianni')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (2, N'Registra causale di stralcio e causale spostamento data promessa ordini di vendita', N'Ordini Vendita', 1, CAST(N'2020-07-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), N'Installare in prod il 24.08 non prima !!!', 1, CAST(N'2020-07-22T17:56:22.3947596' AS DateTime2), 1, CAST(N'2020-09-10T14:24:28.8159672' AS DateTime2), NULL, N'Fossa Fabio')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (3, N'Gestione Promo', NULL, 1, CAST(N'2020-06-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-07-23T15:51:34.7106864' AS DateTime2), 1, CAST(N'2020-07-24T12:28:33.4200396' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (4, N'Creazione fatture proforma  escludendo righe dell''ordine a zero', NULL, 1, CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-04T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-07-24T12:29:31.2023903' AS DateTime2), 1, CAST(N'2020-08-04T08:41:54.1861199' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (5, N'Gestione Alcol ', N'Scrittura tabella esterna per Next', 1, CAST(N'2020-07-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-07T00:00:00.0000000' AS DateTime2), N'Righe carichi Whse', 1, CAST(N'2020-07-27T12:27:24.5289269' AS DateTime2), 1, CAST(N'2020-08-07T14:49:32.0032339' AS DateTime2), N'Olivero Mauro', N'Cesarani Gianni')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (6, N'Generazione FE con Id Documento senza la data (Report 50700)', NULL, 1, CAST(N'2020-07-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-30T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-07-28T14:03:47.0031569' AS DateTime2), 1, CAST(N'2020-12-03T15:31:55.5355942' AS DateTime2), NULL, N'Della Bina Piero')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (7, N'Generazione flusso EDI con Id Documento senza la data (Report 18004190)', NULL, 1, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-29T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-07-29T10:24:38.0849302' AS DateTime2), 1, CAST(N'2020-12-03T15:33:18.1981871' AS DateTime2), NULL, N'Della Bina Piero')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (8, N'Testi estesi testata', N'Su richiesta della Gaverina', 1, CAST(N'2020-07-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-04T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-07-29T16:13:04.3875149' AS DateTime2), 1, CAST(N'2020-08-04T08:41:43.2694840' AS DateTime2), N'Gaverina Alessandra', N'Silvestri Lorenzo ')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (9, N'Licenze NAV', N'Licenze Nav', 1, CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), N'Ciao Marco, dall’ambiente di sviluppo 2016_COLUSSI, scegli Strumenti  Informazioni Licenza.
Ti si apre la videata sotto, nella quale vedi la licenza caricata nel DB.
Scegli “Carica”  da dove puoi scegliere il file ……flf che ti abbiamo inviato (il ….txt contiene la spiegazione degli oggetti acquistati/Assegnati alla licenza).
 
In questo modo la licenza è caricata nel DB.
Per farla acquisire a tutti i servizi RTC, devono essere tutti stoppati e restartati.
Non è necessario farlo immediatamente.
Se non lo fai i servizi continuano a girare con la versione precedente della licenza.
La prima volta che  si restartano in automatico (credo il weekend) acquisiranno la nuova licenza caricata nel DB.
 
Per ora la licenza nuova ci serve in tutti i DBs di Test (SVIL, COLLAUDO e LOGISTICA).
', 1, CAST(N'2020-08-05T10:04:25.0140522' AS DateTime2), 1, CAST(N'2020-11-11T16:50:46.5998682' AS DateTime2), NULL, N'Fossa Fabio')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (10, N'Generazione flusso EDI con Id Documento senza la data', N'Cliente MIGROS', 1, CAST(N'2020-08-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-11T00:00:00.0000000' AS DateTime2), N'Riportare le stesse modifiche fatte nel report 18004193', 1, CAST(N'2020-08-11T18:09:52.3423071' AS DateTime2), 1, CAST(N'2020-08-12T09:13:39.3907512' AS DateTime2), NULL, N'Della Bina Piero')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (11, N'Distinte Incasso Agente', NULL, 1, CAST(N'2020-08-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-12T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-08-12T09:34:10.8851170' AS DateTime2), 1, CAST(N'2020-08-17T14:34:46.6782570' AS DateTime2), NULL, N'Bernasca Roberta')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (12, N'Progetto SS - Ingressi merce', NULL, 1, CAST(N'2020-08-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-18T00:00:00.0000000' AS DateTime2), N'CLS 20200813 o
CLS 13.08.2020', 1, CAST(N'2020-08-13T09:37:09.7622217' AS DateTime2), 1, CAST(N'2020-08-18T08:47:38.9836367' AS DateTime2), NULL, N'Sensi - Cesarani')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (13, N'Cambio Stato Ordine LA SUISSA', NULL, 1, CAST(N'2020-08-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-31T00:00:00.0000000' AS DateTime2), N'CU 52000 ROW 665 UPD_STATUS_TO_MDII -> ROW 3422 SalesHeader."Shortcut Dimension 1 Code"', 1, CAST(N'2020-08-17T14:36:10.0819247' AS DateTime2), 1, CAST(N'2020-08-31T12:42:48.9444167' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (14, N'Progetto SS - Ingresso Merce Scrittura SSIF_STOING', NULL, 1, CAST(N'2020-08-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), N'Lanciare la Page Rig Car Wh

Il codice aggiunto è marcato con CLS 24.08.2020

Questi oggetti devono essere rilasciati con il progetto Righe Carichi Whse.', 1, CAST(N'2020-08-24T11:35:48.5428948' AS DateTime2), 1, CAST(N'2020-11-16T09:46:55.2858581' AS DateTime2), NULL, N'Cesarani - Sensi')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (15, N'Esiti e TP', NULL, 1, CAST(N'2020-08-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-02T00:00:00.0000000' AS DateTime2), N'Aggiunta colonna "FTP Address" nella tabella spedizionieri perchè serve a NEXT Rendered', 1, CAST(N'2020-08-31T16:54:43.5120442' AS DateTime2), 1, CAST(N'2020-09-02T09:40:38.2902900' AS DateTime2), NULL, N'Sensi')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (16, N'La Suissa gestione blocchi credito', NULL, 1, CAST(N'2020-09-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-07T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-09-03T16:31:31.8553214' AS DateTime2), 1, CAST(N'2020-09-07T17:39:13.2959209' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (17, N'Rating Cribis', NULL, 1, CAST(N'2020-09-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), N'Setup gestione credito', 1, CAST(N'2020-09-07T15:14:38.4058548' AS DateTime2), 1, CAST(N'2020-11-02T17:42:00.8680481' AS DateTime2), NULL, N'Bernasca Roberta')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (18, N'Scrittura CARDSEND-TESITES.TESIDET', NULL, 1, CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-09T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-09-10T14:25:43.3703620' AS DateTime2), 1, CAST(N'2020-11-13T09:19:57.5623187' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (19, N'Revisione - Registra causale di stralcio e causale spostamento data promessa ordini di vendita', NULL, 1, CAST(N'2020-09-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), N'Nello stralcio ordine:

nella combo "Prodotto stralciato ma: " manca l''elemento vuoto.
Nelle causali introdurre un flag che seleziona tutte le righe (nel caso ad esempio che lo stralcio venga effettuato su richiesta del cliente)
verificare che la dinamica commerciale sia obbligatoria

Nella modifica data consegna
Nelle causali introdurre un flag che seleziona tutte le righe (nel caso ad esempio che lo stralcio venga effettuato su richiesta del cliente)

[Excerpt Line] : viene settato quando stralcio una riga
[Excerpt Reason Code] : causale di stralcio
[Sub Exceprt Reason Code] : causale di ridatazione
[Moved Promised Delivery Date]: viene settato quando sposto la data promessa consegna
[Sub Missing but Code]: mancante ma', 1, CAST(N'2020-09-11T11:09:12.6732413' AS DateTime2), 1, CAST(N'2020-10-15T12:47:36.9369736' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (21, N'Correzione Scrittura NR_ORDACCISE', NULL, 1, CAST(N'2020-09-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-09-14T10:44:32.3128599' AS DateTime2), 1, CAST(N'2020-09-14T10:48:00.3403904' AS DateTime2), NULL, N'Sensi-Cesarani')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (22, N'Ordini Vendita', NULL, 1, CAST(N'2020-09-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-17T00:00:00.0000000' AS DateTime2), N'Aggiungere Flag sulle causali stralcio per permettere di inserire una ridatazione o uno stralcio senza dover selezionare le righe.
Nella tabella delle causali aggiungere un flag per indicare che per quella causale devono essere marcate tutte le righe.
', 1, CAST(N'2020-09-15T11:30:35.3838784' AS DateTime2), 1, CAST(N'2020-09-17T08:29:53.6577368' AS DateTime2), NULL, N'Fossa')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (23, N'Cruscotto stralci', NULL, 1, CAST(N'2020-09-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-09-21T10:43:26.3595116' AS DateTime2), 1, CAST(N'2020-10-02T09:53:54.1790232' AS DateTime2), NULL, N'Fossa Fabio')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (24, N'Gestione Alcol - correzioni', NULL, 1, CAST(N'2020-09-25T00:00:00.0000000' AS DateTime2), NULL, N'Alla scelta procedi alla registrazione del carico se sceglie No allora non deve essere prodotta la riga in NR_ORD_ACCISE.
Quando si registra un carico con una qtà che chiude l''ordine il carico viene cancellato quindi occorre salvarsi i dati prima per poter scrivere la NR_ORD_ACCISE

Mi salvo questa funzione (gestisce il caso di un carico con qta uguale all''ordinato)

Post Receipt - OnAction()
//Start TDAG43270/lmr
TESTFIELD(Status,Status::Open);
//Stop TDAG43270/lmr
//Start TDAG43270-02/lmr
TESTFIELD("Vendor Shipment No.");
IF VendShipNo= '''' THEN
  ERROR(TextErr01);
TESTFIELD("Vendor Shipment Date");

IF "Vendor Shipment Date" > "Posting Date" THEN
  ERROR(TextErr02,FIELDCAPTION("Vendor Shipment Date"),FIELDCAPTION("Posting Date"));
//Stop TDAG43270-02/lmr

// CLS 24.08.2020 START
LocationSS := FALSE;
Location.SETFILTER(Code, "Location Code");
IF (NOT Location.ISEMPTY) THEN BEGIN
  Location.FINDSET();
  LocationSS := Location."Whse. Man.Sys";
END;
// CLS 24.08.2020 END

//Start TDLMR200513/lmr

IF ShipmentMethod.GET("Shipment Method Code") THEN BEGIN
  IF ShipmentMethod."Weight/Volume Required" THEN BEGIN
    WhseReceiptLine.RESET;
    WhseReceiptLine.SETRANGE("No.","No.");
    WhseReceiptLine.SETFILTER("Source No.",''<>%1'','''');
    IF WhseReceiptLine.FINDSET THEN BEGIN
      IF DocShippingInfo.GET(38,1,WhseReceiptLine."Source No.") THEN BEGIN
        DocShippingInfo.TESTFIELD("Net Weight");
        DocShippingInfo.TESTFIELD(Volume);
      END;
    END;
//Start TDAG43270-101 
    TESTFIELD("Shipping Agent Code");   
//Stop  TDAG43270-101

  END;
END;
//Stop TDLMR200513/lmr

// IF NOT LocationSS THEN BEGIN  // CLS 24.08.2020
// 
// END;  // CLS 24.08.2020

IF NOT LocationSS THEN BEGIN  // CLS 24.08.2020

  // CLS 13.07.2020 START
  WhseReceiptHeadLSAVE := Rec;
  WhseReceiptLineSAVE.RESET;
  WhseReceiptLineSAVE.SETRANGE("No.",Rec."No.");
  WhseReceiptLineSAVE.SETFILTER("Source No.",''<>%1'','''');
  IF WhseReceiptLineSAVE.FINDSET THEN
    IF NOT DocShippingInfoSAVE.GET(38,1,WhseReceiptLine."Source No.") THEN
      DocShippingInfoSAVE.INIT;
  // CLS 13.07.2020 END

  // CLS 13.07.2020 START
  // Start TD31796/tt
  //ORG:WhsePostRcptYesNo;
  //ORG WhseCombPostMgt.WhsePostRcptGroupedYesNo(Rec, FALSE);
  ChoiseYes:= WhseCombPostMgt.WhsePostRcptGroupedYesNo(Rec, FALSE);
  // Stop TD31796/tt
  // CLS 13.07.2020 END

//Start TDAG43270-02/lmr
IF WhseReceiptHeadL.GET(Rec."No.") THEN BEGIN 
  WhseReceiptHeadL.Status := Rec.Status::Released;
  WhseReceiptHeadL."Vendor Shipment Date" := 0D;
  VendShipNo := '''';
  WhseReceiptHeadL."Vendor Shipment No." := '''';
  //Start TDLMR200506/lmr
  WhseReceiptHeadL."Shipping Agent Code" := '''';
  //Stop TDLMR200506/lmr
  WhseReceiptHeadL.MODIFY(FALSE);

  //Start TDLMR200513/lmr
  WhseReceiptLine.RESET;
  WhseReceiptLine.SETRANGE("No.",WhseReceiptHeadL."No.");
  WhseReceiptLine.SETFILTER("Source No.",''<>%1'','''');
  IF WhseReceiptLine.FINDSET THEN BEGIN
    IF DocShippingInfo.GET(38,1,WhseReceiptLine."Source No.") THEN BEGIN
      DocShippingInfo.Modified := FALSE;
      DocRepInfoMgt.Calculate(DocShippingInfo);
    END;
  END;
    //Stop TDLMR200513/lmr
  END;

  // CLS 13.07.2020 START
  IF ChoiseYes THEN BEGIN

    IF (DocShippingInfoSAVE."Source ID" <> '''') THEN  BEGIN
      // CLS 13.07.2020 START
      IF NOT ColussiRicevimenti.Write_NROrdAccise(WhseReceiptHeadLSAVE, WhseReceiptLineSAVE, DocShippingInfoSAVE) THEN 
        MESSAGE(GETLASTERRORTEXT);
      // CLS 13.07.2020 END

      // CLS 13.07.2020 START
      IF DocShippingInfoSAVE."Qta Alcol" <> 0 THEN BEGIN
        DocShippingInfoSAVE."No. DAA" := '''';
        DocShippingInfoSAVE."Date DAA" := 0D;
        DocShippingInfoSAVE."Qta Alcol" := 0;
        DocShippingInfoSAVE."Lt Anidri" := 0;
        DocShippingInfoSAVE."Fattore 1" := 0;
        DocShippingInfoSAVE."Fattore 2" := 0;
        DocShippingInfoSAVE."Lt Idrati" := 0;
        DocShippingInfoSAVE."Gradi Alcol" := 0;
        DocShippingInfoSAVE."Draft DAA" := '''';
        // CLS 13.07.2020 END

        IF DocShippingInfoSAVE.MODIFY THEN;
      END;
    END;

    IF (DocShippingInfo."Source ID" <> '''') THEN  BEGIN
      // CLS 13.07.2020 START
      IF NOT ColussiRicevimenti.Write_NROrdAccise(WhseReceiptHeadLSAVE, WhseReceiptLineSAVE, DocShippingInfo) THEN 
        MESSAGE(GETLASTERRORTEXT);
      // CLS 13.07.2020 END

      // CLS 13.07.2020 START
      IF DocShippingInfo."Qta Alcol" <> 0 THEN BEGIN
        DocShippingInfo."No. DAA" := '''';
        DocShippingInfo."Date DAA" := 0D;
        DocShippingInfo."Qta Alcol" := 0;
        DocShippingInfo."Lt Anidri" := 0;
        DocShippingInfo."Fattore 1" := 0;
        DocShippingInfo."Fattore 2" := 0;
        DocShippingInfo."Lt Idrati" := 0;
        DocShippingInfo."Gradi Alcol" := 0;
        DocShippingInfo."Draft DAA" := '''';
        // CLS 13.07.2020 END

        IF DocShippingInfo.MODIFY THEN;
      END;
    END;

  END;
  // CLS 13.07.2020 END

  // CLS 25.06.2020 START
  WhseReceiptLine.RESET;
  WhseReceiptLine.SETRANGE("No.","No.");
  WhseReceiptLine.SETFILTER("Source No.",''<>%1'','''');
  IF WhseReceiptLine.FINDSET THEN BEGIN
    REPEAT
      WhseReceiptLine."Lot No. CLS" := '''';
      WhseReceiptLine."Date Lot CLS" := 0D;
      WhseReceiptLine.MODIFY;
    UNTIL WhseReceiptLine.NEXT = 0;
  END;
  // CLS 25.06.2020 END

END ELSE BEGIN     // CLS 24.08.2020
  IF CONFIRM(Text001) THEN BEGIN  // CLS 24.08.2020
    IF (ColussiRicevimenti.Write_STOING(Rec, rcWarehouseReceiptLine, Location)) THEN 
      MESSAGE(''Invio a SS eseguito correttamente'')
    ELSE
      MESSAGE(''Invio a SS NON ESEGUITO'');


    WhseReceiptLine.RESET;
    WhseReceiptLine.SETRANGE("No.",WhseReceiptHeadL."No.");
    WhseReceiptLine.SETFILTER("Source No.",''<>%1'','''');
    IF WhseReceiptLine.FINDSET THEN BEGIN
      IF DocShippingInfo.GET(38,1,WhseReceiptLine."Source No.") THEN BEGIN
        DocShippingInfo.Modified := FALSE;
        DocRepInfoMgt.Calculate(DocShippingInfo);

        IF ChoiseYes THEN BEGIN
          ColussiRicevimenti.Write_NROrdAccise(Rec, WhseReceiptLine, DocShippingInfo);

          DocShippingInfo."No. DAA" := '''';
          DocShippingInfo."Date DAA" := 0D;
          DocShippingInfo."Qta Alcol" := 0;
          DocShippingInfo."Lt Anidri" := 0;
          DocShippingInfo."Fattore 1" := 0;
          DocShippingInfo."Fattore 2" := 0;
          DocShippingInfo."Lt Idrati" := 0;
          DocShippingInfo."Gradi Alcol" := 0;
          DocShippingInfo."Draft DAA" := '''';

          DocShippingInfo.MODIFY;
        END;

      END;
    END;
  END     // CLS 24.08.2020
END;      // CLS 24.08.2020

CurrPage.CLOSE;
  //Stop TDLMR200513/lmr', 1, CAST(N'2020-09-25T14:22:17.6915259' AS DateTime2), 1, CAST(N'2020-11-13T15:43:47.7237531' AS DateTime2), NULL, N'Cesarani')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (25, N'Ordini Vendita - Migliorie', N'Migliorie varie', 1, CAST(N'2020-10-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-21T00:00:00.0000000' AS DateTime2), N'Aggiungere controllo data lavorativo per la "data di consegna promessa"', 1, CAST(N'2020-09-25T15:45:59.0095208' AS DateTime2), 1, CAST(N'2020-10-21T15:36:24.1162899' AS DateTime2), NULL, N'')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (26, N'Cambio Stato Ordine LA SUISSA', NULL, 1, CAST(N'2020-09-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-25T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-09-25T15:46:07.5709062' AS DateTime2), 1, CAST(N'2020-09-25T16:05:07.1115237' AS DateTime2), NULL, N'Della Bina Piero')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (27, N'Ingressi SS - Lista STOING', NULL, 1, CAST(N'2020-09-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-28T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-09-30T10:10:54.8152886' AS DateTime2), 1, CAST(N'2020-10-28T16:01:42.5546786' AS DateTime2), NULL, N'Sensi Fabrizio')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (28, N'Codice Hook per autogrill', N'Aggiunta del codice per ''AUTOGRILL_''', 1, CAST(N'2020-10-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-27T00:00:00.0000000' AS DateTime2), N'Modificata CodeUnit 18008095 riga 1151', 1, CAST(N'2020-10-21T17:17:55.2935488' AS DateTime2), 1, CAST(N'2020-10-28T09:51:36.3440617' AS DateTime2), NULL, N'Della Bina Piero')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (29, N'Promo', N'Promo', 1, CAST(N'2020-10-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), N'Mail del 20.10.2020

Ciao
Sotto trovi due (micro) richieste che ti avevo accennato relativamente alle promo:

1-	Campi obbligatori su righe promo
As-is: 
-	volantino SI/NO. Se volantino = SI -> tema volantino obbligatorio
-	promo di linea SI/NO
Tobe: volantino SI/NO. Se volantino = SI -> sia tema volantino che promo di linea obbligatorio

2-	Al cambio stato in confermata inserire controllo bloccante sulla presenza di almeno una riga prodotto

grazie
', 1, CAST(N'2020-10-28T09:54:50.3426508' AS DateTime2), 1, CAST(N'2020-10-30T09:21:42.7866984' AS DateTime2), N'Lorenzo Silvestri', NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (30, N'Ordini - gestione blocchi', NULL, 1, CAST(N'2020-11-03T00:00:00.0000000' AS DateTime2), NULL, N'Per distinguere l''utente SFA dal Customer verificare se c''è il codice SFA indicato nel setup utente (Salespers./Purch. Code)

Inserimento articoli poi vai su Naviga e selezioni applica canvass, nella page premere il bottone Applica Canvass a questo punto vengono calcolati i blocchi commerciali.
', 1, CAST(N'2020-11-03T16:21:12.8652254' AS DateTime2), 1, CAST(N'2021-02-05T15:53:35.2634374' AS DateTime2), NULL, N'Fossa-Silvestri')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (31, N'Customer Division', NULL, 1, CAST(N'2020-11-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-09T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-11-09T17:48:32.2527683' AS DateTime2), 1, CAST(N'2020-11-09T17:50:39.5555868' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (32, N'Codice Hook', NULL, 1, CAST(N'2020-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-13T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-11-10T17:23:23.4958303' AS DateTime2), 1, CAST(N'2020-11-13T18:40:54.1159539' AS DateTime2), NULL, N'Della Bina')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (33, N'Gestione Blocco Lotto fornitore', NULL, 1, CAST(N'2020-11-19T00:00:00.0000000' AS DateTime2), NULL, N'Riclassificazione articoli

Reg Magazzino

Giacenza Obsoleti', 1, CAST(N'2020-11-19T10:43:27.7967065' AS DateTime2), 1, CAST(N'2021-01-04T09:44:19.0634687' AS DateTime2), NULL, N'Cesarani ')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (34, N'Inserimento massivo articoli nell''ordine', NULL, 1, CAST(N'2020-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-20T00:00:00.0000000' AS DateTime2), N'Ordini di vendita', 1, CAST(N'2020-11-20T15:06:28.1894012' AS DateTime2), 1, CAST(N'2020-11-23T10:07:13.1441896' AS DateTime2), NULL, N'Della Bina')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (35, N'Progetto fatto da Fabio', NULL, 1, CAST(N'2020-11-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-11-25T14:32:47.6888914' AS DateTime2), 1, CAST(N'2020-11-26T10:30:49.9289915' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (36, N'Annullamento Barcode ', NULL, 1, CAST(N'2020-11-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-27T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-11-27T16:19:53.5341950' AS DateTime2), 1, CAST(N'2020-11-27T17:02:06.2294872' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (37, N'PREGIS_C Codice Hook', NULL, 1, CAST(N'2020-11-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-01T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-11-27T17:39:06.6890792' AS DateTime2), 1, CAST(N'2020-12-02T08:52:31.9703260' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (38, N'Codice CIG', NULL, 1, CAST(N'2020-12-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-04T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-12-03T15:50:59.9763788' AS DateTime2), 1, CAST(N'2020-12-04T09:49:37.4517704' AS DateTime2), NULL, N'Della Bina Piero')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (39, N'Scrittura "APV Card"', NULL, 1, CAST(N'2020-12-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), N'Replicare la logica indicata nella SP FACOAPV_01 in SYNC_XTEL 
e la Tabella VIEW_2016_COLUSSI.FF2020_TOT_RIGADOCUMENTO che viene popolata dalla SP Load_FF_RigaDocumento
Nel Db SQL-VS02\PTSQL2005_2 
   DB: Colussi_Vendite_DM
   Tabekka: tab_causali

', 1, CAST(N'2020-12-11T15:38:32.7101101' AS DateTime2), 1, CAST(N'2021-01-13T10:02:45.2946947' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (40, N'Miglioramento esportazione dati Customer', NULL, 1, CAST(N'2020-12-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-15T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-12-15T14:15:41.7926767' AS DateTime2), 1, CAST(N'2020-12-17T17:21:15.3247749' AS DateTime2), NULL, N'Della Bina, Fossa')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (41, N'Aggiornamento TESITES', NULL, 1, CAST(N'2020-12-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-22T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-12-22T14:50:56.4783130' AS DateTime2), 1, CAST(N'2020-12-22T15:02:10.5777177' AS DateTime2), NULL, N'Della Bina')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (42, N'Generazione Note Credito per errori fatturazione Kit', NULL, 1, CAST(N'2020-12-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-29T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2020-12-30T09:35:02.1968802' AS DateTime2), 1, CAST(N'2021-01-07T15:19:12.7122545' AS DateTime2), NULL, N'Fossa')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (43, N'Pastificio PLIN implementazione scheda agenti intercompany', NULL, 1, CAST(N'2021-01-07T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-08T00:00:00.0000000' AS DateTime2), N'Nell''ambiente PLIN modifica la scheda di sincronizzazione tabelle esterne Code "IC_AGENTI" nella condizione Where in modo che filtri i soli agenti marcati come appartenenti a PLIN.

Modificata scheda sincronizzazione tabelle esterne sul raggruppamento NAV', 1, CAST(N'2021-01-07T14:51:45.8952449' AS DateTime2), 1, CAST(N'2021-01-08T10:27:19.8853692' AS DateTime2), NULL, N'Bernasca - Paolucci')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (44, N'Calcolo prezzi componenti del Kit', NULL, 1, CAST(N'2021-01-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2021-01-11T10:32:57.3053242' AS DateTime2), 1, CAST(N'2021-01-21T16:44:25.6255251' AS DateTime2), NULL, N'Fossa - Della Bina')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (45, N'TP Internal ', NULL, 1, CAST(N'2021-01-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2021-01-11T12:19:34.4143862' AS DateTime2), 1, CAST(N'2021-02-16T08:21:44.3319311' AS DateTime2), NULL, N'Bernasca')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (46, N'Nuovo divisioni SUISSA ', NULL, 1, CAST(N'2021-01-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-12T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2021-01-12T12:24:28.3535845' AS DateTime2), 1, CAST(N'2021-01-12T12:46:18.2861264' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (47, N'Gestione tabella causali ', NULL, 1, CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), NULL, N'Aggiunta gestione dei flag relativi al calcolo delle APV', 1, CAST(N'2021-01-13T10:05:31.8589842' AS DateTime2), 1, CAST(N'2021-01-13T10:05:31.8589842' AS DateTime2), NULL, NULL)
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (48, N'Filtro articoli non vendibili in gestione ordini', NULL, 1, CAST(N'2021-01-18T00:00:00.0000000' AS DateTime2), NULL, NULL, 1, CAST(N'2021-01-18T11:42:23.2465903' AS DateTime2), 1, CAST(N'2021-01-18T11:42:23.2465903' AS DateTime2), NULL, N'Fossa')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (49, N'FATTURAZIONE ELETTRONICA -> PAGE MODIFICA DATI DOCUMENTI DOCUMENTO ELETTRONICO CICLO PASSIVO', NULL, 1, CAST(N'2021-01-26T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2021-01-26T09:54:18.5737417' AS DateTime2), 1, CAST(N'2021-02-17T14:27:36.5395002' AS DateTime2), NULL, N'Bernasca')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (50, N'Import articoli da Elo correzione bug Data Fine Vendite e Data Fine Consegna', NULL, 1, CAST(N'2021-01-27T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2), N'', 1, CAST(N'2021-01-28T11:28:07.5724740' AS DateTime2), 1, CAST(N'2021-02-03T16:33:17.6030082' AS DateTime2), NULL, N'Baglioni')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (51, N'Flag Vendibilità Articolo', NULL, 1, CAST(N'2021-01-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-15T00:00:00.0000000' AS DateTime2), N'IMPORTANTE IMPORTANTE IMPORTANTE IMPORTANTE
============================================================================================
Nel Raggruppamento NAV aggiungere nella scheda di sincronizzazione il mapping della colonna 50205 su 50205 
Parlo della scheda che sincronizza IC Item con Item', 1, CAST(N'2021-01-29T11:19:02.8219934' AS DateTime2), 1, CAST(N'2021-02-15T09:37:28.5946774' AS DateTime2), NULL, N'Baglioni')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (52, N'Ordine di reso vendita', NULL, 1, CAST(N'2021-02-09T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-09T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2021-02-09T17:46:44.6106772' AS DateTime2), 1, CAST(N'2021-02-09T17:47:32.1984828' AS DateTime2), NULL, N'Della Bina')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (53, N'Ordine di vendita - Impedire inserimento art. non vendibili', NULL, 1, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-17T00:00:00.0000000' AS DateTime2), NULL, 1, CAST(N'2021-02-16T10:23:53.6380828' AS DateTime2), 1, CAST(N'2021-02-17T10:56:02.2449931' AS DateTime2), NULL, N'Fossa')
INSERT [dbo].[NV_DevelopT] ([NVDT_ID], [NVDT_ProjectName], [NVDT_Description], [NVDT_MBUS_ID], [NVDT_Data], [NVDT_DataRilascio], [NVDT_Note], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDT_ReferenteEsterno], [NVDT_ReferenteInterno]) VALUES (54, N'Catalogo Fornitori', NULL, 1, CAST(N'2021-02-18T00:00:00.0000000' AS DateTime2), NULL, NULL, 1, CAST(N'2021-02-18T14:31:14.8327292' AS DateTime2), 1, CAST(N'2021-02-18T14:31:14.8327292' AS DateTime2), NULL, N'Cesarani')
SET IDENTITY_INSERT [dbo].[NV_DevelopT] OFF
GO
SET IDENTITY_INSERT [dbo].[NV_DevelopD] ON 

INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (1, 1, N'Table', 7317, NULL, N'SBLOCCATA DA EOS', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:32:56.9635816' AS DateTime2), 1, CAST(N'2021-01-07T17:27:25.9703024' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (2, 1, N'Table', 121, NULL, NULL, CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:33:03.7047786' AS DateTime2), 1, CAST(N'2020-07-21T12:33:03.7047786' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (3, 1, N'Table', 39, NULL, N'Non aggiornare ad aggiornare in sviluppo ci pensa EOS', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:33:18.4139115' AS DateTime2), 1, CAST(N'2020-08-04T11:12:52.9293467' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (4, 1, N'Table', 5040703, NULL, N'', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:33:29.3585247' AS DateTime2), 1, CAST(N'2020-08-06T15:16:11.7320692' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (5, 1, N'Codeunit', 90, CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), N'SBLOCCATA DA EOS', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:36:59.9946206' AS DateTime2), 1, CAST(N'2021-01-07T17:24:50.2549555' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (6, 1, N'Codeunit', 5760, NULL, N'', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:37:16.2148099' AS DateTime2), 1, CAST(N'2020-07-21T12:37:16.2148099' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (7, 1, N'Page', 5769, NULL, N'Bloccata da EOS', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:38:56.7758847' AS DateTime2), 1, CAST(N'2020-08-06T14:59:10.2930621' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (8, 1, N'Page', 137, NULL, N'Il lotto e la data del lotto devono essere scritte anche su PurchReceiptEntry, che verrà letta dal report 80095.
Potrebbe essere aggiunto il codice anche nella tabella 121 (???).', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:39:06.4256265' AS DateTime2), 1, CAST(N'2020-08-06T15:15:00.0728854' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (9, 1, N'Page', 5768, CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), N'Sbloccata da EOS', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:39:13.9517274' AS DateTime2), 1, CAST(N'2021-01-07T17:25:55.7639316' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (10, 1, N'Report', 80095, CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), N'Alimenta la Purch. Rcpt. Entries

    FilterValueRefresh := "Purch. Receipt Entry".GETFILTER("Posting Date");
    IF (FilterValueRefresh <> '''') THEN
       PurchRcptHeader.SETFILTER("Document Date", FilterValueRefresh);

    FilterValueRefresh := "Purch. Receipt Entry".GETFILTER("Buy-from Vendor No.");
    IF (FilterValueRefresh <> '''') THEN
       PurchRcptHeader.SETFILTER("Buy-from Vendor No.", FilterValueRefresh);

    PurchRcptHeader.FINDSET;

    REPORT.RUN(80096, FALSE, FALSE, PurchRcptHeader);
', CAST(N'2020-07-01T12:17:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:39:24.4630778' AS DateTime2), 1, CAST(N'2020-09-18T12:28:57.2034288' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (11, 1, N'MenuSuite', 1090, NULL, N'', CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-21T12:39:34.7079687' AS DateTime2), 1, CAST(N'2020-07-21T12:39:34.7079687' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (12, 2, N'Table', 37, NULL, N'Non aggiornarla in SVIL, ci pensa EOS', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-22T17:56:50.2249968' AS DateTime2), 1, CAST(N'2020-08-04T16:33:09.0859631' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (13, 2, N'Page', 80207, NULL, N'Controllo data festiva in base al calendario Colussi :

Variabili 
Name	                DataType	Subtype	Length
BaseCalChange	Record	        Base Calendar Change	
ColussiSetup	Record	        Colussi Setup	
CalendarCode	Code		20
TargetDate	         Date		

Codice 
  ColussiSetup.GET();
  CalendarCode := ColussiSetup."Expected Deliv. Date Calendar";
  TargetDate := "Requested Delivery Date";

  BaseCalChange.RESET;
  BaseCalChange.SETRANGE("Base Calendar Code",CalendarCode);
  IF BaseCalChange.FINDSET THEN
    REPEAT
      CASE BaseCalChange."Recurring System" OF
        BaseCalChange."Recurring System"::" ":
          IF TargetDate = BaseCalChange.Date THEN BEGIN
            ERROR(Text0001);
          END;
        BaseCalChange."Recurring System"::"Weekly Recurring":
          IF DATE2DWY(TargetDate,1) = BaseCalChange.Day THEN BEGIN
            ERROR(Text0001);
          END;
        BaseCalChange."Recurring System"::"Annual Recurring":
          IF (DATE2DMY(TargetDate,2) = DATE2DMY(BaseCalChange.Date,2)) AND
             (DATE2DMY(TargetDate,1) = DATE2DMY(BaseCalChange.Date,1))
          THEN BEGIN
            ERROR(Text0001);
          END;
      END;
    UNTIL BaseCalChange.NEXT = 0;
', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-22T17:57:00.4917195' AS DateTime2), 1, CAST(N'2020-08-10T11:44:16.7522616' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (14, 2, N'Page', 80230, NULL, N'', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-22T17:57:08.4873055' AS DateTime2), 1, CAST(N'2020-07-22T17:57:08.4873055' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (15, 2, N'Page', 80231, NULL, N'Nuovo oggetto', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-22T17:57:28.2341024' AS DateTime2), 1, CAST(N'2020-07-22T17:57:28.2341024' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (16, 2, N'Page', 9305, NULL, N'', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-22T17:57:38.9289642' AS DateTime2), 1, CAST(N'2020-07-22T17:57:38.9289642' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (17, 2, N'Page', 42, NULL, N'Attualmente impegnato da EOS, appena possibile riportare la modifica fatta sulla page 9305 (nuovo bottone e nuova chiamata, costituita da un parametro aggiuntivo, alla page 80207)
Sbloccato il giorno 23.07.2020', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-22T17:58:38.9952529' AS DateTime2), 1, CAST(N'2020-07-23T09:46:39.3908895' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (18, 3, N'Table', 80102, CAST(N'2020-06-08T00:00:00.0000000' AS DateTime2), N'', CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-23T15:52:19.5502042' AS DateTime2), 1, CAST(N'2020-07-23T15:52:37.4596747' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (19, 3, N'Page', 80139, NULL, N'', CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-23T15:52:53.7358899' AS DateTime2), 1, CAST(N'2020-07-23T15:52:53.7358899' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (20, 3, N'Table', 80140, NULL, N'', CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-23T15:53:01.6288090' AS DateTime2), 1, CAST(N'2020-07-23T15:53:01.6288090' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (21, 3, N'Table', 80146, NULL, N'', CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-23T15:53:09.7377695' AS DateTime2), 1, CAST(N'2020-07-23T15:53:09.7377695' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (22, 4, N'Table', 50097, CAST(N'2017-08-24T10:26:00.0000000' AS DateTime2), N'Non ho cambiato la struttura ma il codice :

  // CLS 23.07.2020 START
  SalesLineL.SETFILTER(Quantity, ''<>0'');
  // CLS 23.07.2020 END
', CAST(N'2020-08-04T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-24T12:34:01.5932004' AS DateTime2), 1, CAST(N'2020-07-24T12:34:01.5932004' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (23, 5, N'Page', 5768, CAST(N'2020-07-15T12:00:00.0000000' AS DateTime2), N'Contiene il Bottone evento Registra Carico che richiama :
      // CLS 13.07.2020 START
      ColussiRicevimenti.Write_NROrdAccise(WhseReceiptHeadL, WhseReceiptLine, DocShippingInfo);
      // CLS 13.07.2020 END
Qui è possibile trovare il codice che mi consente di attivare la connessione per la table di tipo externalSQL :
    ExtSyncConnectionSetup.GET(''NEXT'');
    ConnectionName := InterfaceGeneralFunctions.RegisterTempConnectionIfNeeded(ExtSyncConnectionSetup, TempExtSyncConnectionSetup);
    IF ConnectionName <> '''' THEN
      SETDEFAULTTABLECONNECTION(TABLECONNECTIONTYPE::ExternalSQL, ConnectionName);', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-27T12:28:42.8725023' AS DateTime2), 1, CAST(N'2020-07-27T16:17:17.8868636' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (24, 5, N'Table', 51009, CAST(N'2020-07-15T12:00:00.0000000' AS DateTime2), N'', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-27T12:28:54.0296695' AS DateTime2), 1, CAST(N'2020-07-27T12:30:41.4642788' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (25, 5, N'Codeunit', 80133, NULL, N'', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-27T12:31:13.9244579' AS DateTime2), 1, CAST(N'2020-07-27T12:31:13.9244579' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (26, 6, N'Codeunit', 18004293, CAST(N'2020-07-27T11:43:00.0000000' AS DateTime2), N'Attualmente l''oggetto è bloccato in ambiente SVIL da A.Vecchio, appena lo sblocca riportare modifica fatta alla righe 748, 813, 3602', CAST(N'2020-07-30T16:53:00.0000000' AS DateTime2), 1, CAST(N'2020-07-28T14:13:28.5462566' AS DateTime2), 1, CAST(N'2020-07-30T16:53:27.2907810' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (27, 6, N'Codeunit', 80133, CAST(N'2020-07-13T16:11:00.0000000' AS DateTime2), N'Aggiunte funzioni per il trattamento delle stringhe', CAST(N'2020-07-30T16:53:00.0000000' AS DateTime2), 1, CAST(N'2020-07-28T14:14:13.2280348' AS DateTime2), 1, CAST(N'2020-07-30T16:53:11.2073225' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (28, 7, N'Report', 18004193, CAST(N'2019-12-02T11:54:00.0000000' AS DateTime2), N'Riga 2571', CAST(N'2020-07-30T16:52:00.0000000' AS DateTime2), 1, CAST(N'2020-07-29T10:25:51.4647113' AS DateTime2), 1, CAST(N'2020-07-30T16:52:06.7231033' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (29, 2, N'Page', 80101, CAST(N'2020-06-09T14:46:00.0000000' AS DateTime2), N'Aggiungere sottocausale "Mancante ma"
', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-29T12:32:09.5921360' AS DateTime2), 1, CAST(N'2020-07-29T12:32:09.5921360' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (30, 8, N'Table', 5046317, CAST(N'2019-03-14T12:00:00.0000000' AS DateTime2), N'', CAST(N'2020-07-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-29T16:15:54.0635245' AS DateTime2), 1, CAST(N'2020-07-30T11:10:07.0531497' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (31, 8, N'Page', 5046315, CAST(N'2019-03-14T12:00:00.0000000' AS DateTime2), N'', CAST(N'2020-08-04T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-29T16:16:20.5230403' AS DateTime2), 1, CAST(N'2020-07-29T16:16:20.5230403' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (32, 5, N'Table', 18004295, CAST(N'2019-11-13T09:21:00.0000000' AS DateTime2), N'Aggiunte colonne per gestione Alcol', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-30T16:02:32.7385653' AS DateTime2), 1, CAST(N'2020-07-30T16:02:32.7385653' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (33, 5, N'Table', 5768, CAST(N'2020-05-15T12:00:00.0000000' AS DateTime2), N'Non c''erano modifiche ... e l''ho trovato in data 15/09/15 ... strano', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-30T16:03:49.2962266' AS DateTime2), 1, CAST(N'2020-08-05T08:58:06.5201440' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (34, 5, N'Page', 18004296, CAST(N'2020-06-22T16:16:00.0000000' AS DateTime2), N'', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-07-30T16:05:39.8272773' AS DateTime2), 1, CAST(N'2020-07-30T16:05:39.8272773' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (35, 2, N'Codeunit', 80133, NULL, N'Aggiunta la routine CheckWorkDay che in base al calendario restituisce true o false se il giorno selezionato è lavorativo o no', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-10T12:34:19.2835253' AS DateTime2), 1, CAST(N'2020-08-10T12:34:19.2835253' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (36, 1, N'Report', 5040703, CAST(N'2020-05-13T12:00:00.0000000' AS DateTime2), N'Alimenta la Purch recipt Entry

"REPORT.RUNMODAL(REPORT::"Create Purch. Rcpt. Entries",TRUE,TRUE);"', NULL, 1, CAST(N'2020-08-10T14:06:06.1257929' AS DateTime2), 1, CAST(N'2020-09-18T12:27:08.3496165' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (37, 10, N'Report', 50500, CAST(N'2020-08-11T12:00:00.0000000' AS DateTime2), N'CLS 11.08.2020', CAST(N'2020-08-11T18:15:00.0000000' AS DateTime2), 1, CAST(N'2020-08-11T18:10:04.3282163' AS DateTime2), 1, CAST(N'2020-08-12T09:13:21.5132387' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (38, 11, N'Codeunit', 51004, CAST(N'2017-05-19T09:53:00.0000000' AS DateTime2), N'Routine FindLastLineNo

CLS 11.08.2020', CAST(N'2020-08-12T09:37:00.0000000' AS DateTime2), 1, CAST(N'2020-08-12T09:37:42.1004346' AS DateTime2), 1, CAST(N'2020-08-12T09:37:42.1004346' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (39, 9, N'Table', 9999999, CAST(N'2020-08-12T00:00:00.0000000' AS DateTime2), N'Test', CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-12T10:24:04.8680323' AS DateTime2), 1, CAST(N'2020-08-12T11:45:09.4907278' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (40, 12, N'Table', 14, CAST(N'2020-06-22T17:57:00.0000000' AS DateTime2), N'Aggiunta colonna 51503 Whse. Man.Sys Boolean', CAST(N'2020-08-18T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-13T09:51:24.6856686' AS DateTime2), 1, CAST(N'2020-08-13T10:06:44.9847265' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (41, 12, N'Page', 5703, CAST(N'2020-06-22T18:00:00.0000000' AS DateTime2), N'Gestita nuova colonna 51503', CAST(N'2020-08-18T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-13T09:51:57.3825838' AS DateTime2), 1, CAST(N'2020-08-13T10:07:00.8542984' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (42, 12, N'Page', 15, CAST(N'2019-09-19T15:14:00.0000000' AS DateTime2), N'Gestita nuova colonna 51503', CAST(N'2020-08-18T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-13T10:03:21.6944184' AS DateTime2), 1, CAST(N'2020-08-13T10:07:04.2676471' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (43, 14, N'Table', 51010, CAST(N'2016-07-07T13:47:00.0000000' AS DateTime2), N'La tabella è riutilizzata in origine era la XTEL_OU_ORDNOTE (Sales Com.).
In allegato la copia in formato fob e txt.', CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-24T11:38:18.8341957' AS DateTime2), 1, CAST(N'2020-08-24T11:38:18.8341957' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (44, 14, N'Codeunit', 80133, CAST(N'2020-08-06T11:52:00.0000000' AS DateTime2), N'Scrittura STOING', CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-24T17:06:28.5352830' AS DateTime2), 1, CAST(N'2020-09-23T10:00:33.8960751' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (45, 14, N'Table', 51014, CAST(N'2016-07-18T14:21:00.0000000' AS DateTime2), N'Tabella origine XTEL OU_ORDROWK (Sales Kits).
In allegato la copia in formato fob e txt.', CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-25T09:32:48.4892778' AS DateTime2), 1, CAST(N'2020-08-25T09:54:52.9210866' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (46, 14, N'Page', 5768, CAST(N'2020-07-27T11:41:00.0000000' AS DateTime2), N'Non aggiornare in SVIL', CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-25T15:56:24.0007693' AS DateTime2), 1, CAST(N'2020-09-10T10:17:13.2964913' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (47, 13, N'Codeunit', 52000, CAST(N'2020-08-26T15:26:00.0000000' AS DateTime2), N'Riga 665 viene richiamata la Routine UPD_STATUS_TO_MDII (riga 3342)
Per poter aggiornare MDII deve avere "Shortcut Dimension 1 Code" != ''0110'' AND =! ''0115''.

LOCAL UPD_STATUS_TO_MDII(VAR RecRef : RecordRef;TableOptionType : ''0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19'') : Boolean
//Start TDAG31058-023/dga
IF RecRef.NUMBER <> DATABASE::"Sales Header" THEN
  EXIT(TRUE);

RecRef.SETTABLE(SalesHeader);

// CLS-SUISSA 26.08.2020 START
//  MDIISFASyncMgt.UpdateDocumentStatus_SFA(SalesHeader);
// CLS-SUISSA 26.08.2020 END

// CLS-SUISSA 26.08.2020 START
IF ((FORMAT(SalesHeader."Shortcut Dimension 1 Code") <> ''0110'') AND (FORMAT(SalesHeader."Shortcut Dimension 1 Code") <> ''0115'')) THEN
  MDIISFASyncMgt.UpdateDocumentStatus_SFA(SalesHeader);
// CLS-SUISSA 26.08.2020 END
', CAST(N'2020-08-31T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-26T15:29:12.0581357' AS DateTime2), 1, CAST(N'2020-08-26T15:31:51.6982263' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (48, 14, N'Table', 14, CAST(N'2020-08-13T09:59:00.0000000' AS DateTime2), N'Aggiunta colonna "TP Internal"', CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-31T10:45:56.0598333' AS DateTime2), 1, CAST(N'2020-08-31T10:55:19.5163421' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (49, 15, N'Table', 291, CAST(N'2018-08-01T11:37:00.0000000' AS DateTime2), N'Aggiunta colonna 57556 "FTP Address"', CAST(N'2020-09-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-31T16:55:40.1178962' AS DateTime2), 1, CAST(N'2020-08-31T16:55:40.1178962' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (50, 15, N'Page', 428, CAST(N'2019-08-02T16:48:00.0000000' AS DateTime2), N'Aggiunta colonna "FTP Address"', CAST(N'2020-09-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-08-31T16:59:18.5571242' AS DateTime2), 1, CAST(N'2020-08-31T16:59:18.5571242' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (51, 2, N'Page', 46, CAST(N'2020-09-01T12:06:00.0000000' AS DateTime2), N'', CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-01T14:38:15.2217198' AS DateTime2), 1, CAST(N'2020-09-01T14:38:15.2217198' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (52, 16, N'Codeunit', 51526, CAST(N'2020-08-09T12:56:00.0000000' AS DateTime2), N'Riga 1252', CAST(N'2020-09-07T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-03T16:32:13.8584896' AS DateTime2), 1, CAST(N'2020-09-03T16:32:54.5057338' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (53, 16, N'Codeunit', 51600, CAST(N'2020-07-15T17:04:00.0000000' AS DateTime2), N'Non la posso bloccare in sviluppo perchè impegnata da EOS.

a riga 191 il Case diventa :

  CASE DSStatusNew OF
    MDIISetup."DS Status Cancelled S. Order":
      MDIIOU_ORDHEADSalesHeader.VALIDATE(STATO_ORDINE, ''D''); 
    MDIISetup."DS Status To Ship S. Order":
      MDIIOU_ORDHEADSalesHeader.VALIDATE(STATO_ORDINE, ''R''); 
    MDIISetup."DS Status In Progress S. Order":
      MDIIOU_ORDHEADSalesHeader.VALIDATE(STATO_ORDINE, ''R''); 
  // Start TDAF191129-001/AFI
    MDIISetup."DS Status Fido Lock S. Order",
    MDIISetup."DS Status Delay Lock S. Order",
  // CLS-SUISSA 03.09.2020 START
    MDIISetup."DS Status Comm. Lock S. Order"  : BEGIN
  // CLS-SUISSA 03.09.2020 END
      MDIIOU_ORDHEADSalesHeader.VALIDATE(STATO_ORDINE, ''F''); 
    END;
  // Stop TDAF191129-001/AFI
  ELSE
    ERROR(ErrOnAfterSalesOrder001, IntegrationTableMapping.Code, SalesHeader.TABLECAPTION, SalesHeader.FIELDCAPTION("DS Status Code") , DSStatusNew);
  END;', CAST(N'2020-09-07T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-04T16:53:07.8849972' AS DateTime2), 1, CAST(N'2020-09-04T16:53:07.8849972' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (54, 17, N'Page', 50251, CAST(N'2020-03-24T13:27:00.0000000' AS DateTime2), N'', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-07T15:32:44.5507883' AS DateTime2), 1, CAST(N'2020-09-07T15:32:44.5507883' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (55, 17, N'Table', 50114, CAST(N'2020-03-24T13:26:00.0000000' AS DateTime2), N'Per lanciare la page : Setup gestione credito', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-07T15:34:14.5896770' AS DateTime2), 1, CAST(N'2020-09-07T15:34:14.5896770' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (56, 17, N'Table', 18, CAST(N'2020-09-07T16:21:00.0000000' AS DateTime2), N'Nell''ambiente di produzione per il campo "Send DESADV" manca il codice indicato invece in Collaudo e Sviluppo. Ho sentito EOS che mi ha autorizzato, nella persona di Giancarlo Piatti, a commentare il codice presente così che gli ambienti siano allineati.
Ho comunque fatto una copia di backup che è allegata al presente progetto.', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-07T16:28:20.2436104' AS DateTime2), 1, CAST(N'2020-09-07T16:28:52.4548519' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (57, 17, N'Page', 21, CAST(N'2020-05-07T13:39:00.0000000' AS DateTime2), N'', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-07T16:40:51.6831440' AS DateTime2), 1, CAST(N'2020-09-07T16:40:51.6831440' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (58, 17, N'Codeunit', 50027, CAST(N'2019-04-16T13:06:00.0000000' AS DateTime2), N'', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-07T17:41:49.5945908' AS DateTime2), 1, CAST(N'2020-09-07T17:41:49.5945908' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (59, 17, N'XMLPort', 50013, CAST(N'2020-09-08T16:40:00.0000000' AS DateTime2), N'', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-08T17:55:54.7793726' AS DateTime2), 1, CAST(N'2020-09-08T17:55:54.7793726' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (60, 17, N'Codeunit', 50028, CAST(N'2019-02-26T11:23:00.0000000' AS DateTime2), N'Controllare le versioni erano diverse ...', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-09T18:06:33.5703092' AS DateTime2), 1, CAST(N'2020-09-09T18:06:33.5703092' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (61, 18, N'Codeunit', 80128, CAST(N'2020-06-11T09:41:00.0000000' AS DateTime2), N'', CAST(N'2020-10-09T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-10T14:26:23.3080181' AS DateTime2), 1, CAST(N'2020-09-10T14:26:23.3080181' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (62, 19, N'Page', 80207, CAST(N'2020-09-01T15:10:00.0000000' AS DateTime2), N'', CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-11T11:09:43.9630759' AS DateTime2), 1, CAST(N'2020-09-11T11:09:43.9630759' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (63, 19, N'Page', 80230, CAST(N'2020-09-09T11:59:00.0000000' AS DateTime2), N'', CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-11T11:10:05.0806638' AS DateTime2), 1, CAST(N'2020-09-11T14:41:56.0986698' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (64, 19, N'Page', 80231, CAST(N'2020-09-09T12:01:00.0000000' AS DateTime2), N'', CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-11T11:10:24.0990651' AS DateTime2), 1, CAST(N'2020-09-11T14:41:56.1302365' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (65, 19, N'Page', 80101, CAST(N'2020-09-09T11:45:00.0000000' AS DateTime2), N'', CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-11T14:46:39.4836328' AS DateTime2), 1, CAST(N'2020-09-11T14:46:39.4836328' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (66, 21, N'Codeunit', 80133, CAST(N'2020-09-10T16:06:00.0000000' AS DateTime2), N'', CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-14T10:45:04.9317128' AS DateTime2), 1, CAST(N'2020-09-14T10:45:04.9317128' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (67, 22, N'Table', 80072, CAST(N'2020-03-05T17:16:00.0000000' AS DateTime2), N'Aggiunta colonna CheckAllRows', CAST(N'2020-09-17T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-15T16:07:10.5620554' AS DateTime2), 1, CAST(N'2020-09-15T16:07:10.5620554' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (68, 22, N'Page', 80092, CAST(N'2020-03-05T17:43:00.0000000' AS DateTime2), N'Aggiunta colonna CheckAllRows', CAST(N'2020-09-17T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-15T16:08:14.5415695' AS DateTime2), 1, CAST(N'2020-09-15T16:08:14.5415695' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (69, 22, N'Page', 80207, CAST(N'2020-09-11T15:25:00.0000000' AS DateTime2), N'Aggiornata la funzione UpdateDocument sezione CLS 15.09.2020', CAST(N'2020-09-17T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-16T09:56:29.7552829' AS DateTime2), 1, CAST(N'2020-09-16T09:56:29.7552829' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (70, 1, N'Report', 80096, CAST(N'2020-09-18T10:05:00.0000000' AS DateTime2), N'', CAST(N'2020-09-18T11:10:00.0000000' AS DateTime2), 1, CAST(N'2020-09-18T10:07:30.0851376' AS DateTime2), 1, CAST(N'2020-09-18T12:29:22.0272877' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (71, 23, N'Table', 80072, CAST(N'2020-09-15T16:11:00.0000000' AS DateTime2), N'Aggiunte le colonne :
Reporting Level               Text 100
Reason Type                    Option -> blank, Manutenzione,Stralcio,Post-ridatazione', CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-21T10:45:08.2284349' AS DateTime2), 1, CAST(N'2020-09-21T10:45:08.2284349' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (72, 23, N'Page', 80092, CAST(N'2020-09-15T16:10:00.0000000' AS DateTime2), N'Aggiunta la gestione delle colonne :
Reporting Level
Reason Type', CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-21T10:45:41.1598776' AS DateTime2), 1, CAST(N'2020-09-21T11:26:58.7634150' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (73, 23, N'Page', 80078, CAST(N'2020-07-17T15:34:00.0000000' AS DateTime2), N'Aggiunta dei campi :
Quantità originale -> SalesLine."Orig. Entered Quantity"
Dinamica commerciale -> SalesLine."Sub Excerpt Reason Code"
Prodotto mancante ma -> SalesLine."Sub Missing but Code"
Causale ridatazione -> SalesLine."Reason Code Moved"


// COMBINAZIONE TRA CONDIZIONI AND E OR

  SalesLine.RESET;
  SalesLine.SETRANGE("Document Type", SalesLine."Document Type"::Order);

  // CLS 30.09.2020 START
  SalesLine.FILTERGROUP(-1);  // CONSENTE LA DEFINIZIONE DI UNA CONDIZIONE OR
  SalesLine.SETFILTER("Excerpt Reason Code", SetupUser."Exc. Reas. Log. Aut.");
  SalesLine.SETFILTER("Reason Code Moved", SetupUser."Reason Code Moved");
', CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-21T11:30:34.5866048' AS DateTime2), 1, CAST(N'2020-09-30T16:18:37.1311246' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (74, 23, N'Table', 50126, CAST(N'2017-05-03T16:45:00.0000000' AS DateTime2), N'', CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-21T15:49:46.1746161' AS DateTime2), 1, CAST(N'2020-09-21T15:49:46.1746161' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (75, 14, N'Codeunit', 80128, CAST(N'2020-09-22T17:03:00.0000000' AS DateTime2), N'Scrittura in SYNC_NEXT della T480 e T481', CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-23T12:22:28.7548799' AS DateTime2), 1, CAST(N'2020-09-23T12:22:47.1472847' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (76, 24, N'Page', 5768, CAST(N'2020-09-16T16:45:00.0000000' AS DateTime2), N'Modifica codice legato al bottone Registra Carico

Momentaneamente la versione in Produzione è più recente di quella in Sviluppo (le modifiche mie e quelle di EOS si sono intrecciate e per poter portare le mie in prod le abbiamo aggiunte a mano)

SBLOCCATA DA EOS', NULL, 1, CAST(N'2020-09-25T14:24:01.0191713' AS DateTime2), 1, CAST(N'2021-01-07T17:23:24.8195530' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (77, 26, N'Codeunit', 51526, CAST(N'2020-09-04T10:06:00.0000000' AS DateTime2), N'Modificate le routine :
UpdateDocumentStatus_SFA
ChangeStatusSalesOrder_SFA
dove è stato aggiunto il controllo sulla divisione ''0110'' e ''0115''', CAST(N'2020-09-25T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-25T15:47:12.9063052' AS DateTime2), 1, CAST(N'2020-09-25T15:48:57.6228644' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (78, 24, N'Codeunit', 18004113, CAST(N'2020-03-27T17:55:00.0000000' AS DateTime2), N'Modificata Routine WhsePostRcptGroupedYesNo affinchè ritorni il valore del CONFIRM', NULL, 1, CAST(N'2020-09-28T11:47:16.9581018' AS DateTime2), 1, CAST(N'2020-09-28T11:47:16.9581018' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (79, 24, N'Codeunit', 80133, CAST(N'2020-09-11T15:02:00.0000000' AS DateTime2), N'Modificata routine Write_NROrdAccise', NULL, 1, CAST(N'2020-09-29T15:46:45.7642592' AS DateTime2), 1, CAST(N'2020-09-29T15:46:45.7642592' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (80, 23, N'Table', 91, CAST(N'2020-09-01T11:17:00.0000000' AS DateTime2), N'Aggiunta colonna "Reason Code Moved" Text 30 per contenere la causale di ridatazione', CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-29T17:10:02.3575056' AS DateTime2), 1, CAST(N'2020-09-29T17:10:02.3575056' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (81, 23, N'Page', 18006682, CAST(N'2020-09-01T12:11:00.0000000' AS DateTime2), N'Aggiunta gestione coolonna "Reason Code Moved"', CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-29T17:12:16.3956078' AS DateTime2), 1, CAST(N'2020-09-29T17:12:16.3956078' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (82, 27, N'Page', 80232, CAST(N'2020-09-30T10:09:00.0000000' AS DateTime2), N'', CAST(N'2020-10-28T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-30T10:11:17.0154583' AS DateTime2), 1, CAST(N'2020-09-30T10:11:17.0154583' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (83, 27, N'Codeunit', 80133, CAST(N'2020-09-11T15:02:00.0000000' AS DateTime2), N'', CAST(N'2020-10-28T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-09-30T11:19:23.8195548' AS DateTime2), 1, CAST(N'2020-09-30T11:19:23.8195548' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (84, 25, N'Page', 42, CAST(N'2020-10-07T14:47:00.0000000' AS DateTime2), N'Aggiunto condice di controllo della data lavorativa in :
Promised Delivery Date - OnValidate()

  ColussiSetup.GET();
  CalendarCode := ColussiSetup."Expected Deliv. Date Calendar";
  TargetDate := "Requested Delivery Date";

  BaseCalChange.RESET;
  BaseCalChange.SETRANGE("Base Calendar Code",CalendarCode);
  IF BaseCalChange.FINDSET THEN
    REPEAT
      CASE BaseCalChange."Recurring System" OF
        BaseCalChange."Recurring System"::" ":
          IF TargetDate = BaseCalChange.Date THEN BEGIN
            ERROR(Text0001);
          END;
        BaseCalChange."Recurring System"::"Weekly Recurring":
          IF DATE2DWY(TargetDate,1) = BaseCalChange.Day THEN BEGIN
            ERROR(Text0001);
          END;
        BaseCalChange."Recurring System"::"Annual Recurring":
          IF (DATE2DMY(TargetDate,2) = DATE2DMY(BaseCalChange.Date,2)) AND
             (DATE2DMY(TargetDate,1) = DATE2DMY(BaseCalChange.Date,1))
          THEN BEGIN
            ERROR(Text0001);
          END;
      END;
    UNTIL BaseCalChange.NEXT = 0;', CAST(N'2020-10-21T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-10-20T10:01:29.2882431' AS DateTime2), 1, CAST(N'2020-10-20T10:01:29.2882431' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (85, 25, N'Codeunit', 80058, CAST(N'2020-09-10T12:03:00.0000000' AS DateTime2), N'Aggiunto controllo dati tecnici nella funzione GetSalesPriceItemFromCustomers :

        // CLS 20.10.2020 START
        TechnicalDataLine.SETFILTER("Feature Code", Item."Technical Data");
        TechnicalDataLine.SETFILTER("Attribute Code", ''ITEM_STATO.VEND'');
        TechnicalDataLine.SETFILTER(Value, ''0'');
        IF TechnicalDataLine.FINDSET THEN BEGIN
        // CLS 20.10.2020 END', CAST(N'2020-10-21T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-10-20T14:41:54.3970331' AS DateTime2), 1, CAST(N'2020-10-20T14:43:21.0325745' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (86, 28, N'Codeunit', 18008095, CAST(N'2020-03-13T14:27:00.0000000' AS DateTime2), N'Aggiunta valore ''AUTOGRILL_'' alla riga 1151

Modificato anche in  prod così da poterlo provare al prox XML

alla riga 2330
//CLS 21.10.2020 START
HookCodeBufferTMP.Code := ''AUTOGRILL_'';
HookCodeBufferTMP.Description := ''AUTOGRILL mod_colussi'';
HookCodeBufferTMP.INSERT;
//CLS 21.10.2020 END', CAST(N'2020-10-27T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-10-21T17:18:36.0250299' AS DateTime2), 1, CAST(N'2020-10-21T17:35:47.2910880' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (87, 29, N'Page', 80139, CAST(N'2020-10-08T11:28:00.0000000' AS DateTime2), N'', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-10-28T09:55:10.4388872' AS DateTime2), 1, CAST(N'2020-10-28T10:02:55.1858782' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (88, 29, N'Page', 80140, CAST(N'2020-06-23T17:09:00.0000000' AS DateTime2), N'Aggiunta routine :

LOCAL checkPromoSi() result : Boolean
IF ("On Leaflet" = "On Leaflet"::YES) THEN BEGIN
  IF ("Promo On Line" = "Promo On Line"::" ") THEN BEGIN
    ERROR(Text0001);
    EXIT(FALSE)
  END;
  IF ("Leaflet Theme" = "Leaflet Theme"::" ") THEN BEGIN
    ERROR(Text0001);
    EXIT(FALSE)
  END;
END;
EXIT(TRUE);

e richiamata sia in modifica che in inserimento', CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-10-28T10:48:19.4920838' AS DateTime2), 1, CAST(N'2020-10-28T11:27:39.9558247' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (89, 30, N'Page', 80109, CAST(N'2020-09-02T17:19:00.0000000' AS DateTime2), N'Aggiunta al controllo dell''ordine nella ApplyCanvass - OnAction()', NULL, 1, CAST(N'2020-11-04T10:43:01.8347228' AS DateTime2), 1, CAST(N'2020-11-05T15:51:06.9993116' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (90, 30, N'Table', 80068, CAST(N'2020-04-16T14:12:00.0000000' AS DateTime2), N'Aggiunto funzione FilterSales per filtrare tutte le righe dell''ordine

FilterSales(DocumentType : ''Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,Proforma Invoice,Posted Proforma Invoice'';DocumentNo : Code[20])
//CLS-30 02.11.2020 START
RESET;
FILTERGROUP(0);
SETRANGE("Document Type", DocumentType);
SETRANGE("Document No.", DocumentNo);
//CLS-30 02.11.2020 END

Aggiunte le seguenti colonne :
Enabled	Field No.	Field Name	Data Type	Length	Description
Yes	50000	Endorsed SFA	                         Boolean		CLS-30 02.11.20
Yes	50001	Endorsement User SFA	         Code	   50	CLS-30 02.11.20
Yes	50002	Endorsement DateTime SFA	 DateTime		CLS-30 02.11.20
', NULL, 1, CAST(N'2020-11-04T14:27:11.6957704' AS DateTime2), 1, CAST(N'2020-11-05T14:17:29.3887296' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (91, 30, N'Page', 42, CAST(N'2020-10-21T14:32:00.0000000' AS DateTime2), N'Aggiunta Action "Elenco Blocchi" :
ElencoBlocchi - OnAction()
//CLS-30 02.11.20 START
SFASalesMgt.ShowDocBlockReasonCode(Rec."Document Type", Rec."No.");
CurrPage.UPDATE(TRUE);
//CLS-30 02.11.20 END
', NULL, 1, CAST(N'2020-11-04T14:39:29.0773891' AS DateTime2), 1, CAST(N'2020-11-04T16:04:32.1938098' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (92, 30, N'Codeunit', 80058, CAST(N'2020-10-22T13:00:00.0000000' AS DateTime2), N'Aggiunta funzione :
ShowDocBlockReasonCode(DocumentType : ''Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,Proforma Invoice,Posted Proforma Invoice'';DocumentNo : Code[20])
 DocBlockReasonCodeLine.FilterSales(DocumentType, DocumentNo);
 PAGE.RUNMODAL(0, DocBlockReasonCodeLine);

Aggiunta funzione :
CheckSalesOrderSFAExistBlock', NULL, 1, CAST(N'2020-11-04T14:47:47.8947241' AS DateTime2), 1, CAST(N'2020-11-09T11:49:47.1619340' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (93, 30, N'Page', 80089, CAST(N'2020-06-10T15:16:00.0000000' AS DateTime2), N'Aggiunte le colonne
Endorsement SFA
Endorsement User SFA
Endorsement DateTime SFA

Variabile Globale 
UserSFA = True = Agente =  False = Customer

', NULL, 1, CAST(N'2020-11-05T14:55:12.3074867' AS DateTime2), 1, CAST(N'2020-11-05T15:03:19.5442516' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (94, 30, N'Codeunit', 52000, CAST(N'2020-10-06T17:59:00.0000000' AS DateTime2), N'Aggiunta routine : CHECK_ORDER_SFA_BLOCK = FALSE = esistono dei blocchi non vistati
Aggiunta Text50047 : Verifica che non ci siano blocchi SFA validati


SBLOCCATA DA EOS', NULL, 1, CAST(N'2020-11-09T11:45:04.9402615' AS DateTime2), 1, CAST(N'2021-01-07T17:20:50.8397078' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (95, 31, N'Page', 50041, CAST(N'2020-11-09T17:44:00.0000000' AS DateTime2), N'Impostato Enable False su campo Blocked', CAST(N'2020-11-09T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-11-09T17:49:09.9607994' AS DateTime2), 1, CAST(N'2020-11-09T17:49:09.9607994' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (96, 32, N'Report', 50700, CAST(N'2018-07-16T15:20:00.0000000' AS DateTime2), N'', CAST(N'2020-11-13T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-11-10T17:23:56.7054951' AS DateTime2), 1, CAST(N'2020-11-10T17:41:05.2838964' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (97, 32, N'Codeunit', 18008095, CAST(N'2020-10-21T17:34:00.0000000' AS DateTime2), N'Aggiunto codice Hook : SGM_C', CAST(N'2020-11-13T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-11-10T17:28:07.0559792' AS DateTime2), 1, CAST(N'2020-11-10T17:28:07.0559792' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (98, 33, N'Page', 393, CAST(N'2019-01-07T10:20:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-19T10:44:12.4979405' AS DateTime2), 1, CAST(N'2020-11-19T10:44:12.4979405' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (99, 33, N'Table', 83, CAST(N'2019-06-19T10:41:00.0000000' AS DateTime2), N'Colonne aggiunte :

Campo	Descrizione	Valori 
Causale blocco	        codice + descrizione 	         selezionare valori da tabella da creare                     Code 3         Excerpt Code Block      50500   
Lotto Fornitore	        Lotto digitato	                 da verificare se esiste nei lotti ricevuti                     Code 20       Lot No. CLS                    50501
Rif DDT Consegna	Numero DDT del fornitore	                                                                                         Code 20       Ship Document No.       50502
Cod Fornitore	        Codice Fornitore 	                 selezionare valore da anagrafica fornitori               Code 20       Vendor No.                      50503
No Conformity              Non conformità                                                                                                             Text 15        No Conformity                 50504
', NULL, 1, CAST(N'2020-11-19T10:47:55.1753509' AS DateTime2), 1, CAST(N'2021-01-04T11:15:18.6007037' AS DateTime2), 0)
GO
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (100, 34, N'Page', 80120, CAST(N'2019-02-09T17:14:00.0000000' AS DateTime2), N'impostata la colonna quantity come numerica con 0 decimali', CAST(N'2020-11-20T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-11-20T15:07:25.6311618' AS DateTime2), 1, CAST(N'2020-11-20T15:07:25.6311618' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (101, 33, N'Table', 32, CAST(N'2018-07-05T18:05:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-23T10:28:15.6583071' AS DateTime2), 1, CAST(N'2020-11-23T10:28:15.6583071' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (102, 33, N'Table', 7312, CAST(N'2018-07-05T18:08:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-23T11:55:31.4094249' AS DateTime2), 1, CAST(N'2020-11-23T11:55:31.4094249' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (103, 33, N'Table', 7311, CAST(N'2018-04-12T14:00:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-23T12:08:26.9948742' AS DateTime2), 1, CAST(N'2020-11-23T12:08:26.9948742' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (104, 33, N'Codeunit', 22, CAST(N'2020-03-14T20:01:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-24T11:05:48.5172324' AS DateTime2), 1, CAST(N'2020-11-24T11:05:48.5172324' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (105, 33, N'Codeunit', 23, CAST(N'2015-09-15T12:00:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-24T11:08:09.8191770' AS DateTime2), 1, CAST(N'2020-11-24T11:08:09.8191770' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (106, 33, N'Codeunit', 7302, CAST(N'2019-07-31T12:50:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-24T11:47:24.8181859' AS DateTime2), 1, CAST(N'2020-11-24T11:47:24.8181859' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (107, 33, N'Codeunit', 7301, CAST(N'2019-07-26T08:11:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-24T15:22:14.3308296' AS DateTime2), 1, CAST(N'2020-11-24T15:22:14.3308296' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (108, 33, N'Page', 38, CAST(N'2019-02-20T10:24:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-24T16:55:17.2926919' AS DateTime2), 1, CAST(N'2020-11-24T16:55:17.2926919' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (109, 35, N'Codeunit', 18059906, CAST(N'2020-11-25T13:02:00.0000000' AS DateTime2), N'', CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-11-25T14:37:10.2230915' AS DateTime2), 1, CAST(N'2020-11-25T14:37:10.2230915' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (110, 33, N'Page', 80233, CAST(N'2020-11-26T15:19:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-26T15:23:23.8551045' AS DateTime2), 1, CAST(N'2020-11-26T15:23:23.8551045' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (111, 36, N'Page', 51302, CAST(N'2020-09-02T17:06:00.0000000' AS DateTime2), N'', CAST(N'2020-11-27T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-11-27T16:21:37.4705910' AS DateTime2), 1, CAST(N'2020-11-27T16:21:37.4705910' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (112, 37, N'Codeunit', 18008095, CAST(N'2020-11-10T17:39:00.0000000' AS DateTime2), N'', CAST(N'2020-12-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-11-27T17:39:32.9378161' AS DateTime2), 1, CAST(N'2020-11-27T17:39:32.9378161' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (113, 33, N'Page', 80240, CAST(N'2020-11-30T17:00:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-30T17:17:30.4445708' AS DateTime2), 1, CAST(N'2020-11-30T17:17:30.4445708' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (114, 33, N'Query', 80062, CAST(N'2020-11-30T17:10:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-11-30T17:17:52.7677239' AS DateTime2), 1, CAST(N'2020-11-30T17:17:52.7677239' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (115, 33, N'Table', 307, CAST(N'2019-06-13T10:07:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2020-12-01T10:12:14.7089863' AS DateTime2), 1, CAST(N'2020-12-01T10:12:14.7089863' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (116, 38, N'Table', 18, CAST(N'2020-10-08T09:32:00.0000000' AS DateTime2), N'', CAST(N'2020-12-04T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-03T15:57:49.5602967' AS DateTime2), 1, CAST(N'2020-12-03T15:57:49.5602967' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (117, 38, N'Page', 21, CAST(N'2020-10-06T16:36:00.0000000' AS DateTime2), N'', CAST(N'2020-12-04T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-03T15:58:09.1256133' AS DateTime2), 1, CAST(N'2020-12-03T15:58:09.1256133' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (118, 39, N'Table', 50091, CAST(N'2020-12-11T13:01:00.0000000' AS DateTime2), N'', CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-11T15:39:01.2404444' AS DateTime2), 1, CAST(N'2020-12-11T15:39:01.2404444' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (119, 39, N'Codeunit', 80135, CAST(N'2020-12-11T15:00:00.0000000' AS DateTime2), N'', CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-11T15:39:26.6881081' AS DateTime2), 1, CAST(N'2020-12-11T15:41:28.9162817' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (120, 40, N'Codeunit', 51600, CAST(N'2020-11-26T10:49:00.0000000' AS DateTime2), N'Remmate le funzioni SyncCustomerAttributes e UpdateCustAttributesSyncDate (riga 109 e 114)

', CAST(N'2020-12-15T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-15T14:15:59.0176037' AS DateTime2), 1, CAST(N'2020-12-15T14:23:03.4352013' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (121, 39, N'Table', 231, CAST(N'2020-12-11T17:37:00.0000000' AS DateTime2), N'Già rilasciato ! ATTENZIONE', CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-16T11:27:15.7384388' AS DateTime2), 1, CAST(N'2021-01-07T09:18:05.1274836' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (122, 39, N'Page', 80241, CAST(N'2020-12-17T15:37:00.0000000' AS DateTime2), N'', CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-17T15:38:16.0400672' AS DateTime2), 1, CAST(N'2020-12-17T15:38:16.0400672' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (123, 41, N'Codeunit', 80128, CAST(N'2020-10-09T09:38:00.0000000' AS DateTime2), N'', CAST(N'2020-12-22T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-22T14:51:23.4178343' AS DateTime2), 1, CAST(N'2020-12-22T14:51:23.4178343' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (124, 42, N'XMLPort', 53000, CAST(N'2020-12-29T17:00:00.0000000' AS DateTime2), N'', CAST(N'2021-01-29T00:00:00.0000000' AS DateTime2), 1, CAST(N'2020-12-30T09:35:47.4147737' AS DateTime2), 1, CAST(N'2020-12-30T09:35:47.4147737' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (125, 33, N'Page', 40, CAST(N'2019-06-06T18:31:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2021-01-04T12:55:57.4150062' AS DateTime2), 1, CAST(N'2021-01-04T12:55:57.4150062' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (126, 33, N'Codeunit', 18006600, CAST(N'2018-03-22T18:00:00.0000000' AS DateTime2), N'Remmate le righe a partire dalla 2949 che riguardano la tabella 50095 ("Item Unit of Measure")', NULL, 1, CAST(N'2021-01-04T17:02:35.1799913' AS DateTime2), 1, CAST(N'2021-01-04T17:02:35.1799913' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (127, 43, N'Table', 50074, CAST(N'2017-03-21T15:30:00.0000000' AS DateTime2), N'Aggiunta colonna :

Belong To Plin    Boolean', CAST(N'2021-01-08T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-07T14:52:08.3040897' AS DateTime2), 1, CAST(N'2021-01-07T14:52:37.1918502' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (128, 43, N'Page', 50155, CAST(N'2019-07-17T11:35:00.0000000' AS DateTime2), N'Aggiunta colonna :

Belong To Plin    Boolean', CAST(N'2021-01-08T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-07T14:59:44.8449817' AS DateTime2), 1, CAST(N'2021-01-07T15:04:02.2924054' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (129, 44, N'Codeunit', 50019, CAST(N'2020-10-06T18:01:00.0000000' AS DateTime2), N'Funzioni AdvDistrItemKit
e              AdvDistrItemKit_RoundKitLines', CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-11T10:33:12.8222596' AS DateTime2), 1, CAST(N'2021-01-11T10:33:53.5034265' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (130, 45, N'Page', 5703, CAST(N'2020-08-13T09:57:00.0000000' AS DateTime2), N'Lookup su colonna "TP Internal"', CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-11T12:19:57.5995709' AS DateTime2), 1, CAST(N'2021-01-11T12:20:11.2300340' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (131, 45, N'Page', 15, CAST(N'2020-08-13T10:05:00.0000000' AS DateTime2), N'', CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-12T09:52:34.4357786' AS DateTime2), 1, CAST(N'2021-01-12T09:52:34.4357786' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (132, 45, N'Table', 14, CAST(N'2020-08-13T09:59:00.0000000' AS DateTime2), N'', CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-12T09:52:56.1484372' AS DateTime2), 1, CAST(N'2021-01-12T09:52:56.1484372' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (133, 46, N'Codeunit', 51526, CAST(N'2021-01-12T12:35:00.0000000' AS DateTime2), N'Riga : 1548, 1630, 1690', CAST(N'2021-01-12T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-12T12:44:40.0139450' AS DateTime2), 1, CAST(N'2021-01-12T12:45:04.6460696' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (134, 46, N'Codeunit', 52000, CAST(N'2021-01-12T12:13:00.0000000' AS DateTime2), N'Riga 3485', CAST(N'2021-01-12T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-12T12:46:09.6042318' AS DateTime2), 1, CAST(N'2021-01-12T12:46:09.6042318' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (135, 47, N'Page', 259, CAST(N'2021-01-05T18:35:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2021-01-13T10:05:53.3007956' AS DateTime2), 1, CAST(N'2021-01-13T10:05:53.3007956' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (136, 48, N'Page', 80094, CAST(N'2020-07-14T16:35:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2021-01-18T11:42:41.8979211' AS DateTime2), 1, CAST(N'2021-01-18T11:42:41.8979211' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (137, 49, N'Page', 80242, CAST(N'2021-01-26T09:41:00.0000000' AS DateTime2), N'Page nuova', CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-26T10:12:06.3871516' AS DateTime2), 1, CAST(N'2021-01-26T10:12:06.3871516' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (138, 49, N'Page', 80243, CAST(N'2021-01-26T09:47:00.0000000' AS DateTime2), N'Page nuova', CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-26T10:12:27.3196627' AS DateTime2), 1, CAST(N'2021-01-26T10:12:27.3196627' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (139, 50, N'Codeunit', 52500, CAST(N'2018-05-25T17:49:00.0000000' AS DateTime2), N'Ultimo aggiornamento 03.02.21 ore 10:52', CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-01-28T11:28:31.9964200' AS DateTime2), 1, CAST(N'2021-02-03T10:54:13.1765546' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (140, 51, N'Table', 27, CAST(N'2019-04-04T09:58:00.0000000' AS DateTime2), N'Aggiunta Colonna 50205 Flag Sale di tipo Boolean', CAST(N'2021-02-10T08:30:00.0000000' AS DateTime2), 1, CAST(N'2021-01-29T11:20:03.8964391' AS DateTime2), 1, CAST(N'2021-02-10T08:29:55.0074315' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (141, 50, N'Table', 27, CAST(N'2019-04-04T09:58:00.0000000' AS DateTime2), N'Aggiunta colonna 50205 Flag Sale  di tipo Boolean', CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-02-03T12:11:36.5490876' AS DateTime2), 1, CAST(N'2021-02-03T16:33:11.9518290' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (142, 50, N'Table', 50021, CAST(N'2018-07-06T14:47:00.0000000' AS DateTime2), N'Aggiunta colonna 50205 Flag Sale  di tipo Boolean', CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-02-03T14:30:26.3918479' AS DateTime2), 1, CAST(N'2021-02-03T16:33:11.9641951' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (143, 51, N'Table', 50021, CAST(N'2018-07-06T14:47:00.0000000' AS DateTime2), N'Aggiunta Colonna 50205 Flag Sale di tipo Boolean', CAST(N'2021-02-10T08:30:00.0000000' AS DateTime2), 1, CAST(N'2021-02-03T16:30:26.1334933' AS DateTime2), 1, CAST(N'2021-02-10T08:30:04.9866070' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (144, 51, N'Codeunit', 80133, CAST(N'2021-02-03T15:54:00.0000000' AS DateTime2), N'Aggiunta funzione pubblica TestInRange', CAST(N'2021-02-10T09:15:00.0000000' AS DateTime2), 1, CAST(N'2021-02-03T16:31:21.3860822' AS DateTime2), 1, CAST(N'2021-02-10T09:31:11.4587405' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (145, 51, N'Codeunit', 80136, CAST(N'2021-02-04T11:50:00.0000000' AS DateTime2), N'CU Creata
Funzione UpdateSalesFlag per l''aggiornamento schedulato tramite movimento coda processi del "Flag Sale".

Per il movimento coda vedere immagine allegata al progetto', CAST(N'2021-02-10T09:30:00.0000000' AS DateTime2), 1, CAST(N'2021-02-04T11:51:42.2653399' AS DateTime2), 1, CAST(N'2021-02-10T09:33:23.5199738' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (146, 51, N'Page', 50006, CAST(N'2020-02-26T10:17:00.0000000' AS DateTime2), N'Esposta colonna Flag Sale per poter effettuare il filtro sulla lista', CAST(N'2021-02-10T10:57:00.0000000' AS DateTime2), 1, CAST(N'2021-02-08T09:29:42.3358037' AS DateTime2), 1, CAST(N'2021-02-10T10:58:10.0126652' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (147, 51, N'Page', 50005, CAST(N'2017-01-25T09:53:00.0000000' AS DateTime2), N'Esposto in sola lettura Flag Sale', CAST(N'2021-02-10T10:57:00.0000000' AS DateTime2), 1, CAST(N'2021-02-08T09:35:40.0207268' AS DateTime2), 1, CAST(N'2021-02-10T10:58:00.1964896' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (148, 51, N'Page', 31, CAST(N'2019-03-25T14:14:00.0000000' AS DateTime2), N'Esposta colonna Flag Sale per poter filtrare gli articoli nella lista', CAST(N'2021-02-10T10:57:00.0000000' AS DateTime2), 1, CAST(N'2021-02-08T09:39:37.7897124' AS DateTime2), 1, CAST(N'2021-02-10T10:57:52.0565680' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (149, 51, N'Page', 30, CAST(N'2019-03-14T12:00:00.0000000' AS DateTime2), N'Esposto colonna Flag Sale in sola lettura', CAST(N'2021-02-10T10:57:00.0000000' AS DateTime2), 1, CAST(N'2021-02-08T09:45:00.1426175' AS DateTime2), 1, CAST(N'2021-02-10T10:57:42.8700075' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (150, 51, N'Page', 80094, CAST(N'2020-07-14T16:35:00.0000000' AS DateTime2), N'Aggiunto Flag Sale nella condizione della TableRelation della colonna No_', CAST(N'2021-02-12T16:40:00.0000000' AS DateTime2), 1, CAST(N'2021-02-08T09:49:30.7730935' AS DateTime2), 1, CAST(N'2021-02-12T16:43:48.3726230' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (151, 51, N'Page', 80210, CAST(N'2020-11-20T14:48:00.0000000' AS DateTime2), N'Aggiunto Flag Sale nella condizione della TableRelation della colonna No_', CAST(N'2021-02-12T16:40:00.0000000' AS DateTime2), 1, CAST(N'2021-02-08T09:53:29.5003205' AS DateTime2), 1, CAST(N'2021-02-12T16:44:09.8833578' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (152, 51, N'Page', 80144, CAST(N'2020-07-02T09:54:00.0000000' AS DateTime2), N'Aggiunto filtro su Flag Sale', CAST(N'2021-02-12T16:40:00.0000000' AS DateTime2), 1, CAST(N'2021-02-08T16:32:36.4231406' AS DateTime2), 1, CAST(N'2021-02-12T16:43:59.8546297' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (153, 52, N'Page', 9304, CAST(N'2021-02-09T17:30:00.0000000' AS DateTime2), N'Aggiunta colonna "Amount Including VAT"', CAST(N'2021-02-09T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-02-09T17:47:24.9142145' AS DateTime2), 1, CAST(N'2021-02-09T17:47:24.9142145' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (154, 51, N'Codeunit', 54000, CAST(N'2019-12-12T11:04:00.0000000' AS DateTime2), N'Aggiunto calcolo "Flag Sale" per rilasciare questa CU occorre rilasciare anche la CU 80133', CAST(N'2021-02-10T09:15:00.0000000' AS DateTime2), 1, CAST(N'2021-02-10T09:00:53.9006356' AS DateTime2), 1, CAST(N'2021-02-10T09:31:01.4902119' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (155, 53, N'Page', 46, CAST(N'2021-02-08T09:39:00.0000000' AS DateTime2), N'La modifica consiste nell''impedire l''inserimento di un articolo non vendibile (Flag Sale)

ATTUALMENTE LA PAGE E'' BLOCCATA DA EOS (16.02.2021)
', CAST(N'2020-07-17T00:00:00.0000000' AS DateTime2), 1, CAST(N'2021-02-16T10:28:07.3654947' AS DateTime2), 1, CAST(N'2021-02-16T11:15:23.7624131' AS DateTime2), 1)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (156, 53, N'Page', 80094, CAST(N'2021-02-08T09:51:00.0000000' AS DateTime2), N'', CAST(N'2021-02-16T12:20:00.0000000' AS DateTime2), 1, CAST(N'2021-02-16T10:44:15.9575722' AS DateTime2), 1, CAST(N'2021-02-16T12:27:20.4875645' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (157, 53, N'Page', 80210, CAST(N'2021-02-14T17:42:00.0000000' AS DateTime2), N'', CAST(N'2021-02-16T12:20:00.0000000' AS DateTime2), 1, CAST(N'2021-02-16T11:15:00.1350969' AS DateTime2), 1, CAST(N'2021-02-16T12:27:28.5113789' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (158, 53, N'Report', 80056, CAST(N'2020-07-16T12:31:00.0000000' AS DateTime2), N'Riga 492', CAST(N'2020-07-16T18:00:00.0000000' AS DateTime2), 1, CAST(N'2021-02-16T12:37:17.8023252' AS DateTime2), 1, CAST(N'2021-02-17T10:55:48.8938849' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (1001, 54, N'Table', 99, CAST(N'2017-02-13T10:04:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2021-02-18T14:31:34.4231512' AS DateTime2), 1, CAST(N'2021-02-18T14:31:34.4231512' AS DateTime2), 0)
INSERT [dbo].[NV_DevelopD] ([NVDD_ID], [NVDD_NVDT_ID], [NVDD_TypeObject], [NVDD_NrObject], [NVDD_DateTimeOriginal], [NVDD_Note], [NVDD_DataRilascio], [UtenteCreazione], [DataOraCreazione], [UtenteUltimaModifica], [DataOraUltimaModifica], [NVDD_Deleted]) VALUES (1002, 54, N'Page', 114, CAST(N'2017-02-13T10:30:00.0000000' AS DateTime2), N'', NULL, 1, CAST(N'2021-02-18T14:32:00.2670125' AS DateTime2), 1, CAST(N'2021-02-18T14:32:00.2670125' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[NV_DevelopD] OFF
GO
