//
//  ExerciseTranslations+Entries_id.swift
//  MuscleSlot
//
//  76種目のインドネシア語訳本体。キーは Exercise.name（日本語）。
//  種目名は各言語のジムで通用する自然な呼称を採用（直訳しない）。
//

import Foundation

extension ExerciseTranslations {

    static let entries_id: [String: Entry] = [
        "腕立て伏せ": Entry(
            name: "Push-Up",
            detail: "Latihan dada klasik. Letakkan tangan sedikit lebih lebar dari bahu, jaga tubuh tetap lurus, dan turunkan dada hingga hampir menyentuh lantai. Jaga siku sekitar 45 derajat.",
            steps: [
                "Bertumpu di lantai dengan tangan sedikit lebih lebar dari bahu.",
                "Jaga kepala, pinggul, dan tumit dalam satu garis lurus dan kencangkan tubuh seperti plank.",
                "Turunkan tubuh hingga dada hampir menyentuh lantai, siku terbuka sekitar 45 derajat.",
                "Dorong lantai dengan dada dan luruskan lengan untuk kembali.",
            ]),
        "ワイド腕立て": Entry(
            name: "Push-Up Lebar",
            detail: "Letakkan tangan sekitar 1,5 kali lebar bahu untuk lebih menargetkan dada luar dan atas. Jangan turun terlalu dalam untuk melindungi bahu.",
            steps: [
                "Letakkan tangan di lantai sekitar 1,5 kali lebar bahu.",
                "Jaga tubuh tetap lurus dan dada terangkat.",
                "Turunkan tubuh sambil merasakan regangan dada luar.",
                "Hindari turun terlalu dalam yang membebani bahu, lalu dorong naik.",
            ]),
        "ナロー腕立て": Entry(
            name: "Push-Up Sempit",
            detail: "Letakkan tangan lebih rapat dari bahu untuk menargetkan dada dalam dan trisep. Jaga siku rapat dan tarik ke belakang saat turun.",
            steps: [
                "Letakkan tangan lebih rapat dari bahu, kira-kira di bawah dada.",
                "Jaga siku rapat dan tubuh tetap lurus.",
                "Turunkan tubuh dengan menarik siku ke belakang.",
                "Dorong naik dengan fokus pada dada dalam dan trisep.",
            ]),
        "デクライン腕立て": Entry(
            name: "Push-Up Deklinasi",
            detail: "Angkat kaki di kursi agar kepala lebih rendah. Ini memindahkan beban ke dada atas dan lebih sulit dari push-up biasa.",
            steps: [
                "Letakkan kaki di kursi atau kotak agar kepala lebih rendah dari pinggul.",
                "Jaga tangan selebar bahu dan tubuh tetap lurus.",
                "Turunkan tubuh dengan fokus pada dada atas.",
                "Dorong naik lewat dada atas untuk kembali.",
            ]),
        "膝つき腕立て": Entry(
            name: "Push-Up Lutut",
            detail: "Versi pemula dengan lutut di lantai untuk mengurangi beban. Jaga garis lurus dari lutut ke kepala dan turun perlahan dengan teknik baik.",
            steps: [
                "Letakkan lutut di lantai dan tangan sedikit lebih lebar dari bahu.",
                "Jaga garis lurus dari lutut ke kepala.",
                "Turunkan dada ke arah lantai perlahan.",
                "Dorong naik tanpa merusak postur.",
            ]),
        "ベンチプレス": Entry(
            name: "Bench Press",
            detail: "Raja latihan dada untuk beban berat. Tarik tulang belikat, buat lengkungan kecil, turunkan bar ke setinggi puting, lalu dorong naik.",
            steps: [
                "Berbaring di bangku, tarik tulang belikat, dan buat lengkungan kecil.",
                "Pegang bar sedikit lebih lebar dari bahu.",
                "Turunkan bar perlahan ke setinggi puting.",
                "Dorong naik lewat dada dan kunci siku.",
            ]),
        "インクラインベンチプレス": Entry(
            name: "Incline Bench Press",
            detail: "Atur bangku ke 30–45 derajat untuk membangun dada atas. Turunkan bar tepat di bawah tulang selangka. Sudut terlalu curam mengubahnya jadi latihan bahu.",
            steps: [
                "Atur bangku ke 30–45 derajat dan berbaring.",
                "Tarik tulang belikat dan pegang bar lebih lebar dari bahu.",
                "Turunkan bar tepat di bawah tulang selangka.",
                "Dorong naik lewat dada atas dan kembali.",
            ]),
        "ダンベルプレス": Entry(
            name: "Dumbbell Bench Press",
            detail: "Memberi rentang gerak lebih besar dari barbel, memungkinkan dada meregang dan berkontraksi penuh. Rasakan regangan di bawah dan satukan dumbel di atas.",
            steps: [
                "Berbaring di bangku dengan dumbel di setiap tangan.",
                "Tarik tulang belikat dan pegang dumbel di atas dada.",
                "Turunkan hingga terasa regangan di dada.",
                "Dorong naik dan satukan dumbel untuk berkontraksi.",
            ]),
        "インクラインダンベルプレス": Entry(
            name: "Incline Dumbbell Press",
            detail: "Menargetkan dada atas di bangku miring. Turun dalam untuk meregangkan dada atas dan satukan ke dalam di atas.",
            steps: [
                "Duduk di bangku miring dengan dumbel di setiap tangan.",
                "Posisikan di atas dada atas dan tarik tulang belikat.",
                "Turun dalam untuk meregangkan dada atas.",
                "Dorong naik dan satukan dumbel ke dalam di atas.",
            ]),
        "ダンベルフライ": Entry(
            name: "Dumbbell Fly",
            detail: "Latihan isolasi di mana kamu membuka dan menutup lengan membentuk busur dengan siku sedikit ditekuk. Buka lebar untuk meregangkan dada, lalu tutup seperti memeluk.",
            steps: [
                "Berbaring dan pegang dumbel di atas dada.",
                "Jaga siku tetap sedikit ditekuk secara konsisten.",
                "Buka lengan ke samping membentuk busur, meregangkan dada.",
                "Tutup lengan seperti memeluk, mengontraksikan dada.",
            ]),
        "チェストプレス（マシン）": Entry(
            name: "Chest Press Mesin",
            detail: "Latihan mesin dengan jalur tetap agar bisa sampai gagal dengan aman. Atur pegangan setinggi dada dan dorong penuh untuk mengontraksikan dada. Bagus untuk pemula.",
            steps: [
                "Atur tinggi kursi agar pegangan setinggi dada.",
                "Tekan punggung ke sandaran dan angkat dada.",
                "Dorong pegangan penuh ke depan.",
                "Rasakan kontraksi dada, lalu kembali perlahan.",
            ]),
        "ケーブルクロスオーバー": Entry(
            name: "Cable Crossover",
            detail: "Kabel menjaga tegangan konstan pada otot. Targetkan dada tengah hingga bawah dengan menyilangkan tangan di depan tubuh untuk kontraksi kuat.",
            steps: [
                "Atur kabel tinggi dan pegang satu handle di setiap tangan.",
                "Langkahkan satu kaki ke depan dan condong sedikit ke depan.",
                "Bawa tangan ke bawah dan silangkan di depan tubuh membentuk busur.",
                "Kontraksikan kuat bagian tengah dada, lalu kembali perlahan.",
            ]),
        "バンドチェストプレス": Entry(
            name: "Band Chest Press",
            detail: "Lingkarkan band di belakang punggung dan dorong ke depan. Resistensi meningkat saat band meregang, jadi dorong sampai lurus penuh.",
            steps: [
                "Lingkarkan band di belakang punggung dan pegang kedua ujungnya.",
                "Posisikan setinggi dada dengan kaki bertumpuk-silang untuk kestabilan.",
                "Dorong lurus ke depan.",
                "Jaga tegangan sampai lurus, lalu kembali perlahan.",
            ]),
        "ディップス": Entry(
            name: "Dips",
            detail: "Turun dan naik pada palang paralel. Condong ke depan untuk dada bawah, atau tetap tegak untuk trisep. Batasi kedalaman jika bahu sakit.",
            steps: [
                "Pegang palang paralel dan topang diri dengan lengan lurus.",
                "Condongkan tubuh ke depan untuk menargetkan dada bawah.",
                "Tekuk siku dan turunkan tubuh.",
                "Dorong naik untuk kembali. Batasi kedalaman jika bahu sakit.",
            ]),
        "懸垂": Entry(
            name: "Pull-Up",
            detail: "Latihan berat badan terbaik untuk lebar punggung. Pegang pronasi sedikit lebih lebar dari bahu dan tarik dada ke palang. Tarik dengan punggung, bukan ayunan.",
            steps: [
                "Pegang palang secara pronasi, sedikit lebih lebar dari bahu.",
                "Turunkan bahu dan angkat dada.",
                "Tanpa ayunan, tarik dada ke arah palang.",
                "Rasakan kontraksi punggung, lalu turun perlahan.",
            ]),
        "チンニング（逆手懸垂）": Entry(
            name: "Chin-Up",
            detail: "Pull-up dengan pegangan supinasi (telapak menghadap kamu). Membebani bisep kuat selain punggung dan lebih mudah ditarik dari versi pronasi.",
            steps: [
                "Pegang palang secara supinasi (telapak menghadap kamu) selebar bahu.",
                "Angkat dada dan turunkan bahu.",
                "Tarik dada ke palang dengan lengan dan punggung.",
                "Turun perlahan dan ulangi.",
            ]),
        "インバーテッドロウ": Entry(
            name: "Inverted Row",
            detail: "Masuk di bawah palang rendah atau meja dan tarik tubuh dengan sudut. Jaga tubuh lurus, tarik tulang belikat, dan tarik dada ke atas.",
            steps: [
                "Berbaring di bawah palang rendah atau meja dan pegang.",
                "Jaga tubuh lurus dengan tumit sebagai poros.",
                "Tarik tulang belikat dan tarik dada ke palang.",
                "Turun perlahan dan ulangi.",
            ]),
        "バックエクステンション": Entry(
            name: "Back Extension",
            detail: "Angkat torso dari posisi telungkup untuk melatih erector spinae (punggung bawah). Jangan hiperekstensi; berhenti di rentang yang terasa kontraksi punggung.",
            steps: [
                "Berbaring telungkup dengan tangan di dekat kepala atau di dada.",
                "Gunakan punggung untuk mengangkat torso perlahan.",
                "Jangan hiperekstensi; berhenti saat terasa kontraksi.",
                "Turun perlahan dan ulangi.",
            ]),
        "スーパーマン": Entry(
            name: "Superman",
            detail: "Berbaring telungkup dan angkat lengan dan kaki bersamaan, tahan beberapa detik. Mengencangkan seluruh punggung dan punggung bawah. Terus bernapas.",
            steps: [
                "Berbaring telungkup dengan lengan lurus ke depan.",
                "Angkat kedua lengan dan kedua kaki bersamaan.",
                "Tahan beberapa detik di udara, kencangkan punggung dan bokong.",
                "Turun perlahan tanpa menahan napas.",
            ]),
        "リバーススノーエンジェル": Entry(
            name: "Reverse Snow Angel",
            detail: "Telungkup, angkat dada sedikit, dan sapu lengan dari atas kepala hingga pinggul. Menargetkan trapesius bawah dan otot sekitar tulang belikat untuk memperbaiki postur.",
            steps: [
                "Telungkup dan angkat dada sedikit dari lantai.",
                "Rentangkan lengan ke atas kepala.",
                "Dengan telapak menghadap bawah, sapu lengan membentuk busur ke sisi.",
                "Kencangkan tulang belikat, lalu kembali perlahan ke atas kepala.",
            ]),
        "デッドリフト": Entry(
            name: "Deadlift",
            detail: "Angkatan berat seluruh tubuh. Jaga punggung datar, tarik bar sepanjang tulang kering, dan berdiri dengan meluruskan pinggul. Jangan pernah membungkukkan punggung bawah.",
            steps: [
                "Berdiri selebar pinggul dengan tulang kering dekat bar.",
                "Jaga punggung datar dan pegang bar.",
                "Tarik bar dengan menjaganya dekat tulang kering.",
                "Luruskan pinggul untuk berdiri tegak. Jangan bungkukkan punggung.",
            ]),
        "ベントオーバーロウ": Entry(
            name: "Bent-Over Row",
            detail: "Condong ke depan dan tarik bar ke pusar untuk membangun ketebalan punggung. Minimalkan ayunan dan kencangkan tulang belikat penuh.",
            steps: [
                "Pegang bar, tekuk lutut sedikit, dan condong ke depan.",
                "Jaga punggung datar dan dada terangkat.",
                "Tarik bar ke pusar tanpa ayunan.",
                "Kencangkan tulang belikat, lalu turun perlahan.",
            ]),
        "ダンベルロウ": Entry(
            name: "Dumbbell Row Satu Lengan",
            detail: "Topang satu tangan di bangku dan tarik dumbel ke pinggul. Menggerakkan latisimus pada rentang besar dan menyeimbangkan sisi kiri-kanan.",
            steps: [
                "Letakkan satu tangan dan lutut di bangku, dumbel di tangan lain.",
                "Jaga punggung datar dan dada terangkat.",
                "Tarik siku ke belakang dan tarik dumbel ke pinggul.",
                "Rasakan kontraksi latisimus, lalu turun. Lakukan kedua sisi.",
            ]),
        "ラットプルダウン": Entry(
            name: "Lat Pulldown",
            detail: "Latihan mesin yang membangun lebar punggung meski pull-up sulit. Angkat dada, tarik bar ke tulang selangka, dan tarik dengan latisimus sambil menurunkan tulang belikat.",
            steps: [
                "Pegang bar lebih lebar dari bahu dan kunci paha di bawah bantalan.",
                "Angkat dada dan condong sedikit ke belakang.",
                "Tarik bar ke tulang selangka sambil menurunkan tulang belikat.",
                "Jaga latisimus aktif, lalu kembali perlahan.",
            ]),
        "シーテッドロウ（マシン）": Entry(
            name: "Seated Cable Row",
            detail: "Latihan tarik duduk yang membangun ketebalan punggung tengah. Angkat dada, tarik siku ke belakang, dan kencangkan tulang belikat.",
            steps: [
                "Duduk dan pegang handle.",
                "Angkat dada dan jaga punggung datar.",
                "Tarik siku ke belakang dan kencangkan tulang belikat.",
                "Kontraksikan punggung tengah, lalu kembali perlahan.",
            ]),
        "バンドロウ": Entry(
            name: "Band Row",
            detail: "Jangkarkan band di kaki atau tiang dan tarik ke arahmu. Resistensi meningkat saat menarik, jadi kencangkan tulang belikat penuh di akhir.",
            steps: [
                "Jangkarkan band di bawah kaki atau tiang dan pegang kedua ujungnya.",
                "Angkat dada dan jaga punggung datar.",
                "Tarik siku ke belakang dan tarik band ke arahmu.",
                "Kencangkan tulang belikat penuh, lalu kembali perlahan.",
            ]),
        "シュラッグ": Entry(
            name: "Shrug",
            detail: "Pegang dumbel dan angkat bahu untuk melatih trapesius atas. Angkat hanya bahu lurus ke atas tanpa menggerakkan leher. Tahan sedetik di atas.",
            steps: [
                "Pegang dumbel di setiap tangan dengan lengan di sisi.",
                "Tanpa menggerakkan leher, angkat bahu lurus ke atas.",
                "Tahan sedetik di atas untuk mengencangkan trapesius.",
                "Turunkan bahu perlahan dan ulangi.",
            ]),
        "スクワット（自重）": Entry(
            name: "Squat Berat Badan",
            detail: "Fondasi latihan kaki. Berdiri selebar bahu, duduk ke belakang seperti ke kursi hingga paha sejajar lantai. Jangan biarkan lutut melewati jari kaki terlalu jauh.",
            steps: [
                "Berdiri selebar bahu dengan jari kaki sedikit terbuka.",
                "Angkat dada dan dudukkan pinggul ke belakang seperti ke kursi.",
                "Squat hingga paha sejajar lantai.",
                "Dorong lewat tumit untuk berdiri kembali.",
            ]),
        "ランジ": Entry(
            name: "Lunge",
            detail: "Ambil langkah besar ke depan dan turunkan lutut belakang hampir menyentuh lantai. Dorong lewat tumit depan untuk kembali. Melatih bokong dan paha.",
            steps: [
                "Ambil langkah besar ke depan dengan satu kaki.",
                "Jaga torso tegak dan turunkan pinggul lurus ke bawah.",
                "Berhenti saat lutut belakang hampir menyentuh lantai.",
                "Dorong lewat tumit depan untuk kembali. Lakukan kedua sisi.",
            ]),
        "ブルガリアンスクワット": Entry(
            name: "Bulgarian Split Squat",
            detail: "Squat satu kaki dengan kaki belakang di kursi. Beban terpusat pada kaki depan, brutal bahkan dengan berat badan. Rasakan regangan bokong saat turun.",
            steps: [
                "Letakkan punggung kaki belakang di kursi dan langkahkan kaki depan ke depan.",
                "Condongkan torso sedikit dan bebani kaki depan.",
                "Turunkan pinggul sambil merasakan regangan bokong.",
                "Dorong lewat kaki depan untuk berdiri. Lakukan kedua sisi.",
            ]),
        "ヒップリフト": Entry(
            name: "Glute Bridge",
            detail: "Berbaring telentang dengan lutut ditekuk dan angkat pinggul ke garis lurus. Kencangkan bokong kuat di atas. Dorong lewat pinggul tanpa melengkungkan punggung bawah.",
            steps: [
                "Berbaring telentang dengan lutut ditekuk dan kaki selebar pinggul.",
                "Dorong lewat tumit dan angkat pinggul.",
                "Kencangkan bokong di atas, bahu-ke-lutut satu garis.",
                "Turun perlahan tanpa melengkungkan punggung bawah.",
            ]),
        "カーフレイズ（自重）": Entry(
            name: "Calf Raise",
            detail: "Berjinjit untuk melatih betis. Angkat tumit setinggi mungkin, tahan sedetik, dan turun perlahan. Melakukannya di anak tangga menambah rentang gerak.",
            steps: [
                "Berdiri selebar pinggul (di tepi anak tangga untuk rentang lebih).",
                "Berjinjit, mengangkat tumit setinggi mungkin.",
                "Tahan sedetik di atas untuk mengencangkan betis.",
                "Turunkan tumit perlahan.",
            ]),
        "ウォールシット": Entry(
            name: "Wall Sit",
            detail: "Tahanan isometrik dalam posisi duduk menempel dinding. Tahan dengan paha sejajar lantai untuk membakar kuadrisep.",
            steps: [
                "Berdiri dengan punggung menempel dinding.",
                "Langkahkan kaki keluar dan meluncur turun di dinding.",
                "Berhenti saat paha sejajar lantai.",
                "Tahan posisi dan bakar kuadrisep.",
            ]),
        "バーベルスクワット": Entry(
            name: "Barbell Squat",
            detail: "Raja angkatan untuk tubuh bagian bawah. Letakkan bar di bahu, angkat dada, dan squat dalam. Jaga punggung datar dan dorong lewat tumit.",
            steps: [
                "Letakkan bar di trapesius dan berdiri selebar bahu.",
                "Angkat dada dan squat sambil mendudukkan pinggul ke belakang.",
                "Turun hingga paha sejajar atau lebih rendah.",
                "Dorong lewat tumit tanpa membungkukkan punggung.",
            ]),
        "ルーマニアンデッドリフト": Entry(
            name: "Romanian Deadlift",
            detail: "Dengan tekukan lutut ringan, dorong pinggul ke belakang dan turunkan bar sepanjang tulang kering. Kamu akan merasakan regangan kuat di hamstring dan bokong. Jaga punggung datar sepanjang gerakan.",
            steps: [
                "Pegang bar dan berdiri selebar pinggul.",
                "Jaga tekukan lutut ringan dan dorong pinggul ke belakang.",
                "Turunkan bar sepanjang tulang kering hingga hamstring meregang.",
                "Kencangkan bokong dan luruskan pinggul untuk berdiri.",
            ]),
        "ダンベルスクワット": Entry(
            name: "Dumbbell Squat",
            detail: "Squat sambil memegang dumbel di setiap tangan. Lebih mudah dan seimbang dari versi barbel. Angkat dada dan squat dalam.",
            steps: [
                "Pegang dumbel di setiap tangan dan berdiri selebar bahu.",
                "Angkat dada dan dudukkan pinggul ke belakang untuk squat.",
                "Turun hingga paha sejajar lantai.",
                "Dorong lewat tumit.",
            ]),
        "レッグプレス": Entry(
            name: "Leg Press",
            detail: "Dorong pelat dengan kaki di mesin. Memungkinkan beban berat tanpa membebani punggung bawah. Jangan kunci lutut; turun hingga paha mendekati dada.",
            steps: [
                "Duduk dan letakkan kaki selebar bahu di tengah pelat.",
                "Dorong pelat dan luruskan lutut (jangan dikunci).",
                "Tekuk lutut dan turun hingga paha mendekati dada.",
                "Dorong lewat tumit lagi dan ulangi.",
            ]),
        "レッグカール": Entry(
            name: "Leg Curl",
            detail: "Tarik tumit ke arah bokong sambil berbaring atau duduk untuk menargetkan hamstring. Kendalikan fase turun untuk menjaga tegangan pada otot.",
            steps: [
                "Posisikan di mesin dengan bantalan menempel pergelangan kaki.",
                "Tarik tumit ke bokong menggunakan hamstring.",
                "Tekuk sejauh mungkin dan tahan sedetik.",
                "Turun perlahan, menjaga otot tetap tegang.",
            ]),
        "レッグエクステンション": Entry(
            name: "Leg Extension",
            detail: "Latihan isolasi duduk yang menargetkan kuadrisep dengan meluruskan lutut. Tahan sedetik di ekstensi penuh untuk mengontraksikan.",
            steps: [
                "Duduk dengan bantalan menempel pergelangan kaki.",
                "Luruskan lutut menggunakan kuadrisep.",
                "Tahan sedetik di ekstensi penuh untuk mengontraksikan.",
                "Turun perlahan dan ulangi.",
            ]),
        "バンドアブダクション": Entry(
            name: "Band Hip Abduction",
            detail: "Lingkarkan band di lutut atau pergelangan kaki dan dorong kaki ke luar. Menargetkan gluteus medius (sisi pinggul) untuk membangun bokong dan menstabilkan panggul.",
            steps: [
                "Lingkarkan band di lutut atau pergelangan kaki.",
                "Berdiri selebar pinggul dalam squat ringan.",
                "Dorong kaki ke luar menggunakan bokong sisi luar.",
                "Kembali perlahan, menjaga tegangan band.",
            ]),
        "パイクプッシュアップ": Entry(
            name: "Pike Push-Up",
            detail: "Angkat pinggul tinggi membentuk V terbalik dan turunkan kepala ke lantai. Membebani deltoid depan. Gerbang bagus menuju handstand push-up.",
            steps: [
                "Dari posisi push-up, angkat pinggul tinggi membentuk V terbalik.",
                "Arahkan kepala ke lantai dan bebani bahu.",
                "Tekuk siku dan turunkan ubun-ubun ke arah lantai.",
                "Dorong naik menggunakan bahu.",
            ]),
        "壁逆立ち": Entry(
            name: "Handstand Dinding",
            detail: "Naik ke handstand menempel dinding dan tahan. Latihan isometrik yang membebani seluruh bahu. Kencangkan inti dan jangan melengkungkan punggung bawah.",
            steps: [
                "Letakkan tangan dekat dinding dan naik ke handstand.",
                "Dorong lantai dan topang diri lewat bahu.",
                "Kencangkan inti dan jaga garis lurus tanpa melengkung.",
                "Tahan posisi.",
            ]),
        "Yレイズ（うつ伏せ）": Entry(
            name: "Prone Y-Raise",
            detail: "Berbaring telungkup dan angkat lengan membentuk Y. Menargetkan deltoid belakang dan trapesius bawah untuk membantu memperbaiki bahu membungkuk.",
            steps: [
                "Telungkup dan rentangkan lengan ke atas kepala membentuk Y.",
                "Arahkan ibu jari ke atas.",
                "Angkat kedua lengan dari lantai menggunakan deltoid belakang.",
                "Kencangkan tulang belikat sedetik, lalu turun perlahan.",
            ]),
        "リバースプランクリーチ": Entry(
            name: "Reverse Plank Reach",
            detail: "Dari reverse plank dengan pinggul terangkat, raih satu lengan menyilang di bawah tubuh. Melatih deltoid belakang dan inti sekaligus.",
            steps: [
                "Letakkan tangan di lantai dan angkat pinggul ke reverse plank.",
                "Jaga tubuh tetap lurus.",
                "Raih satu lengan menyilang di bawah tubuh ke sisi berlawanan.",
                "Kembali dan bergantian sisi.",
            ]),
        "アームサークル": Entry(
            name: "Arm Circle",
            detail: "Rentangkan lengan ke samping dan buat lingkaran kecil. Halus tapi efektif untuk deltoid samping, dan bagus sebagai pemanasan bahu. Jangan mengangkat bahu.",
            steps: [
                "Rentangkan kedua lengan ke samping setinggi bahu.",
                "Jaga bahu tetap turun, jauh dari telinga.",
                "Buat lingkaran kecil ke depan terus-menerus.",
                "Ganti ke lingkaran ke belakang di tengah jalan.",
            ]),
        "バーベルショルダープレス": Entry(
            name: "Barbell Overhead Press",
            detail: "Dorong bar ke atas kepala sambil berdiri atau duduk. Latihan bahu berat. Kencangkan inti, jangan terlalu melengkungkan punggung bawah, dan dorong lurus ke atas.",
            steps: [
                "Pegang bar setinggi tulang selangka, lebih lebar dari bahu.",
                "Kencangkan inti dan hindari melengkungkan punggung bawah berlebihan.",
                "Dorong bar lurus ke atas kepala.",
                "Kunci siku, lalu turun perlahan.",
            ]),
        "ダンベルショルダープレス": Entry(
            name: "Dumbbell Shoulder Press",
            detail: "Dorong dumbel dari sisi telinga ke atas kepala. Rentang gerak lebih besar melatih kedua sisi merata. Berhenti setinggi bahu saat turun.",
            steps: [
                "Pegang dumbel di sisi telinga.",
                "Kencangkan inti untuk menstabilkan postur.",
                "Dorong lurus ke atas kepala.",
                "Turun perlahan hingga setinggi bahu.",
            ]),
        "サイドレイズ": Entry(
            name: "Lateral Raise",
            detail: "Andalan deltoid samping yang membangun lebar bahu. Angkat dumbel ke samping setinggi bahu. Pimpin sedikit dengan kelingking dan hindari ayunan.",
            steps: [
                "Pegang dumbel di setiap sisi dengan siku sedikit ditekuk.",
                "Angkat ke samping tanpa ayunan.",
                "Angkat setinggi bahu, memimpin sedikit dengan kelingking.",
                "Turun perlahan dan ulangi.",
            ]),
        "フロントレイズ": Entry(
            name: "Front Raise",
            detail: "Angkat dumbel ke depan setinggi bahu untuk melatih deltoid depan. Hindari ayunan dan jangan angkat di atas bahu.",
            steps: [
                "Pegang dumbel di depan paha.",
                "Jaga siku tetap sedikit ditekuk secara konsisten.",
                "Angkat ke depan setinggi bahu tanpa ayunan.",
                "Turun perlahan. Jangan terlalu tinggi.",
            ]),
        "リアレイズ": Entry(
            name: "Rear Delt Raise",
            detail: "Condong ke depan dan angkat dumbel ke samping untuk melatih deltoid belakang. Area membandel ini merespons beban ringan dan repetisi banyak.",
            steps: [
                "Pegang dumbel dan condongkan torso ke depan.",
                "Jaga siku sedikit ditekuk dan punggung datar.",
                "Angkat dumbel ke samping menggunakan deltoid belakang.",
                "Kencangkan tulang belikat sedetik, lalu turun perlahan.",
            ]),
        "ショルダープレス（マシン）": Entry(
            name: "Shoulder Press Mesin",
            detail: "Mesin dengan jalur stabil yang memungkinkan mendorong bahu dengan aman. Atur pegangan setinggi bahu; dorong sampai lurus dan jangan turun terlalu dalam.",
            steps: [
                "Atur kursi agar pegangan setinggi bahu.",
                "Tekan punggung ke sandaran.",
                "Dorong pegangan penuh ke atas kepala.",
                "Turun setinggi bahu; jangan terlalu dalam.",
            ]),
        "バンドサイドレイズ": Entry(
            name: "Band Lateral Raise",
            detail: "Berdiri di atas band dan angkat ke samping. Resistensi meningkat saat naik, menjaga tegangan konstan pada deltoid samping. Tanpa ayunan.",
            steps: [
                "Berdiri di tengah band dan pegang kedua ujungnya.",
                "Posisikan dengan siku sedikit ditekuk.",
                "Angkat ke samping setinggi bahu tanpa ayunan.",
                "Turun perlahan, menjaga tegangan band.",
            ]),
        "ナロープッシュアップ": Entry(
            name: "Close-Grip Push-Up",
            detail: "Push-up dengan posisi tangan sempit untuk menargetkan trisep. Rapatkan siku dan tarik ke belakang saat turun. Fokus pada lengan lebih dari dada.",
            steps: [
                "Letakkan tangan lebih rapat dari bahu, di bawah dada.",
                "Rapatkan siku dan jaga tubuh tetap lurus.",
                "Turunkan tubuh dengan menarik siku ke belakang.",
                "Dorong naik menggunakan trisep.",
            ]),
        "ベンチディップス": Entry(
            name: "Bench Dip",
            detail: "Topang tangan di kursi dan turun-naik untuk melatih trisep. Tekuk siku ke belakang, turunkan pinggul, dan dorong naik. Jaga bahu tetap turun.",
            steps: [
                "Letakkan tangan di tepi kursi dan langkahkan kaki keluar.",
                "Turunkan bahu dan angkat pinggul dari kursi.",
                "Tekuk siku ke belakang dan turunkan pinggul.",
                "Dorong naik menggunakan trisep untuk kembali.",
            ]),
        "ダイヤモンドプッシュアップ": Entry(
            name: "Diamond Push-Up",
            detail: "Bentuk berlian dengan ibu jari dan telunjuk dan turunkan dada ke atasnya. Membebani trisep sangat kuat. Jaga siku rapat sepanjang gerakan.",
            steps: [
                "Bentuk berlian dengan ibu jari dan telunjuk di bawah dada.",
                "Jaga tubuh lurus dan siku rapat.",
                "Turunkan dada perlahan ke atas berlian.",
                "Dorong naik menggunakan trisep.",
            ]),
        "チンニング（腕狙い）": Entry(
            name: "Chin-Up Sempit",
            detail: "Chin-up dengan pegangan supinasi sempit untuk fokus pada bisep. Hindari ayunan dan fokus menarik dengan menekuk lengan.",
            steps: [
                "Pegang palang secara supinasi, lebih sempit dari bahu.",
                "Bergantung lurus tanpa ayunan.",
                "Tarik diri dengan menekuk lengan.",
                "Turun perlahan, fokus pada bisep.",
            ]),
        "リバースプランク": Entry(
            name: "Reverse Plank",
            detail: "Letakkan tangan di lantai, angkat pinggul, dan tahan tubuh lurus. Latihan isometrik untuk trisep dan inti. Jaga tangan di bawah bahu dan jangan mengangkat bahu.",
            steps: [
                "Duduk dan letakkan tangan di lantai di belakang, di bawah bahu.",
                "Angkat pinggul ke garis lurus.",
                "Buka dada dan jangan mengangkat bahu.",
                "Tahan posisi.",
            ]),
        "逆手テーブルロウ": Entry(
            name: "Underhand Table Row",
            detail: "Masuk di bawah meja dan tarik diri dengan pegangan supinasi. Melatih bisep bersama punggung. Fokus menarik dengan menekuk siku.",
            steps: [
                "Berbaring telentang di bawah meja yang kokoh.",
                "Pegang tepi secara supinasi dan jaga tubuh tetap lurus.",
                "Tarik dada ke tepi dengan menekuk siku.",
                "Turun perlahan, fokus pada bisep.",
            ]),
        "バーベルカール": Entry(
            name: "Barbell Curl",
            detail: "Latihan dasar bisep. Kunci siku di sisi dan angkat bar tanpa ayunan. Kendalikan juga fase turun.",
            steps: [
                "Berdiri memegang bar secara supinasi selebar bahu.",
                "Kunci siku di sisi.",
                "Angkat bar tanpa ayunan.",
                "Kencangkan bisep, lalu turun perlahan.",
            ]),
        "ダンベルカール": Entry(
            name: "Dumbbell Curl",
            detail: "Angkat dumbel dan putar pergelangan tangan ke luar di atas untuk kontraksi bisep ekstra. Jaga siku tetap; lakukan kedua lengan bersamaan atau bergantian.",
            steps: [
                "Pegang dumbel di setiap sisi.",
                "Jaga siku tetap dan angkat.",
                "Putar pergelangan ke luar di atas untuk mengontraksikan.",
                "Turun perlahan. Bergantian atau bersamaan.",
            ]),
        "ハンマーカール": Entry(
            name: "Hammer Curl",
            detail: "Curl dengan pegangan netral (telapak saling berhadapan). Melatih bisep luar dan lengan bawah bersama untuk menambah ketebalan lengan. Jaga siku tetap.",
            steps: [
                "Pegang dumbel dengan pegangan netral (telapak saling berhadapan).",
                "Kunci siku di sisi.",
                "Angkat sambil menjaga pegangan netral.",
                "Turun perlahan dan ulangi.",
            ]),
        "トライセプスエクステンション": Entry(
            name: "Overhead Triceps Extension",
            detail: "Turunkan dumbel di belakang kepala dan luruskan siku untuk melatih trisep. Jaga siku di tempat dan lengan atas vertikal.",
            steps: [
                "Pegang dumbel dengan kedua tangan dan angkat ke atas kepala.",
                "Jaga lengan atas vertikal dan tekuk hanya siku di belakang kepala.",
                "Jangan biarkan siku melebar.",
                "Luruskan siku menggunakan trisep untuk kembali.",
            ]),
        "ケーブルプッシュダウン": Entry(
            name: "Cable Pushdown",
            detail: "Dorong kabel lurus ke bawah untuk mengontraksikan trisep. Kunci siku di sisi dan tahan sedetik di ekstensi penuh.",
            steps: [
                "Pegang bar kabel tinggi.",
                "Kunci siku di sisi dan condong sedikit ke depan.",
                "Dorong bar lurus ke bawah, hanya menggerakkan lengan bawah.",
                "Tahan sedetik di ekstensi penuh, lalu kembali perlahan.",
            ]),
        "バンドカール": Entry(
            name: "Band Curl",
            detail: "Curl sambil berdiri di atas band. Resistensi meningkat saat naik, jadi terus tarik dan kencangkan bisep penuh di atas. Jaga siku tetap.",
            steps: [
                "Berdiri di tengah band dan pegang kedua ujungnya.",
                "Kunci siku di sisi.",
                "Angkat band dalam curl (resistensi meningkat saat naik).",
                "Kencangkan bisep di atas, lalu turun perlahan.",
            ]),
        "リストカール": Entry(
            name: "Wrist Curl",
            detail: "Sandarkan lengan bawah di paha atau bangku dan curl dumbel hanya dengan pergelangan tangan. Melatih lengan bawah dan cengkeraman. Gunakan rentang gerak penuh.",
            steps: [
                "Sandarkan lengan bawah di paha atau bangku dengan pergelangan melewati tepi.",
                "Pegang dumbel dengan telapak menghadap atas.",
                "Curl dumbel hanya menggunakan pergelangan tangan.",
                "Turun perlahan pada rentang gerak penuh.",
            ]),
        "プランク": Entry(
            name: "Plank",
            detail: "Tahanan inti dasar: topang diri di siku dan jari kaki dalam garis lurus dari kepala ke tumit. Kencangkan perut, jaga pinggul rata, dan terus bernapas.",
            steps: [
                "Letakkan siku di bawah bahu dan bertumpu di jari kaki.",
                "Jaga garis lurus dari kepala ke tumit.",
                "Kencangkan perut — jangan biarkan pinggul melorot atau naik.",
                "Tahan posisi sambil terus bernapas.",
            ]),
        "サイドプランク": Entry(
            name: "Side Plank",
            detail: "Topang diri di satu siku dan sisi kaki. Menargetkan otot oblik. Jaga tubuh lurus agar pinggul tidak turun. Lakukan kedua sisi.",
            steps: [
                "Berbaring miring dengan siku di bawah bahu.",
                "Tumpuk kaki dan topang diri di sisi.",
                "Angkat pinggul dan jaga tubuh tetap lurus.",
                "Tahan posisi. Lakukan kedua sisi.",
            ]),
        "クランチ": Entry(
            name: "Crunch",
            detail: "Berbaring telentang dengan lutut ditekuk dan gulung torso hanya sampai tulang belikat terangkat. Menargetkan perut atas. Gulung dengan perut, bukan leher.",
            steps: [
                "Berbaring telentang dengan lutut ditekuk, tangan di dekat kepala atau dada.",
                "Gulung torso dengan mengontraksikan perut.",
                "Angkat hanya sampai tulang belikat lepas dari lantai.",
                "Jangan menarik leher; turun perlahan.",
            ]),
        "レッグレイズ": Entry(
            name: "Lying Leg Raise",
            detail: "Berbaring telentang, angkat kaki bersama, dan turunkan perlahan. Menargetkan perut bawah. Tekan tangan ke lantai agar punggung bawah tidak melengkung naik.",
            steps: [
                "Berbaring telentang dengan tangan di sisi atau di bawah pinggul.",
                "Angkat kaki bersama, lurus ke atas.",
                "Tekan punggung bawah ke lantai agar tidak melengkung.",
                "Turun perlahan sambil mengencangkan perut bawah.",
            ]),
        "バイシクルクランチ": Entry(
            name: "Bicycle Crunch",
            detail: "Bawa siku ke lutut berlawanan seperti mengayuh sepeda. Menargetkan perut dan oblik bersama. Gunakan putaran dan jangan terburu dengan ayunan.",
            steps: [
                "Berbaring telentang dengan tangan di dekat kepala dan kaki terangkat.",
                "Tarik satu lutut ke dada dan bawa siku berlawanan ke arahnya.",
                "Putar torso untuk mempertemukan siku dan lutut.",
                "Bergantian sisi seperti mengayuh sepeda.",
            ]),
        "マウンテンクライマー": Entry(
            name: "Mountain Climber",
            detail: "Dalam posisi push-up, tarik lutut ke dada bergantian dengan cepat. Melatih inti dan kardio sekaligus. Jaga tubuh segaris tanpa mengangkat pinggul.",
            steps: [
                "Masuk ke posisi push-up dengan tangan di bawah bahu.",
                "Jaga tubuh tetap lurus (jangan angkat pinggul).",
                "Tarik satu lutut ke dada dengan cepat.",
                "Ganti kaki berirama dan bergantian.",
            ]),
        "ロシアンツイスト": Entry(
            name: "Russian Twist",
            detail: "Duduk, condong ke belakang, dan putar sisi ke sisi. Menargetkan oblik. Mengangkat kaki menambah kesulitan. Jangan terlalu membungkukkan punggung.",
            steps: [
                "Duduk dengan lutut ditekuk dan condongkan torso ke belakang.",
                "Jaga dada terangkat tanpa terlalu membungkukkan punggung.",
                "Genggam tangan dan putar torso sisi ke sisi.",
                "Angkat kaki untuk menambah kesulitan jika bisa.",
            ]),
        "デッドバグ": Entry(
            name: "Dead Bug",
            detail: "Berbaring telentang dengan lengan dan kaki terangkat, lalu luruskan anggota badan berlawanan perlahan. Latihan inti ramah punggung. Jaga punggung bawah menekan lantai.",
            steps: [
                "Berbaring telentang dengan lengan ke langit-langit dan lutut 90 derajat.",
                "Tekan punggung bawah ke lantai.",
                "Luruskan satu lengan dan kaki berlawanan perlahan.",
                "Kembali, lalu lakukan sisi lain.",
            ]),
        "ハンギングレッグレイズ": Entry(
            name: "Hanging Leg Raise",
            detail: "Bergantung di palang dan angkat kaki. Latihan lanjutan yang menghajar perut bawah. Minimalkan ayunan; menekuk lutut membuatnya lebih mudah.",
            steps: [
                "Bergantung di palang dan stabilkan tubuh.",
                "Minimalkan ayunan dan angkat kaki menggunakan perut bawah.",
                "Angkat hingga kaki sejajar atau di atasnya (tekuk lutut untuk mempermudah).",
                "Turun perlahan dan ulangi.",
            ]),
        "ケーブルクランチ": Entry(
            name: "Cable Crunch",
            detail: "Berlutut memegang kabel dan gulung torso ke bawah. Memungkinkan membebani perut berat. Jangan menarik dengan lengan — bungkukkan punggung dan gulung dengan perut.",
            steps: [
                "Pegang kabel tinggi dan berlutut.",
                "Pegang tali di dekat kepala.",
                "Tanpa menarik dengan lengan, bungkukkan dan gulung torso ke bawah.",
                "Kontraksikan perut, lalu kembali perlahan.",
            ]),
        "ホローホールド": Entry(
            name: "Hollow Hold",
            detail: "Berbaring telentang, luruskan lengan dan kaki, dan tahan bentuk pisang dengan punggung bawah menekan lantai. Latihan isometrik untuk seluruh inti. Turunkan anggota badan jika punggung terangkat.",
            steps: [
                "Berbaring telentang dengan lengan di atas kepala dan kaki lurus.",
                "Tekan punggung bawah dan angkat lengan dan kaki sedikit.",
                "Tahan tubuh dalam bentuk seperti pisang.",
                "Turunkan lengan dan kaki untuk menyesuaikan jika punggung terangkat.",
            ]),
    ]
}
