//
//  ExerciseTranslations+Entries_fr.swift
//  MuscleSlot
//
//  76種目のフランス語訳本体。キーは Exercise.name（日本語）。
//  種目名は各言語のジムで通用する自然な呼称を採用（直訳しない）。
//

import Foundation

extension ExerciseTranslations {

    static let entries_fr: [String: Entry] = [
        "腕立て伏せ": Entry(
            name: "Pompes",
            detail: "L'exercice classique de la poitrine. Placez les mains un peu plus larges que les épaules, gardez le corps aligné et descendez la poitrine jusqu'à frôler le sol. Gardez les coudes à environ 45 degrés.",
            steps: [
                "Au sol, placez les mains un peu plus larges que les épaules.",
                "Gardez tête, hanches et talons alignés et gainez le corps comme une planche.",
                "Descendez jusqu'à frôler le sol, coudes ouverts à environ 45 degrés.",
                "Repoussez le sol avec la poitrine et tendez les bras pour revenir.",
            ]),
        "ワイド腕立て": Entry(
            name: "Pompes larges",
            detail: "Placez les mains à environ 1,5 fois la largeur des épaules pour cibler davantage l'extérieur et le haut de la poitrine. Ne descendez pas trop pour protéger les épaules.",
            steps: [
                "Placez les mains à environ 1,5 fois la largeur des épaules.",
                "Gardez le corps aligné et la poitrine haute.",
                "Descendez en sentant l'étirement de la poitrine externe.",
                "Évitez de descendre au point de forcer les épaules, puis remontez.",
            ]),
        "ナロー腕立て": Entry(
            name: "Pompes serrées",
            detail: "Placez les mains plus serrées que les épaules pour cibler l'intérieur de la poitrine et les triceps. Gardez les coudes près du corps et ramenez-les en arrière en descendant.",
            steps: [
                "Placez les mains plus serrées que les épaules, sous la poitrine.",
                "Gardez les coudes près du corps et le corps aligné.",
                "Descendez en ramenant les coudes en arrière.",
                "Remontez en visant l'intérieur de la poitrine et les triceps.",
            ]),
        "デクライン腕立て": Entry(
            name: "Pompes déclinées",
            detail: "Surélevez les pieds sur une chaise pour que la tête soit plus basse. La charge se déplace vers le haut de la poitrine, plus difficile qu'une pompe classique.",
            steps: [
                "Placez les pieds sur une chaise pour que la tête soit plus basse que les hanches.",
                "Gardez les mains à largeur d'épaules et le corps aligné.",
                "Descendez en ciblant le haut de la poitrine.",
                "Remontez par le haut de la poitrine pour revenir.",
            ]),
        "膝つき腕立て": Entry(
            name: "Pompes sur genoux",
            detail: "Version débutant avec les genoux au sol pour réduire la charge. Gardez une ligne droite des genoux à la tête et descendez lentement avec une bonne technique.",
            steps: [
                "Posez les genoux au sol et les mains un peu plus larges que les épaules.",
                "Gardez une ligne droite des genoux à la tête.",
                "Descendez lentement la poitrine vers le sol.",
                "Remontez sans casser la posture.",
            ]),
        "ベンチプレス": Entry(
            name: "Développé couché",
            detail: "Le roi des exercices de poitrine pour soulever lourd. Rétractez les omoplates, créez une légère cambrure, descendez la barre au niveau des mamelons et poussez.",
            steps: [
                "Allongez-vous sur le banc, rétractez les omoplates et créez une légère cambrure.",
                "Saisissez la barre un peu plus large que les épaules.",
                "Descendez la barre lentement au niveau des mamelons.",
                "Poussez avec la poitrine et verrouillez les coudes.",
            ]),
        "インクラインベンチプレス": Entry(
            name: "Développé incliné à la barre",
            detail: "Réglez le banc à 30–45 degrés pour développer le haut de la poitrine. Descendez la barre juste sous la clavicule. Un angle trop prononcé en fait un exercice d'épaule.",
            steps: [
                "Réglez le banc à 30–45 degrés et allongez-vous.",
                "Rétractez les omoplates et saisissez la barre plus large que les épaules.",
                "Descendez la barre juste sous la clavicule.",
                "Poussez par le haut de la poitrine et revenez.",
            ]),
        "ダンベルプレス": Entry(
            name: "Développé couché aux haltères",
            detail: "Offre plus d'amplitude que la barre, permettant d'étirer et de contracter pleinement la poitrine. Sentez l'étirement en bas et rapprochez les haltères en haut.",
            steps: [
                "Allongez-vous sur le banc avec un haltère dans chaque main.",
                "Rétractez les omoplates et tenez les haltères au-dessus de la poitrine.",
                "Descendez jusqu'à sentir l'étirement de la poitrine.",
                "Poussez et rapprochez les haltères pour contracter.",
            ]),
        "インクラインダンベルプレス": Entry(
            name: "Développé incliné aux haltères",
            detail: "Cible le haut de la poitrine sur banc incliné. Descendez profondément pour étirer le haut de la poitrine et rapprochez vers l'intérieur en haut.",
            steps: [
                "Asseyez-vous sur un banc incliné avec un haltère dans chaque main.",
                "Placez-vous au-dessus du haut de la poitrine et rétractez les omoplates.",
                "Descendez profondément pour étirer le haut de la poitrine.",
                "Poussez et rapprochez les haltères vers l'intérieur en haut.",
            ]),
        "ダンベルフライ": Entry(
            name: "Écarté aux haltères",
            detail: "Un exercice d'isolation où vous ouvrez et fermez les bras en arc, coudes légèrement fléchis. Ouvrez grand pour étirer la poitrine, puis fermez comme pour enlacer.",
            steps: [
                "Allongez-vous et tenez les haltères au-dessus de la poitrine.",
                "Gardez une légère flexion fixe aux coudes.",
                "Ouvrez les bras sur les côtés en arc, en étirant la poitrine.",
                "Refermez les bras comme pour enlacer, en contractant la poitrine.",
            ]),
        "チェストプレス（マシン）": Entry(
            name: "Développé poitrine à la machine",
            detail: "Un exercice guidé permettant d'aller à l'échec en sécurité. Réglez les poignées à hauteur de poitrine et poussez à fond pour contracter. Idéal pour débuter.",
            steps: [
                "Réglez la hauteur du siège pour que les poignées soient à hauteur de poitrine.",
                "Plaquez le dos au dossier et sortez la poitrine.",
                "Poussez les poignées à fond vers l'avant.",
                "Sentez la contraction de la poitrine, puis revenez lentement.",
            ]),
        "ケーブルクロスオーバー": Entry(
            name: "Écarté à la poulie",
            detail: "Les poulies maintiennent une tension constante. Ciblez le milieu et le bas de la poitrine en croisant les mains devant le corps pour une forte contraction.",
            steps: [
                "Réglez les poulies en haut et saisissez une poignée dans chaque main.",
                "Avancez un pied et penchez-vous légèrement en avant.",
                "Amenez les mains vers le bas et croisez-les devant le corps en arc.",
                "Contractez fort le centre de la poitrine, puis revenez lentement.",
            ]),
        "バンドチェストプレス": Entry(
            name: "Développé poitrine à l'élastique",
            detail: "Passez un élastique derrière le dos et poussez vers l'avant. La résistance augmente à l'étirement, alors poussez jusqu'à l'extension complète.",
            steps: [
                "Passez l'élastique derrière le dos et saisissez les deux extrémités.",
                "Placez-vous à hauteur de poitrine, pieds décalés pour la stabilité.",
                "Poussez droit devant.",
                "Gardez la tension jusqu'à l'extension, puis revenez lentement.",
            ]),
        "ディップス": Entry(
            name: "Dips",
            detail: "Descendez et remontez sur des barres parallèles. Penchez-vous en avant pour le bas de la poitrine ou restez droit pour les triceps. Limitez l'amplitude si les épaules font mal.",
            steps: [
                "Saisissez les barres parallèles et soutenez-vous bras tendus.",
                "Penchez le torse en avant pour cibler le bas de la poitrine.",
                "Fléchissez les coudes et descendez le corps.",
                "Remontez pour revenir. Limitez l'amplitude si les épaules font mal.",
            ]),
        "懸垂": Entry(
            name: "Tractions",
            detail: "Le meilleur exercice au poids du corps pour élargir le dos. Prise pronation un peu plus large que les épaules, amenez la poitrine à la barre. Tirez avec le dos, sans élan.",
            steps: [
                "Saisissez la barre en pronation, un peu plus large que les épaules.",
                "Abaissez les épaules et sortez la poitrine.",
                "Sans élan, tirez la poitrine vers la barre.",
                "Sentez la contraction du dos, puis descendez lentement.",
            ]),
        "チンニング（逆手懸垂）": Entry(
            name: "Tractions supination",
            detail: "Une traction en prise supination (paumes vers vous). Elle sollicite fortement les biceps en plus du dos et est plus facile à tirer que la version pronation.",
            steps: [
                "Saisissez la barre en supination (paumes vers vous) à largeur d'épaules.",
                "Sortez la poitrine et abaissez les épaules.",
                "Amenez la poitrine à la barre avec les bras et le dos.",
                "Descendez lentement et répétez.",
            ]),
        "インバーテッドロウ": Entry(
            name: "Rowing inversé",
            detail: "Passez sous une barre basse ou une table et tirez le corps en angle. Gardez le corps aligné, rétractez les omoplates et amenez la poitrine vers le haut.",
            steps: [
                "Allongez-vous sous une barre basse ou une table et saisissez-la.",
                "Gardez le corps aligné avec les talons comme pivot.",
                "Rétractez les omoplates et amenez la poitrine à la barre.",
                "Descendez lentement et répétez.",
            ]),
        "バックエクステンション": Entry(
            name: "Extension du dos",
            detail: "Soulevez le torse depuis une position face contre sol pour entraîner les erecteurs du rachis (bas du dos). N'hyperextendez pas ; arrêtez-vous où vous sentez la contraction.",
            steps: [
                "Allongez-vous face contre sol, mains près de la tête ou sur la poitrine.",
                "Utilisez le dos pour soulever le torse lentement.",
                "N'hyperextendez pas ; arrêtez-vous où vous sentez la contraction.",
                "Descendez lentement et répétez.",
            ]),
        "スーパーマン": Entry(
            name: "Superman",
            detail: "Allongé face contre sol, levez bras et jambes en même temps et tenez quelques secondes. Contracte tout le dos et le bas du dos. Continuez à respirer.",
            steps: [
                "Allongez-vous face contre sol, bras tendus devant.",
                "Levez en même temps les deux bras et les deux jambes.",
                "Tenez quelques secondes en l'air en contractant dos et fessiers.",
                "Descendez lentement sans bloquer la respiration.",
            ]),
        "リバーススノーエンジェル": Entry(
            name: "Ange de neige inversé",
            detail: "Face contre sol, soulevez légèrement la poitrine et balayez les bras de la tête jusqu'aux hanches. Cible le bas des trapèzes et les muscles autour des omoplates pour améliorer la posture.",
            steps: [
                "Allongez-vous face contre sol et soulevez légèrement la poitrine.",
                "Tendez les bras au-dessus de la tête.",
                "Paumes vers le bas, balayez les bras en arc jusqu'aux côtés.",
                "Contractez les omoplates, puis revenez lentement au-dessus de la tête.",
            ]),
        "デッドリフト": Entry(
            name: "Soulevé de terre",
            detail: "Un soulevé lourd de tout le corps. Gardez le dos plat, tirez la barre le long des tibias et redressez-vous en tendant les hanches. Ne jamais arrondir le bas du dos.",
            steps: [
                "Tenez-vous à largeur de hanches, tibias près de la barre.",
                "Gardez le dos plat et saisissez la barre.",
                "Tirez la barre en la gardant près des tibias.",
                "Tendez les hanches pour vous redresser. N'arrondissez pas le dos.",
            ]),
        "ベントオーバーロウ": Entry(
            name: "Rowing barre buste penché",
            detail: "Penchez-vous en avant et tirez la barre au nombril pour épaissir le dos. Minimisez l'élan et contractez bien les omoplates.",
            steps: [
                "Saisissez la barre, fléchissez un peu les genoux et penchez-vous.",
                "Gardez le dos plat et la poitrine haute.",
                "Tirez la barre au nombril sans élan.",
                "Contractez les omoplates, puis descendez lentement.",
            ]),
        "ダンベルロウ": Entry(
            name: "Rowing haltère à un bras",
            detail: "Appuyez une main sur un banc et tirez l'haltère à la hanche. Permet de travailler le grand dorsal sur une grande amplitude et de corriger les déséquilibres.",
            steps: [
                "Posez une main et un genou sur un banc, un haltère dans l'autre main.",
                "Gardez le dos plat et la poitrine haute.",
                "Amenez le coude en arrière et tirez l'haltère à la hanche.",
                "Sentez la contraction du dorsal, puis descendez. Faites les deux côtés.",
            ]),
        "ラットプルダウン": Entry(
            name: "Tirage vertical",
            detail: "Un exercice guidé qui élargit le dos même si les tractions sont difficiles. Sortez la poitrine, tirez la barre à la clavicule et tirez avec les dorsaux en abaissant les omoplates.",
            steps: [
                "Saisissez la barre plus large que les épaules et bloquez les cuisses sous le coussin.",
                "Sortez la poitrine et penchez-vous un peu en arrière.",
                "Tirez la barre à la clavicule en abaissant les omoplates.",
                "Gardez les dorsaux engagés, puis revenez lentement.",
            ]),
        "シーテッドロウ（マシン）": Entry(
            name: "Rowing assis à la poulie",
            detail: "Un rowing assis qui épaissit le milieu du dos. Sortez la poitrine, amenez les coudes en arrière et contractez les omoplates.",
            steps: [
                "Asseyez-vous et saisissez la poignée.",
                "Sortez la poitrine et gardez le dos plat.",
                "Amenez les coudes en arrière et contractez les omoplates.",
                "Contractez le milieu du dos, puis revenez lentement.",
            ]),
        "バンドロウ": Entry(
            name: "Rowing à l'élastique",
            detail: "Ancrez un élastique aux pieds ou à un poteau et tirez vers vous. La résistance augmente en tirant, alors contractez bien les omoplates à la fin.",
            steps: [
                "Ancrez l'élastique sous les pieds ou à un poteau et saisissez les deux extrémités.",
                "Sortez la poitrine et gardez le dos plat.",
                "Amenez les coudes en arrière et tirez l'élastique vers vous.",
                "Contractez bien les omoplates, puis revenez lentement.",
            ]),
        "シュラッグ": Entry(
            name: "Haussements d'épaules",
            detail: "Tenez des haltères et haussez les épaules pour entraîner le haut des trapèzes. Levez seulement les épaules droit vers le haut sans bouger le cou. Tenez une seconde en haut.",
            steps: [
                "Tenez un haltère dans chaque main, bras le long du corps.",
                "Sans bouger le cou, haussez les épaules droit vers le haut.",
                "Tenez une seconde en haut pour contracter les trapèzes.",
                "Abaissez les épaules lentement et répétez.",
            ]),
        "スクワット（自重）": Entry(
            name: "Squat au poids du corps",
            detail: "La base de l'entraînement des jambes. Écartement épaules, asseyez-vous en arrière comme sur une chaise jusqu'à ce que les cuisses soient parallèles au sol. Ne laissez pas les genoux dépasser trop les orteils.",
            steps: [
                "Tenez-vous à largeur d'épaules, orteils légèrement ouverts.",
                "Sortez la poitrine et asseyez les hanches en arrière comme sur une chaise.",
                "Descendez jusqu'à ce que les cuisses soient parallèles au sol.",
                "Poussez sur les talons pour vous redresser.",
            ]),
        "ランジ": Entry(
            name: "Fentes",
            detail: "Faites un grand pas en avant et descendez le genou arrière jusqu'à frôler le sol. Poussez sur le talon avant pour revenir. Travaille fessiers et cuisses.",
            steps: [
                "Faites un grand pas en avant avec un pied.",
                "Gardez le torse droit et descendez les hanches à la verticale.",
                "Arrêtez quand le genou arrière frôle le sol.",
                "Poussez sur le talon avant pour revenir. Faites les deux côtés.",
            ]),
        "ブルガリアンスクワット": Entry(
            name: "Squat bulgare",
            detail: "Un squat sur une jambe, pied arrière sur une chaise. La charge se concentre sur la jambe avant, brutal même au poids du corps. Sentez l'étirement du fessier en descendant.",
            steps: [
                "Posez le dessus du pied arrière sur une chaise et avancez le pied avant.",
                "Penchez le torse un peu et chargez la jambe avant.",
                "Descendez les hanches en sentant l'étirement du fessier.",
                "Poussez sur la jambe avant pour vous relever. Faites les deux côtés.",
            ]),
        "ヒップリフト": Entry(
            name: "Pont fessier",
            detail: "Allongé sur le dos, genoux fléchis, levez les hanches en ligne droite. Contractez fort les fessiers en haut. Poussez par les hanches sans cambrer le bas du dos.",
            steps: [
                "Allongez-vous sur le dos, genoux fléchis, pieds à largeur de hanches.",
                "Poussez sur les talons et levez les hanches.",
                "Contractez les fessiers en haut, épaules-genoux alignés.",
                "Descendez lentement sans cambrer le bas du dos.",
            ]),
        "カーフレイズ（自重）": Entry(
            name: "Extension des mollets",
            detail: "Montez sur la pointe des pieds pour entraîner les mollets. Levez les talons le plus haut possible, tenez une seconde et descendez lentement. Le faire sur une marche augmente l'amplitude.",
            steps: [
                "Tenez-vous à largeur de hanches (au bord d'une marche pour plus d'amplitude).",
                "Montez sur la pointe des pieds en levant les talons le plus haut possible.",
                "Tenez une seconde en haut pour contracter les mollets.",
                "Descendez les talons lentement.",
            ]),
        "ウォールシット": Entry(
            name: "Chaise contre le mur",
            detail: "Un maintien isométrique assis contre un mur. Tenez avec les cuisses parallèles au sol pour épuiser les quadriceps.",
            steps: [
                "Tenez-vous dos au mur.",
                "Avancez les pieds et glissez le long du mur.",
                "Arrêtez quand les cuisses sont parallèles au sol.",
                "Tenez la position et épuisez les quadriceps.",
            ]),
        "バーベルスクワット": Entry(
            name: "Squat à la barre",
            detail: "Le roi des exercices pour le bas du corps. Placez la barre sur les épaules, sortez la poitrine et descendez profondément. Gardez le dos plat et poussez sur les talons.",
            steps: [
                "Placez la barre sur les trapèzes et tenez-vous à largeur d'épaules.",
                "Sortez la poitrine et descendez en asseyant les hanches en arrière.",
                "Descendez jusqu'à ce que les cuisses soient parallèles ou en dessous.",
                "Poussez sur les talons sans arrondir le dos.",
            ]),
        "ルーマニアンデッドリフト": Entry(
            name: "Soulevé de terre roumain",
            detail: "Avec une légère flexion des genoux, poussez les hanches en arrière et descendez la barre le long des tibias. Vous sentirez un fort étirement des ischios et des fessiers. Gardez le dos plat.",
            steps: [
                "Tenez la barre et placez-vous à largeur de hanches.",
                "Gardez une légère flexion des genoux et poussez les hanches en arrière.",
                "Descendez la barre le long des tibias jusqu'à étirer les ischios.",
                "Contractez les fessiers et tendez les hanches pour vous relever.",
            ]),
        "ダンベルスクワット": Entry(
            name: "Squat aux haltères",
            detail: "Squat en tenant un haltère dans chaque main. Plus facile et plus équilibré que la version barre. Sortez la poitrine et descendez profondément.",
            steps: [
                "Tenez un haltère dans chaque main à largeur d'épaules.",
                "Sortez la poitrine et asseyez les hanches en arrière pour descendre.",
                "Descendez jusqu'à ce que les cuisses soient parallèles au sol.",
                "Poussez sur les talons.",
            ]),
        "レッグプレス": Entry(
            name: "Presse à cuisses",
            detail: "Poussez une plateforme avec les pieds sur la machine. Permet de manier de lourdes charges sans forcer le bas du dos. Ne verrouillez pas les genoux ; descendez jusqu'à approcher les cuisses de la poitrine.",
            steps: [
                "Asseyez-vous et placez les pieds à largeur d'épaules au centre de la plateforme.",
                "Poussez la plateforme et tendez les genoux (sans verrouiller).",
                "Fléchissez les genoux et descendez jusqu'à approcher les cuisses de la poitrine.",
                "Poussez de nouveau sur les talons et répétez.",
            ]),
        "レッグカール": Entry(
            name: "Leg curl",
            detail: "Ramenez les talons vers les fessiers, allongé ou assis, pour cibler les ischios. Contrôlez la descente pour maintenir la tension sur le muscle.",
            steps: [
                "Placez-vous sur la machine, le coussin contre les chevilles.",
                "Ramenez les talons vers les fessiers avec les ischios.",
                "Fléchissez au maximum et tenez une seconde.",
                "Descendez lentement en gardant le muscle sous tension.",
            ]),
        "レッグエクステンション": Entry(
            name: "Leg extension",
            detail: "Un exercice d'isolation assis qui cible les quadriceps en tendant les genoux. Tenez une seconde en extension complète pour contracter.",
            steps: [
                "Asseyez-vous, le coussin contre les chevilles.",
                "Tendez les genoux avec les quadriceps.",
                "Tenez une seconde en extension complète pour contracter.",
                "Descendez lentement et répétez.",
            ]),
        "バンドアブダクション": Entry(
            name: "Abduction de hanche à l'élastique",
            detail: "Passez un élastique autour des genoux ou des chevilles et poussez les jambes vers l'extérieur. Cible le moyen fessier (côté des hanches) pour développer les fessiers et stabiliser le bassin.",
            steps: [
                "Passez un élastique autour des genoux ou des chevilles.",
                "Tenez-vous à largeur de hanches en légère flexion.",
                "Poussez les jambes vers l'extérieur avec les fessiers latéraux.",
                "Revenez lentement en gardant la tension de l'élastique.",
            ]),
        "パイクプッシュアップ": Entry(
            name: "Pompes en pique",
            detail: "Levez haut les hanches en V inversé et descendez la tête vers le sol. Charge les deltoïdes antérieurs. Une excellente porte d'entrée vers les pompes en équilibre.",
            steps: [
                "Depuis une position de pompe, levez haut les hanches en V inversé.",
                "Visez le sol avec la tête et chargez les épaules.",
                "Fléchissez les coudes et descendez le sommet du crâne vers le sol.",
                "Remontez avec les épaules.",
            ]),
        "壁逆立ち": Entry(
            name: "Équilibre contre le mur",
            detail: "Montez en équilibre contre un mur et tenez. Un exercice isométrique qui charge toute l'épaule. Gainez et ne cambrez pas le bas du dos.",
            steps: [
                "Placez les mains près du mur et montez en équilibre.",
                "Repoussez le sol et soutenez-vous avec les épaules.",
                "Gainez et gardez une ligne droite sans cambrer.",
                "Tenez la position.",
            ]),
        "Yレイズ（うつ伏せ）": Entry(
            name: "Élévation en Y à plat ventre",
            detail: "À plat ventre, levez les bras en Y. Cible les deltoïdes postérieurs et le bas des trapèzes pour aider à corriger les épaules enroulées.",
            steps: [
                "À plat ventre, tendez les bras au-dessus de la tête en Y.",
                "Pointez les pouces vers le haut.",
                "Levez les deux bras du sol avec les deltoïdes postérieurs.",
                "Contractez les omoplates une seconde, puis descendez lentement.",
            ]),
        "リバースプランクリーチ": Entry(
            name: "Planche inversée avec extension",
            detail: "Depuis une planche inversée hanches levées, passez un bras sous le corps. Travaille à la fois les deltoïdes postérieurs et le gainage.",
            steps: [
                "Posez les mains au sol et levez les hanches en planche inversée.",
                "Gardez le corps aligné.",
                "Passez un bras sous le corps vers le côté opposé.",
                "Revenez et alternez les côtés.",
            ]),
        "アームサークル": Entry(
            name: "Cercles de bras",
            detail: "Tendez les bras sur les côtés et tracez de petits cercles. Discret mais efficace pour les deltoïdes latéraux, et idéal comme échauffement d'épaule. Ne haussez pas les épaules.",
            steps: [
                "Tendez les deux bras sur les côtés à hauteur d'épaules.",
                "Gardez les épaules basses, loin des oreilles.",
                "Tracez de petits cercles vers l'avant en continu.",
                "Passez aux cercles vers l'arrière à mi-parcours.",
            ]),
        "バーベルショルダープレス": Entry(
            name: "Développé militaire à la barre",
            detail: "Poussez la barre au-dessus de la tête, debout ou assis. Un exercice d'épaule lourd. Gainez, ne cambrez pas trop le bas du dos et poussez droit vers le haut.",
            steps: [
                "Saisissez la barre à hauteur de clavicule, plus large que les épaules.",
                "Gainez et évitez de trop cambrer le bas du dos.",
                "Poussez la barre droit au-dessus de la tête.",
                "Verrouillez les coudes, puis descendez lentement.",
            ]),
        "ダンベルショルダープレス": Entry(
            name: "Développé épaules aux haltères",
            detail: "Poussez les haltères depuis les oreilles vers le haut. Une plus grande amplitude entraîne les deux côtés de façon équilibrée. Arrêtez à hauteur d'épaules à la descente.",
            steps: [
                "Tenez les haltères près des oreilles.",
                "Gainez pour stabiliser la posture.",
                "Poussez droit au-dessus de la tête.",
                "Descendez lentement à hauteur d'épaules.",
            ]),
        "サイドレイズ": Entry(
            name: "Élévations latérales",
            detail: "Un incontournable des deltoïdes latéraux qui élargit l'épaule. Levez les haltères sur les côtés à hauteur d'épaules. Menez un peu avec les auriculaires et évitez l'élan.",
            steps: [
                "Tenez un haltère de chaque côté, coudes légèrement fléchis.",
                "Levez-les sur les côtés sans élan.",
                "Montez à hauteur d'épaules en menant un peu avec les auriculaires.",
                "Descendez lentement et répétez.",
            ]),
        "フロントレイズ": Entry(
            name: "Élévations frontales",
            detail: "Levez les haltères devant vous à hauteur d'épaules pour entraîner les deltoïdes antérieurs. Évitez l'élan et ne montez pas au-dessus des épaules.",
            steps: [
                "Tenez les haltères devant les cuisses.",
                "Gardez une légère flexion fixe aux coudes.",
                "Levez-les devant vous à hauteur d'épaules sans élan.",
                "Descendez lentement. Ne montez pas trop haut.",
            ]),
        "リアレイズ": Entry(
            name: "Oiseau (deltoïdes postérieurs)",
            detail: "Penchez-vous en avant et levez les haltères sur les côtés pour entraîner les deltoïdes postérieurs. Cette zone rebelle répond à des poids légers et de nombreuses répétitions.",
            steps: [
                "Tenez les haltères et penchez le torse en avant.",
                "Gardez une légère flexion aux coudes et le dos plat.",
                "Levez les haltères sur les côtés avec les deltoïdes postérieurs.",
                "Contractez les omoplates une seconde, puis descendez lentement.",
            ]),
        "ショルダープレス（マシン）": Entry(
            name: "Développé épaules à la machine",
            detail: "Une machine à trajectoire stable qui permet de pousser les épaules en sécurité. Réglez les poignées à hauteur d'épaules ; poussez jusqu'à l'extension sans descendre trop bas.",
            steps: [
                "Réglez le siège pour que les poignées soient à hauteur d'épaules.",
                "Plaquez le dos au dossier.",
                "Poussez les poignées à fond au-dessus de la tête.",
                "Descendez à hauteur d'épaules ; ne descendez pas trop.",
            ]),
        "バンドサイドレイズ": Entry(
            name: "Élévations latérales à l'élastique",
            detail: "Tenez-vous sur un élastique et levez-le sur les côtés. La résistance augmente en montant, gardant une tension constante sur les deltoïdes latéraux. Sans élan.",
            steps: [
                "Tenez-vous au milieu de l'élastique et saisissez les deux extrémités.",
                "Placez-vous avec une légère flexion aux coudes.",
                "Levez sur les côtés à hauteur d'épaules sans élan.",
                "Descendez lentement en gardant la tension de l'élastique.",
            ]),
        "ナロープッシュアップ": Entry(
            name: "Pompes prise serrée",
            detail: "Une pompe avec les mains serrées pour cibler les triceps. Rentrez les coudes et ramenez-les en arrière en descendant. Concentrez-vous sur les bras plus que la poitrine.",
            steps: [
                "Placez les mains plus serrées que les épaules, sous la poitrine.",
                "Rentrez les coudes et gardez le corps aligné.",
                "Descendez en ramenant les coudes en arrière.",
                "Remontez avec les triceps.",
            ]),
        "ベンチディップス": Entry(
            name: "Dips sur banc",
            detail: "Appuyez les mains sur une chaise et descendez et remontez pour entraîner les triceps. Fléchissez les coudes en arrière, abaissez les hanches et poussez. Gardez les épaules basses.",
            steps: [
                "Posez les mains au bord d'une chaise et avancez les pieds.",
                "Abaissez les épaules et décollez les hanches de la chaise.",
                "Fléchissez les coudes en arrière et abaissez les hanches.",
                "Poussez avec les triceps pour revenir.",
            ]),
        "ダイヤモンドプッシュアップ": Entry(
            name: "Pompes diamant",
            detail: "Formez un losange avec les pouces et les index et descendez la poitrine dessus. Sollicite très fort les triceps. Gardez les coudes rentrés en permanence.",
            steps: [
                "Formez un losange avec les pouces et les index sous la poitrine.",
                "Gardez le corps droit et les coudes rentrés.",
                "Descendez lentement la poitrine sur le losange.",
                "Remontez avec les triceps.",
            ]),
        "チンニング（腕狙い）": Entry(
            name: "Tractions supination serrées",
            detail: "Traction supination en prise serrée pour cibler les biceps. Évitez le balancement et concentrez-vous sur la flexion des bras.",
            steps: [
                "Saisissez la barre en supination, plus serré que les épaules.",
                "Suspendez-vous droit sans balancer.",
                "Tirez-vous en fléchissant les bras.",
                "Descendez lentement en ciblant les biceps.",
            ]),
        "リバースプランク": Entry(
            name: "Planche inversée",
            detail: "Posez les mains au sol, levez les hanches et tenez le corps aligné. Un exercice isométrique pour triceps et gainage. Gardez les mains sous les épaules et ne haussez pas.",
            steps: [
                "Asseyez-vous et posez les mains au sol derrière, sous les épaules.",
                "Levez les hanches en ligne droite.",
                "Ouvrez la poitrine et ne haussez pas les épaules.",
                "Tenez la position.",
            ]),
        "逆手テーブルロウ": Entry(
            name: "Rowing supination sous la table",
            detail: "Passez sous une table et tirez-vous en prise supination. Travaille les biceps en plus du dos. Concentrez-vous sur la flexion des coudes.",
            steps: [
                "Allongez-vous sur le dos sous une table solide.",
                "Saisissez le bord en supination et gardez le corps aligné.",
                "Amenez la poitrine au bord en fléchissant les coudes.",
                "Descendez lentement en ciblant les biceps.",
            ]),
        "バーベルカール": Entry(
            name: "Curl à la barre",
            detail: "L'exercice fondamental des biceps. Bloquez les coudes le long du corps et montez la barre sans élan. Contrôlez aussi la descente.",
            steps: [
                "Debout, tenez la barre en supination à largeur d'épaules.",
                "Bloquez les coudes le long du corps.",
                "Montez la barre sans élan.",
                "Contractez les biceps, puis descendez lentement.",
            ]),
        "ダンベルカール": Entry(
            name: "Curl aux haltères",
            detail: "Montez les haltères et tournez les poignets vers l'extérieur en haut pour une contraction supplémentaire des biceps. Coudes fixes ; faites les deux bras ensemble ou en alternance.",
            steps: [
                "Tenez un haltère de chaque côté.",
                "Gardez les coudes fixes et montez.",
                "Tournez les poignets vers l'extérieur en haut pour contracter.",
                "Descendez lentement. Alternez ou faites ensemble.",
            ]),
        "ハンマーカール": Entry(
            name: "Curl marteau",
            detail: "Curl en prise neutre (paumes face à face). Entraîne l'extérieur des biceps et les avant-bras pour épaissir le bras. Gardez les coudes fixes.",
            steps: [
                "Tenez les haltères en prise neutre (paumes face à face).",
                "Bloquez les coudes le long du corps.",
                "Montez en gardant la prise neutre.",
                "Descendez lentement et répétez.",
            ]),
        "トライセプスエクステンション": Entry(
            name: "Extension triceps au-dessus de la tête",
            detail: "Descendez un haltère derrière la tête et tendez les coudes pour entraîner les triceps. Gardez les coudes en place et les bras verticaux.",
            steps: [
                "Tenez un haltère à deux mains et levez-le au-dessus de la tête.",
                "Gardez les bras verticaux et fléchissez seulement les coudes derrière la tête.",
                "Ne laissez pas les coudes s'écarter.",
                "Tendez les coudes avec les triceps pour revenir.",
            ]),
        "ケーブルプッシュダウン": Entry(
            name: "Extension triceps à la poulie",
            detail: "Poussez une poulie droit vers le bas pour contracter les triceps. Bloquez les coudes le long du corps et tenez une seconde en extension complète.",
            steps: [
                "Saisissez une barre de poulie haute.",
                "Bloquez les coudes le long du corps et penchez-vous un peu.",
                "Poussez la barre droit vers le bas en ne bougeant que les avant-bras.",
                "Tenez une seconde en extension, puis revenez lentement.",
            ]),
        "バンドカール": Entry(
            name: "Curl à l'élastique",
            detail: "Curl en vous tenant sur un élastique. La résistance augmente en montant, alors continuez à tirer et contractez à fond les biceps en haut. Coudes fixes.",
            steps: [
                "Tenez-vous au milieu de l'élastique et saisissez les deux extrémités.",
                "Bloquez les coudes le long du corps.",
                "Montez l'élastique en curl (la résistance augmente en montant).",
                "Contractez les biceps en haut, puis descendez lentement.",
            ]),
        "リストカール": Entry(
            name: "Curl des poignets",
            detail: "Posez les avant-bras sur les cuisses ou un banc et fléchissez les haltères avec les seuls poignets. Entraîne les avant-bras et la prise. Utilisez toute l'amplitude.",
            steps: [
                "Posez les avant-bras sur les cuisses ou un banc, poignets au-delà du bord.",
                "Tenez les haltères paumes vers le haut.",
                "Fléchissez les haltères avec les seuls poignets.",
                "Descendez lentement sur toute l'amplitude.",
            ]),
        "プランク": Entry(
            name: "Planche",
            detail: "Le gainage de base : appuyez-vous sur les coudes et la pointe des pieds en ligne droite de la tête aux talons. Gainez les abdos, gardez les hanches à niveau et continuez à respirer.",
            steps: [
                "Placez les coudes sous les épaules et posez-vous sur la pointe des pieds.",
                "Gardez une ligne droite de la tête aux talons.",
                "Gainez les abdos — ne laissez pas les hanches s'affaisser ou monter.",
                "Tenez la position en continuant à respirer.",
            ]),
        "サイドプランク": Entry(
            name: "Planche latérale",
            detail: "Appuyez-vous sur un coude et le côté d'un pied. Cible les obliques. Gardez le corps aligné pour que les hanches ne tombent pas. Faites les deux côtés.",
            steps: [
                "Allongez-vous sur le côté, coude sous l'épaule.",
                "Empilez les pieds et soutenez-vous sur le côté.",
                "Levez les hanches et gardez le corps aligné.",
                "Tenez la position. Faites les deux côtés.",
            ]),
        "クランチ": Entry(
            name: "Crunch",
            detail: "Allongé sur le dos, genoux fléchis, enroulez le torse juste jusqu'à décoller les omoplates. Cible le haut des abdos. Enroulez avec les abdos, pas le cou.",
            steps: [
                "Allongez-vous sur le dos, genoux fléchis, mains près de la tête ou sur la poitrine.",
                "Enroulez le torse en contractant les abdos.",
                "Montez juste jusqu'à décoller les omoplates du sol.",
                "Ne tirez pas sur le cou ; descendez lentement.",
            ]),
        "レッグレイズ": Entry(
            name: "Relevé de jambes au sol",
            detail: "Allongé sur le dos, levez les jambes jointes et descendez-les lentement. Cible le bas des abdos. Appuyez les mains au sol pour que le bas du dos ne se cambre pas.",
            steps: [
                "Allongez-vous sur le dos, mains le long du corps ou sous les hanches.",
                "Levez les jambes jointes, droit vers le haut.",
                "Appuyez le bas du dos au sol pour qu'il ne se cambre pas.",
                "Descendez lentement en gainant le bas des abdos.",
            ]),
        "バイシクルクランチ": Entry(
            name: "Crunch bicyclette",
            detail: "Amenez le coude au genou opposé comme si vous pédaliez. Sollicite abdos et obliques ensemble. Utilisez la rotation et ne précipitez pas avec l'élan.",
            steps: [
                "Allongez-vous, mains près de la tête et jambes levées.",
                "Amenez un genou à la poitrine et le coude opposé vers lui.",
                "Tournez le torse pour rapprocher coude et genou.",
                "Alternez les côtés comme si vous pédaliez.",
            ]),
        "マウンテンクライマー": Entry(
            name: "Grimpeur",
            detail: "En position de pompe, ramenez rapidement les genoux à la poitrine en alternance. Travaille le gainage et le cardio à la fois. Gardez le corps aligné sans lever les hanches.",
            steps: [
                "Mettez-vous en position de pompe, mains sous les épaules.",
                "Gardez le corps aligné (ne levez pas les hanches).",
                "Ramenez rapidement un genou vers la poitrine.",
                "Changez de jambe en rythme et alternez.",
            ]),
        "ロシアンツイスト": Entry(
            name: "Russian twist",
            detail: "Assis, penchez-vous en arrière et tournez d'un côté à l'autre. Cible les obliques. Lever les pieds augmente la difficulté. N'arrondissez pas trop le dos.",
            steps: [
                "Asseyez-vous, genoux fléchis, et penchez le torse en arrière.",
                "Gardez la poitrine haute sans trop arrondir le dos.",
                "Joignez les mains et tournez le torse d'un côté à l'autre.",
                "Levez les pieds pour augmenter la difficulté si possible.",
            ]),
        "デッドバグ": Entry(
            name: "Dead bug",
            detail: "Allongé sur le dos, bras et jambes levés, tendez lentement les membres opposés. Un exercice de gainage doux pour le dos. Gardez le bas du dos plaqué au sol.",
            steps: [
                "Allongez-vous sur le dos, bras vers le plafond et genoux à 90 degrés.",
                "Plaquez le bas du dos au sol.",
                "Tendez lentement un bras et la jambe opposée.",
                "Revenez, puis faites l'autre côté.",
            ]),
        "ハンギングレッグレイズ": Entry(
            name: "Relevé de jambes suspendu",
            detail: "Suspendez-vous à une barre et levez les jambes. Un exercice avancé qui martèle le bas des abdos. Minimisez le balancement ; fléchir les genoux facilite l'exercice.",
            steps: [
                "Suspendez-vous à une barre et stabilisez le corps.",
                "Minimisez le balancement et levez les jambes avec le bas des abdos.",
                "Montez jusqu'à ce que les jambes soient parallèles ou au-dessus (fléchissez les genoux pour faciliter).",
                "Descendez lentement et répétez.",
            ]),
        "ケーブルクランチ": Entry(
            name: "Crunch à la poulie",
            detail: "À genoux en tenant une poulie, enroulez le torse vers le bas. Permet de charger fortement les abdos. Ne tirez pas avec les bras — arrondissez le dos et enroulez avec les abdos.",
            steps: [
                "Saisissez une poulie haute et agenouillez-vous.",
                "Tenez la corde près de la tête.",
                "Sans tirer avec les bras, arrondissez et enroulez le torse vers le bas.",
                "Contractez les abdos, puis revenez lentement.",
            ]),
        "ホローホールド": Entry(
            name: "Hollow hold",
            detail: "Allongé sur le dos, tendez bras et jambes et tenez une forme de banane, bas du dos plaqué au sol. Un exercice isométrique pour tout le gainage. Baissez les membres si le dos décolle.",
            steps: [
                "Allongez-vous sur le dos, bras au-dessus de la tête et jambes tendues.",
                "Plaquez le bas du dos et levez légèrement bras et jambes.",
                "Tenez le corps en forme de banane.",
                "Baissez bras et jambes pour ajuster si le dos décolle.",
            ]),
    ]
}
