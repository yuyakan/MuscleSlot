//
//  ExerciseTranslations+Entries_en.swift
//  MuscleSlot
//
//  76種目の英訳本体。キーは Exercise.name（日本語）。
//  種目名は英語圏のジムで通用する自然な呼称を採用（直訳しない）。
//

import Foundation

extension ExerciseTranslations {

    static let entries_en: [String: Entry] = [

        // MARK: - Chest（胸）

        "腕立て伏せ": Entry(
            name: "Push-Up",
            detail: "The classic chest exercise. Place your hands slightly wider than shoulder-width, keep your body in a straight line, and lower your chest until it nearly touches the floor. Keep your elbows at about a 45-degree angle.",
            steps: [
                "Get on the floor and place your hands slightly wider than shoulder-width.",
                "Keep your head, hips, and heels in a straight line and brace your body like a plank.",
                "Lower your body until your chest nearly touches the floor, elbows flared to about 45 degrees.",
                "Push the floor away with your chest and straighten your arms to return to the start.",
            ]),
        "ワイド腕立て": Entry(
            name: "Wide Push-Up",
            detail: "Place your hands about 1.5x shoulder-width to hit the outer and upper chest harder. Don't lower too far, to protect your shoulders.",
            steps: [
                "Place your hands on the floor about 1.5x shoulder-width apart.",
                "Keep your body in a straight line and your chest up.",
                "Lower your body while feeling a stretch across the outer chest.",
                "Avoid going so deep that it strains your shoulders, then push back up.",
            ]),
        "ナロー腕立て": Entry(
            name: "Narrow Push-Up",
            detail: "Place your hands closer than shoulder-width to target the inner chest and triceps. Keep your elbows tucked and drive them back as you lower.",
            steps: [
                "Place your hands closer than shoulder-width, roughly under your chest.",
                "Keep your elbows tucked and your body in a straight line.",
                "Lower your body by driving your elbows back.",
                "Push back up, focusing on the inner chest and triceps.",
            ]),
        "デクライン腕立て": Entry(
            name: "Decline Push-Up",
            detail: "Elevate your feet on a chair so your head is lower. This shifts the load to the upper chest and makes it harder than a standard push-up.",
            steps: [
                "Place your feet on a chair or box so your head is lower than your hips.",
                "Keep your hands shoulder-width and your body in a straight line.",
                "Lower your body while focusing on the upper chest.",
                "Push back up through the upper chest to return.",
            ]),
        "膝つき腕立て": Entry(
            name: "Knee Push-Up",
            detail: "A beginner version with your knees on the floor to reduce the load. Keep a straight line from knees to head and lower slowly with good form.",
            steps: [
                "Place your knees on the floor and your hands slightly wider than shoulder-width.",
                "Keep a straight line from your knees to your head.",
                "Lower your chest toward the floor slowly.",
                "Push back up without breaking form.",
            ]),
        "ベンチプレス": Entry(
            name: "Bench Press",
            detail: "The king of chest exercises for heavy lifting. Retract your shoulder blades, set a slight arch, lower the bar to nipple level, and press it up.",
            steps: [
                "Lie back on the bench, retract your shoulder blades, and set a slight arch.",
                "Grip the bar slightly wider than shoulder-width.",
                "Lower the bar slowly to nipple level.",
                "Press up through your chest and lock out your elbows.",
            ]),
        "インクラインベンチプレス": Entry(
            name: "Incline Bench Press",
            detail: "Set the bench to 30–45 degrees to build the upper chest. Lower the bar to just below the collarbone. Too steep an angle turns it into a shoulder exercise.",
            steps: [
                "Set the bench to 30–45 degrees and lie back.",
                "Retract your shoulder blades and grip the bar wider than shoulder-width.",
                "Lower the bar to just below your collarbone.",
                "Press up through the upper chest and return.",
            ]),
        "ダンベルプレス": Entry(
            name: "Dumbbell Bench Press",
            detail: "Offers a greater range of motion than the barbell, letting you stretch and contract the chest fully. Feel the stretch at the bottom and squeeze the dumbbells together at the top.",
            steps: [
                "Lie back on the bench with a dumbbell in each hand.",
                "Retract your shoulder blades and hold the dumbbells over your chest.",
                "Lower until you feel a stretch in your chest.",
                "Press up and bring the dumbbells together to squeeze.",
            ]),
        "インクラインダンベルプレス": Entry(
            name: "Incline Dumbbell Press",
            detail: "Targets the upper chest on an incline bench. Lower deep for an upper-chest stretch and squeeze inward at the top.",
            steps: [
                "Sit on an incline bench with a dumbbell in each hand.",
                "Set up over the upper chest and retract your shoulder blades.",
                "Lower deep to stretch the upper chest.",
                "Press up and squeeze the dumbbells inward at the top.",
            ]),
        "ダンベルフライ": Entry(
            name: "Dumbbell Fly",
            detail: "An isolation move where you open and close your arms in an arc with a slight bend in the elbows. Open wide for a big chest stretch, then close as if hugging something.",
            steps: [
                "Lie back and hold the dumbbells over your chest.",
                "Keep a slight, fixed bend in your elbows.",
                "Open your arms out to the sides in an arc, stretching the chest.",
                "Close your arms as if hugging, squeezing the chest.",
            ]),
        "チェストプレス（マシン）": Entry(
            name: "Machine Chest Press",
            detail: "A machine move with a fixed path so you can push to failure safely. Set the grips at chest height and press all the way to contract the chest. Great for beginners.",
            steps: [
                "Adjust the seat height so the grips sit at chest level.",
                "Press your back into the pad and lift your chest.",
                "Press the grips all the way forward.",
                "Feel the chest contract, then return slowly.",
            ]),
        "ケーブルクロスオーバー": Entry(
            name: "Cable Crossover",
            detail: "Cables keep constant tension on the muscle. Target the mid to lower chest by crossing your hands in front of your body for a strong contraction.",
            steps: [
                "Set the cables high and grip a handle in each hand.",
                "Step one foot forward and lean slightly forward.",
                "Bring your hands down and across in front of your body in an arc.",
                "Squeeze the center of your chest hard, then return slowly.",
            ]),
        "バンドチェストプレス": Entry(
            name: "Band Chest Press",
            detail: "Loop a band behind your back and press forward. Resistance increases as the band stretches, so keep driving all the way to lockout.",
            steps: [
                "Loop the band behind your back and grip both ends.",
                "Set up at chest level with a staggered stance for stability.",
                "Press straight forward.",
                "Keep tension all the way to lockout, then return slowly.",
            ]),
        "ディップス": Entry(
            name: "Dips",
            detail: "Lower and raise yourself on parallel bars. Lean forward to hit the lower chest, or stay upright to target the triceps. Limit the depth if your shoulders hurt.",
            steps: [
                "Grip the parallel bars and support yourself with straight arms.",
                "Lean your torso forward to target the lower chest.",
                "Bend your elbows and lower your body.",
                "Press back up to return. Limit the depth if your shoulders hurt.",
            ]),

        // MARK: - Back（背中）

        "懸垂": Entry(
            name: "Pull-Up",
            detail: "The best bodyweight move for building lat width. Grip overhand slightly wider than shoulder-width and pull your chest to the bar. Pull with your back, not momentum.",
            steps: [
                "Grip the bar overhand, slightly wider than shoulder-width.",
                "Pull your shoulders down and lift your chest.",
                "Without using momentum, pull your chest toward the bar.",
                "Feel your back contract, then lower slowly.",
            ]),
        "チンニング（逆手懸垂）": Entry(
            name: "Chin-Up",
            detail: "A pull-up with an underhand (palms facing you) grip. It hits the biceps hard in addition to the back and is easier to pull than the overhand version.",
            steps: [
                "Grip the bar underhand (palms facing you) at shoulder-width.",
                "Lift your chest and pull your shoulders down.",
                "Pull your chest to the bar using your arms and back.",
                "Lower slowly and repeat.",
            ]),
        "インバーテッドロウ": Entry(
            name: "Inverted Row",
            detail: "Get under a low bar or table and pull your body up at an angle. Keep your body in a straight line, retract your shoulder blades, and pull your chest up.",
            steps: [
                "Lie under a low bar or table and grip it.",
                "Keep your body in a straight line with your heels as the pivot.",
                "Retract your shoulder blades and pull your chest to the bar.",
                "Lower slowly and repeat.",
            ]),
        "バックエクステンション": Entry(
            name: "Back Extension",
            detail: "Lift your torso from a face-down position to train the spinal erectors (lower back). Don't overextend—stop within a range where you feel the back contract.",
            steps: [
                "Lie face down with your hands beside your head or across your chest.",
                "Use your back to lift your torso up slowly.",
                "Don't overextend—stop where you feel the back contract.",
                "Lower slowly and repeat.",
            ]),
        "スーパーマン": Entry(
            name: "Superman",
            detail: "Lie face down and lift both arms and legs at once, holding for a few seconds. Tightens the entire back and lower back. Keep breathing.",
            steps: [
                "Lie face down with your arms extended in front of you.",
                "Lift both arms and both legs at the same time.",
                "Hold in the air for a few seconds, squeezing the back and glutes.",
                "Lower slowly without holding your breath.",
            ]),
        "リバーススノーエンジェル": Entry(
            name: "Reverse Snow Angel",
            detail: "Lie face down, lift your chest slightly, and sweep your arms from overhead down to your hips. Hits the lower traps and the muscles around the shoulder blades to improve posture.",
            steps: [
                "Lie face down and lift your chest slightly off the floor.",
                "Extend your arms overhead.",
                "With palms down, sweep your arms in an arc to your sides.",
                "Squeeze your shoulder blades, then return slowly overhead.",
            ]),
        "デッドリフト": Entry(
            name: "Deadlift",
            detail: "A heavy full-body lift. Keep your back flat, pull the bar up along your shins, and stand by extending your hips. Never round your lower back.",
            steps: [
                "Stand hip-width apart with your shins close to the bar.",
                "Keep your back flat and grip the bar.",
                "Pull the bar up, keeping it close to your shins.",
                "Extend your hips to stand up tall. Don't round your back.",
            ]),
        "ベントオーバーロウ": Entry(
            name: "Bent-Over Row",
            detail: "Hinge forward and row the bar to your navel to build back thickness. Minimize momentum and squeeze your shoulder blades fully.",
            steps: [
                "Grip the bar, bend your knees slightly, and hinge forward.",
                "Keep your back flat and your chest up.",
                "Row the bar to your navel without using momentum.",
                "Squeeze your shoulder blades, then lower slowly.",
            ]),
        "ダンベルロウ": Entry(
            name: "One-Arm Dumbbell Row",
            detail: "Brace one hand on a bench and row the dumbbell to your hip. Lets you move the lats through a big range and even out left-right imbalances.",
            steps: [
                "Place one hand and knee on a bench, holding a dumbbell in the other hand.",
                "Keep your back flat and your chest up.",
                "Drive your elbow back and row the dumbbell to your hip.",
                "Feel the lat contract, then lower slowly. Do both sides.",
            ]),
        "ラットプルダウン": Entry(
            name: "Lat Pulldown",
            detail: "A machine move that builds back width even if pull-ups are hard. Lift your chest, pull the bar to your collarbone, and pull with your lats by depressing your shoulder blades.",
            steps: [
                "Grip the bar wider than shoulder-width and secure your thighs under the pad.",
                "Lift your chest and lean back slightly.",
                "Pull the bar to your collarbone while depressing your shoulder blades.",
                "Keep the lats engaged, then return slowly.",
            ]),
        "シーテッドロウ（マシン）": Entry(
            name: "Seated Cable Row",
            detail: "A seated rowing move that builds mid-back thickness. Keep your chest up, drive your elbows back, and squeeze your shoulder blades.",
            steps: [
                "Sit down and grip the handle.",
                "Lift your chest and keep your back flat.",
                "Drive your elbows back and squeeze your shoulder blades.",
                "Contract your mid-back, then return slowly.",
            ]),
        "バンドロウ": Entry(
            name: "Band Row",
            detail: "Anchor a band to your feet or a post and pull toward you. Resistance increases as you pull, so squeeze your shoulder blades fully at the end.",
            steps: [
                "Anchor the band under your feet or to a post and grip both ends.",
                "Lift your chest and keep your back flat.",
                "Drive your elbows back and pull the band toward you.",
                "Squeeze your shoulder blades fully, then return slowly.",
            ]),
        "シュラッグ": Entry(
            name: "Shrug",
            detail: "Hold dumbbells and shrug your shoulders to train the upper traps. Lift only your shoulders straight up without moving your neck. Hold for a second at the top.",
            steps: [
                "Hold a dumbbell in each hand with your arms at your sides.",
                "Without moving your neck, shrug your shoulders straight up.",
                "Hold for a second at the top to squeeze the traps.",
                "Lower your shoulders slowly and repeat.",
            ]),

        // MARK: - Legs（脚）

        "スクワット（自重）": Entry(
            name: "Bodyweight Squat",
            detail: "The foundation of leg training. Stand shoulder-width, sit back as if into a chair until your thighs are parallel to the floor. Don't let your knees travel too far past your toes.",
            steps: [
                "Stand shoulder-width with your toes turned out slightly.",
                "Lift your chest and sit your hips back as if into a chair.",
                "Squat until your thighs are parallel to the floor.",
                "Drive through your heels to stand back up.",
            ]),
        "ランジ": Entry(
            name: "Lunge",
            detail: "Take a big step forward and lower your back knee until it nearly touches the floor. Push through the front heel to return. Works the glutes and thighs.",
            steps: [
                "Take a big step forward with one foot.",
                "Keep your torso upright and lower your hips straight down.",
                "Stop when your back knee nearly touches the floor.",
                "Push through your front heel to return. Do both sides.",
            ]),
        "ブルガリアンスクワット": Entry(
            name: "Bulgarian Split Squat",
            detail: "A single-leg squat with your rear foot on a chair. The load concentrates on the front leg, making it brutal even with bodyweight. Feel the glute stretch as you descend.",
            steps: [
                "Rest the top of your rear foot on a chair and step the front foot forward.",
                "Lean your torso forward slightly and load the front leg.",
                "Lower your hips while feeling a glute stretch.",
                "Push through the front leg to stand. Do both sides.",
            ]),
        "ヒップリフト": Entry(
            name: "Glute Bridge",
            detail: "Lie on your back with knees bent and lift your hips into a straight line. Squeeze your glutes hard at the top. Drive through the hips without arching your lower back.",
            steps: [
                "Lie on your back with knees bent and feet hip-width apart.",
                "Drive through your heels and lift your hips.",
                "Squeeze your glutes at the top, with shoulders-to-knees in a line.",
                "Lower slowly without arching your lower back.",
            ]),
        "カーフレイズ（自重）": Entry(
            name: "Calf Raise",
            detail: "Rise onto your toes to train the calves. Lift your heels as high as possible, hold for a second, and lower slowly. Doing it on a step increases the range of motion.",
            steps: [
                "Stand hip-width apart (on the edge of a step for more range).",
                "Rise onto your toes, lifting your heels as high as possible.",
                "Hold for a second at the top to squeeze the calves.",
                "Lower your heels slowly.",
            ]),
        "ウォールシット": Entry(
            name: "Wall Sit",
            detail: "An isometric hold in a seated position against a wall. Hold with your thighs parallel to the floor to burn out the quads.",
            steps: [
                "Stand with your back against a wall.",
                "Walk your feet out and slide down the wall.",
                "Stop when your thighs are parallel to the floor.",
                "Hold the position and burn out the quads.",
            ]),
        "バーベルスクワット": Entry(
            name: "Barbell Squat",
            detail: "The king of lifts for the lower body. Rack the bar on your shoulders, lift your chest, and squat deep. Keep your back flat and drive up through your heels.",
            steps: [
                "Rack the bar on your traps and stand shoulder-width.",
                "Lift your chest and squat while sitting your hips back.",
                "Descend until your thighs are at or below parallel.",
                "Drive up through your heels without rounding your back.",
            ]),
        "ルーマニアンデッドリフト": Entry(
            name: "Romanian Deadlift",
            detail: "Keep a slight knee bend, hinge your hips back, and lower the bar along your shins. You'll feel a strong stretch in the hamstrings and glutes. Keep your back flat throughout.",
            steps: [
                "Hold the bar and stand hip-width apart.",
                "Keep a slight knee bend and hinge your hips back.",
                "Lower the bar along your shins until your hamstrings stretch.",
                "Squeeze your glutes and extend your hips to stand.",
            ]),
        "ダンベルスクワット": Entry(
            name: "Dumbbell Squat",
            detail: "Squat holding a dumbbell in each hand. Easier and more balanced than the barbell version. Lift your chest and squat deep.",
            steps: [
                "Hold a dumbbell in each hand and stand shoulder-width.",
                "Lift your chest and sit your hips back to squat.",
                "Descend until your thighs are parallel to the floor.",
                "Drive up through your heels.",
            ]),
        "レッグプレス": Entry(
            name: "Leg Press",
            detail: "Press a plate with your feet on a machine. Lets you handle heavy loads without straining your lower back. Don't lock out your knees; lower until your thighs near your chest.",
            steps: [
                "Sit down and place your feet shoulder-width on the center of the plate.",
                "Press the plate and extend your knees (don't lock out).",
                "Bend your knees and lower until your thighs near your chest.",
                "Push back through your heels and repeat.",
            ]),
        "レッグカール": Entry(
            name: "Leg Curl",
            detail: "Curl your heels toward your glutes lying or seated to target the hamstrings. Control the lowering phase to keep tension on the muscle.",
            steps: [
                "Set up on the machine with the pad against your ankles.",
                "Curl your heels toward your glutes using your hamstrings.",
                "Curl as far as possible and hold for a second.",
                "Lower slowly, keeping the muscle under tension.",
            ]),
        "レッグエクステンション": Entry(
            name: "Leg Extension",
            detail: "A seated isolation move that targets the quads by extending your knees. Hold for a second at full extension to squeeze.",
            steps: [
                "Sit down with the pad against your ankles.",
                "Extend your knees using your quads.",
                "Hold for a second at full extension to squeeze.",
                "Lower slowly and repeat.",
            ]),
        "バンドアブダクション": Entry(
            name: "Band Hip Abduction",
            detail: "Loop a band around your knees or ankles and push your legs outward. Targets the glute medius (side of the hips) to build the glutes and stabilize the pelvis.",
            steps: [
                "Loop a band around your knees or ankles.",
                "Stand hip-width apart in a slight squat stance.",
                "Push your legs outward using your outer glutes.",
                "Return slowly, keeping tension on the band.",
            ]),

        // MARK: - Shoulders（肩）

        "パイクプッシュアップ": Entry(
            name: "Pike Push-Up",
            detail: "Pike your hips high into an inverted-V and lower your head toward the floor. Loads the front delts. A great gateway to the handstand push-up.",
            steps: [
                "From a push-up position, pike your hips high into an inverted V.",
                "Aim your head at the floor and load your shoulders.",
                "Bend your elbows and lower the crown of your head toward the floor.",
                "Press back up using your shoulders.",
            ]),
        "壁逆立ち": Entry(
            name: "Wall Handstand Hold",
            detail: "Kick up into a handstand against a wall and hold. An isometric move that loads the entire shoulder. Brace your core and don't arch your lower back.",
            steps: [
                "Place your hands near the wall and kick up into a handstand.",
                "Press the floor away and support yourself through the shoulders.",
                "Brace your core and keep a straight line without arching.",
                "Hold the position.",
            ]),
        "Yレイズ（うつ伏せ）": Entry(
            name: "Prone Y-Raise",
            detail: "Lie face down and raise your arms into a Y. Targets the rear delts and lower traps to help fix rounded shoulders.",
            steps: [
                "Lie face down and extend your arms overhead into a Y.",
                "Point your thumbs up.",
                "Lift both arms off the floor using your rear delts.",
                "Squeeze your shoulder blades for a second, then lower slowly.",
            ]),
        "リバースプランクリーチ": Entry(
            name: "Reverse Plank Reach",
            detail: "From a reverse plank with hips lifted, reach one arm across your body. Works the rear delts and core at the same time.",
            steps: [
                "Place your hands on the floor and lift your hips into a reverse plank.",
                "Keep your body in a straight line.",
                "Reach one arm across and under your body to the opposite side.",
                "Return and alternate sides.",
            ]),
        "アームサークル": Entry(
            name: "Arm Circles",
            detail: "Extend your arms to the sides and trace small circles. Subtle but effective for the side delts, and great as a shoulder warm-up. Don't shrug your shoulders.",
            steps: [
                "Extend both arms out to the sides at shoulder height.",
                "Keep your shoulders down, away from your ears.",
                "Trace small circles forward continuously.",
                "Switch to circling backward partway through.",
            ]),
        "バーベルショルダープレス": Entry(
            name: "Barbell Overhead Press",
            detail: "Press the bar overhead standing or seated. A heavy shoulder move. Brace your core, don't over-arch your lower back, and press straight up.",
            steps: [
                "Grip the bar at collarbone height, wider than shoulder-width.",
                "Brace your core and avoid over-arching your lower back.",
                "Press the bar straight overhead.",
                "Lock out your elbows, then lower slowly.",
            ]),
        "ダンベルショルダープレス": Entry(
            name: "Dumbbell Shoulder Press",
            detail: "Press dumbbells from beside your ears overhead. A larger range of motion trains both sides evenly. Stop at shoulder height on the way down.",
            steps: [
                "Hold the dumbbells beside your ears.",
                "Brace your core to stabilize your posture.",
                "Press straight overhead.",
                "Lower slowly to shoulder height.",
            ]),
        "サイドレイズ": Entry(
            name: "Lateral Raise",
            detail: "A staple for the side delts that builds shoulder width. Raise the dumbbells out to the sides to shoulder height. Lead slightly with your pinkies and avoid momentum.",
            steps: [
                "Hold a dumbbell at each side with a slight bend in your elbows.",
                "Raise them out to the sides without using momentum.",
                "Lift to shoulder height, leading slightly with your pinkies.",
                "Lower slowly and repeat.",
            ]),
        "フロントレイズ": Entry(
            name: "Front Raise",
            detail: "Raise dumbbells in front of you to shoulder height to train the front delts. Avoid momentum and don't raise above shoulder height.",
            steps: [
                "Hold the dumbbells in front of your thighs.",
                "Keep a slight, fixed bend in your elbows.",
                "Raise them in front of you to shoulder height without momentum.",
                "Lower slowly. Don't go too high.",
            ]),
        "リアレイズ": Entry(
            name: "Rear Delt Raise",
            detail: "Hinge forward and raise dumbbells out to the sides to train the rear delts. This stubborn area responds to lighter weight and higher reps.",
            steps: [
                "Hold the dumbbells and hinge your torso forward.",
                "Keep a slight bend in your elbows and your back flat.",
                "Raise the dumbbells out to the sides using your rear delts.",
                "Squeeze your shoulder blades for a second, then lower slowly.",
            ]),
        "ショルダープレス（マシン）": Entry(
            name: "Machine Shoulder Press",
            detail: "A machine with a stable path that lets you push the shoulders safely. Set the grips at shoulder height; press to lockout and don't lower too far.",
            steps: [
                "Adjust the seat so the grips sit at shoulder height.",
                "Press your back into the pad.",
                "Press the grips all the way overhead.",
                "Lower to shoulder height; don't go too far.",
            ]),
        "バンドサイドレイズ": Entry(
            name: "Band Lateral Raise",
            detail: "Stand on a band and raise it out to the sides. Resistance increases as you lift, keeping constant tension on the side delts. No momentum.",
            steps: [
                "Stand on the middle of the band and grip both ends.",
                "Set up with a slight bend in your elbows.",
                "Raise out to the sides to shoulder height without momentum.",
                "Lower slowly, keeping tension on the band.",
            ]),

        // MARK: - Arms（腕）

        "ナロープッシュアップ": Entry(
            name: "Close-Grip Push-Up",
            detail: "A push-up with a narrow hand position to target the triceps. Tuck your elbows and drive them back as you lower. Focus on the arms over the chest.",
            steps: [
                "Place your hands closer than shoulder-width, under your chest.",
                "Tuck your elbows and keep your body in a straight line.",
                "Lower your body by driving your elbows back.",
                "Push back up using your triceps.",
            ]),
        "ベンチディップス": Entry(
            name: "Bench Dip",
            detail: "Brace your hands on a chair and lower and raise yourself to train the triceps. Bend your elbows back, sink your hips, and press up. Keep your shoulders down.",
            steps: [
                "Place your hands on the edge of a chair and step your feet out.",
                "Pull your shoulders down and lift your hips off the chair.",
                "Bend your elbows back and lower your hips.",
                "Press up using your triceps to return.",
            ]),
        "ダイヤモンドプッシュアップ": Entry(
            name: "Diamond Push-Up",
            detail: "Form a diamond with your thumbs and index fingers and lower your chest onto it. Hits the triceps very hard. Keep your elbows tucked throughout.",
            steps: [
                "Form a diamond with your thumbs and index fingers under your chest.",
                "Keep your body straight and your elbows tucked.",
                "Lower your chest slowly onto the diamond.",
                "Push back up using your triceps.",
            ]),
        "チンニング（腕狙い）": Entry(
            name: "Close-Grip Chin-Up",
            detail: "Chin up with a narrow underhand grip to focus on the biceps. Avoid swinging and concentrate on pulling with the bend of your arms.",
            steps: [
                "Grip the bar underhand, narrower than shoulder-width.",
                "Hang straight without swinging.",
                "Pull yourself up by bending your arms.",
                "Lower slowly, focusing on the biceps.",
            ]),
        "リバースプランク": Entry(
            name: "Reverse Plank",
            detail: "Place your hands on the floor, lift your hips, and hold a straight body line. An isometric move for the triceps and core. Keep your hands under your shoulders and don't shrug.",
            steps: [
                "Sit and place your hands on the floor behind you, under your shoulders.",
                "Lift your hips into a straight line.",
                "Open your chest and don't shrug your shoulders.",
                "Hold the position.",
            ]),
        "逆手テーブルロウ": Entry(
            name: "Underhand Table Row",
            detail: "Get under a table and pull yourself up with an underhand grip. Works the biceps along with the back. Focus on pulling by bending your elbows.",
            steps: [
                "Lie face up under a sturdy table.",
                "Grip the edge underhand and keep your body in a straight line.",
                "Pull your chest to the edge by bending your elbows.",
                "Lower slowly, focusing on the biceps.",
            ]),
        "バーベルカール": Entry(
            name: "Barbell Curl",
            detail: "The fundamental biceps exercise. Pin your elbows at your sides and curl the bar up without momentum. Control the lowering phase too.",
            steps: [
                "Stand holding the bar underhand at shoulder-width.",
                "Pin your elbows at your sides.",
                "Curl the bar up without using momentum.",
                "Squeeze your biceps, then lower slowly.",
            ]),
        "ダンベルカール": Entry(
            name: "Dumbbell Curl",
            detail: "Curl the dumbbells and supinate your wrists outward at the top for an extra biceps contraction. Keep your elbows fixed; do both arms together or alternating.",
            steps: [
                "Hold a dumbbell at each side.",
                "Keep your elbows fixed and curl up.",
                "Turn your wrists outward at the top to contract.",
                "Lower slowly. Alternate or do both together.",
            ]),
        "ハンマーカール": Entry(
            name: "Hammer Curl",
            detail: "Curl with a neutral (palms-facing-in) grip. Trains the outer biceps and forearms together to add arm thickness. Keep your elbows fixed.",
            steps: [
                "Hold the dumbbells with a neutral grip (palms facing in).",
                "Pin your elbows at your sides.",
                "Curl up while keeping the neutral grip.",
                "Lower slowly and repeat.",
            ]),
        "トライセプスエクステンション": Entry(
            name: "Overhead Triceps Extension",
            detail: "Lower a dumbbell behind your head and extend your elbows to train the triceps. Keep your elbows in place and your upper arms vertical.",
            steps: [
                "Hold a dumbbell with both hands and raise it overhead.",
                "Keep your upper arms vertical and bend only your elbows behind your head.",
                "Don't let your elbows drift.",
                "Extend your elbows using your triceps to return.",
            ]),
        "ケーブルプッシュダウン": Entry(
            name: "Cable Pushdown",
            detail: "Push a cable straight down to contract the triceps. Pin your elbows at your sides and hold for a second at full extension.",
            steps: [
                "Grip a high cable bar.",
                "Pin your elbows at your sides and lean slightly forward.",
                "Push the bar straight down, moving only your forearms.",
                "Hold for a second at full extension, then return slowly.",
            ]),
        "バンドカール": Entry(
            name: "Band Curl",
            detail: "Curl while standing on a band. Resistance increases as you lift, so keep driving and fully squeeze the biceps at the top. Keep your elbows fixed.",
            steps: [
                "Stand on the middle of the band and grip both ends.",
                "Pin your elbows at your sides.",
                "Curl the band up (resistance increases as you lift).",
                "Squeeze your biceps at the top, then lower slowly.",
            ]),
        "リストカール": Entry(
            name: "Wrist Curl",
            detail: "Rest your forearms on your thighs or a bench and curl the dumbbells using only your wrists. Trains the forearms and grip. Use a full range of motion.",
            steps: [
                "Rest your forearms on your thighs or a bench with your wrists past the edge.",
                "Hold the dumbbells with your palms facing up.",
                "Curl the dumbbells using only your wrists.",
                "Lower slowly through a full range of motion.",
            ]),

        // MARK: - Core（体幹）

        "プランク": Entry(
            name: "Plank",
            detail: "The foundational core hold: support yourself on your elbows and toes in a straight line from head to heels. Brace your abs, keep your hips level, and keep breathing.",
            steps: [
                "Place your elbows under your shoulders and set up on your toes.",
                "Keep a straight line from your head to your heels.",
                "Brace your abs—don't let your hips sag or arch.",
                "Hold the position while continuing to breathe.",
            ]),
        "サイドプランク": Entry(
            name: "Side Plank",
            detail: "Support yourself on one elbow and the side of your foot. Targets the obliques. Keep your body in a straight line so your hips don't drop. Do both sides.",
            steps: [
                "Lie on your side with your elbow under your shoulder.",
                "Stack your feet and support yourself on your side.",
                "Lift your hips and keep your body in a straight line.",
                "Hold the position. Do both sides.",
            ]),
        "クランチ": Entry(
            name: "Crunch",
            detail: "Lie on your back with knees bent and curl your torso just until your shoulder blades lift. Targets the upper abs. Crunch with your abs, not your neck.",
            steps: [
                "Lie on your back with knees bent, hands by your head or chest.",
                "Curl your torso up by contracting your abs.",
                "Lift just until your shoulder blades clear the floor.",
                "Don't pull with your neck; lower slowly.",
            ]),
        "レッグレイズ": Entry(
            name: "Lying Leg Raise",
            detail: "Lie on your back, raise your legs together, and lower them slowly. Targets the lower abs. Press your hands into the floor so your lower back doesn't arch up.",
            steps: [
                "Lie on your back with your hands at your sides or under your hips.",
                "Raise your legs together, straight up.",
                "Press your lower back into the floor so it doesn't arch.",
                "Lower slowly while bracing your lower abs.",
            ]),
        "バイシクルクランチ": Entry(
            name: "Bicycle Crunch",
            detail: "Bring your elbow to the opposite knee as if pedaling a bike. Hits the abs and obliques together. Use the twist and don't rush it with momentum.",
            steps: [
                "Lie on your back with hands by your head and legs lifted.",
                "Draw one knee to your chest and bring the opposite elbow toward it.",
                "Twist your torso to meet elbow and knee.",
                "Alternate sides as if pedaling a bike.",
            ]),
        "マウンテンクライマー": Entry(
            name: "Mountain Climber",
            detail: "In a push-up position, quickly drive your knees to your chest alternately. Trains the core and cardio at once. Keep your body in a line without piking your hips.",
            steps: [
                "Get into a push-up position with hands under your shoulders.",
                "Keep your body in a straight line (don't pike your hips).",
                "Quickly drive one knee toward your chest.",
                "Switch legs rhythmically and alternate.",
            ]),
        "ロシアンツイスト": Entry(
            name: "Russian Twist",
            detail: "Sit, lean back, and twist side to side. Targets the obliques. Lifting your feet increases the difficulty. Don't round your back too much.",
            steps: [
                "Sit with knees bent and lean your torso back.",
                "Keep your chest up without rounding your back too much.",
                "Clasp your hands and twist your torso side to side.",
                "Lift your feet to increase the difficulty if you can.",
            ]),
        "デッドバグ": Entry(
            name: "Dead Bug",
            detail: "Lie on your back with arms and legs up, then slowly extend opposite limbs. A back-friendly core move. Keep your lower back pressed into the floor.",
            steps: [
                "Lie on your back with arms toward the ceiling and knees at 90 degrees.",
                "Press your lower back into the floor.",
                "Slowly extend one arm and the opposite leg.",
                "Return, then do the other side.",
            ]),
        "ハンギングレッグレイズ": Entry(
            name: "Hanging Leg Raise",
            detail: "Hang from a bar and raise your legs. An advanced move that hammers the lower abs. Minimize swinging; bending your knees makes it easier.",
            steps: [
                "Hang from a bar and stabilize your body.",
                "Minimize swinging and raise your legs using your lower abs.",
                "Lift until your legs are at or above parallel (bend knees to make it easier).",
                "Lower slowly and repeat.",
            ]),
        "ケーブルクランチ": Entry(
            name: "Cable Crunch",
            detail: "Kneel holding a cable and crunch your torso down. Lets you load the abs heavily. Don't pull with your arms—round your back and crunch with your abs.",
            steps: [
                "Grip a high cable and kneel down.",
                "Hold the rope beside your head.",
                "Without pulling with your arms, round and crunch your torso down.",
                "Contract your abs, then return slowly.",
            ]),
        "ホローホールド": Entry(
            name: "Hollow Hold",
            detail: "Lie on your back, extend your arms and legs, and hold a banana shape with your lower back pressed down. An isometric move for the whole core. Lower your limbs if your back lifts.",
            steps: [
                "Lie on your back with arms overhead and legs straight.",
                "Press your lower back down and lift your arms and legs slightly.",
                "Hold your body in a banana-like shape.",
                "Lower your arms and legs to adjust if your back lifts off.",
            ]),
    ]
}
