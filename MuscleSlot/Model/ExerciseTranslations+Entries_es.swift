//
//  ExerciseTranslations+Entries_es.swift
//  MuscleSlot
//
//  76種目のスペイン語訳本体。キーは Exercise.name（日本語）。
//  種目名は各言語のジムで通用する自然な呼称を採用（直訳しない）。
//

import Foundation

extension ExerciseTranslations {

    static let entries_es: [String: Entry] = [
        "腕立て伏せ": Entry(
            name: "Flexiones",
            detail: "El ejercicio clásico de pecho. Coloca las manos algo más anchas que los hombros, mantén el cuerpo en línea recta y baja el pecho hasta casi tocar el suelo. Mantén los codos a unos 45 grados.",
            steps: [
                "Colócate en el suelo con las manos algo más anchas que los hombros.",
                "Mantén cabeza, caderas y talones en línea recta y tensa el cuerpo como una plancha.",
                "Baja el cuerpo hasta que el pecho casi toque el suelo, con los codos a unos 45 grados.",
                "Empuja el suelo con el pecho y estira los brazos para volver al inicio.",
            ]),
        "ワイド腕立て": Entry(
            name: "Flexiones abiertas",
            detail: "Coloca las manos a 1,5 veces el ancho de los hombros para trabajar más el pecho externo y superior. No bajes demasiado para proteger los hombros.",
            steps: [
                "Coloca las manos en el suelo a 1,5 veces el ancho de los hombros.",
                "Mantén el cuerpo en línea recta y el pecho alto.",
                "Baja el cuerpo sintiendo el estiramiento del pecho externo.",
                "Evita bajar tanto que fuerces los hombros y empuja de nuevo hacia arriba.",
            ]),
        "ナロー腕立て": Entry(
            name: "Flexiones cerradas",
            detail: "Coloca las manos más juntas que los hombros para trabajar el pecho interno y el tríceps. Mantén los codos pegados y llévalos hacia atrás al bajar.",
            steps: [
                "Coloca las manos más juntas que los hombros, bajo el pecho.",
                "Mantén los codos pegados y el cuerpo en línea recta.",
                "Baja el cuerpo llevando los codos hacia atrás.",
                "Empuja hacia arriba centrándote en el pecho interno y el tríceps.",
            ]),
        "デクライン腕立て": Entry(
            name: "Flexiones declinadas",
            detail: "Eleva los pies en una silla para que la cabeza quede más baja. Esto traslada la carga al pecho superior y lo hace más difícil que una flexión normal.",
            steps: [
                "Coloca los pies en una silla o cajón para que la cabeza quede más baja que las caderas.",
                "Mantén las manos al ancho de los hombros y el cuerpo en línea recta.",
                "Baja el cuerpo centrándote en el pecho superior.",
                "Empuja hacia arriba con el pecho superior para volver.",
            ]),
        "膝つき腕立て": Entry(
            name: "Flexiones de rodillas",
            detail: "Versión para principiantes con las rodillas en el suelo para reducir la carga. Mantén una línea recta de rodillas a cabeza y baja despacio con buena técnica.",
            steps: [
                "Apoya las rodillas en el suelo y las manos algo más anchas que los hombros.",
                "Mantén una línea recta de las rodillas a la cabeza.",
                "Baja el pecho hacia el suelo despacio.",
                "Empuja hacia arriba sin perder la forma.",
            ]),
        "ベンチプレス": Entry(
            name: "Press de banca",
            detail: "El rey de los ejercicios de pecho para levantar pesado. Retrae los omóplatos, haz un ligero arco, baja la barra al nivel de los pezones y empuja hacia arriba.",
            steps: [
                "Túmbate en el banco, retrae los omóplatos y haz un ligero arco.",
                "Agarra la barra algo más ancha que los hombros.",
                "Baja la barra despacio al nivel de los pezones.",
                "Empuja con el pecho y bloquea los codos.",
            ]),
        "インクラインベンチプレス": Entry(
            name: "Press inclinado con barra",
            detail: "Coloca el banco a 30–45 grados para desarrollar el pecho superior. Baja la barra justo debajo de la clavícula. Un ángulo muy pronunciado lo convierte en ejercicio de hombro.",
            steps: [
                "Coloca el banco a 30–45 grados y túmbate.",
                "Retrae los omóplatos y agarra la barra más ancha que los hombros.",
                "Baja la barra justo debajo de la clavícula.",
                "Empuja con el pecho superior y vuelve.",
            ]),
        "ダンベルプレス": Entry(
            name: "Press de banca con mancuernas",
            detail: "Ofrece más recorrido que la barra, permitiendo estirar y contraer el pecho por completo. Siente el estiramiento abajo y junta las mancuernas arriba.",
            steps: [
                "Túmbate en el banco con una mancuerna en cada mano.",
                "Retrae los omóplatos y sostén las mancuernas sobre el pecho.",
                "Baja hasta sentir el estiramiento en el pecho.",
                "Empuja hacia arriba y junta las mancuernas para apretar.",
            ]),
        "インクラインダンベルプレス": Entry(
            name: "Press inclinado con mancuernas",
            detail: "Trabaja el pecho superior en banco inclinado. Baja profundo para estirar el pecho superior y junta hacia dentro arriba.",
            steps: [
                "Siéntate en un banco inclinado con una mancuerna en cada mano.",
                "Colócate sobre el pecho superior y retrae los omóplatos.",
                "Baja profundo para estirar el pecho superior.",
                "Empuja hacia arriba y junta las mancuernas arriba.",
            ]),
        "ダンベルフライ": Entry(
            name: "Aperturas con mancuernas",
            detail: "Un ejercicio de aislamiento donde abres y cierras los brazos en arco con los codos algo flexionados. Abre bien para estirar el pecho y cierra como si abrazaras algo.",
            steps: [
                "Túmbate y sostén las mancuernas sobre el pecho.",
                "Mantén una ligera flexión fija en los codos.",
                "Abre los brazos hacia los lados en arco, estirando el pecho.",
                "Cierra los brazos como en un abrazo, apretando el pecho.",
            ]),
        "チェストプレス（マシン）": Entry(
            name: "Press de pecho en máquina",
            detail: "Un ejercicio en máquina con recorrido fijo para llegar al fallo con seguridad. Coloca los agarres a la altura del pecho y empuja del todo para contraer. Ideal para principiantes.",
            steps: [
                "Ajusta la altura del asiento para que los agarres queden a la altura del pecho.",
                "Apoya la espalda en el respaldo y saca pecho.",
                "Empuja los agarres del todo hacia delante.",
                "Siente la contracción del pecho y vuelve despacio.",
            ]),
        "ケーブルクロスオーバー": Entry(
            name: "Cruce de poleas",
            detail: "Las poleas mantienen tensión constante en el músculo. Trabaja el pecho medio e inferior cruzando las manos por delante del cuerpo para una fuerte contracción.",
            steps: [
                "Coloca las poleas altas y agarra un asa en cada mano.",
                "Adelanta un pie e inclínate ligeramente hacia delante.",
                "Lleva las manos hacia abajo y crúzalas por delante del cuerpo en arco.",
                "Aprieta con fuerza el centro del pecho y vuelve despacio.",
            ]),
        "バンドチェストプレス": Entry(
            name: "Press de pecho con banda",
            detail: "Pasa una banda por detrás de la espalda y empuja hacia delante. La resistencia aumenta al estirarse, así que sigue empujando hasta la extensión completa.",
            steps: [
                "Pasa la banda por detrás de la espalda y agarra ambos extremos.",
                "Colócate a la altura del pecho con los pies escalonados para estabilidad.",
                "Empuja recto hacia delante.",
                "Mantén la tensión hasta la extensión y vuelve despacio.",
            ]),
        "ディップス": Entry(
            name: "Fondos en paralelas",
            detail: "Baja y sube en barras paralelas. Inclínate hacia delante para el pecho inferior o mantente erguido para el tríceps. Limita la profundidad si te duelen los hombros.",
            steps: [
                "Agarra las paralelas y sostente con los brazos estirados.",
                "Inclina el torso hacia delante para trabajar el pecho inferior.",
                "Flexiona los codos y baja el cuerpo.",
                "Empuja hacia arriba para volver. Limita la profundidad si duelen los hombros.",
            ]),
        "懸垂": Entry(
            name: "Dominadas",
            detail: "El mejor ejercicio con peso corporal para la anchura de la espalda. Agarra en pronación algo más ancho que los hombros y lleva el pecho a la barra. Tira con la espalda, no con impulso.",
            steps: [
                "Agarra la barra en pronación, algo más ancho que los hombros.",
                "Baja los hombros y saca pecho.",
                "Sin impulso, lleva el pecho hacia la barra.",
                "Siente la contracción de la espalda y baja despacio.",
            ]),
        "チンニング（逆手懸垂）": Entry(
            name: "Dominadas supinas",
            detail: "Una dominada con agarre supino (palmas hacia ti). Trabaja mucho el bíceps además de la espalda y es más fácil de tirar que la versión en pronación.",
            steps: [
                "Agarra la barra en supinación (palmas hacia ti) al ancho de los hombros.",
                "Saca pecho y baja los hombros.",
                "Lleva el pecho a la barra usando brazos y espalda.",
                "Baja despacio y repite.",
            ]),
        "インバーテッドロウ": Entry(
            name: "Remo invertido",
            detail: "Ponte bajo una barra baja o una mesa y sube el cuerpo en ángulo. Mantén el cuerpo en línea recta, retrae los omóplatos y sube el pecho.",
            steps: [
                "Túmbate bajo una barra baja o una mesa y agárrala.",
                "Mantén el cuerpo en línea recta con los talones como pivote.",
                "Retrae los omóplatos y lleva el pecho a la barra.",
                "Baja despacio y repite.",
            ]),
        "バックエクステンション": Entry(
            name: "Extensión de espalda",
            detail: "Levanta el torso desde una posición boca abajo para entrenar los erectores espinales (zona lumbar). No hiperextiendas; detente donde sientas la contracción de la espalda.",
            steps: [
                "Túmbate boca abajo con las manos junto a la cabeza o cruzadas sobre el pecho.",
                "Usa la espalda para levantar el torso despacio.",
                "No hiperextiendas; detente donde sientas la contracción.",
                "Baja despacio y repite.",
            ]),
        "スーパーマン": Entry(
            name: "Superman",
            detail: "Túmbate boca abajo y levanta a la vez brazos y piernas, manteniendo unos segundos. Tensa toda la espalda y la zona lumbar. Sigue respirando.",
            steps: [
                "Túmbate boca abajo con los brazos extendidos al frente.",
                "Levanta a la vez ambos brazos y ambas piernas.",
                "Aguanta unos segundos en el aire, apretando espalda y glúteos.",
                "Baja despacio sin contener la respiración.",
            ]),
        "リバーススノーエンジェル": Entry(
            name: "Ángel de nieve invertido",
            detail: "Túmbate boca abajo, eleva un poco el pecho y desplaza los brazos desde arriba hasta las caderas. Trabaja el trapecio inferior y la zona de los omóplatos para mejorar la postura.",
            steps: [
                "Túmbate boca abajo y eleva un poco el pecho del suelo.",
                "Extiende los brazos por encima de la cabeza.",
                "Con las palmas hacia abajo, desplaza los brazos en arco hasta los costados.",
                "Aprieta los omóplatos y vuelve despacio arriba.",
            ]),
        "デッドリフト": Entry(
            name: "Peso muerto",
            detail: "Un levantamiento pesado de cuerpo entero. Mantén la espalda plana, sube la barra pegada a las espinillas y ponte de pie extendiendo las caderas. Nunca redondees la zona lumbar.",
            steps: [
                "Colócate al ancho de las caderas con las espinillas cerca de la barra.",
                "Mantén la espalda plana y agarra la barra.",
                "Sube la barra manteniéndola pegada a las espinillas.",
                "Extiende las caderas para ponerte erguido. No redondees la espalda.",
            ]),
        "ベントオーバーロウ": Entry(
            name: "Remo con barra",
            detail: "Inclínate hacia delante y rema la barra al ombligo para dar grosor a la espalda. Minimiza el impulso y aprieta bien los omóplatos.",
            steps: [
                "Agarra la barra, flexiona un poco las rodillas e inclínate hacia delante.",
                "Mantén la espalda plana y el pecho alto.",
                "Rema la barra al ombligo sin usar impulso.",
                "Aprieta los omóplatos y baja despacio.",
            ]),
        "ダンベルロウ": Entry(
            name: "Remo a una mano con mancuerna",
            detail: "Apóyate con una mano en un banco y rema la mancuerna a la cadera. Permite mover el dorsal en un gran recorrido y corregir desequilibrios entre lados.",
            steps: [
                "Apoya una mano y una rodilla en un banco, con una mancuerna en la otra mano.",
                "Mantén la espalda plana y el pecho alto.",
                "Lleva el codo hacia atrás y rema la mancuerna a la cadera.",
                "Siente la contracción del dorsal y baja despacio. Haz ambos lados.",
            ]),
        "ラットプルダウン": Entry(
            name: "Jalón al pecho",
            detail: "Un ejercicio en máquina que da anchura a la espalda aunque las dominadas cuesten. Saca pecho, lleva la barra a la clavícula y tira con los dorsales deprimiendo los omóplatos.",
            steps: [
                "Agarra la barra más ancha que los hombros y fija los muslos bajo el soporte.",
                "Saca pecho e inclínate un poco hacia atrás.",
                "Lleva la barra a la clavícula deprimiendo los omóplatos.",
                "Mantén los dorsales activos y vuelve despacio.",
            ]),
        "シーテッドロウ（マシン）": Entry(
            name: "Remo sentado en polea",
            detail: "Un remo sentado que da grosor a la zona media de la espalda. Saca pecho, lleva los codos atrás y aprieta los omóplatos.",
            steps: [
                "Siéntate y agarra el asa.",
                "Saca pecho y mantén la espalda plana.",
                "Lleva los codos hacia atrás y aprieta los omóplatos.",
                "Contrae la zona media de la espalda y vuelve despacio.",
            ]),
        "バンドロウ": Entry(
            name: "Remo con banda",
            detail: "Ancla una banda en los pies o en un poste y tira hacia ti. La resistencia aumenta al tirar, así que aprieta bien los omóplatos al final.",
            steps: [
                "Ancla la banda bajo los pies o en un poste y agarra ambos extremos.",
                "Saca pecho y mantén la espalda plana.",
                "Lleva los codos atrás y tira de la banda hacia ti.",
                "Aprieta bien los omóplatos y vuelve despacio.",
            ]),
        "シュラッグ": Entry(
            name: "Encogimientos",
            detail: "Sostén mancuernas y encoge los hombros para entrenar el trapecio superior. Sube solo los hombros en recto sin mover el cuello. Aguanta un segundo arriba.",
            steps: [
                "Sostén una mancuerna en cada mano con los brazos a los costados.",
                "Sin mover el cuello, encoge los hombros en recto hacia arriba.",
                "Aguanta un segundo arriba para apretar el trapecio.",
                "Baja los hombros despacio y repite.",
            ]),
        "スクワット（自重）": Entry(
            name: "Sentadilla",
            detail: "La base del entrenamiento de piernas. Colócate al ancho de los hombros, siéntate hacia atrás como en una silla hasta que los muslos queden paralelos al suelo. No dejes que las rodillas pasen mucho de las puntas de los pies.",
            steps: [
                "Colócate al ancho de los hombros con las puntas algo abiertas.",
                "Saca pecho y siéntate hacia atrás como en una silla.",
                "Baja hasta que los muslos queden paralelos al suelo.",
                "Empuja con los talones para volver a subir.",
            ]),
        "ランジ": Entry(
            name: "Zancadas",
            detail: "Da un gran paso al frente y baja la rodilla trasera hasta casi tocar el suelo. Empuja con el talón delantero para volver. Trabaja glúteos y muslos.",
            steps: [
                "Da un gran paso al frente con un pie.",
                "Mantén el torso erguido y baja las caderas en recto.",
                "Detente cuando la rodilla trasera casi toque el suelo.",
                "Empuja con el talón delantero para volver. Haz ambos lados.",
            ]),
        "ブルガリアンスクワット": Entry(
            name: "Sentadilla búlgara",
            detail: "Una sentadilla a una pierna con el pie trasero en una silla. La carga se concentra en la pierna delantera, brutal incluso con peso corporal. Siente el estiramiento del glúteo al bajar.",
            steps: [
                "Apoya el empeine trasero en una silla y adelanta el pie delantero.",
                "Inclina el torso un poco y carga la pierna delantera.",
                "Baja las caderas sintiendo el estiramiento del glúteo.",
                "Empuja con la pierna delantera para subir. Haz ambos lados.",
            ]),
        "ヒップリフト": Entry(
            name: "Puente de glúteo",
            detail: "Túmbate boca arriba con las rodillas flexionadas y eleva las caderas en línea recta. Aprieta fuerte los glúteos arriba. Empuja con las caderas sin arquear la zona lumbar.",
            steps: [
                "Túmbate boca arriba con rodillas flexionadas y pies al ancho de las caderas.",
                "Empuja con los talones y eleva las caderas.",
                "Aprieta los glúteos arriba, con hombros a rodillas en línea.",
                "Baja despacio sin arquear la zona lumbar.",
            ]),
        "カーフレイズ（自重）": Entry(
            name: "Elevación de talones",
            detail: "Ponte de puntillas para entrenar los gemelos. Sube los talones lo más alto posible, aguanta un segundo y baja despacio. Hacerlo en un escalón aumenta el recorrido.",
            steps: [
                "Colócate al ancho de las caderas (en el borde de un escalón para más recorrido).",
                "Ponte de puntillas subiendo los talones lo más alto posible.",
                "Aguanta un segundo arriba para apretar los gemelos.",
                "Baja los talones despacio.",
            ]),
        "ウォールシット": Entry(
            name: "Sentadilla isométrica en pared",
            detail: "Una sujeción isométrica sentado contra la pared. Aguanta con los muslos paralelos al suelo para agotar los cuádriceps.",
            steps: [
                "Ponte de pie con la espalda contra la pared.",
                "Camina los pies hacia fuera y deslízate por la pared.",
                "Detente cuando los muslos queden paralelos al suelo.",
                "Aguanta la posición y agota los cuádriceps.",
            ]),
        "バーベルスクワット": Entry(
            name: "Sentadilla con barra",
            detail: "El rey de los levantamientos para el tren inferior. Coloca la barra en los hombros, saca pecho y baja profundo. Mantén la espalda plana y empuja con los talones.",
            steps: [
                "Coloca la barra sobre los trapecios y ponte al ancho de los hombros.",
                "Saca pecho y baja sentando las caderas hacia atrás.",
                "Baja hasta que los muslos queden en paralelo o por debajo.",
                "Empuja con los talones sin redondear la espalda.",
            ]),
        "ルーマニアンデッドリフト": Entry(
            name: "Peso muerto rumano",
            detail: "Con una ligera flexión de rodilla, lleva las caderas hacia atrás y baja la barra pegada a las espinillas. Sentirás un fuerte estiramiento en isquios y glúteos. Mantén la espalda plana todo el tiempo.",
            steps: [
                "Sostén la barra y colócate al ancho de las caderas.",
                "Mantén una ligera flexión de rodilla y lleva las caderas atrás.",
                "Baja la barra pegada a las espinillas hasta estirar los isquios.",
                "Aprieta los glúteos y extiende las caderas para subir.",
            ]),
        "ダンベルスクワット": Entry(
            name: "Sentadilla con mancuernas",
            detail: "Sentadilla sosteniendo una mancuerna en cada mano. Más fácil y equilibrada que con barra. Saca pecho y baja profundo.",
            steps: [
                "Sostén una mancuerna en cada mano al ancho de los hombros.",
                "Saca pecho y sienta las caderas atrás para bajar.",
                "Baja hasta que los muslos queden paralelos al suelo.",
                "Empuja con los talones.",
            ]),
        "レッグプレス": Entry(
            name: "Prensa de piernas",
            detail: "Empuja una plataforma con los pies en la máquina. Permite manejar cargas pesadas sin cargar la zona lumbar. No bloquees las rodillas; baja hasta que los muslos se acerquen al pecho.",
            steps: [
                "Siéntate y coloca los pies al ancho de los hombros en el centro de la plataforma.",
                "Empuja la plataforma y extiende las rodillas (sin bloquear).",
                "Flexiona las rodillas y baja hasta que los muslos se acerquen al pecho.",
                "Empuja de nuevo con los talones y repite.",
            ]),
        "レッグカール": Entry(
            name: "Curl femoral",
            detail: "Lleva los talones hacia los glúteos tumbado o sentado para trabajar los isquios. Controla la fase de bajada para mantener la tensión en el músculo.",
            steps: [
                "Colócate en la máquina con el rodillo contra los tobillos.",
                "Lleva los talones hacia los glúteos con los isquios.",
                "Flexiona todo lo posible y aguanta un segundo.",
                "Baja despacio manteniendo el músculo en tensión.",
            ]),
        "レッグエクステンション": Entry(
            name: "Extensión de cuádriceps",
            detail: "Un ejercicio de aislamiento sentado que trabaja los cuádriceps extendiendo las rodillas. Aguanta un segundo en la extensión completa para apretar.",
            steps: [
                "Siéntate con el rodillo contra los tobillos.",
                "Extiende las rodillas con los cuádriceps.",
                "Aguanta un segundo en la extensión completa para apretar.",
                "Baja despacio y repite.",
            ]),
        "バンドアブダクション": Entry(
            name: "Abducción de cadera con banda",
            detail: "Pasa una banda por rodillas o tobillos y empuja las piernas hacia fuera. Trabaja el glúteo medio (laterales de la cadera) para desarrollar glúteos y estabilizar la pelvis.",
            steps: [
                "Pasa una banda por las rodillas o los tobillos.",
                "Colócate al ancho de las caderas en ligera sentadilla.",
                "Empuja las piernas hacia fuera con los glúteos laterales.",
                "Vuelve despacio manteniendo la tensión de la banda.",
            ]),
        "パイクプッシュアップ": Entry(
            name: "Flexiones pica",
            detail: "Eleva mucho las caderas en forma de V invertida y baja la cabeza hacia el suelo. Carga los deltoides frontales. Una gran puerta de entrada a la flexión en pino.",
            steps: [
                "Desde una posición de flexión, eleva las caderas en V invertida.",
                "Apunta la cabeza al suelo y carga los hombros.",
                "Flexiona los codos y baja la coronilla hacia el suelo.",
                "Empuja hacia arriba con los hombros.",
            ]),
        "壁逆立ち": Entry(
            name: "Pino contra la pared",
            detail: "Sube a un pino contra la pared y aguanta. Un ejercicio isométrico que carga todo el hombro. Tensa el core y no arquees la zona lumbar.",
            steps: [
                "Coloca las manos cerca de la pared y sube a un pino.",
                "Empuja el suelo y sostente con los hombros.",
                "Tensa el core y mantén una línea recta sin arquear.",
                "Aguanta la posición.",
            ]),
        "Yレイズ（うつ伏せ）": Entry(
            name: "Elevación en Y boca abajo",
            detail: "Túmbate boca abajo y eleva los brazos en forma de Y. Trabaja los deltoides posteriores y el trapecio inferior para ayudar a corregir hombros caídos.",
            steps: [
                "Túmbate boca abajo y extiende los brazos arriba en forma de Y.",
                "Apunta los pulgares hacia arriba.",
                "Levanta ambos brazos del suelo con los deltoides posteriores.",
                "Aprieta los omóplatos un segundo y baja despacio.",
            ]),
        "リバースプランクリーチ": Entry(
            name: "Plancha invertida con alcance",
            detail: "Desde una plancha invertida con las caderas elevadas, cruza un brazo por debajo del cuerpo. Trabaja a la vez los deltoides posteriores y el core.",
            steps: [
                "Apoya las manos en el suelo y eleva las caderas en plancha invertida.",
                "Mantén el cuerpo en línea recta.",
                "Cruza un brazo por debajo del cuerpo hacia el lado opuesto.",
                "Vuelve y alterna los lados.",
            ]),
        "アームサークル": Entry(
            name: "Círculos de brazos",
            detail: "Extiende los brazos a los lados y traza círculos pequeños. Sutil pero eficaz para los deltoides laterales y genial como calentamiento de hombro. No encojas los hombros.",
            steps: [
                "Extiende ambos brazos a los lados a la altura de los hombros.",
                "Mantén los hombros bajos, lejos de las orejas.",
                "Traza pequeños círculos hacia delante de forma continua.",
                "Cambia a círculos hacia atrás a mitad.",
            ]),
        "バーベルショルダープレス": Entry(
            name: "Press militar con barra",
            detail: "Empuja la barra por encima de la cabeza de pie o sentado. Un ejercicio pesado de hombro. Tensa el core, no arquees demasiado la zona lumbar y empuja recto hacia arriba.",
            steps: [
                "Agarra la barra a la altura de la clavícula, más ancho que los hombros.",
                "Tensa el core y evita arquear demasiado la zona lumbar.",
                "Empuja la barra recta por encima de la cabeza.",
                "Bloquea los codos y baja despacio.",
            ]),
        "ダンベルショルダープレス": Entry(
            name: "Press de hombros con mancuernas",
            detail: "Empuja las mancuernas desde junto a las orejas hacia arriba. Un mayor recorrido entrena ambos lados por igual. Detente a la altura de los hombros al bajar.",
            steps: [
                "Sostén las mancuernas junto a las orejas.",
                "Tensa el core para estabilizar la postura.",
                "Empuja recto por encima de la cabeza.",
                "Baja despacio a la altura de los hombros.",
            ]),
        "サイドレイズ": Entry(
            name: "Elevaciones laterales",
            detail: "Un básico para los deltoides laterales que da anchura al hombro. Eleva las mancuernas a los lados hasta la altura de los hombros. Lidera un poco con los meñiques y evita el impulso.",
            steps: [
                "Sostén una mancuerna a cada lado con los codos algo flexionados.",
                "Elévalas a los lados sin usar impulso.",
                "Sube hasta la altura de los hombros, liderando un poco con los meñiques.",
                "Baja despacio y repite.",
            ]),
        "フロントレイズ": Entry(
            name: "Elevaciones frontales",
            detail: "Eleva las mancuernas al frente hasta la altura de los hombros para trabajar los deltoides frontales. Evita el impulso y no subas por encima del hombro.",
            steps: [
                "Sostén las mancuernas frente a los muslos.",
                "Mantén una ligera flexión fija en los codos.",
                "Elévalas al frente hasta la altura de los hombros sin impulso.",
                "Baja despacio. No subas demasiado.",
            ]),
        "リアレイズ": Entry(
            name: "Pájaros",
            detail: "Inclínate hacia delante y eleva las mancuernas a los lados para trabajar los deltoides posteriores. Esta zona rebelde responde a poco peso y muchas repeticiones.",
            steps: [
                "Sostén las mancuernas e inclina el torso hacia delante.",
                "Mantén una ligera flexión en los codos y la espalda plana.",
                "Eleva las mancuernas a los lados con los deltoides posteriores.",
                "Aprieta los omóplatos un segundo y baja despacio.",
            ]),
        "ショルダープレス（マシン）": Entry(
            name: "Press de hombros en máquina",
            detail: "Una máquina con recorrido estable que permite empujar los hombros con seguridad. Coloca los agarres a la altura de los hombros; empuja hasta la extensión y no bajes demasiado.",
            steps: [
                "Ajusta el asiento para que los agarres queden a la altura de los hombros.",
                "Apoya la espalda en el respaldo.",
                "Empuja los agarres del todo por encima de la cabeza.",
                "Baja a la altura de los hombros; no bajes demasiado.",
            ]),
        "バンドサイドレイズ": Entry(
            name: "Elevaciones laterales con banda",
            detail: "Pisa una banda y elévala a los lados. La resistencia aumenta al subir, manteniendo tensión constante en los deltoides laterales. Sin impulso.",
            steps: [
                "Pisa el centro de la banda y agarra ambos extremos.",
                "Colócate con una ligera flexión en los codos.",
                "Eleva a los lados hasta la altura de los hombros sin impulso.",
                "Baja despacio manteniendo la tensión de la banda.",
            ]),
        "ナロープッシュアップ": Entry(
            name: "Flexiones diamante estrechas",
            detail: "Una flexión con las manos juntas para trabajar el tríceps. Pega los codos y llévalos hacia atrás al bajar. Céntrate en los brazos más que en el pecho.",
            steps: [
                "Coloca las manos más juntas que los hombros, bajo el pecho.",
                "Pega los codos y mantén el cuerpo en línea recta.",
                "Baja el cuerpo llevando los codos hacia atrás.",
                "Empuja hacia arriba con el tríceps.",
            ]),
        "ベンチディップス": Entry(
            name: "Fondos en banco",
            detail: "Apóyate con las manos en una silla y baja y sube para entrenar el tríceps. Flexiona los codos hacia atrás, hunde las caderas y empuja hacia arriba. Mantén los hombros bajos.",
            steps: [
                "Apoya las manos en el borde de una silla y adelanta los pies.",
                "Baja los hombros y despega las caderas de la silla.",
                "Flexiona los codos hacia atrás y baja las caderas.",
                "Empuja hacia arriba con el tríceps para volver.",
            ]),
        "ダイヤモンドプッシュアップ": Entry(
            name: "Flexiones diamante",
            detail: "Forma un diamante con pulgares e índices y baja el pecho sobre él. Trabaja muy fuerte el tríceps. Mantén los codos pegados todo el tiempo.",
            steps: [
                "Forma un diamante con pulgares e índices bajo el pecho.",
                "Mantén el cuerpo recto y los codos pegados.",
                "Baja el pecho despacio sobre el diamante.",
                "Empuja hacia arriba con el tríceps.",
            ]),
        "チンニング（腕狙い）": Entry(
            name: "Dominadas supinas cerradas",
            detail: "Dominada supina con agarre estrecho para centrarte en el bíceps. Evita balancearte y concéntrate en tirar flexionando los brazos.",
            steps: [
                "Agarra la barra en supinación, más estrecho que los hombros.",
                "Cuelga recto sin balancearte.",
                "Súbete flexionando los brazos.",
                "Baja despacio, centrándote en el bíceps.",
            ]),
        "リバースプランク": Entry(
            name: "Plancha invertida",
            detail: "Apoya las manos en el suelo, eleva las caderas y mantén una línea recta del cuerpo. Un ejercicio isométrico para tríceps y core. Mantén las manos bajo los hombros y no encojas.",
            steps: [
                "Siéntate y apoya las manos en el suelo detrás, bajo los hombros.",
                "Eleva las caderas en línea recta.",
                "Abre el pecho y no encojas los hombros.",
                "Aguanta la posición.",
            ]),
        "逆手テーブルロウ": Entry(
            name: "Remo supino bajo la mesa",
            detail: "Ponte bajo una mesa y súbete con agarre supino. Trabaja el bíceps junto con la espalda. Céntrate en tirar flexionando los codos.",
            steps: [
                "Túmbate boca arriba bajo una mesa resistente.",
                "Agarra el borde en supinación y mantén el cuerpo en línea recta.",
                "Lleva el pecho al borde flexionando los codos.",
                "Baja despacio, centrándote en el bíceps.",
            ]),
        "バーベルカール": Entry(
            name: "Curl con barra",
            detail: "El ejercicio fundamental de bíceps. Fija los codos a los costados y sube la barra sin impulso. Controla también la fase de bajada.",
            steps: [
                "De pie, sostén la barra en supinación al ancho de los hombros.",
                "Fija los codos a los costados.",
                "Sube la barra sin usar impulso.",
                "Aprieta el bíceps y baja despacio.",
            ]),
        "ダンベルカール": Entry(
            name: "Curl con mancuernas",
            detail: "Sube las mancuernas y gira las muñecas hacia fuera arriba para una contracción extra del bíceps. Mantén los codos fijos; hazlo con ambos brazos a la vez o alternando.",
            steps: [
                "Sostén una mancuerna a cada lado.",
                "Mantén los codos fijos y sube.",
                "Gira las muñecas hacia fuera arriba para contraer.",
                "Baja despacio. Alterna o hazlo a la vez.",
            ]),
        "ハンマーカール": Entry(
            name: "Curl martillo",
            detail: "Curl con agarre neutro (palmas hacia dentro). Entrena el bíceps externo y los antebrazos a la vez para dar grosor al brazo. Mantén los codos fijos.",
            steps: [
                "Sostén las mancuernas con agarre neutro (palmas hacia dentro).",
                "Fija los codos a los costados.",
                "Sube manteniendo el agarre neutro.",
                "Baja despacio y repite.",
            ]),
        "トライセプスエクステンション": Entry(
            name: "Extensión de tríceps sobre la cabeza",
            detail: "Baja una mancuerna por detrás de la cabeza y extiende los codos para entrenar el tríceps. Mantén los codos en su sitio y los brazos verticales.",
            steps: [
                "Sostén una mancuerna con ambas manos y súbela sobre la cabeza.",
                "Mantén los brazos verticales y flexiona solo los codos detrás de la cabeza.",
                "No dejes que los codos se abran.",
                "Extiende los codos con el tríceps para volver.",
            ]),
        "ケーブルプッシュダウン": Entry(
            name: "Extensión de tríceps en polea",
            detail: "Empuja una polea recta hacia abajo para contraer el tríceps. Fija los codos a los costados y aguanta un segundo en la extensión completa.",
            steps: [
                "Agarra una barra de polea alta.",
                "Fija los codos a los costados e inclínate un poco hacia delante.",
                "Empuja la barra recta hacia abajo moviendo solo los antebrazos.",
                "Aguanta un segundo en la extensión y vuelve despacio.",
            ]),
        "バンドカール": Entry(
            name: "Curl con banda",
            detail: "Curl pisando una banda. La resistencia aumenta al subir, así que sigue apretando y contrae el bíceps del todo arriba. Mantén los codos fijos.",
            steps: [
                "Pisa el centro de la banda y agarra ambos extremos.",
                "Fija los codos a los costados.",
                "Sube la banda en curl (la resistencia aumenta al subir).",
                "Aprieta el bíceps arriba y baja despacio.",
            ]),
        "リストカール": Entry(
            name: "Curl de muñeca",
            detail: "Apoya los antebrazos en los muslos o un banco y flexiona las mancuernas solo con las muñecas. Entrena los antebrazos y el agarre. Usa todo el recorrido.",
            steps: [
                "Apoya los antebrazos en los muslos o un banco con las muñecas por fuera del borde.",
                "Sostén las mancuernas con las palmas hacia arriba.",
                "Flexiona las mancuernas usando solo las muñecas.",
                "Baja despacio en todo el recorrido.",
            ]),
        "プランク": Entry(
            name: "Plancha",
            detail: "La sujeción básica del core: apóyate sobre los codos y las puntas de los pies en línea recta de la cabeza a los talones. Tensa los abdominales, mantén las caderas niveladas y sigue respirando.",
            steps: [
                "Coloca los codos bajo los hombros y apóyate en las puntas de los pies.",
                "Mantén una línea recta de la cabeza a los talones.",
                "Tensa los abdominales; no dejes caer ni subir las caderas.",
                "Aguanta la posición mientras sigues respirando.",
            ]),
        "サイドプランク": Entry(
            name: "Plancha lateral",
            detail: "Apóyate sobre un codo y el canto de un pie. Trabaja los oblicuos. Mantén el cuerpo en línea recta para que no caigan las caderas. Haz ambos lados.",
            steps: [
                "Túmbate de lado con el codo bajo el hombro.",
                "Apila los pies y apóyate de lado.",
                "Eleva las caderas y mantén el cuerpo en línea recta.",
                "Aguanta la posición. Haz ambos lados.",
            ]),
        "クランチ": Entry(
            name: "Encogimientos abdominales",
            detail: "Túmbate boca arriba con las rodillas flexionadas y curva el torso justo hasta que despeguen los omóplatos. Trabaja el abdomen superior. Curva con los abdominales, no con el cuello.",
            steps: [
                "Túmbate boca arriba con rodillas flexionadas, manos junto a la cabeza o el pecho.",
                "Curva el torso hacia arriba contrayendo los abdominales.",
                "Sube solo hasta despegar los omóplatos del suelo.",
                "No tires del cuello; baja despacio.",
            ]),
        "レッグレイズ": Entry(
            name: "Elevaciones de piernas tumbado",
            detail: "Túmbate boca arriba, eleva las piernas juntas y bájalas despacio. Trabaja el abdomen inferior. Presiona las manos contra el suelo para que la zona lumbar no se arquee.",
            steps: [
                "Túmbate boca arriba con las manos a los costados o bajo las caderas.",
                "Eleva las piernas juntas, en recto.",
                "Presiona la zona lumbar contra el suelo para que no se arquee.",
                "Baja despacio tensando el abdomen inferior.",
            ]),
        "バイシクルクランチ": Entry(
            name: "Bicicleta abdominal",
            detail: "Lleva el codo a la rodilla opuesta como si pedalearas. Trabaja abdominales y oblicuos a la vez. Usa la rotación y no lo hagas rápido con impulso.",
            steps: [
                "Túmbate boca arriba con las manos junto a la cabeza y las piernas elevadas.",
                "Lleva una rodilla al pecho y acerca el codo opuesto.",
                "Gira el torso para juntar codo y rodilla.",
                "Alterna los lados como si pedalearas.",
            ]),
        "マウンテンクライマー": Entry(
            name: "Escaladores",
            detail: "En posición de flexión, lleva rápido las rodillas al pecho de forma alterna. Trabaja el core y el cardio a la vez. Mantén el cuerpo en línea sin elevar las caderas.",
            steps: [
                "Ponte en posición de flexión con las manos bajo los hombros.",
                "Mantén el cuerpo en línea recta (sin elevar las caderas).",
                "Lleva rápido una rodilla hacia el pecho.",
                "Cambia de pierna con ritmo y alterna.",
            ]),
        "ロシアンツイスト": Entry(
            name: "Giro ruso",
            detail: "Siéntate, inclínate hacia atrás y gira de lado a lado. Trabaja los oblicuos. Elevar los pies aumenta la dificultad. No redondees demasiado la espalda.",
            steps: [
                "Siéntate con las rodillas flexionadas e inclina el torso atrás.",
                "Mantén el pecho alto sin redondear demasiado la espalda.",
                "Entrelaza las manos y gira el torso de lado a lado.",
                "Eleva los pies para aumentar la dificultad si puedes.",
            ]),
        "デッドバグ": Entry(
            name: "Dead bug",
            detail: "Túmbate boca arriba con brazos y piernas arriba y extiende despacio las extremidades opuestas. Un ejercicio de core amable con la espalda. Mantén la zona lumbar pegada al suelo.",
            steps: [
                "Túmbate boca arriba con los brazos hacia el techo y las rodillas a 90 grados.",
                "Presiona la zona lumbar contra el suelo.",
                "Extiende despacio un brazo y la pierna opuesta.",
                "Vuelve y haz el otro lado.",
            ]),
        "ハンギングレッグレイズ": Entry(
            name: "Elevaciones de piernas colgado",
            detail: "Cuélgate de una barra y eleva las piernas. Un ejercicio avanzado que machaca el abdomen inferior. Minimiza el balanceo; flexionar las rodillas lo facilita.",
            steps: [
                "Cuélgate de una barra y estabiliza el cuerpo.",
                "Minimiza el balanceo y eleva las piernas con el abdomen inferior.",
                "Sube hasta que las piernas queden en paralelo o por encima (flexiona rodillas para facilitarlo).",
                "Baja despacio y repite.",
            ]),
        "ケーブルクランチ": Entry(
            name: "Crunch en polea",
            detail: "Arrodíllate sujetando una polea y curva el torso hacia abajo. Permite cargar mucho el abdomen. No tires con los brazos; redondea la espalda y curva con los abdominales.",
            steps: [
                "Agarra una polea alta y arrodíllate.",
                "Sostén la cuerda junto a la cabeza.",
                "Sin tirar con los brazos, redondea y curva el torso hacia abajo.",
                "Contrae los abdominales y vuelve despacio.",
            ]),
        "ホローホールド": Entry(
            name: "Hollow hold",
            detail: "Túmbate boca arriba, extiende brazos y piernas y mantén una forma de plátano con la zona lumbar pegada al suelo. Un ejercicio isométrico para todo el core. Baja las extremidades si la espalda se despega.",
            steps: [
                "Túmbate boca arriba con los brazos por encima de la cabeza y las piernas rectas.",
                "Presiona la zona lumbar y eleva un poco brazos y piernas.",
                "Mantén el cuerpo en forma de plátano.",
                "Baja brazos y piernas para ajustar si la espalda se despega.",
            ]),
    ]
}
