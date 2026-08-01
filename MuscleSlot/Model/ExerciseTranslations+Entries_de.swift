//
//  ExerciseTranslations+Entries_de.swift
//  MuscleSlot
//
//  76種目のドイツ語訳本体。キーは Exercise.name（日本語）。
//  種目名は各言語のジムで通用する自然な呼称を採用（直訳しない）。
//

import Foundation

extension ExerciseTranslations {

    static let entries_de: [String: Entry] = [
        "腕立て伏せ": Entry(
            name: "Liegestütze",
            detail: "Die klassische Brustübung. Setze die Hände etwas breiter als schulterbreit auf, halte den Körper gerade und senke die Brust fast bis zum Boden. Halte die Ellbogen bei etwa 45 Grad.",
            steps: [
                "Gehe in den Stütz und setze die Hände etwas breiter als schulterbreit auf.",
                "Halte Kopf, Hüfte und Fersen in einer Linie und spanne den Körper wie ein Brett an.",
                "Senke den Körper, bis die Brust fast den Boden berührt, Ellbogen bei etwa 45 Grad.",
                "Drücke dich mit der Brust vom Boden ab und strecke die Arme, um zurückzukehren.",
            ]),
        "ワイド腕立て": Entry(
            name: "Breite Liegestütze",
            detail: "Setze die Hände etwa 1,5-fach schulterbreit auf, um die äußere und obere Brust stärker zu treffen. Senke dich nicht zu tief, um die Schultern zu schonen.",
            steps: [
                "Setze die Hände etwa 1,5-fach schulterbreit auf den Boden.",
                "Halte den Körper gerade und die Brust hoch.",
                "Senke den Körper und spüre die Dehnung der äußeren Brust.",
                "Vermeide zu tiefes Absenken, das die Schultern belastet, dann drücke hoch.",
            ]),
        "ナロー腕立て": Entry(
            name: "Enge Liegestütze",
            detail: "Setze die Hände enger als schulterbreit auf, um die innere Brust und den Trizeps zu treffen. Halte die Ellbogen eng und führe sie beim Absenken nach hinten.",
            steps: [
                "Setze die Hände enger als schulterbreit auf, etwa unter der Brust.",
                "Halte die Ellbogen eng und den Körper gerade.",
                "Senke den Körper, indem du die Ellbogen nach hinten führst.",
                "Drücke hoch mit Fokus auf innere Brust und Trizeps.",
            ]),
        "デクライン腕立て": Entry(
            name: "Dekline Liegestütze",
            detail: "Lege die Füße erhöht auf einen Stuhl, sodass der Kopf tiefer ist. Das verlagert die Last auf die obere Brust und macht es schwerer als normale Liegestütze.",
            steps: [
                "Lege die Füße auf einen Stuhl oder eine Box, sodass der Kopf tiefer als die Hüfte ist.",
                "Halte die Hände schulterbreit und den Körper gerade.",
                "Senke den Körper mit Fokus auf die obere Brust.",
                "Drücke über die obere Brust hoch, um zurückzukehren.",
            ]),
        "膝つき腕立て": Entry(
            name: "Liegestütze auf Knien",
            detail: "Anfängervariante mit den Knien am Boden, um die Last zu verringern. Halte eine gerade Linie von Knien bis Kopf und senke dich langsam mit sauberer Technik.",
            steps: [
                "Setze die Knie auf den Boden und die Hände etwas breiter als schulterbreit.",
                "Halte eine gerade Linie von den Knien bis zum Kopf.",
                "Senke die Brust langsam zum Boden.",
                "Drücke hoch, ohne die Form zu verlieren.",
            ]),
        "ベンチプレス": Entry(
            name: "Bankdrücken",
            detail: "Der König der Brustübungen für schwere Lasten. Ziehe die Schulterblätter zusammen, mache eine leichte Brücke, senke die Stange auf Höhe der Brustwarzen und drücke hoch.",
            steps: [
                "Lege dich auf die Bank, ziehe die Schulterblätter zusammen und mache eine leichte Brücke.",
                "Greife die Stange etwas breiter als schulterbreit.",
                "Senke die Stange langsam auf Brustwarzenhöhe.",
                "Drücke über die Brust hoch und strecke die Ellbogen durch.",
            ]),
        "インクラインベンチプレス": Entry(
            name: "Schrägbankdrücken mit Langhantel",
            detail: "Stelle die Bank auf 30–45 Grad, um die obere Brust aufzubauen. Senke die Stange knapp unter das Schlüsselbein. Ein zu steiler Winkel macht es zur Schulterübung.",
            steps: [
                "Stelle die Bank auf 30–45 Grad und lege dich hin.",
                "Ziehe die Schulterblätter zusammen und greife die Stange breiter als schulterbreit.",
                "Senke die Stange knapp unter das Schlüsselbein.",
                "Drücke über die obere Brust hoch und kehre zurück.",
            ]),
        "ダンベルプレス": Entry(
            name: "Kurzhantel-Bankdrücken",
            detail: "Bietet mehr Bewegungsumfang als die Langhantel und lässt die Brust voll dehnen und kontrahieren. Spüre die Dehnung unten und führe die Hanteln oben zusammen.",
            steps: [
                "Lege dich auf die Bank mit einer Hantel in jeder Hand.",
                "Ziehe die Schulterblätter zusammen und halte die Hanteln über der Brust.",
                "Senke ab, bis du eine Dehnung in der Brust spürst.",
                "Drücke hoch und führe die Hanteln zusammen, um zu kontrahieren.",
            ]),
        "インクラインダンベルプレス": Entry(
            name: "Schräges Kurzhanteldrücken",
            detail: "Trifft die obere Brust auf der Schrägbank. Senke tief für eine Dehnung der oberen Brust und führe oben nach innen zusammen.",
            steps: [
                "Setze dich auf eine Schrägbank mit einer Hantel in jeder Hand.",
                "Positioniere dich über der oberen Brust und ziehe die Schulterblätter zusammen.",
                "Senke tief, um die obere Brust zu dehnen.",
                "Drücke hoch und führe die Hanteln oben nach innen zusammen.",
            ]),
        "ダンベルフライ": Entry(
            name: "Kurzhantel-Fliegende",
            detail: "Eine Isolationsübung, bei der du die Arme im Bogen mit leicht gebeugten Ellbogen öffnest und schließt. Öffne weit, um die Brust zu dehnen, dann schließe wie beim Umarmen.",
            steps: [
                "Lege dich hin und halte die Hanteln über der Brust.",
                "Halte eine leichte, feste Beugung in den Ellbogen.",
                "Öffne die Arme im Bogen zur Seite und dehne die Brust.",
                "Schließe die Arme wie beim Umarmen und kontrahiere die Brust.",
            ]),
        "チェストプレス（マシン）": Entry(
            name: "Brustpresse (Maschine)",
            detail: "Eine geführte Übung mit fester Bahn, um sicher bis zum Muskelversagen zu drücken. Stelle die Griffe auf Brusthöhe und drücke ganz durch. Ideal für Anfänger.",
            steps: [
                "Stelle die Sitzhöhe so ein, dass die Griffe auf Brusthöhe sind.",
                "Drücke den Rücken ans Polster und hebe die Brust.",
                "Drücke die Griffe ganz nach vorne.",
                "Spüre die Kontraktion der Brust und kehre langsam zurück.",
            ]),
        "ケーブルクロスオーバー": Entry(
            name: "Kabelzug-Crossover",
            detail: "Kabel halten konstante Spannung auf dem Muskel. Ziele auf die mittlere bis untere Brust, indem du die Hände vor dem Körper kreuzt für eine starke Kontraktion.",
            steps: [
                "Stelle die Kabel hoch und greife in jede Hand einen Griff.",
                "Stelle einen Fuß nach vorne und lehne dich leicht vor.",
                "Führe die Hände nach unten und vor dem Körper im Bogen zusammen.",
                "Kontrahiere die Brustmitte kräftig, dann kehre langsam zurück.",
            ]),
        "バンドチェストプレス": Entry(
            name: "Brustpresse mit Band",
            detail: "Führe ein Band hinter dem Rücken durch und drücke nach vorne. Der Widerstand steigt beim Dehnen, also drücke bis zur vollen Streckung durch.",
            steps: [
                "Führe das Band hinter dem Rücken durch und greife beide Enden.",
                "Stelle dich auf Brusthöhe mit versetztem Stand für Stabilität.",
                "Drücke gerade nach vorne.",
                "Halte die Spannung bis zur Streckung, dann kehre langsam zurück.",
            ]),
        "ディップス": Entry(
            name: "Dips",
            detail: "Senke und hebe dich an Parallelbarren. Lehne dich vor für die untere Brust oder bleib aufrecht für den Trizeps. Begrenze die Tiefe, wenn die Schultern schmerzen.",
            steps: [
                "Greife die Parallelbarren und stütze dich mit gestreckten Armen ab.",
                "Lehne den Oberkörper vor, um die untere Brust zu treffen.",
                "Beuge die Ellbogen und senke den Körper.",
                "Drücke hoch, um zurückzukehren. Begrenze die Tiefe bei Schulterschmerzen.",
            ]),
        "懸垂": Entry(
            name: "Klimmzüge",
            detail: "Die beste Körpergewichtsübung für die Breite des Rückens. Greife im Obergriff etwas breiter als schulterbreit und ziehe die Brust zur Stange. Ziehe mit dem Rücken, nicht mit Schwung.",
            steps: [
                "Greife die Stange im Obergriff, etwas breiter als schulterbreit.",
                "Ziehe die Schultern nach unten und hebe die Brust.",
                "Ziehe ohne Schwung die Brust zur Stange.",
                "Spüre die Kontraktion des Rückens, dann senke langsam ab.",
            ]),
        "チンニング（逆手懸垂）": Entry(
            name: "Chin-ups",
            detail: "Ein Klimmzug im Untergriff (Handflächen zu dir). Er trifft neben dem Rücken stark den Bizeps und ist leichter zu ziehen als die Obergriffvariante.",
            steps: [
                "Greife die Stange im Untergriff (Handflächen zu dir) schulterbreit.",
                "Hebe die Brust und ziehe die Schultern nach unten.",
                "Ziehe die Brust mit Armen und Rücken zur Stange.",
                "Senke langsam ab und wiederhole.",
            ]),
        "インバーテッドロウ": Entry(
            name: "Umgekehrtes Rudern",
            detail: "Geh unter eine niedrige Stange oder einen Tisch und ziehe den Körper im Winkel hoch. Halte den Körper gerade, ziehe die Schulterblätter zusammen und hebe die Brust.",
            steps: [
                "Lege dich unter eine niedrige Stange oder einen Tisch und greife sie.",
                "Halte den Körper gerade mit den Fersen als Drehpunkt.",
                "Ziehe die Schulterblätter zusammen und die Brust zur Stange.",
                "Senke langsam ab und wiederhole.",
            ]),
        "バックエクステンション": Entry(
            name: "Rückenstrecken",
            detail: "Hebe den Oberkörper aus der Bauchlage, um die Rückenstrecker (unterer Rücken) zu trainieren. Überstrecke nicht; stoppe dort, wo du die Kontraktion spürst.",
            steps: [
                "Lege dich auf den Bauch, Hände neben dem Kopf oder auf der Brust.",
                "Hebe den Oberkörper langsam mit dem Rücken.",
                "Überstrecke nicht; stoppe, wo du die Kontraktion spürst.",
                "Senke langsam ab und wiederhole.",
            ]),
        "スーパーマン": Entry(
            name: "Superman",
            detail: "Lege dich auf den Bauch und hebe Arme und Beine gleichzeitig, halte einige Sekunden. Strafft den gesamten Rücken und den unteren Rücken. Atme weiter.",
            steps: [
                "Lege dich auf den Bauch, Arme nach vorne gestreckt.",
                "Hebe beide Arme und beide Beine gleichzeitig.",
                "Halte einige Sekunden in der Luft und spanne Rücken und Gesäß an.",
                "Senke langsam ab, ohne die Luft anzuhalten.",
            ]),
        "リバーススノーエンジェル": Entry(
            name: "Umgekehrter Schneeengel",
            detail: "Lege dich auf den Bauch, hebe die Brust leicht und führe die Arme von über dem Kopf bis zu den Hüften. Trifft den unteren Trapez und die Muskeln um die Schulterblätter für bessere Haltung.",
            steps: [
                "Lege dich auf den Bauch und hebe die Brust leicht vom Boden.",
                "Strecke die Arme über den Kopf.",
                "Führe die Arme mit Handflächen nach unten im Bogen zu den Seiten.",
                "Spanne die Schulterblätter an, dann kehre langsam über den Kopf zurück.",
            ]),
        "デッドリフト": Entry(
            name: "Kreuzheben",
            detail: "Ein schweres Ganzkörper-Heben. Halte den Rücken gerade, ziehe die Stange an den Schienbeinen hoch und richte dich durch Hüftstreckung auf. Runde niemals den unteren Rücken.",
            steps: [
                "Stelle dich hüftbreit hin, Schienbeine nah an der Stange.",
                "Halte den Rücken gerade und greife die Stange.",
                "Ziehe die Stange hoch und halte sie nah an den Schienbeinen.",
                "Strecke die Hüfte, um dich aufzurichten. Runde den Rücken nicht.",
            ]),
        "ベントオーバーロウ": Entry(
            name: "Vorgebeugtes Rudern",
            detail: "Beuge dich vor und rudere die Stange zum Bauchnabel, um Rückendicke aufzubauen. Minimiere den Schwung und ziehe die Schulterblätter voll zusammen.",
            steps: [
                "Greife die Stange, beuge die Knie leicht und lehne dich vor.",
                "Halte den Rücken gerade und die Brust hoch.",
                "Rudere die Stange ohne Schwung zum Bauchnabel.",
                "Ziehe die Schulterblätter zusammen, dann senke langsam ab.",
            ]),
        "ダンベルロウ": Entry(
            name: "Einarmiges Kurzhantelrudern",
            detail: "Stütze eine Hand auf eine Bank und rudere die Hantel zur Hüfte. Bewegt den Latissimus über einen großen Bereich und gleicht Links-rechts-Ungleichgewichte aus.",
            steps: [
                "Setze eine Hand und ein Knie auf eine Bank, in der anderen Hand eine Hantel.",
                "Halte den Rücken gerade und die Brust hoch.",
                "Führe den Ellbogen nach hinten und rudere die Hantel zur Hüfte.",
                "Spüre die Kontraktion des Latissimus, dann senke ab. Mach beide Seiten.",
            ]),
        "ラットプルダウン": Entry(
            name: "Latzug",
            detail: "Eine geführte Übung, die den Rücken verbreitert, auch wenn Klimmzüge schwerfallen. Hebe die Brust, ziehe die Stange zum Schlüsselbein und ziehe mit dem Latissimus durch Absenken der Schulterblätter.",
            steps: [
                "Greife die Stange breiter als schulterbreit und fixiere die Oberschenkel unter dem Polster.",
                "Hebe die Brust und lehne dich leicht zurück.",
                "Ziehe die Stange zum Schlüsselbein und senke die Schulterblätter.",
                "Halte den Latissimus aktiv, dann kehre langsam zurück.",
            ]),
        "シーテッドロウ（マシン）": Entry(
            name: "Sitzendes Kabelrudern",
            detail: "Ein sitzendes Rudern, das die Rückenmitte verdickt. Hebe die Brust, führe die Ellbogen nach hinten und ziehe die Schulterblätter zusammen.",
            steps: [
                "Setze dich hin und greife den Griff.",
                "Hebe die Brust und halte den Rücken gerade.",
                "Führe die Ellbogen nach hinten und ziehe die Schulterblätter zusammen.",
                "Kontrahiere die Rückenmitte, dann kehre langsam zurück.",
            ]),
        "バンドロウ": Entry(
            name: "Rudern mit Band",
            detail: "Verankere ein Band an den Füßen oder einem Pfosten und ziehe zu dir. Der Widerstand steigt beim Ziehen, also ziehe die Schulterblätter am Ende voll zusammen.",
            steps: [
                "Verankere das Band unter den Füßen oder an einem Pfosten und greife beide Enden.",
                "Hebe die Brust und halte den Rücken gerade.",
                "Führe die Ellbogen nach hinten und ziehe das Band zu dir.",
                "Ziehe die Schulterblätter voll zusammen, dann kehre langsam zurück.",
            ]),
        "シュラッグ": Entry(
            name: "Schulterheben",
            detail: "Halte Hanteln und ziehe die Schultern hoch, um den oberen Trapez zu trainieren. Hebe nur die Schultern gerade hoch, ohne den Nacken zu bewegen. Halte oben eine Sekunde.",
            steps: [
                "Halte eine Hantel in jeder Hand, Arme seitlich.",
                "Ziehe die Schultern gerade hoch, ohne den Nacken zu bewegen.",
                "Halte oben eine Sekunde, um den Trapez anzuspannen.",
                "Senke die Schultern langsam und wiederhole.",
            ]),
        "スクワット（自重）": Entry(
            name: "Kniebeuge",
            detail: "Die Basis des Beintrainings. Schulterbreiter Stand, setze dich nach hinten wie auf einen Stuhl, bis die Oberschenkel parallel zum Boden sind. Lass die Knie nicht zu weit über die Zehen wandern.",
            steps: [
                "Stelle dich schulterbreit hin, Zehen leicht nach außen.",
                "Hebe die Brust und setze die Hüfte nach hinten wie auf einen Stuhl.",
                "Gehe in die Hocke, bis die Oberschenkel parallel zum Boden sind.",
                "Drücke über die Fersen wieder hoch.",
            ]),
        "ランジ": Entry(
            name: "Ausfallschritte",
            detail: "Mache einen großen Schritt nach vorne und senke das hintere Knie fast bis zum Boden. Drücke über die vordere Ferse zurück. Trainiert Gesäß und Oberschenkel.",
            steps: [
                "Mache einen großen Schritt nach vorne mit einem Fuß.",
                "Halte den Oberkörper aufrecht und senke die Hüfte gerade nach unten.",
                "Stoppe, wenn das hintere Knie fast den Boden berührt.",
                "Drücke über die vordere Ferse zurück. Mach beide Seiten.",
            ]),
        "ブルガリアンスクワット": Entry(
            name: "Bulgarische Kniebeuge",
            detail: "Eine einbeinige Kniebeuge mit dem hinteren Fuß auf einem Stuhl. Die Last konzentriert sich auf das vordere Bein, brutal auch mit Körpergewicht. Spüre die Gesäßdehnung beim Absenken.",
            steps: [
                "Lege den Spann des hinteren Fußes auf einen Stuhl und tritt vorne vor.",
                "Lehne den Oberkörper leicht vor und belaste das vordere Bein.",
                "Senke die Hüfte und spüre die Gesäßdehnung.",
                "Drücke über das vordere Bein hoch. Mach beide Seiten.",
            ]),
        "ヒップリフト": Entry(
            name: "Glute Bridge",
            detail: "Rückenlage mit gebeugten Knien, hebe die Hüfte in eine gerade Linie. Spanne oben das Gesäß kräftig an. Drücke über die Hüfte, ohne den unteren Rücken zu überstrecken.",
            steps: [
                "Lege dich auf den Rücken, Knie gebeugt, Füße hüftbreit.",
                "Drücke über die Fersen und hebe die Hüfte.",
                "Spanne oben das Gesäß an, Schultern-bis-Knie in einer Linie.",
                "Senke langsam ab, ohne den unteren Rücken zu überstrecken.",
            ]),
        "カーフレイズ（自重）": Entry(
            name: "Wadenheben",
            detail: "Stelle dich auf die Zehen, um die Waden zu trainieren. Hebe die Fersen so hoch wie möglich, halte eine Sekunde und senke langsam ab. Auf einer Stufe vergrößert es den Bewegungsumfang.",
            steps: [
                "Stelle dich hüftbreit hin (auf der Kante einer Stufe für mehr Umfang).",
                "Stelle dich auf die Zehen und hebe die Fersen so hoch wie möglich.",
                "Halte oben eine Sekunde, um die Waden anzuspannen.",
                "Senke die Fersen langsam ab.",
            ]),
        "ウォールシット": Entry(
            name: "Wandsitz",
            detail: "Ein isometrisches Halten in sitzender Position an einer Wand. Halte mit den Oberschenkeln parallel zum Boden, um die Quadrizepse auszubrennen.",
            steps: [
                "Stelle dich mit dem Rücken an eine Wand.",
                "Laufe mit den Füßen nach vorne und rutsche die Wand hinunter.",
                "Stoppe, wenn die Oberschenkel parallel zum Boden sind.",
                "Halte die Position und brenne die Quadrizepse aus.",
            ]),
        "バーベルスクワット": Entry(
            name: "Langhantelkniebeuge",
            detail: "Der König der Übungen für den Unterkörper. Lege die Stange auf die Schultern, hebe die Brust und gehe tief. Halte den Rücken gerade und drücke über die Fersen hoch.",
            steps: [
                "Lege die Stange auf den Trapez und stelle dich schulterbreit hin.",
                "Hebe die Brust und gehe in die Hocke, Hüfte nach hinten.",
                "Senke ab, bis die Oberschenkel parallel oder darunter sind.",
                "Drücke über die Fersen hoch, ohne den Rücken zu runden.",
            ]),
        "ルーマニアンデッドリフト": Entry(
            name: "Rumänisches Kreuzheben",
            detail: "Mit leicht gebeugten Knien schiebe die Hüfte nach hinten und senke die Stange an den Schienbeinen. Du spürst eine starke Dehnung in Beinbeuger und Gesäß. Halte den Rücken durchgehend gerade.",
            steps: [
                "Halte die Stange und stelle dich hüftbreit hin.",
                "Halte die Knie leicht gebeugt und schiebe die Hüfte nach hinten.",
                "Senke die Stange an den Schienbeinen, bis die Beinbeuger dehnen.",
                "Spanne das Gesäß an und strecke die Hüfte, um dich aufzurichten.",
            ]),
        "ダンベルスクワット": Entry(
            name: "Kurzhantelkniebeuge",
            detail: "Kniebeuge mit einer Hantel in jeder Hand. Leichter und ausgewogener als die Langhantelvariante. Hebe die Brust und gehe tief.",
            steps: [
                "Halte eine Hantel in jeder Hand und stelle dich schulterbreit hin.",
                "Hebe die Brust und setze die Hüfte nach hinten in die Hocke.",
                "Senke ab, bis die Oberschenkel parallel zum Boden sind.",
                "Drücke über die Fersen hoch.",
            ]),
        "レッグプレス": Entry(
            name: "Beinpresse",
            detail: "Drücke eine Plattform mit den Füßen an der Maschine. Erlaubt schwere Lasten ohne Belastung des unteren Rückens. Sperre die Knie nicht; senke, bis die Oberschenkel nah an die Brust kommen.",
            steps: [
                "Setze dich hin und stelle die Füße schulterbreit in die Mitte der Plattform.",
                "Drücke die Plattform und strecke die Knie (nicht durchdrücken).",
                "Beuge die Knie und senke, bis die Oberschenkel nah an die Brust kommen.",
                "Drücke über die Fersen zurück und wiederhole.",
            ]),
        "レッグカール": Entry(
            name: "Beinbeuger",
            detail: "Ziehe die Fersen liegend oder sitzend zum Gesäß, um die Beinbeuger zu treffen. Kontrolliere die Absenkphase, um die Spannung zu halten.",
            steps: [
                "Positioniere dich an der Maschine, das Polster an den Knöcheln.",
                "Ziehe die Fersen mit den Beinbeugern zum Gesäß.",
                "Beuge so weit wie möglich und halte eine Sekunde.",
                "Senke langsam ab und halte den Muskel unter Spannung.",
            ]),
        "レッグエクステンション": Entry(
            name: "Beinstrecker",
            detail: "Eine sitzende Isolationsübung, die die Quadrizepse durch Kniestreckung trifft. Halte eine Sekunde in voller Streckung, um zu kontrahieren.",
            steps: [
                "Setze dich hin, das Polster an den Knöcheln.",
                "Strecke die Knie mit den Quadrizepsen.",
                "Halte eine Sekunde in voller Streckung, um zu kontrahieren.",
                "Senke langsam ab und wiederhole.",
            ]),
        "バンドアブダクション": Entry(
            name: "Hüftabduktion mit Band",
            detail: "Lege ein Band um Knie oder Knöchel und drücke die Beine nach außen. Trifft den Gluteus medius (Hüftseite), um das Gesäß aufzubauen und das Becken zu stabilisieren.",
            steps: [
                "Lege ein Band um die Knie oder Knöchel.",
                "Stelle dich hüftbreit hin in leichter Hocke.",
                "Drücke die Beine mit den äußeren Gesäßmuskeln nach außen.",
                "Kehre langsam zurück und halte die Spannung des Bandes.",
            ]),
        "パイクプッシュアップ": Entry(
            name: "Pike-Liegestütze",
            detail: "Hebe die Hüfte hoch in ein umgekehrtes V und senke den Kopf zum Boden. Belastet die vordere Schulter. Ein guter Einstieg in den Handstand-Liegestütz.",
            steps: [
                "Aus der Liegestützposition hebe die Hüfte hoch in ein umgekehrtes V.",
                "Ziele mit dem Kopf zum Boden und belaste die Schultern.",
                "Beuge die Ellbogen und senke den Scheitel zum Boden.",
                "Drücke mit den Schultern hoch.",
            ]),
        "壁逆立ち": Entry(
            name: "Handstand an der Wand",
            detail: "Springe in den Handstand an einer Wand und halte. Eine isometrische Übung, die die ganze Schulter belastet. Spanne den Rumpf an und überstrecke den unteren Rücken nicht.",
            steps: [
                "Setze die Hände nahe der Wand und springe in den Handstand.",
                "Drücke dich vom Boden ab und stütze dich über die Schultern.",
                "Spanne den Rumpf an und halte eine gerade Linie ohne Überstreckung.",
                "Halte die Position.",
            ]),
        "Yレイズ（うつ伏せ）": Entry(
            name: "Y-Raise in Bauchlage",
            detail: "Lege dich auf den Bauch und hebe die Arme in ein Y. Trifft die hintere Schulter und den unteren Trapez, um vorgezogene Schultern zu korrigieren.",
            steps: [
                "Lege dich auf den Bauch und strecke die Arme über den Kopf in ein Y.",
                "Zeige mit den Daumen nach oben.",
                "Hebe beide Arme mit der hinteren Schulter vom Boden.",
                "Spanne die Schulterblätter eine Sekunde an, dann senke langsam ab.",
            ]),
        "リバースプランクリーチ": Entry(
            name: "Umgekehrte Planke mit Reichen",
            detail: "Aus einer umgekehrten Planke mit angehobener Hüfte führe einen Arm quer unter den Körper. Trainiert gleichzeitig hintere Schulter und Rumpf.",
            steps: [
                "Setze die Hände auf den Boden und hebe die Hüfte in eine umgekehrte Planke.",
                "Halte den Körper gerade.",
                "Führe einen Arm quer unter dem Körper zur Gegenseite.",
                "Kehre zurück und wechsle die Seiten.",
            ]),
        "アームサークル": Entry(
            name: "Armkreisen",
            detail: "Strecke die Arme zur Seite und zeichne kleine Kreise. Unauffällig, aber wirksam für die seitliche Schulter und ideal als Schulteraufwärmen. Ziehe die Schultern nicht hoch.",
            steps: [
                "Strecke beide Arme auf Schulterhöhe zur Seite.",
                "Halte die Schultern unten, weg von den Ohren.",
                "Zeichne durchgehend kleine Kreise nach vorne.",
                "Wechsle nach der Hälfte zu Kreisen nach hinten.",
            ]),
        "バーベルショルダープレス": Entry(
            name: "Langhantel-Schulterdrücken",
            detail: "Drücke die Stange über den Kopf, stehend oder sitzend. Eine schwere Schulterübung. Spanne den Rumpf an, überstrecke den unteren Rücken nicht und drücke gerade hoch.",
            steps: [
                "Greife die Stange auf Schlüsselbeinhöhe, breiter als schulterbreit.",
                "Spanne den Rumpf an und vermeide zu starke Überstreckung.",
                "Drücke die Stange gerade über den Kopf.",
                "Strecke die Ellbogen durch, dann senke langsam ab.",
            ]),
        "ダンベルショルダープレス": Entry(
            name: "Kurzhantel-Schulterdrücken",
            detail: "Drücke die Hanteln von neben den Ohren nach oben. Ein größerer Bewegungsumfang trainiert beide Seiten gleichmäßig. Stoppe beim Absenken auf Schulterhöhe.",
            steps: [
                "Halte die Hanteln neben den Ohren.",
                "Spanne den Rumpf an, um die Haltung zu stabilisieren.",
                "Drücke gerade über den Kopf.",
                "Senke langsam auf Schulterhöhe ab.",
            ]),
        "サイドレイズ": Entry(
            name: "Seitheben",
            detail: "Ein Grundpfeiler für die seitliche Schulter, der Breite aufbaut. Hebe die Hanteln zur Seite auf Schulterhöhe. Führe leicht mit den kleinen Fingern und vermeide Schwung.",
            steps: [
                "Halte eine Hantel an jeder Seite mit leicht gebeugten Ellbogen.",
                "Hebe sie ohne Schwung zur Seite.",
                "Hebe auf Schulterhöhe und führe leicht mit den kleinen Fingern.",
                "Senke langsam ab und wiederhole.",
            ]),
        "フロントレイズ": Entry(
            name: "Frontheben",
            detail: "Hebe die Hanteln vor dir auf Schulterhöhe, um die vordere Schulter zu trainieren. Vermeide Schwung und hebe nicht über Schulterhöhe.",
            steps: [
                "Halte die Hanteln vor den Oberschenkeln.",
                "Halte eine leichte, feste Beugung in den Ellbogen.",
                "Hebe sie ohne Schwung vor dir auf Schulterhöhe.",
                "Senke langsam ab. Hebe nicht zu hoch.",
            ]),
        "リアレイズ": Entry(
            name: "Reverse Flys",
            detail: "Beuge dich vor und hebe die Hanteln zur Seite, um die hintere Schulter zu trainieren. Diese hartnäckige Region reagiert auf leichte Gewichte und viele Wiederholungen.",
            steps: [
                "Halte die Hanteln und beuge den Oberkörper vor.",
                "Halte eine leichte Beugung in den Ellbogen und den Rücken gerade.",
                "Hebe die Hanteln mit der hinteren Schulter zur Seite.",
                "Spanne die Schulterblätter eine Sekunde an, dann senke langsam ab.",
            ]),
        "ショルダープレス（マシン）": Entry(
            name: "Schulterpresse (Maschine)",
            detail: "Eine Maschine mit stabiler Bahn, die die Schultern sicher drücken lässt. Stelle die Griffe auf Schulterhöhe; drücke bis zur Streckung und senke nicht zu tief.",
            steps: [
                "Stelle den Sitz so ein, dass die Griffe auf Schulterhöhe sind.",
                "Drücke den Rücken ans Polster.",
                "Drücke die Griffe ganz über den Kopf.",
                "Senke auf Schulterhöhe ab; senke nicht zu tief.",
            ]),
        "バンドサイドレイズ": Entry(
            name: "Seitheben mit Band",
            detail: "Stelle dich auf ein Band und hebe es zur Seite. Der Widerstand steigt beim Heben und hält konstante Spannung auf der seitlichen Schulter. Ohne Schwung.",
            steps: [
                "Stelle dich auf die Mitte des Bandes und greife beide Enden.",
                "Positioniere dich mit leicht gebeugten Ellbogen.",
                "Hebe zur Seite auf Schulterhöhe ohne Schwung.",
                "Senke langsam ab und halte die Spannung des Bandes.",
            ]),
        "ナロープッシュアップ": Entry(
            name: "Enge Liegestütze (Trizeps)",
            detail: "Ein Liegestütz mit enger Handstellung, um den Trizeps zu treffen. Halte die Ellbogen eng und führe sie beim Absenken nach hinten. Konzentriere dich auf die Arme statt die Brust.",
            steps: [
                "Setze die Hände enger als schulterbreit unter der Brust auf.",
                "Halte die Ellbogen eng und den Körper gerade.",
                "Senke den Körper, indem du die Ellbogen nach hinten führst.",
                "Drücke mit dem Trizeps hoch.",
            ]),
        "ベンチディップス": Entry(
            name: "Bank-Dips",
            detail: "Stütze die Hände auf einen Stuhl und senke und hebe dich, um den Trizeps zu trainieren. Beuge die Ellbogen nach hinten, senke die Hüfte und drücke hoch. Halte die Schultern unten.",
            steps: [
                "Setze die Hände an die Kante eines Stuhls und tritt mit den Füßen vor.",
                "Ziehe die Schultern nach unten und hebe die Hüfte vom Stuhl.",
                "Beuge die Ellbogen nach hinten und senke die Hüfte.",
                "Drücke mit dem Trizeps hoch, um zurückzukehren.",
            ]),
        "ダイヤモンドプッシュアップ": Entry(
            name: "Diamant-Liegestütze",
            detail: "Bilde mit Daumen und Zeigefingern eine Raute und senke die Brust darauf. Trifft den Trizeps sehr stark. Halte die Ellbogen durchgehend eng.",
            steps: [
                "Bilde mit Daumen und Zeigefingern eine Raute unter der Brust.",
                "Halte den Körper gerade und die Ellbogen eng.",
                "Senke die Brust langsam auf die Raute.",
                "Drücke mit dem Trizeps hoch.",
            ]),
        "チンニング（腕狙い）": Entry(
            name: "Enge Chin-ups",
            detail: "Chin-up im engen Untergriff, um den Bizeps zu treffen. Vermeide Schwingen und konzentriere dich auf das Ziehen durch Armbeugung.",
            steps: [
                "Greife die Stange im Untergriff, enger als schulterbreit.",
                "Hänge gerade ohne zu schwingen.",
                "Ziehe dich durch Beugen der Arme hoch.",
                "Senke langsam ab mit Fokus auf den Bizeps.",
            ]),
        "リバースプランク": Entry(
            name: "Umgekehrte Planke",
            detail: "Setze die Hände auf den Boden, hebe die Hüfte und halte den Körper gerade. Eine isometrische Übung für Trizeps und Rumpf. Halte die Hände unter den Schultern und ziehe sie nicht hoch.",
            steps: [
                "Setze dich hin und stütze die Hände hinter dir auf, unter den Schultern.",
                "Hebe die Hüfte in eine gerade Linie.",
                "Öffne die Brust und ziehe die Schultern nicht hoch.",
                "Halte die Position.",
            ]),
        "逆手テーブルロウ": Entry(
            name: "Untergriff-Rudern unter dem Tisch",
            detail: "Geh unter einen Tisch und ziehe dich im Untergriff hoch. Trainiert den Bizeps zusammen mit dem Rücken. Konzentriere dich auf das Ziehen durch Ellbogenbeugung.",
            steps: [
                "Lege dich mit dem Gesicht nach oben unter einen stabilen Tisch.",
                "Greife die Kante im Untergriff und halte den Körper gerade.",
                "Ziehe die Brust durch Beugen der Ellbogen zur Kante.",
                "Senke langsam ab mit Fokus auf den Bizeps.",
            ]),
        "バーベルカール": Entry(
            name: "Langhantel-Curl",
            detail: "Die grundlegende Bizepsübung. Fixiere die Ellbogen an den Seiten und curle die Stange ohne Schwung hoch. Kontrolliere auch die Absenkphase.",
            steps: [
                "Halte die Stange stehend im Untergriff schulterbreit.",
                "Fixiere die Ellbogen an den Seiten.",
                "Curle die Stange ohne Schwung hoch.",
                "Spanne den Bizeps an, dann senke langsam ab.",
            ]),
        "ダンベルカール": Entry(
            name: "Kurzhantel-Curl",
            detail: "Curle die Hanteln und drehe die Handgelenke oben nach außen für eine zusätzliche Bizepskontraktion. Halte die Ellbogen fixiert; mach beide Arme zusammen oder abwechselnd.",
            steps: [
                "Halte eine Hantel an jeder Seite.",
                "Halte die Ellbogen fixiert und curle hoch.",
                "Drehe die Handgelenke oben nach außen, um zu kontrahieren.",
                "Senke langsam ab. Wechsle ab oder mach zusammen.",
            ]),
        "ハンマーカール": Entry(
            name: "Hammer-Curl",
            detail: "Curl im neutralen Griff (Handflächen zueinander). Trainiert den äußeren Bizeps und die Unterarme zusammen, um Armdicke aufzubauen. Halte die Ellbogen fixiert.",
            steps: [
                "Halte die Hanteln im neutralen Griff (Handflächen zueinander).",
                "Fixiere die Ellbogen an den Seiten.",
                "Curle hoch und behalte den neutralen Griff bei.",
                "Senke langsam ab und wiederhole.",
            ]),
        "トライセプスエクステンション": Entry(
            name: "Trizepsdrücken über Kopf",
            detail: "Senke eine Hantel hinter den Kopf und strecke die Ellbogen, um den Trizeps zu trainieren. Halte die Ellbogen an Ort und Stelle und die Oberarme senkrecht.",
            steps: [
                "Halte eine Hantel mit beiden Händen und hebe sie über den Kopf.",
                "Halte die Oberarme senkrecht und beuge nur die Ellbogen hinter dem Kopf.",
                "Lass die Ellbogen nicht auswandern.",
                "Strecke die Ellbogen mit dem Trizeps, um zurückzukehren.",
            ]),
        "ケーブルプッシュダウン": Entry(
            name: "Trizepsdrücken am Kabel",
            detail: "Drücke ein Kabel gerade nach unten, um den Trizeps zu kontrahieren. Fixiere die Ellbogen an den Seiten und halte eine Sekunde in voller Streckung.",
            steps: [
                "Greife eine hohe Kabelstange.",
                "Fixiere die Ellbogen an den Seiten und lehne dich leicht vor.",
                "Drücke die Stange gerade nach unten und bewege nur die Unterarme.",
                "Halte eine Sekunde in voller Streckung, dann kehre langsam zurück.",
            ]),
        "バンドカール": Entry(
            name: "Curl mit Band",
            detail: "Curl, während du auf einem Band stehst. Der Widerstand steigt beim Heben, also ziehe weiter und kontrahiere oben den Bizeps voll. Halte die Ellbogen fixiert.",
            steps: [
                "Stelle dich auf die Mitte des Bandes und greife beide Enden.",
                "Fixiere die Ellbogen an den Seiten.",
                "Curle das Band hoch (der Widerstand steigt beim Heben).",
                "Spanne oben den Bizeps an, dann senke langsam ab.",
            ]),
        "リストカール": Entry(
            name: "Handgelenk-Curl",
            detail: "Lege die Unterarme auf die Oberschenkel oder eine Bank und curle die Hanteln nur mit den Handgelenken. Trainiert Unterarme und Griffkraft. Nutze den vollen Bewegungsumfang.",
            steps: [
                "Lege die Unterarme auf die Oberschenkel oder eine Bank, Handgelenke über der Kante.",
                "Halte die Hanteln mit den Handflächen nach oben.",
                "Curle die Hanteln nur mit den Handgelenken.",
                "Senke langsam über den vollen Umfang ab.",
            ]),
        "プランク": Entry(
            name: "Planke",
            detail: "Das grundlegende Rumpfhalten: stütze dich auf Ellbogen und Zehen in einer geraden Linie von Kopf bis Fersen. Spanne die Bauchmuskeln an, halte die Hüfte auf Höhe und atme weiter.",
            steps: [
                "Setze die Ellbogen unter die Schultern und stütze dich auf die Zehen.",
                "Halte eine gerade Linie von Kopf bis Fersen.",
                "Spanne die Bauchmuskeln an — lass die Hüfte nicht durchhängen oder hochgehen.",
                "Halte die Position und atme weiter.",
            ]),
        "サイドプランク": Entry(
            name: "Seitliche Planke",
            detail: "Stütze dich auf einen Ellbogen und die Fußkante. Trifft die schrägen Bauchmuskeln. Halte den Körper gerade, damit die Hüfte nicht absinkt. Mach beide Seiten.",
            steps: [
                "Lege dich auf die Seite, Ellbogen unter der Schulter.",
                "Staple die Füße und stütze dich seitlich ab.",
                "Hebe die Hüfte und halte den Körper gerade.",
                "Halte die Position. Mach beide Seiten.",
            ]),
        "クランチ": Entry(
            name: "Crunch",
            detail: "Rückenlage mit gebeugten Knien, rolle den Oberkörper nur so weit auf, bis die Schulterblätter abheben. Trifft die obere Bauchmuskulatur. Rolle mit den Bauchmuskeln, nicht dem Nacken.",
            steps: [
                "Lege dich auf den Rücken, Knie gebeugt, Hände am Kopf oder auf der Brust.",
                "Rolle den Oberkörper durch Anspannen der Bauchmuskeln auf.",
                "Hebe nur so weit, bis die Schulterblätter vom Boden abheben.",
                "Ziehe nicht am Nacken; senke langsam ab.",
            ]),
        "レッグレイズ": Entry(
            name: "Beinheben liegend",
            detail: "Rückenlage, hebe die Beine geschlossen und senke sie langsam. Trifft die untere Bauchmuskulatur. Drücke die Hände in den Boden, damit sich der untere Rücken nicht überstreckt.",
            steps: [
                "Lege dich auf den Rücken, Hände seitlich oder unter der Hüfte.",
                "Hebe die Beine geschlossen gerade hoch.",
                "Drücke den unteren Rücken in den Boden, damit er sich nicht überstreckt.",
                "Senke langsam ab und spanne die untere Bauchmuskulatur an.",
            ]),
        "バイシクルクランチ": Entry(
            name: "Fahrrad-Crunch",
            detail: "Führe den Ellbogen zum gegenüberliegenden Knie, als würdest du radeln. Trifft Bauch und schräge Bauchmuskeln zugleich. Nutze die Rotation und beeile dich nicht mit Schwung.",
            steps: [
                "Lege dich auf den Rücken, Hände am Kopf und Beine angehoben.",
                "Ziehe ein Knie zur Brust und den gegenüberliegenden Ellbogen dorthin.",
                "Drehe den Oberkörper, um Ellbogen und Knie zusammenzuführen.",
                "Wechsle die Seiten, als würdest du radeln.",
            ]),
        "マウンテンクライマー": Entry(
            name: "Mountain Climber",
            detail: "In der Liegestützposition ziehe die Knie abwechselnd schnell zur Brust. Trainiert Rumpf und Ausdauer zugleich. Halte den Körper gerade, ohne die Hüfte hochzuziehen.",
            steps: [
                "Geh in die Liegestützposition, Hände unter den Schultern.",
                "Halte den Körper gerade (ziehe die Hüfte nicht hoch).",
                "Ziehe ein Knie schnell zur Brust.",
                "Wechsle rhythmisch das Bein und alterniere.",
            ]),
        "ロシアンツイスト": Entry(
            name: "Russian Twist",
            detail: "Setze dich, lehne dich zurück und drehe von Seite zu Seite. Trifft die schrägen Bauchmuskeln. Die Füße anzuheben erhöht die Schwierigkeit. Runde den Rücken nicht zu sehr.",
            steps: [
                "Setze dich mit gebeugten Knien und lehne den Oberkörper zurück.",
                "Halte die Brust hoch, ohne den Rücken zu sehr zu runden.",
                "Falte die Hände und drehe den Oberkörper von Seite zu Seite.",
                "Hebe die Füße, um die Schwierigkeit zu erhöhen, wenn möglich.",
            ]),
        "デッドバグ": Entry(
            name: "Dead Bug",
            detail: "Rückenlage mit angehobenen Armen und Beinen, strecke langsam gegenüberliegende Gliedmaßen. Eine rückenschonende Rumpfübung. Halte den unteren Rücken auf den Boden gedrückt.",
            steps: [
                "Lege dich auf den Rücken, Arme zur Decke und Knie im 90-Grad-Winkel.",
                "Drücke den unteren Rücken in den Boden.",
                "Strecke langsam einen Arm und das gegenüberliegende Bein.",
                "Kehre zurück und mach die andere Seite.",
            ]),
        "ハンギングレッグレイズ": Entry(
            name: "Hängendes Beinheben",
            detail: "Hänge an einer Stange und hebe die Beine. Eine fortgeschrittene Übung, die die untere Bauchmuskulatur hämmert. Minimiere das Schwingen; gebeugte Knie machen es leichter.",
            steps: [
                "Hänge an einer Stange und stabilisiere den Körper.",
                "Minimiere das Schwingen und hebe die Beine mit der unteren Bauchmuskulatur.",
                "Hebe, bis die Beine parallel oder darüber sind (Knie beugen macht es leichter).",
                "Senke langsam ab und wiederhole.",
            ]),
        "ケーブルクランチ": Entry(
            name: "Kabel-Crunch",
            detail: "Knie mit einem Kabel und rolle den Oberkörper nach unten. Erlaubt schweres Belasten der Bauchmuskeln. Ziehe nicht mit den Armen — runde den Rücken und crunche mit den Bauchmuskeln.",
            steps: [
                "Greife ein hohes Kabel und knie dich hin.",
                "Halte das Seil neben dem Kopf.",
                "Ohne mit den Armen zu ziehen, runde und rolle den Oberkörper nach unten.",
                "Kontrahiere die Bauchmuskeln, dann kehre langsam zurück.",
            ]),
        "ホローホールド": Entry(
            name: "Hollow Hold",
            detail: "Rückenlage, strecke Arme und Beine und halte eine Bananenform mit dem unteren Rücken am Boden. Eine isometrische Übung für den gesamten Rumpf. Senke die Gliedmaßen, wenn der Rücken abhebt.",
            steps: [
                "Lege dich auf den Rücken, Arme über dem Kopf und Beine gestreckt.",
                "Drücke den unteren Rücken nieder und hebe Arme und Beine leicht.",
                "Halte den Körper in einer bananenähnlichen Form.",
                "Senke Arme und Beine zum Anpassen, wenn der Rücken abhebt.",
            ]),
    ]
}
