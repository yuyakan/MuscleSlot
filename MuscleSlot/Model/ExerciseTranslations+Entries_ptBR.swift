//
//  ExerciseTranslations+Entries_ptBR.swift
//  MuscleSlot
//
//  76種目のポルトガル語(ブラジル)訳本体。キーは Exercise.name（日本語）。
//  種目名は各言語のジムで通用する自然な呼称を採用（直訳しない）。
//

import Foundation

extension ExerciseTranslations {

    static let entries_ptBR: [String: Entry] = [
        "腕立て伏せ": Entry(
            name: "Flexão de braço",
            detail: "O exercício clássico de peito. Coloque as mãos um pouco mais abertas que os ombros, mantenha o corpo em linha reta e desça o peito até quase encostar no chão. Mantenha os cotovelos a cerca de 45 graus.",
            steps: [
                "Fique no chão com as mãos um pouco mais abertas que os ombros.",
                "Mantenha cabeça, quadril e calcanhares em linha reta e contraia o corpo como uma prancha.",
                "Desça o corpo até o peito quase encostar no chão, cotovelos abertos a cerca de 45 graus.",
                "Empurre o chão com o peito e estenda os braços para voltar.",
            ]),
        "ワイド腕立て": Entry(
            name: "Flexão aberta",
            detail: "Coloque as mãos a cerca de 1,5 vez a largura dos ombros para atingir mais o peito externo e superior. Não desça demais para proteger os ombros.",
            steps: [
                "Coloque as mãos no chão a cerca de 1,5 vez a largura dos ombros.",
                "Mantenha o corpo em linha reta e o peito erguido.",
                "Desça o corpo sentindo o alongamento do peito externo.",
                "Evite descer a ponto de forçar os ombros e empurre de volta.",
            ]),
        "ナロー腕立て": Entry(
            name: "Flexão fechada",
            detail: "Coloque as mãos mais juntas que os ombros para atingir o peito interno e o tríceps. Mantenha os cotovelos junto ao corpo e leve-os para trás ao descer.",
            steps: [
                "Coloque as mãos mais juntas que os ombros, sob o peito.",
                "Mantenha os cotovelos junto ao corpo e o corpo em linha reta.",
                "Desça o corpo levando os cotovelos para trás.",
                "Empurre de volta focando no peito interno e no tríceps.",
            ]),
        "デクライン腕立て": Entry(
            name: "Flexão declinada",
            detail: "Eleve os pés em uma cadeira para que a cabeça fique mais baixa. Isso transfere a carga para o peito superior e torna mais difícil que a flexão comum.",
            steps: [
                "Coloque os pés em uma cadeira ou caixa para que a cabeça fique mais baixa que o quadril.",
                "Mantenha as mãos na largura dos ombros e o corpo em linha reta.",
                "Desça o corpo focando no peito superior.",
                "Empurre pelo peito superior para voltar.",
            ]),
        "膝つき腕立て": Entry(
            name: "Flexão com joelhos",
            detail: "Versão para iniciantes com os joelhos no chão para reduzir a carga. Mantenha uma linha reta dos joelhos à cabeça e desça devagar com boa técnica.",
            steps: [
                "Apoie os joelhos no chão e as mãos um pouco mais abertas que os ombros.",
                "Mantenha uma linha reta dos joelhos à cabeça.",
                "Desça o peito em direção ao chão devagar.",
                "Empurre de volta sem perder a postura.",
            ]),
        "ベンチプレス": Entry(
            name: "Supino reto",
            detail: "O rei dos exercícios de peito para cargas pesadas. Retraia as escápulas, faça um leve arco, desça a barra até a altura dos mamilos e empurre.",
            steps: [
                "Deite no banco, retraia as escápulas e faça um leve arco.",
                "Segure a barra um pouco mais aberta que os ombros.",
                "Desça a barra devagar até a altura dos mamilos.",
                "Empurre pelo peito e trave os cotovelos.",
            ]),
        "インクラインベンチプレス": Entry(
            name: "Supino inclinado com barra",
            detail: "Ajuste o banco a 30–45 graus para desenvolver o peito superior. Desça a barra logo abaixo da clavícula. Um ângulo muito acentuado vira exercício de ombro.",
            steps: [
                "Ajuste o banco a 30–45 graus e deite.",
                "Retraia as escápulas e segure a barra mais aberta que os ombros.",
                "Desça a barra logo abaixo da clavícula.",
                "Empurre pelo peito superior e volte.",
            ]),
        "ダンベルプレス": Entry(
            name: "Supino com halteres",
            detail: "Oferece mais amplitude que a barra, permitindo alongar e contrair o peito por completo. Sinta o alongamento embaixo e junte os halteres no topo.",
            steps: [
                "Deite no banco com um haltere em cada mão.",
                "Retraia as escápulas e segure os halteres sobre o peito.",
                "Desça até sentir o alongamento no peito.",
                "Empurre e junte os halteres para contrair.",
            ]),
        "インクラインダンベルプレス": Entry(
            name: "Supino inclinado com halteres",
            detail: "Atinge o peito superior no banco inclinado. Desça profundo para alongar o peito superior e junte para dentro no topo.",
            steps: [
                "Sente em um banco inclinado com um haltere em cada mão.",
                "Posicione-se sobre o peito superior e retraia as escápulas.",
                "Desça profundo para alongar o peito superior.",
                "Empurre e junte os halteres para dentro no topo.",
            ]),
        "ダンベルフライ": Entry(
            name: "Crucifixo com halteres",
            detail: "Um exercício de isolamento em que você abre e fecha os braços em arco com os cotovelos levemente flexionados. Abra bem para alongar o peito e feche como se abraçasse.",
            steps: [
                "Deite e segure os halteres sobre o peito.",
                "Mantenha uma leve flexão fixa nos cotovelos.",
                "Abra os braços para os lados em arco, alongando o peito.",
                "Feche os braços como um abraço, contraindo o peito.",
            ]),
        "チェストプレス（マシン）": Entry(
            name: "Supino na máquina",
            detail: "Um exercício guiado com trajetória fixa para ir à falha com segurança. Ajuste as pegadas na altura do peito e empurre até o fim para contrair. Ótimo para iniciantes.",
            steps: [
                "Ajuste a altura do assento para as pegadas ficarem na altura do peito.",
                "Encoste as costas no apoio e erga o peito.",
                "Empurre as pegadas totalmente para a frente.",
                "Sinta a contração do peito e volte devagar.",
            ]),
        "ケーブルクロスオーバー": Entry(
            name: "Crossover na polia",
            detail: "As polias mantêm tensão constante no músculo. Atinja o peito médio e inferior cruzando as mãos à frente do corpo para uma forte contração.",
            steps: [
                "Ajuste as polias no alto e segure uma alça em cada mão.",
                "Dê um passo à frente com um pé e incline-se levemente.",
                "Leve as mãos para baixo e cruze-as à frente do corpo em arco.",
                "Contraia forte o centro do peito e volte devagar.",
            ]),
        "バンドチェストプレス": Entry(
            name: "Supino com faixa",
            detail: "Passe uma faixa por trás das costas e empurre para a frente. A resistência aumenta ao esticar, então empurre até a extensão completa.",
            steps: [
                "Passe a faixa por trás das costas e segure as duas pontas.",
                "Posicione-se na altura do peito com os pés afastados para estabilidade.",
                "Empurre reto para a frente.",
                "Mantenha a tensão até a extensão e volte devagar.",
            ]),
        "ディップス": Entry(
            name: "Mergulho nas paralelas",
            detail: "Desça e suba nas barras paralelas. Incline-se para a frente para o peito inferior ou fique ereto para o tríceps. Limite a profundidade se os ombros doerem.",
            steps: [
                "Segure as paralelas e sustente-se com os braços estendidos.",
                "Incline o tronco para a frente para atingir o peito inferior.",
                "Flexione os cotovelos e desça o corpo.",
                "Empurre de volta. Limite a profundidade se os ombros doerem.",
            ]),
        "懸垂": Entry(
            name: "Barra fixa",
            detail: "O melhor exercício com peso corporal para largura das costas. Pegada pronada um pouco mais aberta que os ombros, puxe o peito à barra. Puxe com as costas, sem impulso.",
            steps: [
                "Segure a barra em pronada, um pouco mais aberta que os ombros.",
                "Abaixe os ombros e erga o peito.",
                "Sem impulso, puxe o peito em direção à barra.",
                "Sinta a contração das costas e desça devagar.",
            ]),
        "チンニング（逆手懸垂）": Entry(
            name: "Barra fixa supinada",
            detail: "Uma barra fixa com pegada supinada (palmas para você). Atinge muito o bíceps além das costas e é mais fácil de puxar que a versão pronada.",
            steps: [
                "Segure a barra supinada (palmas para você) na largura dos ombros.",
                "Erga o peito e abaixe os ombros.",
                "Puxe o peito à barra com braços e costas.",
                "Desça devagar e repita.",
            ]),
        "インバーテッドロウ": Entry(
            name: "Remada invertida",
            detail: "Fique sob uma barra baixa ou mesa e puxe o corpo em ângulo. Mantenha o corpo em linha reta, retraia as escápulas e puxe o peito para cima.",
            steps: [
                "Deite sob uma barra baixa ou mesa e segure-a.",
                "Mantenha o corpo em linha reta com os calcanhares como pivô.",
                "Retraia as escápulas e puxe o peito à barra.",
                "Desça devagar e repita.",
            ]),
        "バックエクステンション": Entry(
            name: "Extensão de costas",
            detail: "Levante o tronco da posição de bruços para treinar os eretores da espinha (lombar). Não hiperestenda; pare onde sentir a contração das costas.",
            steps: [
                "Deite de bruços com as mãos junto à cabeça ou no peito.",
                "Use as costas para levantar o tronco devagar.",
                "Não hiperestenda; pare onde sentir a contração.",
                "Desça devagar e repita.",
            ]),
        "スーパーマン": Entry(
            name: "Superman",
            detail: "Deite de bruços e levante braços e pernas ao mesmo tempo, segurando alguns segundos. Contrai todas as costas e a lombar. Continue respirando.",
            steps: [
                "Deite de bruços com os braços estendidos à frente.",
                "Levante os dois braços e as duas pernas ao mesmo tempo.",
                "Segure alguns segundos no ar, contraindo costas e glúteos.",
                "Desça devagar sem prender a respiração.",
            ]),
        "リバーススノーエンジェル": Entry(
            name: "Anjo de neve invertido",
            detail: "Deite de bruços, erga um pouco o peito e mova os braços de cima da cabeça até o quadril. Atinge o trapézio inferior e os músculos ao redor das escápulas para melhorar a postura.",
            steps: [
                "Deite de bruços e erga um pouco o peito do chão.",
                "Estenda os braços acima da cabeça.",
                "Com as palmas para baixo, mova os braços em arco até as laterais.",
                "Contraia as escápulas e volte devagar acima da cabeça.",
            ]),
        "デッドリフト": Entry(
            name: "Levantamento terra",
            detail: "Um levantamento pesado de corpo inteiro. Mantenha as costas retas, puxe a barra ao longo das canelas e levante estendendo o quadril. Nunca arredonde a lombar.",
            steps: [
                "Fique na largura do quadril com as canelas perto da barra.",
                "Mantenha as costas retas e segure a barra.",
                "Puxe a barra mantendo-a perto das canelas.",
                "Estenda o quadril para ficar ereto. Não arredonde as costas.",
            ]),
        "ベントオーバーロウ": Entry(
            name: "Remada curvada",
            detail: "Incline-se para a frente e reme a barra ao umbigo para dar espessura às costas. Minimize o impulso e contraia bem as escápulas.",
            steps: [
                "Segure a barra, flexione um pouco os joelhos e incline-se.",
                "Mantenha as costas retas e o peito erguido.",
                "Reme a barra ao umbigo sem impulso.",
                "Contraia as escápulas e desça devagar.",
            ]),
        "ダンベルロウ": Entry(
            name: "Remada unilateral com haltere",
            detail: "Apoie uma mão em um banco e reme o haltere ao quadril. Move o dorsal em grande amplitude e corrige desequilíbrios entre os lados.",
            steps: [
                "Apoie uma mão e um joelho em um banco, com um haltere na outra mão.",
                "Mantenha as costas retas e o peito erguido.",
                "Leve o cotovelo para trás e reme o haltere ao quadril.",
                "Sinta a contração do dorsal e desça. Faça os dois lados.",
            ]),
        "ラットプルダウン": Entry(
            name: "Puxada na frente",
            detail: "Um exercício guiado que dá largura às costas mesmo se a barra fixa for difícil. Erga o peito, puxe a barra à clavícula e puxe com os dorsais deprimindo as escápulas.",
            steps: [
                "Segure a barra mais aberta que os ombros e fixe as coxas sob o apoio.",
                "Erga o peito e incline-se um pouco para trás.",
                "Puxe a barra à clavícula deprimindo as escápulas.",
                "Mantenha os dorsais ativos e volte devagar.",
            ]),
        "シーテッドロウ（マシン）": Entry(
            name: "Remada sentada na polia",
            detail: "Uma remada sentada que dá espessura ao meio das costas. Erga o peito, leve os cotovelos para trás e contraia as escápulas.",
            steps: [
                "Sente e segure a alça.",
                "Erga o peito e mantenha as costas retas.",
                "Leve os cotovelos para trás e contraia as escápulas.",
                "Contraia o meio das costas e volte devagar.",
            ]),
        "バンドロウ": Entry(
            name: "Remada com faixa",
            detail: "Ancore uma faixa nos pés ou em um poste e puxe para você. A resistência aumenta ao puxar, então contraia bem as escápulas no fim.",
            steps: [
                "Ancore a faixa sob os pés ou em um poste e segure as duas pontas.",
                "Erga o peito e mantenha as costas retas.",
                "Leve os cotovelos para trás e puxe a faixa para você.",
                "Contraia bem as escápulas e volte devagar.",
            ]),
        "シュラッグ": Entry(
            name: "Encolhimento",
            detail: "Segure halteres e encolha os ombros para treinar o trapézio superior. Levante só os ombros reto para cima sem mexer o pescoço. Segure um segundo no topo.",
            steps: [
                "Segure um haltere em cada mão com os braços ao lado.",
                "Sem mexer o pescoço, encolha os ombros reto para cima.",
                "Segure um segundo no topo para contrair o trapézio.",
                "Abaixe os ombros devagar e repita.",
            ]),
        "スクワット（自重）": Entry(
            name: "Agachamento livre",
            detail: "A base do treino de pernas. Fique na largura dos ombros, sente para trás como em uma cadeira até as coxas ficarem paralelas ao chão. Não deixe os joelhos passarem muito das pontas dos pés.",
            steps: [
                "Fique na largura dos ombros com as pontas dos pés levemente abertas.",
                "Erga o peito e sente o quadril para trás como em uma cadeira.",
                "Agache até as coxas ficarem paralelas ao chão.",
                "Empurre pelos calcanhares para levantar.",
            ]),
        "ランジ": Entry(
            name: "Afundo",
            detail: "Dê um grande passo à frente e desça o joelho de trás até quase encostar no chão. Empurre pelo calcanhar da frente para voltar. Trabalha glúteos e coxas.",
            steps: [
                "Dê um grande passo à frente com um pé.",
                "Mantenha o tronco ereto e desça o quadril na vertical.",
                "Pare quando o joelho de trás quase encostar no chão.",
                "Empurre pelo calcanhar da frente para voltar. Faça os dois lados.",
            ]),
        "ブルガリアンスクワット": Entry(
            name: "Agachamento búlgaro",
            detail: "Um agachamento unilateral com o pé de trás em uma cadeira. A carga se concentra na perna da frente, brutal mesmo com peso corporal. Sinta o alongamento do glúteo ao descer.",
            steps: [
                "Apoie o peito do pé de trás em uma cadeira e avance o pé da frente.",
                "Incline o tronco um pouco e carregue a perna da frente.",
                "Desça o quadril sentindo o alongamento do glúteo.",
                "Empurre pela perna da frente para levantar. Faça os dois lados.",
            ]),
        "ヒップリフト": Entry(
            name: "Elevação de quadril",
            detail: "Deite de costas com os joelhos flexionados e eleve o quadril em linha reta. Contraia forte os glúteos no topo. Empurre pelo quadril sem arquear a lombar.",
            steps: [
                "Deite de costas com os joelhos flexionados e os pés na largura do quadril.",
                "Empurre pelos calcanhares e eleve o quadril.",
                "Contraia os glúteos no topo, com ombros a joelhos alinhados.",
                "Desça devagar sem arquear a lombar.",
            ]),
        "カーフレイズ（自重）": Entry(
            name: "Elevação de panturrilha",
            detail: "Fique na ponta dos pés para treinar as panturrilhas. Levante os calcanhares o mais alto possível, segure um segundo e desça devagar. Fazer em um degrau aumenta a amplitude.",
            steps: [
                "Fique na largura do quadril (na borda de um degrau para mais amplitude).",
                "Fique na ponta dos pés, levantando os calcanhares o mais alto possível.",
                "Segure um segundo no topo para contrair as panturrilhas.",
                "Desça os calcanhares devagar.",
            ]),
        "ウォールシット": Entry(
            name: "Cadeira na parede",
            detail: "Uma sustentação isométrica sentado contra a parede. Segure com as coxas paralelas ao chão para esgotar os quadríceps.",
            steps: [
                "Fique de costas para a parede.",
                "Ande com os pés para a frente e deslize pela parede.",
                "Pare quando as coxas ficarem paralelas ao chão.",
                "Segure a posição e esgote os quadríceps.",
            ]),
        "バーベルスクワット": Entry(
            name: "Agachamento com barra",
            detail: "O rei dos levantamentos para os membros inferiores. Coloque a barra nos ombros, erga o peito e desça profundo. Mantenha as costas retas e empurre pelos calcanhares.",
            steps: [
                "Coloque a barra sobre o trapézio e fique na largura dos ombros.",
                "Erga o peito e desça sentando o quadril para trás.",
                "Desça até as coxas ficarem paralelas ou abaixo.",
                "Empurre pelos calcanhares sem arredondar as costas.",
            ]),
        "ルーマニアンデッドリフト": Entry(
            name: "Levantamento terra romeno",
            detail: "Com leve flexão de joelho, empurre o quadril para trás e desça a barra ao longo das canelas. Você sentirá um forte alongamento nos posteriores e glúteos. Mantenha as costas retas.",
            steps: [
                "Segure a barra e fique na largura do quadril.",
                "Mantenha leve flexão de joelho e empurre o quadril para trás.",
                "Desça a barra ao longo das canelas até alongar os posteriores.",
                "Contraia os glúteos e estenda o quadril para levantar.",
            ]),
        "ダンベルスクワット": Entry(
            name: "Agachamento com halteres",
            detail: "Agachamento segurando um haltere em cada mão. Mais fácil e equilibrado que a versão com barra. Erga o peito e desça profundo.",
            steps: [
                "Segure um haltere em cada mão na largura dos ombros.",
                "Erga o peito e sente o quadril para trás para agachar.",
                "Desça até as coxas ficarem paralelas ao chão.",
                "Empurre pelos calcanhares.",
            ]),
        "レッグプレス": Entry(
            name: "Leg press",
            detail: "Empurre uma plataforma com os pés na máquina. Permite cargas pesadas sem forçar a lombar. Não trave os joelhos; desça até as coxas se aproximarem do peito.",
            steps: [
                "Sente e coloque os pés na largura dos ombros no centro da plataforma.",
                "Empurre a plataforma e estenda os joelhos (sem travar).",
                "Flexione os joelhos e desça até as coxas se aproximarem do peito.",
                "Empurre de volta pelos calcanhares e repita.",
            ]),
        "レッグカール": Entry(
            name: "Mesa flexora",
            detail: "Leve os calcanhares aos glúteos deitado ou sentado para atingir os posteriores. Controle a descida para manter a tensão no músculo.",
            steps: [
                "Posicione-se na máquina com o rolo contra os tornozelos.",
                "Leve os calcanhares aos glúteos com os posteriores.",
                "Flexione o máximo possível e segure um segundo.",
                "Desça devagar mantendo o músculo sob tensão.",
            ]),
        "レッグエクステンション": Entry(
            name: "Cadeira extensora",
            detail: "Um exercício de isolamento sentado que atinge os quadríceps estendendo os joelhos. Segure um segundo na extensão completa para contrair.",
            steps: [
                "Sente com o rolo contra os tornozelos.",
                "Estenda os joelhos com os quadríceps.",
                "Segure um segundo na extensão completa para contrair.",
                "Desça devagar e repita.",
            ]),
        "バンドアブダクション": Entry(
            name: "Abdução de quadril com faixa",
            detail: "Passe uma faixa nos joelhos ou tornozelos e empurre as pernas para fora. Atinge o glúteo médio (lateral do quadril) para desenvolver os glúteos e estabilizar a pelve.",
            steps: [
                "Passe uma faixa nos joelhos ou tornozelos.",
                "Fique na largura do quadril em leve agachamento.",
                "Empurre as pernas para fora com os glúteos laterais.",
                "Volte devagar mantendo a tensão da faixa.",
            ]),
        "パイクプッシュアップ": Entry(
            name: "Flexão pike",
            detail: "Eleve bem o quadril em V invertido e desça a cabeça ao chão. Carrega os deltoides anteriores. Uma ótima porta de entrada para a flexão de parada de mãos.",
            steps: [
                "Da posição de flexão, eleve bem o quadril em V invertido.",
                "Aponte a cabeça ao chão e carregue os ombros.",
                "Flexione os cotovelos e desça o topo da cabeça ao chão.",
                "Empurre de volta com os ombros.",
            ]),
        "壁逆立ち": Entry(
            name: "Parada de mãos na parede",
            detail: "Suba em parada de mãos contra a parede e segure. Um exercício isométrico que carrega todo o ombro. Contraia o core e não arqueie a lombar.",
            steps: [
                "Coloque as mãos perto da parede e suba em parada de mãos.",
                "Empurre o chão e sustente-se pelos ombros.",
                "Contraia o core e mantenha uma linha reta sem arquear.",
                "Segure a posição.",
            ]),
        "Yレイズ（うつ伏せ）": Entry(
            name: "Elevação em Y de bruços",
            detail: "Deite de bruços e eleve os braços em Y. Atinge os deltoides posteriores e o trapézio inferior para ajudar a corrigir ombros caídos.",
            steps: [
                "Deite de bruços e estenda os braços acima da cabeça em Y.",
                "Aponte os polegares para cima.",
                "Levante os dois braços do chão com os deltoides posteriores.",
                "Contraia as escápulas um segundo e desça devagar.",
            ]),
        "リバースプランクリーチ": Entry(
            name: "Prancha invertida com alcance",
            detail: "De uma prancha invertida com o quadril elevado, passe um braço sob o corpo. Trabalha ao mesmo tempo os deltoides posteriores e o core.",
            steps: [
                "Apoie as mãos no chão e eleve o quadril em prancha invertida.",
                "Mantenha o corpo em linha reta.",
                "Passe um braço sob o corpo para o lado oposto.",
                "Volte e alterne os lados.",
            ]),
        "アームサークル": Entry(
            name: "Círculos com os braços",
            detail: "Estenda os braços para os lados e faça pequenos círculos. Sutil mas eficaz para os deltoides laterais e ótimo como aquecimento de ombro. Não encolha os ombros.",
            steps: [
                "Estenda os dois braços para os lados na altura dos ombros.",
                "Mantenha os ombros baixos, longe das orelhas.",
                "Faça pequenos círculos para a frente continuamente.",
                "Mude para círculos para trás na metade.",
            ]),
        "バーベルショルダープレス": Entry(
            name: "Desenvolvimento militar com barra",
            detail: "Empurre a barra acima da cabeça em pé ou sentado. Um exercício pesado de ombro. Contraia o core, não arqueie muito a lombar e empurre reto para cima.",
            steps: [
                "Segure a barra na altura da clavícula, mais aberta que os ombros.",
                "Contraia o core e evite arquear muito a lombar.",
                "Empurre a barra reto acima da cabeça.",
                "Trave os cotovelos e desça devagar.",
            ]),
        "ダンベルショルダープレス": Entry(
            name: "Desenvolvimento com halteres",
            detail: "Empurre os halteres das orelhas para cima. Uma amplitude maior treina os dois lados de forma equilibrada. Pare na altura dos ombros na descida.",
            steps: [
                "Segure os halteres ao lado das orelhas.",
                "Contraia o core para estabilizar a postura.",
                "Empurre reto acima da cabeça.",
                "Desça devagar até a altura dos ombros.",
            ]),
        "サイドレイズ": Entry(
            name: "Elevação lateral",
            detail: "Um básico dos deltoides laterais que dá largura ao ombro. Eleve os halteres para os lados até a altura dos ombros. Lidere um pouco com os mindinhos e evite impulso.",
            steps: [
                "Segure um haltere de cada lado com os cotovelos levemente flexionados.",
                "Eleve-os para os lados sem impulso.",
                "Suba até a altura dos ombros, liderando um pouco com os mindinhos.",
                "Desça devagar e repita.",
            ]),
        "フロントレイズ": Entry(
            name: "Elevação frontal",
            detail: "Eleve os halteres à frente até a altura dos ombros para treinar os deltoides anteriores. Evite impulso e não suba acima do ombro.",
            steps: [
                "Segure os halteres à frente das coxas.",
                "Mantenha uma leve flexão fixa nos cotovelos.",
                "Eleve-os à frente até a altura dos ombros sem impulso.",
                "Desça devagar. Não suba muito alto.",
            ]),
        "リアレイズ": Entry(
            name: "Crucifixo inverso",
            detail: "Incline-se para a frente e eleve os halteres para os lados para treinar os deltoides posteriores. Essa região teimosa responde a pouca carga e muitas repetições.",
            steps: [
                "Segure os halteres e incline o tronco para a frente.",
                "Mantenha leve flexão nos cotovelos e as costas retas.",
                "Eleve os halteres para os lados com os deltoides posteriores.",
                "Contraia as escápulas um segundo e desça devagar.",
            ]),
        "ショルダープレス（マシン）": Entry(
            name: "Desenvolvimento na máquina",
            detail: "Uma máquina com trajetória estável que permite empurrar os ombros com segurança. Ajuste as pegadas na altura dos ombros; empurre até a extensão e não desça demais.",
            steps: [
                "Ajuste o assento para as pegadas ficarem na altura dos ombros.",
                "Encoste as costas no apoio.",
                "Empurre as pegadas totalmente acima da cabeça.",
                "Desça até a altura dos ombros; não desça demais.",
            ]),
        "バンドサイドレイズ": Entry(
            name: "Elevação lateral com faixa",
            detail: "Fique sobre uma faixa e eleve-a para os lados. A resistência aumenta ao subir, mantendo tensão constante nos deltoides laterais. Sem impulso.",
            steps: [
                "Fique sobre o meio da faixa e segure as duas pontas.",
                "Posicione-se com leve flexão nos cotovelos.",
                "Eleve para os lados até a altura dos ombros sem impulso.",
                "Desça devagar mantendo a tensão da faixa.",
            ]),
        "ナロープッシュアップ": Entry(
            name: "Flexão fechada (tríceps)",
            detail: "Uma flexão com as mãos juntas para atingir o tríceps. Mantenha os cotovelos junto ao corpo e leve-os para trás ao descer. Foque nos braços mais que no peito.",
            steps: [
                "Coloque as mãos mais juntas que os ombros, sob o peito.",
                "Mantenha os cotovelos junto ao corpo e o corpo em linha reta.",
                "Desça o corpo levando os cotovelos para trás.",
                "Empurre de volta com o tríceps.",
            ]),
        "ベンチディップス": Entry(
            name: "Mergulho no banco",
            detail: "Apoie as mãos em uma cadeira e desça e suba para treinar o tríceps. Flexione os cotovelos para trás, afunde o quadril e empurre. Mantenha os ombros baixos.",
            steps: [
                "Apoie as mãos na borda de uma cadeira e afaste os pés.",
                "Abaixe os ombros e tire o quadril da cadeira.",
                "Flexione os cotovelos para trás e desça o quadril.",
                "Empurre de volta com o tríceps.",
            ]),
        "ダイヤモンドプッシュアップ": Entry(
            name: "Flexão diamante",
            detail: "Forme um losango com os polegares e indicadores e desça o peito sobre ele. Atinge muito o tríceps. Mantenha os cotovelos junto ao corpo o tempo todo.",
            steps: [
                "Forme um losango com os polegares e indicadores sob o peito.",
                "Mantenha o corpo reto e os cotovelos junto ao corpo.",
                "Desça o peito devagar sobre o losango.",
                "Empurre de volta com o tríceps.",
            ]),
        "チンニング（腕狙い）": Entry(
            name: "Barra fixa supinada fechada",
            detail: "Barra fixa supinada com pegada fechada para focar no bíceps. Evite balançar e concentre-se em puxar flexionando os braços.",
            steps: [
                "Segure a barra supinada, mais fechada que os ombros.",
                "Fique pendurado reto sem balançar.",
                "Puxe-se flexionando os braços.",
                "Desça devagar focando no bíceps.",
            ]),
        "リバースプランク": Entry(
            name: "Prancha invertida",
            detail: "Apoie as mãos no chão, eleve o quadril e mantenha o corpo em linha reta. Um exercício isométrico para tríceps e core. Mantenha as mãos sob os ombros e não encolha.",
            steps: [
                "Sente e apoie as mãos no chão atrás, sob os ombros.",
                "Eleve o quadril em linha reta.",
                "Abra o peito e não encolha os ombros.",
                "Segure a posição.",
            ]),
        "逆手テーブルロウ": Entry(
            name: "Remada supinada sob a mesa",
            detail: "Fique sob uma mesa e puxe-se com pegada supinada. Trabalha o bíceps junto com as costas. Foque em puxar flexionando os cotovelos.",
            steps: [
                "Deite de barriga para cima sob uma mesa firme.",
                "Segure a borda supinada e mantenha o corpo em linha reta.",
                "Puxe o peito à borda flexionando os cotovelos.",
                "Desça devagar focando no bíceps.",
            ]),
        "バーベルカール": Entry(
            name: "Rosca direta com barra",
            detail: "O exercício fundamental de bíceps. Fixe os cotovelos ao lado do corpo e suba a barra sem impulso. Controle também a descida.",
            steps: [
                "Em pé, segure a barra supinada na largura dos ombros.",
                "Fixe os cotovelos ao lado do corpo.",
                "Suba a barra sem impulso.",
                "Contraia o bíceps e desça devagar.",
            ]),
        "ダンベルカール": Entry(
            name: "Rosca com halteres",
            detail: "Suba os halteres e gire os punhos para fora no topo para uma contração extra do bíceps. Mantenha os cotovelos fixos; faça os dois braços juntos ou alternando.",
            steps: [
                "Segure um haltere de cada lado.",
                "Mantenha os cotovelos fixos e suba.",
                "Gire os punhos para fora no topo para contrair.",
                "Desça devagar. Alterne ou faça juntos.",
            ]),
        "ハンマーカール": Entry(
            name: "Rosca martelo",
            detail: "Rosca com pegada neutra (palmas viradas para dentro). Treina o bíceps externo e os antebraços juntos para dar espessura ao braço. Mantenha os cotovelos fixos.",
            steps: [
                "Segure os halteres em pegada neutra (palmas para dentro).",
                "Fixe os cotovelos ao lado do corpo.",
                "Suba mantendo a pegada neutra.",
                "Desça devagar e repita.",
            ]),
        "トライセプスエクステンション": Entry(
            name: "Extensão de tríceps acima da cabeça",
            detail: "Desça um haltere atrás da cabeça e estenda os cotovelos para treinar o tríceps. Mantenha os cotovelos no lugar e os braços verticais.",
            steps: [
                "Segure um haltere com as duas mãos e levante acima da cabeça.",
                "Mantenha os braços verticais e flexione só os cotovelos atrás da cabeça.",
                "Não deixe os cotovelos abrirem.",
                "Estenda os cotovelos com o tríceps para voltar.",
            ]),
        "ケーブルプッシュダウン": Entry(
            name: "Tríceps na polia",
            detail: "Empurre uma polia reto para baixo para contrair o tríceps. Fixe os cotovelos ao lado do corpo e segure um segundo na extensão completa.",
            steps: [
                "Segure uma barra de polia alta.",
                "Fixe os cotovelos ao lado do corpo e incline-se um pouco.",
                "Empurre a barra reto para baixo movendo só os antebraços.",
                "Segure um segundo na extensão e volte devagar.",
            ]),
        "バンドカール": Entry(
            name: "Rosca com faixa",
            detail: "Rosca em pé sobre uma faixa. A resistência aumenta ao subir, então continue puxando e contraia o bíceps por completo no topo. Mantenha os cotovelos fixos.",
            steps: [
                "Fique sobre o meio da faixa e segure as duas pontas.",
                "Fixe os cotovelos ao lado do corpo.",
                "Suba a faixa em rosca (a resistência aumenta ao subir).",
                "Contraia o bíceps no topo e desça devagar.",
            ]),
        "リストカール": Entry(
            name: "Rosca de punho",
            detail: "Apoie os antebraços nas coxas ou em um banco e flexione os halteres só com os punhos. Treina os antebraços e a pegada. Use toda a amplitude.",
            steps: [
                "Apoie os antebraços nas coxas ou em um banco com os punhos além da borda.",
                "Segure os halteres com as palmas para cima.",
                "Flexione os halteres usando só os punhos.",
                "Desça devagar em toda a amplitude.",
            ]),
        "プランク": Entry(
            name: "Prancha",
            detail: "A sustentação básica do core: apoie-se nos cotovelos e nas pontas dos pés em linha reta da cabeça aos calcanhares. Contraia o abdômen, mantenha o quadril nivelado e continue respirando.",
            steps: [
                "Coloque os cotovelos sob os ombros e apoie-se nas pontas dos pés.",
                "Mantenha uma linha reta da cabeça aos calcanhares.",
                "Contraia o abdômen — não deixe o quadril cair ou subir.",
                "Segure a posição enquanto continua respirando.",
            ]),
        "サイドプランク": Entry(
            name: "Prancha lateral",
            detail: "Apoie-se em um cotovelo e na lateral de um pé. Atinge os oblíquos. Mantenha o corpo em linha reta para o quadril não cair. Faça os dois lados.",
            steps: [
                "Deite de lado com o cotovelo sob o ombro.",
                "Empilhe os pés e apoie-se de lado.",
                "Eleve o quadril e mantenha o corpo em linha reta.",
                "Segure a posição. Faça os dois lados.",
            ]),
        "クランチ": Entry(
            name: "Abdominal crunch",
            detail: "Deite de costas com os joelhos flexionados e enrole o tronco só até as escápulas saírem do chão. Atinge o abdômen superior. Enrole com o abdômen, não com o pescoço.",
            steps: [
                "Deite de costas com os joelhos flexionados, mãos junto à cabeça ou no peito.",
                "Enrole o tronco contraindo o abdômen.",
                "Suba só até as escápulas saírem do chão.",
                "Não puxe o pescoço; desça devagar.",
            ]),
        "レッグレイズ": Entry(
            name: "Elevação de pernas deitado",
            detail: "Deite de costas, eleve as pernas juntas e desça devagar. Atinge o abdômen inferior. Pressione as mãos no chão para a lombar não arquear.",
            steps: [
                "Deite de costas com as mãos ao lado ou sob o quadril.",
                "Eleve as pernas juntas, reto para cima.",
                "Pressione a lombar contra o chão para não arquear.",
                "Desça devagar contraindo o abdômen inferior.",
            ]),
        "バイシクルクランチ": Entry(
            name: "Abdominal bicicleta",
            detail: "Leve o cotovelo ao joelho oposto como se pedalasse. Atinge abdômen e oblíquos juntos. Use a rotação e não apresse com impulso.",
            steps: [
                "Deite de costas com as mãos junto à cabeça e as pernas elevadas.",
                "Leve um joelho ao peito e o cotovelo oposto até ele.",
                "Gire o tronco para juntar cotovelo e joelho.",
                "Alterne os lados como se pedalasse.",
            ]),
        "マウンテンクライマー": Entry(
            name: "Escalador",
            detail: "Na posição de flexão, leve os joelhos ao peito alternadamente e rápido. Trabalha o core e o cardio ao mesmo tempo. Mantenha o corpo em linha sem elevar o quadril.",
            steps: [
                "Fique na posição de flexão com as mãos sob os ombros.",
                "Mantenha o corpo em linha reta (não eleve o quadril).",
                "Leve um joelho ao peito rapidamente.",
                "Troque de perna com ritmo e alterne.",
            ]),
        "ロシアンツイスト": Entry(
            name: "Russian twist",
            detail: "Sente, incline-se para trás e gire de um lado para o outro. Atinge os oblíquos. Elevar os pés aumenta a dificuldade. Não arredonde muito as costas.",
            steps: [
                "Sente com os joelhos flexionados e incline o tronco para trás.",
                "Mantenha o peito erguido sem arredondar muito as costas.",
                "Junte as mãos e gire o tronco de um lado para o outro.",
                "Eleve os pés para aumentar a dificuldade se puder.",
            ]),
        "デッドバグ": Entry(
            name: "Dead bug",
            detail: "Deite de costas com braços e pernas para cima e estenda devagar os membros opostos. Um exercício de core amigável às costas. Mantenha a lombar pressionada no chão.",
            steps: [
                "Deite de costas com os braços para o teto e os joelhos a 90 graus.",
                "Pressione a lombar contra o chão.",
                "Estenda devagar um braço e a perna oposta.",
                "Volte e faça o outro lado.",
            ]),
        "ハンギングレッグレイズ": Entry(
            name: "Elevação de pernas na barra",
            detail: "Fique pendurado em uma barra e eleve as pernas. Um exercício avançado que castiga o abdômen inferior. Minimize o balanço; flexionar os joelhos facilita.",
            steps: [
                "Fique pendurado em uma barra e estabilize o corpo.",
                "Minimize o balanço e eleve as pernas com o abdômen inferior.",
                "Suba até as pernas ficarem paralelas ou acima (flexione os joelhos para facilitar).",
                "Desça devagar e repita.",
            ]),
        "ケーブルクランチ": Entry(
            name: "Abdominal na polia",
            detail: "Ajoelhe segurando uma polia e enrole o tronco para baixo. Permite carregar muito o abdômen. Não puxe com os braços — arredonde as costas e enrole com o abdômen.",
            steps: [
                "Segure uma polia alta e ajoelhe.",
                "Segure a corda junto à cabeça.",
                "Sem puxar com os braços, arredonde e enrole o tronco para baixo.",
                "Contraia o abdômen e volte devagar.",
            ]),
        "ホローホールド": Entry(
            name: "Hollow hold",
            detail: "Deite de costas, estenda braços e pernas e mantenha uma forma de banana com a lombar no chão. Um exercício isométrico para todo o core. Baixe os membros se as costas saírem do chão.",
            steps: [
                "Deite de costas com os braços acima da cabeça e as pernas retas.",
                "Pressione a lombar e eleve um pouco os braços e as pernas.",
                "Mantenha o corpo em forma de banana.",
                "Baixe braços e pernas para ajustar se as costas saírem do chão.",
            ]),
    ]
}
