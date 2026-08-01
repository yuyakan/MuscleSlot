//
//  ExerciseTranslations+Entries_it.swift
//  MuscleSlot
//
//  76種目のイタリア語訳本体。キーは Exercise.name（日本語）。
//  種目名は各言語のジムで通用する自然な呼称を採用（直訳しない）。
//

import Foundation

extension ExerciseTranslations {

    static let entries_it: [String: Entry] = [
        "腕立て伏せ": Entry(
            name: "Piegamenti sulle braccia",
            detail: "L'esercizio classico per il petto. Metti le mani poco più larghe delle spalle, tieni il corpo in linea retta e abbassa il petto fin quasi a toccare terra. Tieni i gomiti a circa 45 gradi.",
            steps: [
                "Mettiti a terra con le mani poco più larghe delle spalle.",
                "Tieni testa, fianchi e talloni in linea retta e contrai il corpo come un plank.",
                "Abbassa il corpo fin quasi a toccare terra con il petto, gomiti aperti a circa 45 gradi.",
                "Spingi il pavimento con il petto e distendi le braccia per tornare.",
            ]),
        "ワイド腕立て": Entry(
            name: "Piegamenti larghi",
            detail: "Metti le mani a circa 1,5 volte la larghezza delle spalle per colpire di più il petto esterno e alto. Non scendere troppo per proteggere le spalle.",
            steps: [
                "Metti le mani a terra a circa 1,5 volte la larghezza delle spalle.",
                "Tieni il corpo in linea retta e il petto alto.",
                "Abbassa il corpo sentendo l'allungamento del petto esterno.",
                "Evita di scendere così tanto da forzare le spalle, poi risali.",
            ]),
        "ナロー腕立て": Entry(
            name: "Piegamenti stretti",
            detail: "Metti le mani più strette delle spalle per colpire il petto interno e i tricipiti. Tieni i gomiti vicini e portali indietro mentre scendi.",
            steps: [
                "Metti le mani più strette delle spalle, sotto il petto.",
                "Tieni i gomiti vicini e il corpo in linea retta.",
                "Abbassa il corpo portando i gomiti indietro.",
                "Risali concentrandoti su petto interno e tricipiti.",
            ]),
        "デクライン腕立て": Entry(
            name: "Piegamenti in declino",
            detail: "Solleva i piedi su una sedia così la testa sta più in basso. Sposta il carico sul petto alto e rende l'esercizio più difficile dei piegamenti normali.",
            steps: [
                "Metti i piedi su una sedia o un box così la testa sta più in basso dei fianchi.",
                "Tieni le mani alla larghezza delle spalle e il corpo in linea retta.",
                "Abbassa il corpo concentrandoti sul petto alto.",
                "Risali con il petto alto per tornare.",
            ]),
        "膝つき腕立て": Entry(
            name: "Piegamenti sulle ginocchia",
            detail: "Versione per principianti con le ginocchia a terra per ridurre il carico. Tieni una linea retta da ginocchia a testa e scendi lentamente con buona tecnica.",
            steps: [
                "Appoggia le ginocchia a terra e le mani poco più larghe delle spalle.",
                "Tieni una linea retta dalle ginocchia alla testa.",
                "Abbassa il petto verso terra lentamente.",
                "Risali senza rompere la postura.",
            ]),
        "ベンチプレス": Entry(
            name: "Panca piana",
            detail: "Il re degli esercizi per il petto per i carichi pesanti. Retrai le scapole, crea un leggero arco, abbassa il bilanciere all'altezza dei capezzoli e spingi.",
            steps: [
                "Sdraiati sulla panca, retrai le scapole e crea un leggero arco.",
                "Impugna il bilanciere poco più largo delle spalle.",
                "Abbassa il bilanciere lentamente all'altezza dei capezzoli.",
                "Spingi con il petto e blocca i gomiti.",
            ]),
        "インクラインベンチプレス": Entry(
            name: "Panca inclinata con bilanciere",
            detail: "Regola la panca a 30–45 gradi per sviluppare il petto alto. Abbassa il bilanciere appena sotto la clavicola. Un angolo troppo ripido lo trasforma in esercizio per le spalle.",
            steps: [
                "Regola la panca a 30–45 gradi e sdraiati.",
                "Retrai le scapole e impugna il bilanciere più largo delle spalle.",
                "Abbassa il bilanciere appena sotto la clavicola.",
                "Spingi con il petto alto e torna.",
            ]),
        "ダンベルプレス": Entry(
            name: "Panca piana con manubri",
            detail: "Offre più ampiezza del bilanciere, permettendo di allungare e contrarre pienamente il petto. Senti l'allungamento in basso e avvicina i manubri in alto.",
            steps: [
                "Sdraiati sulla panca con un manubrio per mano.",
                "Retrai le scapole e tieni i manubri sopra il petto.",
                "Abbassa finché senti l'allungamento nel petto.",
                "Spingi e avvicina i manubri per contrarre.",
            ]),
        "インクラインダンベルプレス": Entry(
            name: "Panca inclinata con manubri",
            detail: "Colpisce il petto alto sulla panca inclinata. Scendi profondo per allungare il petto alto e avvicina verso l'interno in alto.",
            steps: [
                "Siediti su una panca inclinata con un manubrio per mano.",
                "Posizionati sopra il petto alto e retrai le scapole.",
                "Scendi profondo per allungare il petto alto.",
                "Spingi e avvicina i manubri verso l'interno in alto.",
            ]),
        "ダンベルフライ": Entry(
            name: "Croci con manubri",
            detail: "Un esercizio di isolamento in cui apri e chiudi le braccia ad arco con i gomiti leggermente piegati. Apri ampio per allungare il petto, poi chiudi come per abbracciare.",
            steps: [
                "Sdraiati e tieni i manubri sopra il petto.",
                "Mantieni una leggera piega fissa ai gomiti.",
                "Apri le braccia ai lati ad arco, allungando il petto.",
                "Chiudi le braccia come in un abbraccio, contraendo il petto.",
            ]),
        "チェストプレス（マシン）": Entry(
            name: "Chest press alla macchina",
            detail: "Un esercizio guidato con traiettoria fissa per arrivare al cedimento in sicurezza. Regola le impugnature all'altezza del petto e spingi fino in fondo per contrarre. Ottimo per iniziare.",
            steps: [
                "Regola l'altezza del sedile così le impugnature stanno all'altezza del petto.",
                "Premi la schiena contro lo schienale e alza il petto.",
                "Spingi le impugnature del tutto in avanti.",
                "Senti la contrazione del petto e torna lentamente.",
            ]),
        "ケーブルクロスオーバー": Entry(
            name: "Croci ai cavi",
            detail: "I cavi mantengono tensione costante sul muscolo. Colpisci il petto medio e basso incrociando le mani davanti al corpo per una forte contrazione.",
            steps: [
                "Regola i cavi in alto e impugna una maniglia per mano.",
                "Porta un piede avanti e inclinati leggermente in avanti.",
                "Porta le mani in basso e incrociale davanti al corpo ad arco.",
                "Contrai forte il centro del petto, poi torna lentamente.",
            ]),
        "バンドチェストプレス": Entry(
            name: "Chest press con elastico",
            detail: "Passa un elastico dietro la schiena e spingi in avanti. La resistenza aumenta con l'allungamento, quindi spingi fino alla distensione completa.",
            steps: [
                "Passa l'elastico dietro la schiena e impugna le due estremità.",
                "Posizionati all'altezza del petto con i piedi sfalsati per stabilità.",
                "Spingi dritto in avanti.",
                "Mantieni la tensione fino alla distensione e torna lentamente.",
            ]),
        "ディップス": Entry(
            name: "Dip alle parallele",
            detail: "Scendi e risali sulle parallele. Inclinati in avanti per il petto basso o resta eretto per i tricipiti. Limita la profondità se le spalle fanno male.",
            steps: [
                "Impugna le parallele e sostieniti a braccia distese.",
                "Inclina il busto in avanti per colpire il petto basso.",
                "Piega i gomiti e abbassa il corpo.",
                "Risali per tornare. Limita la profondità se le spalle fanno male.",
            ]),
        "懸垂": Entry(
            name: "Trazioni alla sbarra",
            detail: "Il miglior esercizio a corpo libero per la larghezza della schiena. Presa prona poco più larga delle spalle, porta il petto alla sbarra. Tira con la schiena, senza slancio.",
            steps: [
                "Impugna la sbarra in presa prona, poco più larga delle spalle.",
                "Abbassa le spalle e alza il petto.",
                "Senza slancio, tira il petto verso la sbarra.",
                "Senti la contrazione della schiena, poi scendi lentamente.",
            ]),
        "チンニング（逆手懸垂）": Entry(
            name: "Trazioni supine",
            detail: "Una trazione in presa supina (palmi verso di te). Colpisce molto i bicipiti oltre alla schiena ed è più facile da tirare della versione prona.",
            steps: [
                "Impugna la sbarra in presa supina (palmi verso di te) alla larghezza delle spalle.",
                "Alza il petto e abbassa le spalle.",
                "Tira il petto alla sbarra con braccia e schiena.",
                "Scendi lentamente e ripeti.",
            ]),
        "インバーテッドロウ": Entry(
            name: "Rematore inverso",
            detail: "Vai sotto una sbarra bassa o un tavolo e tira il corpo in angolo. Tieni il corpo in linea retta, retrai le scapole e porta il petto in alto.",
            steps: [
                "Sdraiati sotto una sbarra bassa o un tavolo e impugnalo.",
                "Tieni il corpo in linea retta con i talloni come perno.",
                "Retrai le scapole e tira il petto alla sbarra.",
                "Scendi lentamente e ripeti.",
            ]),
        "バックエクステンション": Entry(
            name: "Estensioni lombari",
            detail: "Solleva il busto dalla posizione a pancia in giù per allenare gli erettori spinali (zona lombare). Non iperestendere; fermati dove senti la contrazione della schiena.",
            steps: [
                "Sdraiati a pancia in giù con le mani vicino alla testa o sul petto.",
                "Usa la schiena per sollevare il busto lentamente.",
                "Non iperestendere; fermati dove senti la contrazione.",
                "Scendi lentamente e ripeti.",
            ]),
        "スーパーマン": Entry(
            name: "Superman",
            detail: "Sdraiati a pancia in giù e solleva braccia e gambe insieme, tenendo qualche secondo. Contrae tutta la schiena e la zona lombare. Continua a respirare.",
            steps: [
                "Sdraiati a pancia in giù con le braccia tese in avanti.",
                "Solleva insieme entrambe le braccia ed entrambe le gambe.",
                "Tieni qualche secondo in aria, contraendo schiena e glutei.",
                "Scendi lentamente senza trattenere il respiro.",
            ]),
        "リバーススノーエンジェル": Entry(
            name: "Angelo di neve inverso",
            detail: "Sdraiati a pancia in giù, alza un po' il petto e sposta le braccia da sopra la testa fino ai fianchi. Colpisce il trapezio basso e i muscoli attorno alle scapole per migliorare la postura.",
            steps: [
                "Sdraiati a pancia in giù e alza un po' il petto dal pavimento.",
                "Distendi le braccia sopra la testa.",
                "Con i palmi in giù, sposta le braccia ad arco fino ai lati.",
                "Contrai le scapole, poi torna lentamente sopra la testa.",
            ]),
        "デッドリフト": Entry(
            name: "Stacco da terra",
            detail: "Un sollevamento pesante per tutto il corpo. Tieni la schiena piatta, tira il bilanciere lungo gli stinchi e alzati estendendo i fianchi. Non curvare mai la zona lombare.",
            steps: [
                "Stai alla larghezza dei fianchi con gli stinchi vicino al bilanciere.",
                "Tieni la schiena piatta e impugna il bilanciere.",
                "Tira il bilanciere tenendolo vicino agli stinchi.",
                "Estendi i fianchi per raddrizzarti. Non curvare la schiena.",
            ]),
        "ベントオーバーロウ": Entry(
            name: "Rematore con bilanciere",
            detail: "Inclinati in avanti e rema il bilanciere all'ombelico per dare spessore alla schiena. Riduci lo slancio e contrai bene le scapole.",
            steps: [
                "Impugna il bilanciere, piega un po' le ginocchia e inclinati.",
                "Tieni la schiena piatta e il petto alto.",
                "Rema il bilanciere all'ombelico senza slancio.",
                "Contrai le scapole, poi scendi lentamente.",
            ]),
        "ダンベルロウ": Entry(
            name: "Rematore con manubrio a un braccio",
            detail: "Appoggia una mano su una panca e rema il manubrio al fianco. Muove il gran dorsale su un'ampia escursione e corregge gli squilibri tra i lati.",
            steps: [
                "Appoggia una mano e un ginocchio su una panca, con un manubrio nell'altra mano.",
                "Tieni la schiena piatta e il petto alto.",
                "Porta il gomito indietro e rema il manubrio al fianco.",
                "Senti la contrazione del dorsale, poi scendi. Fai entrambi i lati.",
            ]),
        "ラットプルダウン": Entry(
            name: "Lat machine",
            detail: "Un esercizio guidato che allarga la schiena anche se le trazioni sono difficili. Alza il petto, tira la barra alla clavicola e tira con i dorsali abbassando le scapole.",
            steps: [
                "Impugna la barra più larga delle spalle e blocca le cosce sotto il rullo.",
                "Alza il petto e inclinati un po' indietro.",
                "Tira la barra alla clavicola abbassando le scapole.",
                "Tieni i dorsali attivi, poi torna lentamente.",
            ]),
        "シーテッドロウ（マシン）": Entry(
            name: "Rematore seduto ai cavi",
            detail: "Un rematore seduto che dà spessore alla parte centrale della schiena. Alza il petto, porta i gomiti indietro e contrai le scapole.",
            steps: [
                "Siediti e impugna la maniglia.",
                "Alza il petto e tieni la schiena piatta.",
                "Porta i gomiti indietro e contrai le scapole.",
                "Contrai la parte centrale della schiena, poi torna lentamente.",
            ]),
        "バンドロウ": Entry(
            name: "Rematore con elastico",
            detail: "Ancora un elastico ai piedi o a un palo e tira verso di te. La resistenza aumenta tirando, quindi contrai bene le scapole alla fine.",
            steps: [
                "Ancora l'elastico sotto i piedi o a un palo e impugna le due estremità.",
                "Alza il petto e tieni la schiena piatta.",
                "Porta i gomiti indietro e tira l'elastico verso di te.",
                "Contrai bene le scapole, poi torna lentamente.",
            ]),
        "シュラッグ": Entry(
            name: "Scrollate di spalle",
            detail: "Tieni i manubri e scrolla le spalle per allenare il trapezio alto. Solleva solo le spalle dritto verso l'alto senza muovere il collo. Tieni un secondo in alto.",
            steps: [
                "Tieni un manubrio per mano con le braccia ai fianchi.",
                "Senza muovere il collo, scrolla le spalle dritto verso l'alto.",
                "Tieni un secondo in alto per contrarre il trapezio.",
                "Abbassa le spalle lentamente e ripeti.",
            ]),
        "スクワット（自重）": Entry(
            name: "Squat a corpo libero",
            detail: "La base dell'allenamento delle gambe. Piedi alla larghezza delle spalle, siediti indietro come su una sedia finché le cosce sono parallele al pavimento. Non far superare troppo le ginocchia oltre le punte dei piedi.",
            steps: [
                "Stai alla larghezza delle spalle con le punte leggermente aperte.",
                "Alza il petto e siedi i fianchi indietro come su una sedia.",
                "Scendi finché le cosce sono parallele al pavimento.",
                "Spingi sui talloni per rialzarti.",
            ]),
        "ランジ": Entry(
            name: "Affondi",
            detail: "Fai un grande passo in avanti e abbassa il ginocchio posteriore fin quasi a toccare terra. Spingi sul tallone anteriore per tornare. Lavora glutei e cosce.",
            steps: [
                "Fai un grande passo in avanti con un piede.",
                "Tieni il busto eretto e abbassa i fianchi in verticale.",
                "Fermati quando il ginocchio posteriore sfiora terra.",
                "Spingi sul tallone anteriore per tornare. Fai entrambi i lati.",
            ]),
        "ブルガリアンスクワット": Entry(
            name: "Squat bulgaro",
            detail: "Uno squat su una gamba con il piede posteriore su una sedia. Il carico si concentra sulla gamba anteriore, brutale anche a corpo libero. Senti l'allungamento del gluteo mentre scendi.",
            steps: [
                "Appoggia il collo del piede posteriore su una sedia e porta avanti il piede anteriore.",
                "Inclina un po' il busto e carica la gamba anteriore.",
                "Abbassa i fianchi sentendo l'allungamento del gluteo.",
                "Spingi sulla gamba anteriore per alzarti. Fai entrambi i lati.",
            ]),
        "ヒップリフト": Entry(
            name: "Ponte per glutei",
            detail: "Sdraiati sulla schiena con le ginocchia piegate e solleva i fianchi in linea retta. Contrai forte i glutei in alto. Spingi con i fianchi senza inarcare la zona lombare.",
            steps: [
                "Sdraiati sulla schiena con le ginocchia piegate e i piedi alla larghezza dei fianchi.",
                "Spingi sui talloni e solleva i fianchi.",
                "Contrai i glutei in alto, con spalle-ginocchia in linea.",
                "Scendi lentamente senza inarcare la zona lombare.",
            ]),
        "カーフレイズ（自重）": Entry(
            name: "Calf raise",
            detail: "Sali sulle punte per allenare i polpacci. Solleva i talloni più in alto possibile, tieni un secondo e scendi lentamente. Farlo su un gradino aumenta l'escursione.",
            steps: [
                "Stai alla larghezza dei fianchi (sul bordo di un gradino per più escursione).",
                "Sali sulle punte sollevando i talloni più in alto possibile.",
                "Tieni un secondo in alto per contrarre i polpacci.",
                "Abbassa i talloni lentamente.",
            ]),
        "ウォールシット": Entry(
            name: "Wall sit",
            detail: "Una tenuta isometrica seduti contro un muro. Tieni con le cosce parallele al pavimento per esaurire i quadricipiti.",
            steps: [
                "Stai con la schiena contro un muro.",
                "Cammina con i piedi in avanti e scivola lungo il muro.",
                "Fermati quando le cosce sono parallele al pavimento.",
                "Tieni la posizione ed esaurisci i quadricipiti.",
            ]),
        "バーベルスクワット": Entry(
            name: "Squat con bilanciere",
            detail: "Il re degli esercizi per la parte inferiore. Metti il bilanciere sulle spalle, alza il petto e scendi profondo. Tieni la schiena piatta e spingi sui talloni.",
            steps: [
                "Metti il bilanciere sul trapezio e stai alla larghezza delle spalle.",
                "Alza il petto e scendi sedendo i fianchi indietro.",
                "Scendi finché le cosce sono parallele o sotto.",
                "Spingi sui talloni senza curvare la schiena.",
            ]),
        "ルーマニアンデッドリフト": Entry(
            name: "Stacco rumeno",
            detail: "Con una leggera piega delle ginocchia, spingi i fianchi indietro e abbassa il bilanciere lungo gli stinchi. Sentirai un forte allungamento in femorali e glutei. Tieni la schiena piatta per tutto il tempo.",
            steps: [
                "Impugna il bilanciere e stai alla larghezza dei fianchi.",
                "Tieni una leggera piega delle ginocchia e spingi i fianchi indietro.",
                "Abbassa il bilanciere lungo gli stinchi finché i femorali si allungano.",
                "Contrai i glutei ed estendi i fianchi per alzarti.",
            ]),
        "ダンベルスクワット": Entry(
            name: "Squat con manubri",
            detail: "Squat tenendo un manubrio per mano. Più facile ed equilibrato della versione con bilanciere. Alza il petto e scendi profondo.",
            steps: [
                "Tieni un manubrio per mano alla larghezza delle spalle.",
                "Alza il petto e siedi i fianchi indietro per accosciarti.",
                "Scendi finché le cosce sono parallele al pavimento.",
                "Spingi sui talloni.",
            ]),
        "レッグプレス": Entry(
            name: "Leg press",
            detail: "Spingi una pedana con i piedi alla macchina. Permette carichi pesanti senza forzare la zona lombare. Non bloccare le ginocchia; scendi finché le cosce si avvicinano al petto.",
            steps: [
                "Siediti e metti i piedi alla larghezza delle spalle al centro della pedana.",
                "Spingi la pedana ed estendi le ginocchia (senza bloccarle).",
                "Piega le ginocchia e scendi finché le cosce si avvicinano al petto.",
                "Spingi di nuovo sui talloni e ripeti.",
            ]),
        "レッグカール": Entry(
            name: "Leg curl",
            detail: "Porta i talloni verso i glutei da sdraiato o seduto per colpire i femorali. Controlla la discesa per mantenere la tensione sul muscolo.",
            steps: [
                "Posizionati alla macchina con il rullo contro le caviglie.",
                "Porta i talloni verso i glutei con i femorali.",
                "Piega il più possibile e tieni un secondo.",
                "Scendi lentamente tenendo il muscolo in tensione.",
            ]),
        "レッグエクステンション": Entry(
            name: "Leg extension",
            detail: "Un esercizio di isolamento seduti che colpisce i quadricipiti estendendo le ginocchia. Tieni un secondo in estensione completa per contrarre.",
            steps: [
                "Siediti con il rullo contro le caviglie.",
                "Estendi le ginocchia con i quadricipiti.",
                "Tieni un secondo in estensione completa per contrarre.",
                "Scendi lentamente e ripeti.",
            ]),
        "バンドアブダクション": Entry(
            name: "Abduzione dell'anca con elastico",
            detail: "Passa un elastico attorno a ginocchia o caviglie e spingi le gambe verso l'esterno. Colpisce il piccolo gluteo (lato dei fianchi) per sviluppare i glutei e stabilizzare il bacino.",
            steps: [
                "Passa un elastico attorno a ginocchia o caviglie.",
                "Stai alla larghezza dei fianchi in leggero squat.",
                "Spingi le gambe verso l'esterno con i glutei laterali.",
                "Torna lentamente mantenendo la tensione dell'elastico.",
            ]),
        "パイクプッシュアップ": Entry(
            name: "Pike push-up",
            detail: "Solleva molto i fianchi a V rovesciata e abbassa la testa verso terra. Carica i deltoidi anteriori. Un'ottima porta d'ingresso al piegamento in verticale.",
            steps: [
                "Dalla posizione di piegamento, solleva molto i fianchi a V rovesciata.",
                "Punta la testa a terra e carica le spalle.",
                "Piega i gomiti e abbassa la sommità della testa verso terra.",
                "Risali con le spalle.",
            ]),
        "壁逆立ち": Entry(
            name: "Verticale al muro",
            detail: "Sali in verticale contro un muro e tieni. Un esercizio isometrico che carica tutta la spalla. Contrai il core e non inarcare la zona lombare.",
            steps: [
                "Metti le mani vicino al muro e sali in verticale.",
                "Spingi il pavimento e sostieniti con le spalle.",
                "Contrai il core e tieni una linea retta senza inarcare.",
                "Tieni la posizione.",
            ]),
        "Yレイズ（うつ伏せ）": Entry(
            name: "Y-raise a pancia in giù",
            detail: "Sdraiati a pancia in giù e solleva le braccia a Y. Colpisce i deltoidi posteriori e il trapezio basso per aiutare a correggere le spalle chiuse.",
            steps: [
                "Sdraiati a pancia in giù e distendi le braccia sopra la testa a Y.",
                "Punta i pollici verso l'alto.",
                "Solleva entrambe le braccia da terra con i deltoidi posteriori.",
                "Contrai le scapole un secondo, poi scendi lentamente.",
            ]),
        "リバースプランクリーチ": Entry(
            name: "Plank inverso con allungo",
            detail: "Da un plank inverso con i fianchi sollevati, porta un braccio sotto il corpo. Lavora insieme i deltoidi posteriori e il core.",
            steps: [
                "Appoggia le mani a terra e solleva i fianchi in plank inverso.",
                "Tieni il corpo in linea retta.",
                "Porta un braccio sotto il corpo verso il lato opposto.",
                "Torna e alterna i lati.",
            ]),
        "アームサークル": Entry(
            name: "Cerchi con le braccia",
            detail: "Distendi le braccia ai lati e traccia piccoli cerchi. Discreto ma efficace per i deltoidi laterali e ottimo come riscaldamento per le spalle. Non alzare le spalle.",
            steps: [
                "Distendi entrambe le braccia ai lati all'altezza delle spalle.",
                "Tieni le spalle basse, lontane dalle orecchie.",
                "Traccia piccoli cerchi in avanti in continuo.",
                "Passa ai cerchi all'indietro a metà.",
            ]),
        "バーベルショルダープレス": Entry(
            name: "Lento avanti con bilanciere",
            detail: "Spingi il bilanciere sopra la testa in piedi o seduto. Un esercizio pesante per le spalle. Contrai il core, non inarcare troppo la zona lombare e spingi dritto verso l'alto.",
            steps: [
                "Impugna il bilanciere all'altezza della clavicola, più largo delle spalle.",
                "Contrai il core ed evita di inarcare troppo la zona lombare.",
                "Spingi il bilanciere dritto sopra la testa.",
                "Blocca i gomiti, poi scendi lentamente.",
            ]),
        "ダンベルショルダープレス": Entry(
            name: "Lento con manubri",
            detail: "Spingi i manubri da accanto alle orecchie verso l'alto. Un'escursione maggiore allena entrambi i lati in modo uniforme. Fermati all'altezza delle spalle in discesa.",
            steps: [
                "Tieni i manubri accanto alle orecchie.",
                "Contrai il core per stabilizzare la postura.",
                "Spingi dritto sopra la testa.",
                "Scendi lentamente all'altezza delle spalle.",
            ]),
        "サイドレイズ": Entry(
            name: "Alzate laterali",
            detail: "Un fondamentale per i deltoidi laterali che dà larghezza alla spalla. Alza i manubri ai lati fino all'altezza delle spalle. Guida un po' con i mignoli ed evita lo slancio.",
            steps: [
                "Tieni un manubrio per lato con i gomiti leggermente piegati.",
                "Alzali ai lati senza slancio.",
                "Sali all'altezza delle spalle guidando un po' con i mignoli.",
                "Scendi lentamente e ripeti.",
            ]),
        "フロントレイズ": Entry(
            name: "Alzate frontali",
            detail: "Alza i manubri davanti a te fino all'altezza delle spalle per allenare i deltoidi anteriori. Evita lo slancio e non salire sopra la spalla.",
            steps: [
                "Tieni i manubri davanti alle cosce.",
                "Mantieni una leggera piega fissa ai gomiti.",
                "Alzali davanti a te all'altezza delle spalle senza slancio.",
                "Scendi lentamente. Non salire troppo in alto.",
            ]),
        "リアレイズ": Entry(
            name: "Alzate posteriori",
            detail: "Inclinati in avanti e alza i manubri ai lati per allenare i deltoidi posteriori. Questa zona ostinata risponde a poco peso e molte ripetizioni.",
            steps: [
                "Tieni i manubri e inclina il busto in avanti.",
                "Mantieni una leggera piega ai gomiti e la schiena piatta.",
                "Alza i manubri ai lati con i deltoidi posteriori.",
                "Contrai le scapole un secondo, poi scendi lentamente.",
            ]),
        "ショルダープレス（マシン）": Entry(
            name: "Shoulder press alla macchina",
            detail: "Una macchina con traiettoria stabile che permette di spingere le spalle in sicurezza. Regola le impugnature all'altezza delle spalle; spingi fino alla distensione e non scendere troppo.",
            steps: [
                "Regola il sedile così le impugnature stanno all'altezza delle spalle.",
                "Premi la schiena contro lo schienale.",
                "Spingi le impugnature del tutto sopra la testa.",
                "Scendi all'altezza delle spalle; non scendere troppo.",
            ]),
        "バンドサイドレイズ": Entry(
            name: "Alzate laterali con elastico",
            detail: "Stai su un elastico e alzalo ai lati. La resistenza aumenta salendo, mantenendo tensione costante sui deltoidi laterali. Senza slancio.",
            steps: [
                "Stai al centro dell'elastico e impugna le due estremità.",
                "Posizionati con una leggera piega ai gomiti.",
                "Alza ai lati all'altezza delle spalle senza slancio.",
                "Scendi lentamente mantenendo la tensione dell'elastico.",
            ]),
        "ナロープッシュアップ": Entry(
            name: "Piegamenti stretti (tricipiti)",
            detail: "Un piegamento con le mani vicine per colpire i tricipiti. Tieni i gomiti vicini e portali indietro mentre scendi. Concentrati sulle braccia più che sul petto.",
            steps: [
                "Metti le mani più strette delle spalle, sotto il petto.",
                "Tieni i gomiti vicini e il corpo in linea retta.",
                "Abbassa il corpo portando i gomiti indietro.",
                "Risali con i tricipiti.",
            ]),
        "ベンチディップス": Entry(
            name: "Dip alla panca",
            detail: "Appoggia le mani su una sedia e scendi e risali per allenare i tricipiti. Piega i gomiti indietro, abbassa i fianchi e spingi. Tieni le spalle basse.",
            steps: [
                "Appoggia le mani sul bordo di una sedia e porta i piedi in avanti.",
                "Abbassa le spalle e stacca i fianchi dalla sedia.",
                "Piega i gomiti indietro e abbassa i fianchi.",
                "Spingi con i tricipiti per tornare.",
            ]),
        "ダイヤモンドプッシュアップ": Entry(
            name: "Piegamenti a diamante",
            detail: "Forma un diamante con pollici e indici e abbassa il petto sopra di esso. Colpisce molto i tricipiti. Tieni i gomiti vicini per tutto il tempo.",
            steps: [
                "Forma un diamante con pollici e indici sotto il petto.",
                "Tieni il corpo dritto e i gomiti vicini.",
                "Abbassa il petto lentamente sul diamante.",
                "Risali con i tricipiti.",
            ]),
        "チンニング（腕狙い）": Entry(
            name: "Trazioni supine strette",
            detail: "Trazione supina con presa stretta per concentrarti sui bicipiti. Evita il dondolio e concentrati sul tirare piegando le braccia.",
            steps: [
                "Impugna la sbarra in presa supina, più stretta delle spalle.",
                "Appenditi dritto senza dondolare.",
                "Tirati piegando le braccia.",
                "Scendi lentamente concentrandoti sui bicipiti.",
            ]),
        "リバースプランク": Entry(
            name: "Plank inverso",
            detail: "Appoggia le mani a terra, solleva i fianchi e tieni il corpo in linea retta. Un esercizio isometrico per tricipiti e core. Tieni le mani sotto le spalle e non alzarle.",
            steps: [
                "Siediti e appoggia le mani a terra dietro, sotto le spalle.",
                "Solleva i fianchi in linea retta.",
                "Apri il petto e non alzare le spalle.",
                "Tieni la posizione.",
            ]),
        "逆手テーブルロウ": Entry(
            name: "Rematore supino sotto il tavolo",
            detail: "Vai sotto un tavolo e tirati in presa supina. Lavora i bicipiti insieme alla schiena. Concentrati sul tirare piegando i gomiti.",
            steps: [
                "Sdraiati a pancia in su sotto un tavolo robusto.",
                "Impugna il bordo in presa supina e tieni il corpo in linea retta.",
                "Tira il petto al bordo piegando i gomiti.",
                "Scendi lentamente concentrandoti sui bicipiti.",
            ]),
        "バーベルカール": Entry(
            name: "Curl con bilanciere",
            detail: "L'esercizio fondamentale per i bicipiti. Blocca i gomiti ai fianchi e solleva il bilanciere senza slancio. Controlla anche la discesa.",
            steps: [
                "In piedi, impugna il bilanciere in presa supina alla larghezza delle spalle.",
                "Blocca i gomiti ai fianchi.",
                "Solleva il bilanciere senza slancio.",
                "Contrai i bicipiti, poi scendi lentamente.",
            ]),
        "ダンベルカール": Entry(
            name: "Curl con manubri",
            detail: "Solleva i manubri e ruota i polsi verso l'esterno in alto per una contrazione extra dei bicipiti. Tieni i gomiti fissi; fai entrambe le braccia insieme o alternate.",
            steps: [
                "Tieni un manubrio per lato.",
                "Tieni i gomiti fissi e solleva.",
                "Ruota i polsi verso l'esterno in alto per contrarre.",
                "Scendi lentamente. Alterna o fai insieme.",
            ]),
        "ハンマーカール": Entry(
            name: "Hammer curl",
            detail: "Curl con presa neutra (palmi rivolti l'uno verso l'altro). Allena il bicipite esterno e gli avambracci insieme per dare spessore al braccio. Tieni i gomiti fissi.",
            steps: [
                "Tieni i manubri in presa neutra (palmi rivolti l'uno verso l'altro).",
                "Blocca i gomiti ai fianchi.",
                "Solleva mantenendo la presa neutra.",
                "Scendi lentamente e ripeti.",
            ]),
        "トライセプスエクステンション": Entry(
            name: "Estensione tricipiti sopra la testa",
            detail: "Abbassa un manubrio dietro la testa ed estendi i gomiti per allenare i tricipiti. Tieni i gomiti fermi e le braccia verticali.",
            steps: [
                "Tieni un manubrio con entrambe le mani e sollevalo sopra la testa.",
                "Tieni le braccia verticali e piega solo i gomiti dietro la testa.",
                "Non lasciare aprire i gomiti.",
                "Estendi i gomiti con i tricipiti per tornare.",
            ]),
        "ケーブルプッシュダウン": Entry(
            name: "Pushdown ai cavi",
            detail: "Spingi un cavo dritto verso il basso per contrarre i tricipiti. Blocca i gomiti ai fianchi e tieni un secondo in estensione completa.",
            steps: [
                "Impugna una barra ai cavi alta.",
                "Blocca i gomiti ai fianchi e inclinati un po' in avanti.",
                "Spingi la barra dritto verso il basso muovendo solo gli avambracci.",
                "Tieni un secondo in estensione, poi torna lentamente.",
            ]),
        "バンドカール": Entry(
            name: "Curl con elastico",
            detail: "Curl stando in piedi su un elastico. La resistenza aumenta salendo, quindi continua a tirare e contrai del tutto i bicipiti in alto. Tieni i gomiti fissi.",
            steps: [
                "Stai al centro dell'elastico e impugna le due estremità.",
                "Blocca i gomiti ai fianchi.",
                "Solleva l'elastico in curl (la resistenza aumenta salendo).",
                "Contrai i bicipiti in alto, poi scendi lentamente.",
            ]),
        "リストカール": Entry(
            name: "Wrist curl",
            detail: "Appoggia gli avambracci sulle cosce o su una panca e fletti i manubri solo con i polsi. Allena gli avambracci e la presa. Usa tutta l'escursione.",
            steps: [
                "Appoggia gli avambracci sulle cosce o su una panca con i polsi oltre il bordo.",
                "Tieni i manubri con i palmi verso l'alto.",
                "Fletti i manubri usando solo i polsi.",
                "Scendi lentamente su tutta l'escursione.",
            ]),
        "プランク": Entry(
            name: "Plank",
            detail: "La tenuta di base per il core: appoggiati su gomiti e punte dei piedi in linea retta dalla testa ai talloni. Contrai gli addominali, tieni i fianchi a livello e continua a respirare.",
            steps: [
                "Metti i gomiti sotto le spalle e appoggiati sulle punte dei piedi.",
                "Tieni una linea retta dalla testa ai talloni.",
                "Contrai gli addominali — non lasciare cadere o salire i fianchi.",
                "Tieni la posizione continuando a respirare.",
            ]),
        "サイドプランク": Entry(
            name: "Plank laterale",
            detail: "Appoggiati su un gomito e sul lato di un piede. Colpisce gli obliqui. Tieni il corpo in linea retta così i fianchi non cadono. Fai entrambi i lati.",
            steps: [
                "Sdraiati su un fianco con il gomito sotto la spalla.",
                "Impila i piedi e sostieniti di lato.",
                "Solleva i fianchi e tieni il corpo in linea retta.",
                "Tieni la posizione. Fai entrambi i lati.",
            ]),
        "クランチ": Entry(
            name: "Crunch",
            detail: "Sdraiati sulla schiena con le ginocchia piegate e arrotola il busto solo finché le scapole si staccano. Colpisce gli addominali alti. Arrotola con gli addominali, non con il collo.",
            steps: [
                "Sdraiati sulla schiena con le ginocchia piegate, mani vicino alla testa o sul petto.",
                "Arrotola il busto contraendo gli addominali.",
                "Sali solo finché le scapole si staccano da terra.",
                "Non tirare con il collo; scendi lentamente.",
            ]),
        "レッグレイズ": Entry(
            name: "Sollevamento gambe da sdraiato",
            detail: "Sdraiati sulla schiena, solleva le gambe unite e abbassale lentamente. Colpisce gli addominali bassi. Premi le mani a terra così la zona lombare non si inarca.",
            steps: [
                "Sdraiati sulla schiena con le mani ai fianchi o sotto i fianchi.",
                "Solleva le gambe unite, dritte verso l'alto.",
                "Premi la zona lombare a terra così non si inarca.",
                "Scendi lentamente contraendo gli addominali bassi.",
            ]),
        "バイシクルクランチ": Entry(
            name: "Crunch bicicletta",
            detail: "Porta il gomito al ginocchio opposto come se pedalassi. Colpisce addominali e obliqui insieme. Usa la rotazione e non affrettare con lo slancio.",
            steps: [
                "Sdraiati sulla schiena con le mani vicino alla testa e le gambe sollevate.",
                "Porta un ginocchio al petto e il gomito opposto verso di esso.",
                "Ruota il busto per avvicinare gomito e ginocchio.",
                "Alterna i lati come se pedalassi.",
            ]),
        "マウンテンクライマー": Entry(
            name: "Mountain climber",
            detail: "In posizione di piegamento, porta le ginocchia al petto in modo alternato e rapido. Allena il core e il cardio insieme. Tieni il corpo in linea senza alzare i fianchi.",
            steps: [
                "Mettiti in posizione di piegamento con le mani sotto le spalle.",
                "Tieni il corpo in linea retta (non alzare i fianchi).",
                "Porta un ginocchio al petto rapidamente.",
                "Cambia gamba a ritmo e alterna.",
            ]),
        "ロシアンツイスト": Entry(
            name: "Russian twist",
            detail: "Siediti, inclinati indietro e ruota da un lato all'altro. Colpisce gli obliqui. Sollevare i piedi aumenta la difficoltà. Non curvare troppo la schiena.",
            steps: [
                "Siediti con le ginocchia piegate e inclina il busto indietro.",
                "Tieni il petto alto senza curvare troppo la schiena.",
                "Unisci le mani e ruota il busto da un lato all'altro.",
                "Solleva i piedi per aumentare la difficoltà se puoi.",
            ]),
        "デッドバグ": Entry(
            name: "Dead bug",
            detail: "Sdraiati sulla schiena con braccia e gambe in alto ed estendi lentamente gli arti opposti. Un esercizio per il core delicato con la schiena. Tieni la zona lombare premuta a terra.",
            steps: [
                "Sdraiati sulla schiena con le braccia verso il soffitto e le ginocchia a 90 gradi.",
                "Premi la zona lombare a terra.",
                "Estendi lentamente un braccio e la gamba opposta.",
                "Torna, poi fai l'altro lato.",
            ]),
        "ハンギングレッグレイズ": Entry(
            name: "Sollevamento gambe appeso",
            detail: "Appenditi a una sbarra e solleva le gambe. Un esercizio avanzato che martella gli addominali bassi. Riduci il dondolio; piegare le ginocchia lo rende più facile.",
            steps: [
                "Appenditi a una sbarra e stabilizza il corpo.",
                "Riduci il dondolio e solleva le gambe con gli addominali bassi.",
                "Sali finché le gambe sono parallele o sopra (piega le ginocchia per facilitare).",
                "Scendi lentamente e ripeti.",
            ]),
        "ケーブルクランチ": Entry(
            name: "Crunch ai cavi",
            detail: "Inginocchiati tenendo un cavo e arrotola il busto verso il basso. Permette di caricare molto gli addominali. Non tirare con le braccia — curva la schiena e arrotola con gli addominali.",
            steps: [
                "Impugna un cavo alto e inginocchiati.",
                "Tieni la corda vicino alla testa.",
                "Senza tirare con le braccia, curva e arrotola il busto verso il basso.",
                "Contrai gli addominali, poi torna lentamente.",
            ]),
        "ホローホールド": Entry(
            name: "Hollow hold",
            detail: "Sdraiati sulla schiena, distendi braccia e gambe e tieni una forma a banana con la zona lombare a terra. Un esercizio isometrico per tutto il core. Abbassa gli arti se la schiena si stacca.",
            steps: [
                "Sdraiati sulla schiena con le braccia sopra la testa e le gambe distese.",
                "Premi la zona lombare e solleva un po' braccia e gambe.",
                "Tieni il corpo in una forma a banana.",
                "Abbassa braccia e gambe per regolare se la schiena si stacca.",
            ]),
    ]
}
