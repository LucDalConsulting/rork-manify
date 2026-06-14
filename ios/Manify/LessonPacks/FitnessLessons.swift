import Foundation

enum FitnessLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12,
        lesson13, lesson14, lesson15, lesson16
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "fit_t1_01",
        categoryId: .fitness,
        tier: 1,
        lessonNumber: 1,
        title: "Strength, Cardio, and Mobility",
        subtitle: "The three pillars of a capable body",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "fit101_b1", type: .whyMatters, title: "Why You Need All Three", bullets: [
                "Strength lets you move heavy things, protect your joints, and stay independent as you age.",
                "Cardio (conditioning) builds the heart and lungs so you don't gas out climbing stairs or playing with your kids.",
                "Mobility keeps your joints moving through a full range so you can squat, reach, and twist without pain.",
                "Neglect any one pillar and the other two eventually suffer. A strong man who can't touch his toes is one bad lift from injury."
            ], body: "Real-world physical competence is not one trait. It is the combination of force, endurance, and freedom of movement.",
            callouts: ["This app is educational. It is not medical advice. Talk to a doctor before starting a new exercise program, especially if you have injuries or health conditions."]),
            ContentBlock(id: "fit101_b2", type: .componentBreakdown, title: "What Each Pillar Trains", bullets: [
                "Strength training: lifting against resistance (barbells, dumbbells, bodyweight) to build muscle force and bone density.",
                "Cardiovascular conditioning: sustained effort (running, rowing, cycling, brisk walking) that raises heart rate and builds endurance.",
                "Mobility work: controlled movement through full ranges (hip openers, ankle drills, thoracic rotations) plus flexibility.",
                "Each adapts a different system: muscle and nervous system, heart and lungs, joints and connective tissue."
            ]),
            ContentBlock(id: "fit101_b3", type: .principles, title: "How To Balance Them", bullets: [
                "A solid weekly baseline: 2 to 4 strength sessions, 2 to 3 cardio sessions, daily short mobility.",
                "The WHO recommends at least 150 minutes of moderate cardio per week plus 2 strengthening days.",
                "You do not need to train each pillar daily. You need to train each consistently over weeks and months.",
                "Recovery is when adaptation happens. More is not always better; consistent is better than heroic."
            ]),
            ContentBlock(id: "fit101_b4", type: .summary, title: "The Bottom Line", bullets: [
                "Strength, cardio, and mobility are a system, not a menu to pick one from.",
                "Aim for roughly 150 minutes of cardio and 2-plus strength days weekly, with daily mobility.",
                "Consistency over months beats intensity for a week."
            ])
        ],
        quiz: Quiz(id: "fit101_q", passPercent: 80, questions: [
            Question(id: "fit101_q1", prompt: "Match each fitness pillar to what it primarily develops.", matchingPairs: [
                MatchingPair(left: "Strength", right: "Muscle force and bone density"),
                MatchingPair(left: "Cardio", right: "Heart and lung endurance"),
                MatchingPair(left: "Mobility", right: "Joint range of motion")
            ], explanation: "Each pillar adapts a different system. A complete program trains all three."),
            Question(id: "fit101_q2", prompt: "The WHO recommends at least _____ minutes of moderate cardio per week.", acceptedAnswers: ["150", "150 minutes", "one hundred fifty"], explanation: "Roughly 150 minutes of moderate cardio per week, plus two strengthening days, is the widely cited baseline for adult health."),
            Question(id: "fit101_q3", type: .scenario, prompt: "A friend only lifts weights and never stretches or does cardio. What is the biggest long-term risk?", choices: ["He will lose all his muscle", "He builds force but loses endurance and joint range, raising injury risk", "Nothing, lifting is all that matters", "He will become too flexible"], correctIndex: 1, explanation: "Strength alone leaves the heart and joints undertrained. Limited mobility plus heavy loads is a common path to injury."),
            Question(id: "fit101_q4", type: .multiSelect, prompt: "Which are true about balancing the three pillars?", choices: ["Each pillar must be trained every single day", "Recovery is when adaptation actually happens", "Consistency over months beats one intense week", "Mobility can be done in short daily doses", "Cardio and strength cannot be trained in the same week"], correctIndices: [1, 2, 3], explanation: "You do not need to train each pillar daily, and strength and cardio coexist fine. Recovery and consistency are what drive results.")
        ]),
        flashcards: [
            Flashcard(id: "fit101_f1", front: "Strength training", back: "Working against resistance to build muscle force and bone density"),
            Flashcard(id: "fit101_f2", front: "Cardiovascular conditioning", back: "Sustained effort that develops heart and lung endurance"),
            Flashcard(id: "fit101_f3", front: "Mobility", back: "The ability to move a joint actively through its full range of motion"),
            Flashcard(id: "fit101_f4", front: "Weekly baseline", back: "About 150 min cardio, 2+ strength days, and daily short mobility")
        ],
        tags: ["foundations", "overview"]
    )

    static let lesson2 = Lesson(
        id: "fit_t1_02",
        categoryId: .fitness,
        tier: 1,
        lessonNumber: 2,
        title: "Progressive Overload",
        subtitle: "The one principle that drives all gains",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["fit_t1_01"],
        contentBlocks: [
            ContentBlock(id: "fit102_b1", type: .whyMatters, title: "Why Progress Stalls Without It", bullets: [
                "Your body adapts to exactly the demand you place on it, then stops improving.",
                "Lift the same weight for the same reps forever and you maintain, you do not grow.",
                "Progressive overload is the deliberate, gradual increase of demand over time.",
                "It is the single most important principle in all of strength and muscle building."
            ]),
            ContentBlock(id: "fit102_b2", type: .systemOverview, title: "The Ways To Add Load", bullets: [
                "Add weight: lift heavier (the classic method).",
                "Add reps: do more repetitions with the same weight.",
                "Add sets: increase total work volume.",
                "Improve form or range: deeper squat, fuller range, stricter execution.",
                "Reduce rest or increase tempo control: make the same work harder."
            ], body: "You only need to beat your previous session in one of these dimensions to be progressing."),
            ContentBlock(id: "fit102_b3", type: .howItWorks, title: "How To Apply It Week To Week", bullets: [
                "Pick a starting weight you can lift with good form for the target reps.",
                "When you hit the top of your rep range on all sets, add a small amount of weight next time.",
                "For upper body, jumps of 2.5 to 5 lb work; for lower body, 5 to 10 lb.",
                "Track every session. You cannot progressively overload what you do not measure.",
                "Progress is not linear forever. Early gains are fast, then they slow and require patience."
            ]),
            ContentBlock(id: "fit102_b4", type: .commonMistakes, title: "Where People Go Wrong", bullets: [
                "Adding weight so fast that form breaks down and reps get cut short.",
                "Never writing anything down, so they have no idea if they are progressing.",
                "Chasing a new program every two weeks instead of mastering one.",
                "Confusing soreness or fatigue with actual progress."
            ], callouts: ["Add load gradually. Ego-loading the bar is the fastest route to a strained back or shoulder."]),
            ContentBlock(id: "fit102_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Adapt or stagnate: the body only improves when demand increases.",
                "Overload by adding weight, reps, sets, range, or control.",
                "Track everything and progress in small, sustainable steps."
            ])
        ],
        quiz: Quiz(id: "fit102_q", passPercent: 80, questions: [
            Question(id: "fit102_q1", prompt: "Progressive overload means the gradual _____ of training demand over time.", acceptedAnswers: ["increase", "increasing", "raising"], explanation: "The body adapts to the demand placed on it, so demand must gradually increase for continued progress."),
            Question(id: "fit102_q2", type: .multiSelect, prompt: "Which of these are valid ways to apply progressive overload?", choices: ["Add weight to the bar", "Do more reps at the same weight", "Add an extra set", "Skip your workout entirely", "Increase your range of motion"], correctIndices: [0, 1, 2, 4], explanation: "You can overload via weight, reps, sets, range, or control. Skipping workouts is the opposite of overload."),
            Question(id: "fit102_q3", type: .scenario, prompt: "You hit the top of your rep range on every set of bench press this week with clean form. What is the right next step?", choices: ["Keep the exact same weight indefinitely", "Add a small amount of weight next session", "Triple the weight immediately", "Switch to a completely new exercise"], correctIndex: 1, explanation: "Hitting the top of your range with good form is the signal to add a small increment, often 2.5 to 5 lb on upper-body lifts."),
            Question(id: "fit102_q4", type: .multipleChoice, prompt: "Why is tracking your workouts essential to progressive overload?", choices: ["It impresses other people at the gym", "You cannot reliably increase demand if you do not know your baseline", "It is required by law", "Tracking burns extra calories"], correctIndex: 1, explanation: "Progressive overload is about beating your previous numbers. Without a record, you are guessing."),
            Question(id: "fit102_q5", type: .multipleChoice, prompt: "Which statement about the rate of progress is most accurate?", choices: ["Progress is perfectly linear forever", "Early gains are fast, then progress slows and requires patience", "You should add 20 lb every single week", "Progress stops completely after one month"], correctIndex: 1, explanation: "Beginners gain quickly, but the rate slows over time. Expecting linear gains forever leads to frustration and ego-loading.")
        ]),
        flashcards: [
            Flashcard(id: "fit102_f1", front: "Progressive overload", back: "Gradually increasing training demand so the body keeps adapting"),
            Flashcard(id: "fit102_f2", front: "Five ways to overload", back: "More weight, reps, sets, range of motion, or movement control"),
            Flashcard(id: "fit102_f3", front: "Training log", back: "A record of your weights, reps, and sets used to verify you are progressing"),
            Flashcard(id: "fit102_f4", front: "Linear progression limit", back: "Early gains come fast, then slow; expecting endless linear gains causes injury")
        ],
        tags: ["foundations", "principles", "strength"]
    )

    static let lesson3 = Lesson(
        id: "fit_t1_03",
        categoryId: .fitness,
        tier: 1,
        lessonNumber: 3,
        title: "Recovery and Sleep",
        subtitle: "You grow when you rest, not when you train",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["fit_t1_02"],
        contentBlocks: [
            ContentBlock(id: "fit103_b1", type: .whyMatters, title: "Training Is The Stimulus, Not The Gain", bullets: [
                "Lifting breaks muscle down. Repair and growth happen afterward, during rest.",
                "Skip recovery and you accumulate fatigue, stall progress, and raise injury risk.",
                "Sleep is the single most powerful recovery tool you have, and it is free.",
                "Most men who feel stuck are under-recovered, not under-trained."
            ]),
            ContentBlock(id: "fit103_b2", type: .systemOverview, title: "The Pillars of Recovery", bullets: [
                "Sleep: aim for 7 to 9 hours; this is when most growth hormone is released and tissue repairs.",
                "Nutrition: adequate protein and total calories give the body raw material to rebuild.",
                "Rest days: muscles need roughly 48 hours before training the same group hard again.",
                "Stress management: chronic stress raises cortisol and blunts recovery."
            ]),
            ContentBlock(id: "fit103_b3", type: .stepByStep, title: "Building Better Sleep", bullets: [
                "Keep a consistent sleep and wake time, even on weekends.",
                "Make the room cool, dark, and quiet; aim for around 65 to 68 degrees F.",
                "Cut screens and bright light 30 to 60 minutes before bed.",
                "Avoid caffeine within 8 to 10 hours of bedtime and limit alcohol, which wrecks sleep quality.",
                "Get morning sunlight to anchor your circadian rhythm."
            ]),
            ContentBlock(id: "fit103_b4", type: .failureModes, title: "Signs You Are Under-Recovered", bullets: [
                "Strength going down session after session despite effort.",
                "Persistent soreness, nagging aches, and low motivation.",
                "Elevated resting heart rate and poor sleep.",
                "Getting sick more often than usual."
            ], callouts: ["Pushing through these signs is not toughness. It is how overtraining and injuries start."]),
            ContentBlock(id: "fit103_b5", type: .summary, title: "The Bottom Line", bullets: [
                "You adapt during recovery, so recovery is part of the program, not a break from it.",
                "Prioritize 7 to 9 hours of sleep and adequate protein and calories.",
                "Watch for under-recovery signals and back off before they become injuries."
            ])
        ],
        quiz: Quiz(id: "fit103_q", passPercent: 80, questions: [
            Question(id: "fit103_q1", prompt: "Most adults should aim for _____ hours of sleep per night for optimal recovery.", acceptedAnswers: ["7 to 9", "7-9", "seven to nine", "8", "eight"], explanation: "The general recommendation for adults is 7 to 9 hours. Sleep is when most tissue repair and growth hormone release occur."),
            Question(id: "fit103_q2", type: .scenario, prompt: "Your bench press has dropped for three straight weeks, you're constantly sore, and your motivation is gone. The most likely cause is:", choices: ["You need to train twice as hard", "You are under-recovered and need more rest and sleep", "You should add caffeine before every session", "Your muscles have permanently stopped growing"], correctIndex: 1, explanation: "Declining strength with persistent soreness and low motivation are classic under-recovery signs. The fix is rest, not more volume."),
            Question(id: "fit103_q3", type: .multiSelect, prompt: "Which habits genuinely improve sleep quality?", choices: ["Consistent sleep and wake times", "A cool, dark, quiet room", "Caffeine an hour before bed", "Cutting screens before bedtime", "Heavy alcohol to fall asleep faster"], correctIndices: [0, 1, 3], explanation: "Consistency, a cool dark room, and reducing screens help. Late caffeine and alcohol both degrade sleep quality."),
            Question(id: "fit103_q4", type: .multipleChoice, prompt: "Roughly how long does a muscle group typically need before being trained hard again?", choices: ["About 2 hours", "About 48 hours", "About 2 weeks", "It never needs rest"], correctIndex: 1, explanation: "Muscles generally need around 48 hours to recover before another hard session targeting the same group.")
        ]),
        flashcards: [
            Flashcard(id: "fit103_f1", front: "Why recovery matters", back: "Training is the stimulus; repair and growth happen during rest"),
            Flashcard(id: "fit103_f2", front: "Sleep target", back: "7 to 9 hours per night, the most powerful recovery tool you have"),
            Flashcard(id: "fit103_f3", front: "Muscle recovery window", back: "About 48 hours before training the same muscle group hard again"),
            Flashcard(id: "fit103_f4", front: "Under-recovery signs", back: "Falling strength, persistent soreness, low motivation, getting sick often")
        ],
        tags: ["foundations", "recovery", "sleep"]
    )

    static let lesson4 = Lesson(
        id: "fit_t1_04",
        categoryId: .fitness,
        tier: 1,
        lessonNumber: 4,
        title: "Nutrition Basics and Protein",
        subtitle: "Fuel and building blocks",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["fit_t1_03"],
        contentBlocks: [
            ContentBlock(id: "fit104_b1", type: .whyMatters, title: "You Cannot Out-Train A Bad Diet", bullets: [
                "Food provides the energy to train and the raw materials to rebuild.",
                "Body composition is driven mostly by total calories; performance and muscle by macronutrients.",
                "Protein is the single most important macronutrient for building and keeping muscle.",
                "Get the basics right and you do not need supplements or extreme diets."
            ], callouts: ["Educational only, not medical or dietary advice. Consult a doctor or registered dietitian for personal nutrition guidance, especially with medical conditions."]),
            ContentBlock(id: "fit104_b2", type: .keyTerms, title: "The Three Macronutrients", bullets: [
                "Protein: builds and repairs muscle; about 4 calories per gram. Sources: meat, eggs, fish, dairy, legumes.",
                "Carbohydrates: the body's main energy source; about 4 calories per gram. Sources: grains, fruit, vegetables, potatoes.",
                "Fat: hormone production and energy; about 9 calories per gram. Sources: oils, nuts, avocado, fatty fish.",
                "Calories measure total energy; macros describe where that energy comes from."
            ]),
            ContentBlock(id: "fit104_b3", type: .principles, title: "Protein: How Much and Why", bullets: [
                "A practical target for active men is about 0.7 to 1.0 gram of protein per pound of bodyweight per day.",
                "Spread protein across 3 to 4 meals rather than one giant serving.",
                "Protein is the most filling macro, which helps control appetite.",
                "Whole-food protein first; powder is a convenience, not a requirement."
            ], body: "Example: a 180 lb man might aim for roughly 130 to 180 grams of protein per day."),
            ContentBlock(id: "fit104_b4", type: .stepByStep, title: "A Simple Plate Framework", bullets: [
                "Fill half your plate with vegetables and fruit.",
                "Add a palm-sized (or two) portion of protein at every meal.",
                "Include a fist of quality carbs sized to your activity level.",
                "Add a thumb of healthy fats.",
                "Drink water; hydration affects strength and energy."
            ]),
            ContentBlock(id: "fit104_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Total calories drive weight; macros drive performance and body composition.",
                "Prioritize protein: roughly 0.7 to 1.0 g per lb of bodyweight daily.",
                "Build meals from whole foods using a simple plate framework before reaching for supplements."
            ])
        ],
        quiz: Quiz(id: "fit104_q", passPercent: 80, questions: [
            Question(id: "fit104_q1", prompt: "Match each macronutrient to its calories per gram.", matchingPairs: [
                MatchingPair(left: "Protein", right: "About 4 calories per gram"),
                MatchingPair(left: "Carbohydrate", right: "About 4 calories per gram"),
                MatchingPair(left: "Fat", right: "About 9 calories per gram")
            ], explanation: "Protein and carbs are about 4 calories per gram; fat is more energy dense at about 9 per gram."),
            Question(id: "fit104_q2", prompt: "An active man should aim for roughly _____ gram(s) of protein per pound of bodyweight daily.", acceptedAnswers: ["0.7 to 1.0", "0.7-1", "1", "one", "0.7 to 1"], explanation: "A practical protein target for active men is about 0.7 to 1.0 g per pound of bodyweight per day."),
            Question(id: "fit104_q3", type: .multipleChoice, prompt: "Which factor most directly determines whether you gain or lose weight?", choices: ["The brand of protein powder you use", "Total daily calories relative to what you burn", "The time of day you eat carbs", "How many supplements you take"], correctIndex: 1, explanation: "Body weight is driven mostly by total energy balance. Macros and timing shape performance and composition, not overall weight direction."),
            Question(id: "fit104_q4", type: .scenario, prompt: "A 180 lb man wants to build muscle but eats almost no protein. What is the smartest first change?", choices: ["Buy five different supplements", "Add a palm-sized protein source to every meal to reach roughly 130 to 180 g per day", "Stop eating carbs entirely", "Only eat one large meal a day"], correctIndex: 1, explanation: "Hitting a daily protein target spread across meals is the highest-impact, simplest fix for building muscle."),
            Question(id: "fit104_q5", type: .multiSelect, prompt: "Which are good whole-food protein sources?", choices: ["Eggs", "Chicken breast", "Soda", "Greek yogurt", "Lentils"], correctIndices: [0, 1, 3, 4], explanation: "Eggs, chicken, Greek yogurt, and lentils are quality protein sources. Soda provides sugar and no protein.")
        ]),
        flashcards: [
            Flashcard(id: "fit104_f1", front: "Macronutrients", back: "Protein, carbohydrate, and fat: the three energy-providing nutrients"),
            Flashcard(id: "fit104_f2", front: "Protein target", back: "About 0.7 to 1.0 g per pound of bodyweight per day for active men"),
            Flashcard(id: "fit104_f3", front: "Calories vs macros", back: "Calories measure total energy; macros describe where the energy comes from"),
            Flashcard(id: "fit104_f4", front: "Plate framework", back: "Half veg, a palm of protein, a fist of carbs, a thumb of fat")
        ],
        tags: ["foundations", "nutrition", "protein"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "fit_t2_01",
        categoryId: .fitness,
        tier: 2,
        lessonNumber: 1,
        title: "The Squat and Deadlift",
        subtitle: "The two kings of lower-body strength",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["fit_t1_04"],
        contentBlocks: [
            ContentBlock(id: "fit201_b1", type: .whyMatters, title: "Why These Two Lifts Matter Most", bullets: [
                "The squat and deadlift train the most muscle and let you move the most weight.",
                "They build full-body strength: legs, hips, back, and core all at once.",
                "These are real-world patterns: standing up from a chair is a squat; picking something off the floor is a deadlift.",
                "Get strong at these and almost everything else in life gets easier."
            ], callouts: ["Education, not coaching. Learn these movements from a qualified coach in person before loading them heavily."]),
            ContentBlock(id: "fit201_b2", type: .stepByStep, title: "Squat Form Cues", bullets: [
                "Bar on upper back, feet about shoulder-width, toes slightly out.",
                "Brace your core as if about to take a punch.",
                "Break at hips and knees together; sit down and back.",
                "Drive knees out in line with toes; keep your whole foot planted.",
                "Descend to at least parallel (thighs parallel to floor), then drive up through mid-foot."
            ]),
            ContentBlock(id: "fit201_b3", type: .stepByStep, title: "Deadlift Form Cues", bullets: [
                "Bar over mid-foot, shins close, feet about hip-width.",
                "Hinge at the hips; grip just outside the knees; flat (neutral) back.",
                "Take the slack out of the bar, then push the floor away with your legs.",
                "Keep the bar dragging up your legs; hips and shoulders rise together.",
                "Lock out by standing tall; do not lean back or shrug at the top."
            ]),
            ContentBlock(id: "fit201_b4", type: .safety, title: "Protecting Your Back and Knees", bullets: [
                "A neutral spine under load is non-negotiable; a rounded lower back under heavy weight is the classic injury.",
                "Bracing your core creates pressure that supports the spine.",
                "Start far lighter than your ego wants and earn the weight.",
                "If a rep starts to round or shift badly, dump it; no single rep is worth an injury."
            ], callouts: ["Sharp or pinching pain is a stop signal. Muscular fatigue is normal; joint pain is not."]),
            ContentBlock(id: "fit201_b5", type: .commonMistakes, title: "Most Common Errors", bullets: [
                "Squat: knees caving in, heels rising, cutting depth short.",
                "Deadlift: rounding the lower back, jerking the bar, bar drifting away from the shins.",
                "Both: holding your breath wrong or not bracing at all.",
                "Both: adding weight faster than form can handle."
            ]),
            ContentBlock(id: "fit201_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Squat and deadlift are the highest-return lower-body lifts.",
                "Brace hard, keep a neutral spine, and move through full but safe range.",
                "Master form light before chasing heavy weight."
            ])
        ],
        quiz: Quiz(id: "fit201_q", passPercent: 80, questions: [
            Question(id: "fit201_q1", type: .multipleChoice, prompt: "In a barbell squat, how deep should you generally aim to descend?", choices: ["A quarter of the way down", "Until thighs are at least parallel to the floor", "Only an inch or two", "As far as possible even if the back rounds"], correctIndex: 1, explanation: "Aim for at least parallel (thighs parallel to the floor) while maintaining a neutral spine and full-foot contact."),
            Question(id: "fit201_q2", type: .scenario, prompt: "Mid-deadlift, you feel your lower back start to round under a heavy load. What should you do?", choices: ["Push harder and finish the rep no matter what", "Stop and lower or dump the bar; a rounded heavy pull risks serious injury", "Lean back hard to compensate", "Hold your breath longer"], correctIndex: 1, explanation: "A rounding lower back under heavy load is the classic deadlift injury. Bailing on the rep is the right, disciplined call."),
            Question(id: "fit201_q3", type: .multiSelect, prompt: "Which are correct deadlift setup cues?", choices: ["Bar over mid-foot", "Neutral (flat) back", "Bar far out in front of the shins", "Push the floor away with your legs", "Round the back to get lower"], correctIndices: [0, 1, 3], explanation: "Bar over mid-foot, neutral back, and leg drive are correct. The bar should stay close, and the back must not round."),
            Question(id: "fit201_q4", prompt: "Bracing your core hard before a heavy lift creates internal _____ that supports the spine.", acceptedAnswers: ["pressure", "intra-abdominal pressure", "abdominal pressure"], explanation: "Bracing builds intra-abdominal pressure that stabilizes the spine under load."),
            Question(id: "fit201_q5", type: .multipleChoice, prompt: "Which everyday action most resembles a deadlift?", choices: ["Reaching overhead for a shelf", "Picking a heavy box up off the floor", "Throwing a ball", "Twisting to look behind you"], correctIndex: 1, explanation: "The deadlift is the hip-hinge pattern used any time you safely lift something off the floor.")
        ]),
        flashcards: [
            Flashcard(id: "fit201_f1", front: "Squat depth", back: "Descend to at least parallel: thighs parallel to the floor, spine neutral"),
            Flashcard(id: "fit201_f2", front: "Hip hinge", back: "The deadlift pattern: bending at the hips with a neutral spine"),
            Flashcard(id: "fit201_f3", front: "Bracing", back: "Tightening the core to build pressure that protects the spine under load"),
            Flashcard(id: "fit201_f4", front: "Neutral spine", back: "The natural curve of the back maintained under load; never rounded heavy")
        ],
        tags: ["working-knowledge", "compound-lifts", "lower-body", "safety"]
    )

    static let lesson6 = Lesson(
        id: "fit_t2_02",
        categoryId: .fitness,
        tier: 2,
        lessonNumber: 2,
        title: "Bench, Overhead Press, and Row",
        subtitle: "Building a strong upper body",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["fit_t2_01"],
        contentBlocks: [
            ContentBlock(id: "fit202_b1", type: .whyMatters, title: "Push and Pull in Balance", bullets: [
                "Bench press and overhead press are the main horizontal and vertical pushes.",
                "The row is the key horizontal pull that balances all that pressing.",
                "Train pushes without pulls and you build rounded shoulders and a weak upper back.",
                "Balanced upper-body strength looks good and keeps shoulders healthy."
            ], callouts: ["Education, not coaching. Have a qualified coach check your form before loading these heavily."]),
            ContentBlock(id: "fit202_b2", type: .stepByStep, title: "Bench Press Cues", bullets: [
                "Eyes under the bar, shoulder blades pulled back and down (retracted).",
                "Grip slightly wider than shoulders; wrists stacked over elbows.",
                "Lower the bar to the lower chest with control; elbows about 45 to 75 degrees from the body.",
                "Drive feet into the floor and press the bar back over your shoulders.",
                "Always use a spotter or safety arms when training near your limit."
            ]),
            ContentBlock(id: "fit202_b3", type: .stepByStep, title: "Overhead Press Cues", bullets: [
                "Bar on the front of the shoulders, grip just outside shoulders.",
                "Brace the core and squeeze the glutes; do not lean back excessively.",
                "Press straight up; move your head back slightly so the bar clears your face.",
                "Finish with the bar over the mid-foot and ears between the arms (locked out).",
                "Keep the ribs down; over-arching the low back is a common fault."
            ]),
            ContentBlock(id: "fit202_b4", type: .stepByStep, title: "Barbell Row Cues", bullets: [
                "Hinge to roughly 45 degrees with a neutral spine, bar hanging at arms length.",
                "Pull the bar to your lower chest or upper abdomen, leading with the elbows.",
                "Squeeze the shoulder blades together at the top.",
                "Lower under control; do not heave with the lower back.",
                "Keep the torso angle steady throughout the set."
            ]),
            ContentBlock(id: "fit202_b5", type: .proTips, title: "Tips That Save Your Shoulders", bullets: [
                "Roughly match your pulling volume to your pushing volume over the week.",
                "Retract the shoulder blades to create a stable base for pressing.",
                "Full range of motion builds more strength and joint health than partial reps.",
                "If a movement consistently pinches, adjust grip width or angle before adding weight."
            ]),
            ContentBlock(id: "fit202_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Bench, overhead press, and row form the upper-body core.",
                "Balance pushing and pulling to protect the shoulders.",
                "Stable shoulder blades, a braced core, and full range drive both strength and longevity."
            ])
        ],
        quiz: Quiz(id: "fit202_q", passPercent: 80, questions: [
            Question(id: "fit202_q1", type: .multipleChoice, prompt: "Why should you balance pushing exercises with pulling exercises?", choices: ["Pulling is useless but traditional", "Unbalanced pushing leads to rounded shoulders and a weak upper back", "Only one of them actually builds muscle", "It makes workouts shorter"], correctIndex: 1, explanation: "Pressing-dominant training pulls the shoulders forward. Rows balance it, keeping shoulders healthy and posture upright."),
            Question(id: "fit202_q2", prompt: "Pulling your shoulder blades back and down before benching is called _____.", acceptedAnswers: ["retraction", "scapular retraction", "retracting"], explanation: "Scapular retraction creates a stable shelf for the press and protects the shoulder joint."),
            Question(id: "fit202_q3", type: .scenario, prompt: "You're about to bench press near your max alone in your garage. What is the safest setup?", choices: ["Just go for it, you'll be fine", "Use a spotter or safety arms / pins set at chest height", "Bench without a rack to save space", "Lift with no warmup to conserve energy"], correctIndex: 1, explanation: "Benching near your limit without a spotter or safety arms risks getting pinned under the bar. Always set a safety mechanism."),
            Question(id: "fit202_q4", type: .multiSelect, prompt: "Which are correct overhead press cues?", choices: ["Brace the core and squeeze the glutes", "Press straight up and lock out overhead", "Lean back hard like a bench press", "Move your head slightly back so the bar clears your face", "Let the ribs flare and over-arch the low back"], correctIndices: [0, 1, 3], explanation: "Bracing, a straight bar path, and clearing the face are correct. Excessive lean-back and an over-arched low back are faults."),
            Question(id: "fit202_q5", prompt: "Match each lift to the movement pattern it trains.", matchingPairs: [
                MatchingPair(left: "Bench press", right: "Horizontal push"),
                MatchingPair(left: "Overhead press", right: "Vertical push"),
                MatchingPair(left: "Barbell row", right: "Horizontal pull")
            ], explanation: "Bench is a horizontal push, overhead press a vertical push, and the row a horizontal pull that balances them.")
        ]),
        flashcards: [
            Flashcard(id: "fit202_f1", front: "Scapular retraction", back: "Pulling the shoulder blades back and down to stabilize the shoulder for pressing"),
            Flashcard(id: "fit202_f2", front: "Push-pull balance", back: "Roughly matching pulling and pushing volume to protect the shoulders"),
            Flashcard(id: "fit202_f3", front: "Overhead press fault", back: "Over-arching the low back and flaring ribs instead of bracing"),
            Flashcard(id: "fit202_f4", front: "Bench safety", back: "Always use a spotter or safety arms when pressing near your limit")
        ],
        tags: ["working-knowledge", "compound-lifts", "upper-body"]
    )

    static let lesson7 = Lesson(
        id: "fit_t2_03",
        categoryId: .fitness,
        tier: 2,
        lessonNumber: 3,
        title: "Warmups and Mobility",
        subtitle: "Prepare to perform, not just to sweat",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["fit_t2_02"],
        contentBlocks: [
            ContentBlock(id: "fit203_b1", type: .whyMatters, title: "Why Warming Up Is Not Optional", bullets: [
                "A warmup raises body and muscle temperature, increasing power and reducing injury risk.",
                "It primes the nervous system so heavy lifts feel sharper and more controlled.",
                "It reveals tight or cranky areas before they become problems under load.",
                "Five to ten focused minutes pays off in better, safer training."
            ]),
            ContentBlock(id: "fit203_b2", type: .keyTerms, title: "Dynamic vs Static Stretching", bullets: [
                "Dynamic stretching: active, moving stretches (leg swings, arm circles, lunges) done before training.",
                "Static stretching: holding a stretch in place; best saved for after training or separate mobility sessions.",
                "Static stretching right before heavy lifting can briefly reduce power output.",
                "Mobility: the ability to actively control a joint through its range, which is more than passive flexibility."
            ], body: "Rule of thumb: move before you lift, hold stretches after."),
            ContentBlock(id: "fit203_b3", type: .stepByStep, title: "A Simple Pre-Lift Warmup", bullets: [
                "Five minutes of light cardio to raise your heart rate and temperature.",
                "Dynamic mobility for the joints you will use (hips, ankles, shoulders, thoracic spine).",
                "Two to three ramp-up sets of your first lift with progressively heavier weight.",
                "Finish ramp sets a comfortable margin below your working weight.",
                "Total time: about 8 to 12 minutes."
            ]),
            ContentBlock(id: "fit203_b4", type: .realWorld, title: "Mobility That Carries Over", bullets: [
                "Tight ankles limit squat depth: try a wall ankle mobilization drill.",
                "Stiff hips cause low-back compensation: use the 90/90 hip drill and deep lunges.",
                "A rounded upper back hurts pressing: do thoracic extensions over a foam roller.",
                "Address the joint that limits the lift, not just the muscle that feels sore."
            ]),
            ContentBlock(id: "fit203_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Warm up to raise temperature, prime the nervous system, and find problems early.",
                "Dynamic stretching before, static stretching after.",
                "Target mobility at the joints that actually limit your lifts."
            ])
        ],
        quiz: Quiz(id: "fit203_q", passPercent: 80, questions: [
            Question(id: "fit203_q1", type: .scenario, prompt: "Right before a heavy squat session, your buddy spends 10 minutes holding deep static stretches. What is the issue?", choices: ["Nothing, that's ideal", "Long static stretching right before heavy lifting can briefly reduce power; dynamic warmups suit pre-lift better", "He should stretch for an hour", "Static stretching makes you weaker permanently"], correctIndex: 1, explanation: "Static stretching is best after training. Before lifting, dynamic movement prepares the body without temporarily blunting power."),
            Question(id: "fit203_q2", prompt: "Match each stretch type or term to its best use.", matchingPairs: [
                MatchingPair(left: "Dynamic stretching", right: "Before training, moving the joints"),
                MatchingPair(left: "Static stretching", right: "After training, held in place"),
                MatchingPair(left: "Ramp-up sets", right: "Lighter sets leading into your working weight")
            ], explanation: "Move before, hold after, and ramp into your working weight with progressively heavier sets."),
            Question(id: "fit203_q3", type: .multiSelect, prompt: "What does a good warmup accomplish?", choices: ["Raises body and muscle temperature", "Primes the nervous system", "Replaces the need for any training", "Reveals tight or problem areas early", "Reduces injury risk"], correctIndices: [0, 1, 3, 4], explanation: "A warmup raises temperature, primes the nervous system, exposes problem areas, and lowers injury risk. It does not replace training."),
            Question(id: "fit203_q4", prompt: "Mobility is the ability to actively _____ a joint through its full range of motion.", acceptedAnswers: ["control", "move", "control and move"], explanation: "Mobility is active control through a range, which is more useful for lifting than passive flexibility alone.")
        ]),
        flashcards: [
            Flashcard(id: "fit203_f1", front: "Dynamic stretching", back: "Active, moving stretches done before training to prepare the body"),
            Flashcard(id: "fit203_f2", front: "Static stretching", back: "Held stretches best done after training, not right before heavy lifts"),
            Flashcard(id: "fit203_f3", front: "Ramp-up sets", back: "Progressively heavier light sets leading into your working weight"),
            Flashcard(id: "fit203_f4", front: "Mobility vs flexibility", back: "Mobility is active control through a range; flexibility is passive length")
        ],
        tags: ["working-knowledge", "mobility", "warmup"]
    )

    static let lesson8 = Lesson(
        id: "fit_t2_04",
        categoryId: .fitness,
        tier: 2,
        lessonNumber: 4,
        title: "Building a Beginner Routine",
        subtitle: "Putting the lifts together into a plan",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["fit_t2_03"],
        contentBlocks: [
            ContentBlock(id: "fit204_b1", type: .whyMatters, title: "Why You Need a Structured Plan", bullets: [
                "Random workouts give random results; a plan creates measurable progress.",
                "A beginner routine should be simple, repeatable, and built on the compound lifts.",
                "Structure makes progressive overload trackable week to week.",
                "Consistency with a decent plan beats perfection you can not stick to."
            ]),
            ContentBlock(id: "fit204_b2", type: .systemOverview, title: "Full-Body vs Split Routines", bullets: [
                "Full-body 3x/week is ideal for beginners: hits each muscle often and is easy to recover from.",
                "Upper/lower splits work well once you can train 4 days a week.",
                "Body-part 'bro splits' suit advanced lifters with high volume, not beginners.",
                "Train each muscle group roughly twice a week for best beginner results."
            ]),
            ContentBlock(id: "fit204_b3", type: .stepByStep, title: "A Sample Beginner Week", bullets: [
                "Day A: Squat, Bench Press, Barbell Row, plus a core exercise.",
                "Day B: Deadlift, Overhead Press, Lat Pulldown or Pull-up, plus core.",
                "Alternate A and B across 3 non-consecutive days (for example Mon/Wed/Fri).",
                "Compound lifts: 3 sets of 5 to 8 reps; accessories: 2 to 3 sets of 8 to 12.",
                "Rest 2 to 3 minutes between heavy compound sets, 60 to 90 seconds for accessories."
            ], body: "This covers every major movement pattern: squat, hinge, push, pull, and core."),
            ContentBlock(id: "fit204_b4", type: .ownerActions, title: "Running the Program", bullets: [
                "Warm up properly, then do your working sets, then a few accessories.",
                "Log every set; apply progressive overload when you hit your rep targets.",
                "Stick with the plan for at least 8 to 12 weeks before judging it.",
                "Eat and sleep enough to recover; the plan only works with recovery."
            ]),
            ContentBlock(id: "fit204_b5", type: .commonMistakes, title: "Beginner Pitfalls", bullets: [
                "Program-hopping every couple of weeks before progress can show.",
                "Doing endless isolation work while neglecting the big lifts.",
                "Skipping warmups or logging, then wondering why progress stalls.",
                "Copying an advanced lifter's high-volume split too early."
            ]),
            ContentBlock(id: "fit204_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Beginners thrive on a simple full-body routine, about 3 days a week.",
                "Build around the compound lifts and hit each muscle roughly twice weekly.",
                "Log, progress, recover, and give the plan 8 to 12 weeks before changing it."
            ])
        ],
        quiz: Quiz(id: "fit204_q", passPercent: 80, questions: [
            Question(id: "fit204_q1", type: .multipleChoice, prompt: "Which routine type is generally best for a true beginner?", choices: ["A 6-day body-part bro split", "A full-body routine about 3 days a week", "Training only one muscle per week", "Random workouts with no structure"], correctIndex: 1, explanation: "Full-body training around 3 days a week lets beginners practice the lifts often and recover well, driving fast early progress."),
            Question(id: "fit204_q2", prompt: "For best beginner results, train each muscle group roughly _____ times per week.", acceptedAnswers: ["2", "two", "twice"], explanation: "Hitting each muscle about twice a week balances frequency of practice with recovery for beginners."),
            Question(id: "fit204_q3", type: .scenario, prompt: "A new lifter switches programs every two weeks chasing the 'perfect' plan. What is the consequence?", choices: ["Faster results from variety", "He never stays on anything long enough to make or measure progress", "Nothing, program choice is irrelevant", "He'll get injured from boredom"], correctIndex: 1, explanation: "Progress requires consistency. Program-hopping resets the clock and makes progressive overload impossible to track."),
            Question(id: "fit204_q4", type: .multiSelect, prompt: "Which movement patterns should a balanced beginner routine include?", choices: ["Squat (knee-dominant)", "Hinge (deadlift)", "Push (press)", "Pull (row or pull-up)", "Core work"], correctIndices: [0, 1, 2, 3, 4], explanation: "A complete routine covers squat, hinge, push, pull, and core, so the whole body develops in balance."),
            Question(id: "fit204_q5", type: .multipleChoice, prompt: "How long should a beginner generally run a sound program before judging it?", choices: ["3 days", "1 week", "8 to 12 weeks", "2 years minimum"], correctIndex: 2, explanation: "Give a program at least 8 to 12 weeks. Real adaptation and a fair evaluation take that kind of consistent time.")
        ]),
        flashcards: [
            Flashcard(id: "fit204_f1", front: "Full-body routine", back: "Training the whole body each session, ideal for beginners about 3 days a week"),
            Flashcard(id: "fit204_f2", front: "Five movement patterns", back: "Squat, hinge, push, pull, and core: the backbone of a balanced program"),
            Flashcard(id: "fit204_f3", front: "Training frequency", back: "Beginners benefit from hitting each muscle group about twice per week"),
            Flashcard(id: "fit204_f4", front: "Program commitment", back: "Run a sound plan 8 to 12 weeks before judging or changing it")
        ],
        tags: ["working-knowledge", "programming", "beginner"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "fit_t3_01",
        categoryId: .fitness,
        tier: 3,
        lessonNumber: 1,
        title: "Programming: Strength vs Hypertrophy",
        subtitle: "Training for force versus training for size",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fit_t2_04"],
        contentBlocks: [
            ContentBlock(id: "fit301_b1", type: .whyMatters, title: "Different Goals, Different Programs", bullets: [
                "Maximal strength (lifting the heaviest possible load) and hypertrophy (building muscle size) overlap but are not identical.",
                "How you set reps, load, sets, and rest determines which adaptation you bias toward.",
                "Most men benefit from a blend, but knowing the levers lets you steer your training.",
                "The same lifts can serve either goal; the variables change."
            ]),
            ContentBlock(id: "fit301_b2", type: .componentBreakdown, title: "The Key Variables", bullets: [
                "Strength: heavy loads (about 85%-plus of 1RM), low reps (1 to 5), longer rest (3 to 5 min), moderate volume.",
                "Hypertrophy: moderate loads (about 65 to 80% of 1RM), 6 to 12 (up to 20) reps, shorter rest (1 to 2 min), higher total volume.",
                "Volume (sets x reps x load) is the primary driver of muscle growth.",
                "Intensity (percentage of 1RM) is the primary driver of maximal strength.",
                "Proximity to failure matters more for hypertrophy than for pure strength."
            ], body: "1RM means your one-repetition maximum, the most weight you can lift once with good form."),
            ContentBlock(id: "fit301_b3", type: .principles, title: "Volume, Intensity, and Frequency", bullets: [
                "Research suggests roughly 10 to 20 hard sets per muscle group per week supports growth for most lifters.",
                "Effective reps come from sets taken close to failure (often within 1 to 3 reps in reserve).",
                "Spreading volume across 2-plus sessions per muscle usually beats cramming it into one.",
                "Strength work tolerates and benefits from more rest between sets to keep force output high."
            ]),
            ContentBlock(id: "fit301_b4", type: .realWorld, title: "Choosing Your Emphasis", bullets: [
                "Want to be strong for sport or pulling/pushing heavy loads: bias low reps, heavy weight, more rest.",
                "Want to look more muscular: bias moderate reps, more total volume, controlled tempo.",
                "Powerbuilding blends both: heavy compounds early, higher-rep accessories after.",
                "You can periodize: spend a block on strength, then a block on hypertrophy."
            ]),
            ContentBlock(id: "fit301_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Strength is driven by intensity and low reps; size is driven by volume and moderate reps.",
                "Target about 10 to 20 hard sets per muscle weekly for growth, with sets near failure.",
                "Pick an emphasis or periodize between the two as your goals shift."
            ])
        ],
        quiz: Quiz(id: "fit301_q", passPercent: 80, questions: [
            Question(id: "fit301_q1", type: .multipleChoice, prompt: "Which rep and load scheme best biases pure maximal strength?", choices: ["Light weight, 20+ reps", "Heavy weight (85%+ 1RM), 1 to 5 reps, long rest", "Moderate weight, 12 reps, 30 second rest", "Bodyweight only, endless reps"], correctIndex: 1, explanation: "Maximal strength is driven by high intensity: heavy loads, low reps, and long rest to keep force output high."),
            Question(id: "fit301_q2", prompt: "The primary driver of muscle growth (hypertrophy) is training _____.", acceptedAnswers: ["volume", "total volume", "training volume"], explanation: "Volume (sets x reps x load), with sets taken close to failure, is the main driver of hypertrophy."),
            Question(id: "fit301_q3", type: .multiSelect, prompt: "Which are characteristic of a hypertrophy-focused approach?", choices: ["Moderate loads (about 65 to 80% 1RM)", "6 to 12 rep range commonly", "Single-rep maxes every set", "Higher total weekly volume", "Sets taken close to failure"], correctIndices: [0, 1, 3, 4], explanation: "Hypertrophy favors moderate loads, moderate reps, high volume, and proximity to failure. Constant 1-rep maxes are a strength tactic."),
            Question(id: "fit301_q4", type: .scenario, prompt: "A lifter wants both noticeably more muscle and a bigger squat. What is a sensible plan?", choices: ["Only ever do 1-rep maxes", "Powerbuild or periodize: heavy compounds for strength, higher-rep accessories for size", "Only do light high-rep work", "Avoid the squat entirely"], correctIndex: 1, explanation: "Powerbuilding or periodizing between strength and hypertrophy blocks lets you develop both qualities over time."),
            Question(id: "fit301_q5", prompt: "Match each goal to its primary training driver.", matchingPairs: [
                MatchingPair(left: "Maximal strength", right: "Intensity (percent of 1RM)"),
                MatchingPair(left: "Hypertrophy", right: "Total training volume"),
                MatchingPair(left: "Recovery between heavy sets", right: "Longer rest periods")
            ], explanation: "Strength tracks with intensity, size with volume, and heavy lifting needs longer rest to maintain output.")
        ]),
        flashcards: [
            Flashcard(id: "fit301_f1", front: "Hypertrophy", back: "The growth of muscle size, driven mainly by training volume near failure"),
            Flashcard(id: "fit301_f2", front: "1RM", back: "One-repetition maximum: the heaviest weight you can lift once with good form"),
            Flashcard(id: "fit301_f3", front: "Weekly volume target", back: "Roughly 10 to 20 hard sets per muscle group per week for growth"),
            Flashcard(id: "fit301_f4", front: "Reps in reserve", back: "How many more reps you could have done; lower RIR means closer to failure")
        ],
        tags: ["advanced", "programming", "hypertrophy", "strength"]
    )

    static let lesson10 = Lesson(
        id: "fit_t3_02",
        categoryId: .fitness,
        tier: 3,
        lessonNumber: 2,
        title: "Nutrition for Goals: Cut vs Bulk",
        subtitle: "Calories, macros, and direction",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fit_t3_01"],
        contentBlocks: [
            ContentBlock(id: "fit302_b1", type: .whyMatters, title: "Energy Balance Drives Body Change", bullets: [
                "Eat fewer calories than you burn (a deficit) and you lose weight: this is a 'cut'.",
                "Eat more calories than you burn (a surplus) and you gain weight: this is a 'bulk'.",
                "Eat about what you burn (maintenance) and weight holds steady.",
                "Strategy matters: how fast you cut or bulk, and what the gained or lost weight is made of."
            ], callouts: ["Educational only, not medical or dietary advice. Significant calorie changes should be discussed with a doctor or registered dietitian."]),
            ContentBlock(id: "fit302_b2", type: .stepByStep, title: "Estimating Your Calories", bullets: [
                "Estimate maintenance calories (a rough start is 14 to 16 calories per pound of bodyweight for active men).",
                "To cut: subtract about 15 to 25%, often a 300 to 500 calorie deficit per day.",
                "To bulk: add a modest 10 to 15%, often a 200 to 400 calorie surplus per day.",
                "Track weekly average weight; adjust calories based on the trend, not daily fluctuations.",
                "Aim to lose roughly 0.5 to 1% of bodyweight per week when cutting."
            ], body: "These are starting estimates. Real maintenance is whatever weight your intake actually holds over a few weeks."),
            ContentBlock(id: "fit302_b3", type: .principles, title: "Protecting Muscle in Both Phases", bullets: [
                "Keep protein high in a cut (often 0.8 to 1.2 g per lb) to preserve muscle while losing fat.",
                "Keep training hard and heavy; lifting tells the body to keep its muscle.",
                "Bulk slowly: a fast surplus mostly adds fat, not extra muscle.",
                "An aggressive cut risks muscle loss, strength drops, and low energy."
            ]),
            ContentBlock(id: "fit302_b4", type: .commonMistakes, title: "Where Cuts and Bulks Go Wrong", bullets: [
                "Cutting too fast: crash diets burn muscle and tank performance.",
                "'Dirty bulking' on junk: rapid weight gain that is mostly fat.",
                "Letting protein drop in a cut, sacrificing the muscle you worked to build.",
                "Reacting to daily scale noise instead of the weekly trend."
            ]),
            ContentBlock(id: "fit302_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Deficit to lose, surplus to gain, maintenance to hold: it starts with energy balance.",
                "Cut at a modest deficit and bulk at a modest surplus to control what you gain or keep.",
                "High protein and hard training protect muscle in either direction."
            ])
        ],
        quiz: Quiz(id: "fit302_q", passPercent: 80, questions: [
            Question(id: "fit302_q1", prompt: "Match each goal to its required energy balance.", matchingPairs: [
                MatchingPair(left: "Fat loss (cut)", right: "Calorie deficit"),
                MatchingPair(left: "Weight gain (bulk)", right: "Calorie surplus"),
                MatchingPair(left: "Maintain weight", right: "Eat at maintenance")
            ], explanation: "Body weight change comes down to energy balance: deficit to lose, surplus to gain, maintenance to hold."),
            Question(id: "fit302_q2", prompt: "A calorie _____ is required to lose body fat.", acceptedAnswers: ["deficit", "shortage"], explanation: "Sustained losing of weight requires eating fewer calories than you burn, a deficit."),
            Question(id: "fit302_q3", type: .scenario, prompt: "A man wants to lose fat fast and slashes calories by 60% while dropping protein. What is the likely outcome?", choices: ["Pure fat loss with no downside", "Muscle loss, strength drops, low energy, and likely rebound", "Faster muscle gain", "Nothing changes"], correctIndex: 1, explanation: "Extreme deficits with low protein burn muscle, crater performance, and are hard to sustain. Modest deficits with high protein work far better."),
            Question(id: "fit302_q4", type: .multipleChoice, prompt: "A reasonable rate of weight loss during a cut is about:", choices: ["3 to 5% of bodyweight per week", "0.5 to 1% of bodyweight per week", "10% of bodyweight per week", "There is no upper limit"], correctIndex: 1, explanation: "About 0.5 to 1% of bodyweight per week preserves muscle and is sustainable. Faster usually means more muscle loss."),
            Question(id: "fit302_q5", type: .multiSelect, prompt: "Which practices protect muscle while cutting?", choices: ["Keeping protein high (0.8 to 1.2 g/lb)", "Continuing to lift heavy", "Cutting calories by 60% overnight", "Tracking the weekly weight trend", "Dropping all resistance training"], correctIndices: [0, 1, 3], explanation: "High protein, continued heavy training, and trend-based adjustments preserve muscle. Crash deficits and quitting lifting do the opposite.")
        ]),
        flashcards: [
            Flashcard(id: "fit302_f1", front: "Calorie deficit", back: "Eating fewer calories than you burn, required for fat loss (a cut)"),
            Flashcard(id: "fit302_f2", front: "Calorie surplus", back: "Eating more than you burn, required for weight gain (a bulk)"),
            Flashcard(id: "fit302_f3", front: "Maintenance calories", back: "The intake that holds your weight steady over several weeks"),
            Flashcard(id: "fit302_f4", front: "Cutting rate", back: "About 0.5 to 1% of bodyweight per week to preserve muscle")
        ],
        tags: ["advanced", "nutrition", "cutting", "bulking"]
    )

    static let lesson11 = Lesson(
        id: "fit_t3_03",
        categoryId: .fitness,
        tier: 3,
        lessonNumber: 3,
        title: "Tracking Progress and Busting Plateaus",
        subtitle: "Measure, diagnose, adjust",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fit_t3_02"],
        contentBlocks: [
            ContentBlock(id: "fit303_b1", type: .whyMatters, title: "What Gets Measured Gets Managed", bullets: [
                "Progress is invisible without tracking; memory is unreliable and biased.",
                "Good metrics let you tell real progress from random fluctuation.",
                "When you stall, data tells you what to change instead of guessing.",
                "Tracking turns training from a hobby into a results-driven process."
            ]),
            ContentBlock(id: "fit303_b2", type: .systemOverview, title: "What To Track", bullets: [
                "Training log: weights, reps, and sets for each lift over time.",
                "Bodyweight: weighed consistently, judged by weekly averages, not single days.",
                "Measurements and progress photos: monthly, to see composition change the scale misses.",
                "Performance markers: estimated 1RMs, reps at a fixed weight, conditioning times.",
                "Optional: sleep, energy, and recovery notes to spot patterns."
            ]),
            ContentBlock(id: "fit303_b3", type: .howItWorks, title: "Diagnosing a Real Plateau", bullets: [
                "A true plateau is several weeks of no progress despite consistent effort and tracking.",
                "First check the basics: are you actually eating, sleeping, and recovering enough?",
                "Check whether you have actually been progressively overloading or just repeating sessions.",
                "Distinguish a plateau from normal week-to-week noise; one bad session is not a plateau."
            ]),
            ContentBlock(id: "fit303_b4", type: .ownerActions, title: "Tactics To Break Through", bullets: [
                "Deload: a planned lighter week to shed accumulated fatigue, then resume.",
                "Adjust volume: add a set or two, or trim junk volume that is just causing fatigue.",
                "Change rep ranges or exercise variations to provide a new stimulus.",
                "Tighten nutrition and sleep, the most common hidden cause of stalls.",
                "Be patient: the more advanced you are, the slower and smaller real gains become."
            ]),
            ContentBlock(id: "fit303_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Track training, bodyweight, measurements, and performance to see real trends.",
                "Confirm a plateau over weeks, then check recovery and overload before changing the plan.",
                "Deloads, volume tweaks, new stimulus, and better recovery are your main tools."
            ])
        ],
        quiz: Quiz(id: "fit303_q", passPercent: 80, questions: [
            Question(id: "fit303_q1", type: .scenario, prompt: "Your bench has not moved in one week. Is this a plateau?", choices: ["Yes, change everything immediately", "Not necessarily; one week is normal noise, a plateau is several weeks of no progress despite tracking and effort", "Yes, you should quit lifting", "Only if you feel sore"], correctIndex: 1, explanation: "A single flat week is normal variation. A true plateau is multiple weeks of stalled, well-tracked progress despite real effort."),
            Question(id: "fit303_q2", prompt: "A planned lighter week used to shed accumulated fatigue is called a _____.", acceptedAnswers: ["deload", "deload week"], explanation: "A deload is a deliberate reduction in training stress to recover, often a great first move when truly stalled."),
            Question(id: "fit303_q3", type: .multiSelect, prompt: "Which are smart first checks when progress stalls?", choices: ["Are you eating and sleeping enough?", "Have you actually been progressively overloading?", "Immediately switch to a brand-new program", "Is week-to-week noise being mistaken for a plateau?", "Take random unverified supplements"], correctIndices: [0, 1, 3], explanation: "Check recovery, verify you have been overloading, and rule out noise before overhauling everything or chasing supplements."),
            Question(id: "fit303_q4", type: .multipleChoice, prompt: "Why should bodyweight be judged on weekly averages rather than single daily weigh-ins?", choices: ["Daily weight never changes", "Daily weight fluctuates from water, food, and salt, so trends are more reliable", "Weekly weighing is required by law", "The scale only works on certain days"], correctIndex: 1, explanation: "Daily weight swings with water, food, and sodium. Weekly averages reveal the real trend underneath the noise."),
            Question(id: "fit303_q5", type: .multipleChoice, prompt: "As a lifter becomes more advanced, you should expect progress to:", choices: ["Speed up indefinitely", "Slow down and require more patience and finer adjustments", "Stop entirely and permanently", "Become perfectly linear"], correctIndex: 1, explanation: "Newbie gains fade. Advanced lifters progress slowly, so patience and precise programming matter more.")
        ]),
        flashcards: [
            Flashcard(id: "fit303_f1", front: "True plateau", back: "Several weeks of no progress despite consistent, tracked effort"),
            Flashcard(id: "fit303_f2", front: "Deload", back: "A planned lighter week to shed fatigue before resuming hard training"),
            Flashcard(id: "fit303_f3", front: "Weekly average weight", back: "Judging bodyweight by the weekly trend, not noisy daily numbers"),
            Flashcard(id: "fit303_f4", front: "First stall check", back: "Recovery and whether you actually overloaded, before changing the program")
        ],
        tags: ["advanced", "tracking", "plateaus"]
    )

    static let lesson12 = Lesson(
        id: "fit_t3_04",
        categoryId: .fitness,
        tier: 3,
        lessonNumber: 4,
        title: "Periodization and Auto-Regulation",
        subtitle: "Planning intensity across weeks and months",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fit_t3_03"],
        contentBlocks: [
            ContentBlock(id: "fit304_b1", type: .whyMatters, title: "Why You Cannot Push Hard Forever", bullets: [
                "You cannot add weight every session indefinitely; fatigue accumulates and progress stalls.",
                "Periodization is structuring training into phases so you peak and recover deliberately.",
                "Auto-regulation adjusts daily training to how your body actually feels and performs.",
                "These tools let intermediate and advanced lifters keep progressing for years."
            ]),
            ContentBlock(id: "fit304_b2", type: .keyTerms, title: "Periodization Models", bullets: [
                "Linear periodization: gradually increase intensity and decrease reps over a block.",
                "Undulating periodization: vary intensity and reps within the same week (heavy, medium, light days).",
                "Block periodization: dedicate blocks to specific goals (hypertrophy, then strength, then peaking).",
                "Mesocycle: a training block of roughly 3 to 6 weeks; macrocycle: the full long-term plan."
            ]),
            ContentBlock(id: "fit304_b3", type: .howItWorks, title: "Auto-Regulation Tools", bullets: [
                "RPE (Rate of Perceived Exertion): a 1 to 10 scale of how hard a set felt.",
                "RIR (Reps In Reserve): how many reps you had left; RIR 2 means 2 reps from failure.",
                "Use RPE/RIR to pick today's weight based on readiness, not a rigid number.",
                "On a strong day you push; on a beat-up day you pull back, protecting recovery."
            ], body: "Auto-regulation makes a rigid plan flexible without abandoning structure."),
            ContentBlock(id: "fit304_b4", type: .principles, title: "Managing Fatigue Over Time", bullets: [
                "Plan deloads roughly every 4 to 8 weeks, or when performance and readiness drop.",
                "Alternate harder and easier weeks rather than maxing out every session.",
                "Volume and intensity should rise and fall in waves, not climb in a straight line forever.",
                "The goal is the long-term upward trend, not winning every single workout."
            ]),
            ContentBlock(id: "fit304_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Periodization structures phases of training so you progress and recover on purpose.",
                "Auto-regulation (RPE/RIR) tunes each session to your real readiness.",
                "Wave your effort and schedule deloads to keep climbing over months and years."
            ])
        ],
        quiz: Quiz(id: "fit304_q", passPercent: 80, questions: [
            Question(id: "fit304_q1", prompt: "Match each term to its meaning.", matchingPairs: [
                MatchingPair(left: "RPE", right: "Rate of perceived exertion, 1 to 10"),
                MatchingPair(left: "RIR", right: "Reps in reserve before failure"),
                MatchingPair(left: "Mesocycle", right: "A training block of about 3 to 6 weeks"),
                MatchingPair(left: "Deload", right: "A planned lighter recovery week")
            ], explanation: "These are the core terms for programming and auto-regulating training over time."),
            Question(id: "fit304_q2", prompt: "If a set is RIR 2, you stopped with about _____ reps left before failure.", acceptedAnswers: ["2", "two"], explanation: "RIR (Reps In Reserve) 2 means you could have done roughly two more reps before failing."),
            Question(id: "fit304_q3", type: .scenario, prompt: "Your program says 5x5 at a fixed weight, but today you slept poorly and the bar feels brutal. How can auto-regulation help?", choices: ["Ignore how you feel and grind it regardless", "Use RPE/RIR to reduce the load slightly today, protecting recovery while still training", "Skip training for the whole month", "Max out to prove toughness"], correctIndex: 1, explanation: "Auto-regulation lets you adjust load to today's readiness, keeping training productive without digging a recovery hole."),
            Question(id: "fit304_q4", type: .multipleChoice, prompt: "Which best describes undulating periodization?", choices: ["The same weight and reps every session forever", "Varying intensity and reps within the same week", "Never deloading", "Only training once a month"], correctIndex: 1, explanation: "Undulating periodization rotates heavy, medium, and lighter days within a week to manage fatigue and stimulate progress."),
            Question(id: "fit304_q5", type: .multiSelect, prompt: "Which are sound long-term fatigue-management practices?", choices: ["Plan deloads roughly every 4 to 8 weeks", "Alternate harder and easier weeks", "Try to max out every single session", "Wave volume and intensity over time", "Judge success by the long-term trend"], correctIndices: [0, 1, 3, 4], explanation: "Deloads, wave loading, and a trend focus sustain progress. Maxing out constantly leads to burnout and stalls.")
        ]),
        flashcards: [
            Flashcard(id: "fit304_f1", front: "Periodization", back: "Structuring training into phases to progress and recover deliberately"),
            Flashcard(id: "fit304_f2", front: "RPE", back: "Rate of perceived exertion: a 1 to 10 rating of how hard a set felt"),
            Flashcard(id: "fit304_f3", front: "RIR", back: "Reps in reserve: how many reps you had left before failure"),
            Flashcard(id: "fit304_f4", front: "Wave loading", back: "Letting volume and intensity rise and fall instead of climbing forever")
        ],
        tags: ["advanced", "periodization", "auto-regulation"]
    )

    // MARK: - Tier 4: Mastery

    static let lesson13 = Lesson(
        id: "fit_t4_01",
        categoryId: .fitness,
        tier: 4,
        lessonNumber: 1,
        title: "Injury Prevention and Joint Health",
        subtitle: "Train hard for decades, not months",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fit_t3_04"],
        contentBlocks: [
            ContentBlock(id: "fit401_b1", type: .whyMatters, title: "The Best Program Is One You Can Keep Doing", bullets: [
                "An injury can erase months of progress and force time off completely.",
                "Most lifting injuries are gradual overuse, not single dramatic accidents.",
                "Healthy joints and tendons let you keep training through your 40s, 50s, and beyond.",
                "Longevity in the gym beats short-term intensity that gets you hurt."
            ], callouts: ["Education, not medical advice. For pain, injury, or rehab, see a qualified physician or physical therapist."]),
            ContentBlock(id: "fit401_b2", type: .principles, title: "Principles That Keep You Healthy", bullets: [
                "Manage load: progress gradually so tissues adapt; sudden spikes cause injuries.",
                "Train through full range of motion to build strength and resilience across the whole joint.",
                "Balance opposing muscles (push/pull, quad/hamstring) to avoid imbalance-driven strain.",
                "Warm up properly and keep technique tight, especially as fatigue rises late in a set."
            ]),
            ContentBlock(id: "fit401_b3", type: .keyTerms, title: "Pain vs Discomfort", bullets: [
                "Muscular burn and fatigue: normal training discomfort.",
                "Delayed onset muscle soreness (DOMS): normal soreness 1 to 2 days after; it fades.",
                "Sharp, stabbing, or joint pain: a stop signal, not something to push through.",
                "Pain that lingers, worsens, or alters movement needs assessment, not more reps."
            ]),
            ContentBlock(id: "fit401_b4", type: .ownerActions, title: "Protecting Your Tendons and Joints", bullets: [
                "Build tendon resilience with controlled tempo and full-range work; tendons adapt slower than muscle.",
                "Don't skip mobility for the joints you load most (shoulders, hips, knees, ankles).",
                "Use a sensible deload schedule to let connective tissue recover.",
                "Address small niggles early; minor tweaks ignored become real injuries."
            ]),
            ContentBlock(id: "fit401_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Most lifting injuries come from doing too much too soon, not from one bad day.",
                "Progress gradually, train full range, balance muscles, and respect real pain.",
                "Manage fatigue and tendons so you can train hard for decades."
            ])
        ],
        quiz: Quiz(id: "fit401_q", passPercent: 80, questions: [
            Question(id: "fit401_q1", type: .multipleChoice, prompt: "Most lifting injuries are caused by:", choices: ["A single dramatic accident", "Gradual overuse and doing too much too soon", "Lifting with perfect form", "Warming up too thoroughly"], correctIndex: 1, explanation: "The majority of training injuries come from overuse and sudden load spikes, not one-off accidents. Gradual progression protects you."),
            Question(id: "fit401_q2", type: .scenario, prompt: "Mid-set you feel a sharp, stabbing pain in your shoulder joint. What is the disciplined response?", choices: ["Push through to finish the set", "Stop the set; sharp joint pain is a warning, not normal discomfort", "Add more weight to test it", "Ignore it and train shoulders harder tomorrow"], correctIndex: 1, explanation: "Sharp, stabbing joint pain is a clear stop signal. Pushing through risks turning a warning into a real injury."),
            Question(id: "fit401_q3", prompt: "Normal muscle soreness that appears 1 to 2 days after a hard workout is abbreviated _____.", acceptedAnswers: ["DOMS", "doms", "delayed onset muscle soreness"], explanation: "DOMS (delayed onset muscle soreness) is normal post-workout soreness that fades within a few days."),
            Question(id: "fit401_q4", type: .multiSelect, prompt: "Which habits genuinely reduce injury risk over the long term?", choices: ["Progressing load gradually", "Balancing opposing muscle groups", "Spiking weight suddenly to feel tough", "Training through a full range of motion", "Addressing small niggles early"], correctIndices: [0, 1, 3, 4], explanation: "Gradual progression, muscle balance, full range, and early attention to niggles protect you. Sudden load spikes do the opposite."),
            Question(id: "fit401_q5", type: .multipleChoice, prompt: "Why do tendons need extra care compared to muscles?", choices: ["They never adapt at all", "They adapt more slowly, so they need gradual loading and patience", "They are not used in lifting", "They recover instantly"], correctIndex: 1, explanation: "Tendons and connective tissue adapt slower than muscle, so they need gradual loading and patience to stay healthy.")
        ]),
        flashcards: [
            Flashcard(id: "fit401_f1", front: "Overuse injury", back: "Gradual tissue damage from too much load too soon, the most common lifting injury"),
            Flashcard(id: "fit401_f2", front: "DOMS", back: "Delayed onset muscle soreness, normal soreness 1 to 2 days after training"),
            Flashcard(id: "fit401_f3", front: "Pain vs discomfort", back: "Muscular burn is normal; sharp or joint pain is a stop signal"),
            Flashcard(id: "fit401_f4", front: "Tendon adaptation", back: "Tendons strengthen slower than muscle, requiring gradual loading and patience")
        ],
        tags: ["mastery", "injury-prevention", "joint-health", "safety"]
    )

    static let lesson14 = Lesson(
        id: "fit_t4_02",
        categoryId: .fitness,
        tier: 4,
        lessonNumber: 2,
        title: "Conditioning and Work Capacity",
        subtitle: "The engine behind everything you do",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fit_t4_01"],
        contentBlocks: [
            ContentBlock(id: "fit402_b1", type: .whyMatters, title: "Strength Without Conditioning Is Half a Man", bullets: [
                "Work capacity is your ability to do more total work and recover between efforts.",
                "Good conditioning means you can train harder, recover faster, and last longer in life.",
                "Cardiovascular health is one of the strongest predictors of long-term health and lifespan.",
                "Being strong but unable to climb stairs without gasping is a gap worth closing."
            ], callouts: ["Educational only. Get medical clearance before starting intense conditioning, especially with heart conditions or if you are out of shape."]),
            ContentBlock(id: "fit402_b2", type: .keyTerms, title: "Aerobic vs Anaerobic Energy", bullets: [
                "Aerobic (with oxygen): sustained, lower-intensity work like jogging, rucking, or cycling.",
                "Anaerobic (without oxygen): short, intense bursts like sprints or heavy intervals.",
                "VO2 max: the maximum oxygen your body can use, a top marker of cardiovascular fitness.",
                "A complete athlete trains both energy systems, not just one."
            ]),
            ContentBlock(id: "fit402_b3", type: .systemOverview, title: "Methods of Conditioning", bullets: [
                "Zone 2 cardio: steady, conversational-pace work that builds the aerobic base; 30 to 60 min sessions.",
                "HIIT (high-intensity interval training): hard bursts with rest, efficient for VO2 max and time.",
                "Circuits and loaded carries: build muscular endurance and real-world work capacity.",
                "A balanced week often blends 2 to 3 Zone 2 sessions with 1 harder interval session."
            ], body: "Zone 2 builds the base; intervals build the top end. You want both."),
            ContentBlock(id: "fit402_b4", type: .realWorld, title: "Fitting It Around Lifting", bullets: [
                "Schedule hard conditioning away from heavy leg days when possible.",
                "Low-intensity Zone 2 aids recovery and rarely hurts strength gains.",
                "Excessive high-intensity cardio can compete with strength (the 'interference effect'); manage the dose.",
                "Loaded carries and sled work bridge lifting and conditioning with minimal interference."
            ]),
            ContentBlock(id: "fit402_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Work capacity lets you do and recover from more, in the gym and in life.",
                "Train both aerobic (Zone 2) and anaerobic (intervals) systems.",
                "Program conditioning to complement, not sabotage, your strength work."
            ])
        ],
        quiz: Quiz(id: "fit402_q", passPercent: 80, questions: [
            Question(id: "fit402_q1", prompt: "Match each conditioning term to its description.", matchingPairs: [
                MatchingPair(left: "Aerobic", right: "Sustained work with oxygen"),
                MatchingPair(left: "Anaerobic", right: "Short, intense bursts without oxygen"),
                MatchingPair(left: "VO2 max", right: "Maximum oxygen your body can use"),
                MatchingPair(left: "Zone 2", right: "Steady conversational-pace cardio")
            ], explanation: "These are the foundational terms for understanding conditioning and the two energy systems."),
            Question(id: "fit402_q2", prompt: "Steady, conversational-pace cardio that builds your aerobic base is commonly called _____ training.", acceptedAnswers: ["zone 2", "zone two", "zone 2 cardio"], explanation: "Zone 2 is low-intensity, sustainable cardio that develops the aerobic base and supports recovery."),
            Question(id: "fit402_q3", type: .scenario, prompt: "A strong lifter gets winded climbing two flights of stairs. What should he add?", choices: ["Nothing, strength is all that matters", "Regular conditioning, building an aerobic base with Zone 2 plus some intervals", "Only more heavy squats", "Cut all cardio to protect his gains"], correctIndex: 1, explanation: "Getting winded easily signals poor work capacity. Building an aerobic base plus some interval work fixes it without wrecking strength."),
            Question(id: "fit402_q4", type: .multipleChoice, prompt: "What is the 'interference effect'?", choices: ["Cardio always destroys all muscle", "Excessive high-intensity endurance training can blunt strength and muscle gains if the dose is too high", "Lifting prevents any cardio improvement", "Warmups interfere with workouts"], correctIndex: 1, explanation: "The interference effect is the partial competition between high-volume endurance and strength training; managing the dose keeps both improving."),
            Question(id: "fit402_q5", type: .multiSelect, prompt: "Which are smart ways to combine conditioning with lifting?", choices: ["Use Zone 2 on rest or easy days to aid recovery", "Schedule hard intervals away from heavy leg days", "Do max-effort sprints right before heavy squats", "Use loaded carries to bridge strength and conditioning", "Replace all lifting with endurance work"], correctIndices: [0, 1, 3], explanation: "Smart placement and tools like loaded carries combine the two well. Sprinting before heavy squats or dropping lifting entirely are mistakes.")
        ]),
        flashcards: [
            Flashcard(id: "fit402_f1", front: "Work capacity", back: "Your ability to do more total work and recover between efforts"),
            Flashcard(id: "fit402_f2", front: "VO2 max", back: "The maximum oxygen your body can use; a top marker of cardio fitness"),
            Flashcard(id: "fit402_f3", front: "Zone 2 cardio", back: "Steady conversational-pace work that builds the aerobic base"),
            Flashcard(id: "fit402_f4", front: "Interference effect", back: "Excess high-intensity endurance work can partially blunt strength gains")
        ],
        tags: ["mastery", "conditioning", "work-capacity"]
    )

    static let lesson15 = Lesson(
        id: "fit_t4_03",
        categoryId: .fitness,
        tier: 4,
        lessonNumber: 3,
        title: "Training Sustainably for Life",
        subtitle: "Building a habit that outlasts motivation",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["fit_t4_02"],
        contentBlocks: [
            ContentBlock(id: "fit403_b1", type: .whyMatters, title: "Consistency Over Decades Beats Intensity For a Month", bullets: [
                "The best results come from training you actually maintain for years.",
                "Motivation is unreliable; systems and habits are what carry you on the hard days.",
                "Burnout from doing too much is as much a threat as doing too little.",
                "A sustainable approach compounds: small consistent efforts add up enormously over time."
            ]),
            ContentBlock(id: "fit403_b2", type: .principles, title: "Principles of Sustainable Training", bullets: [
                "Train at a volume you can recover from and repeat, not your absolute maximum.",
                "Build flexible plans: a good workout you'll do beats a perfect one you'll skip.",
                "Set process goals (show up 3x a week) alongside outcome goals (add 20 lb to your squat).",
                "Make it convenient: a home setup or a gym near work removes friction."
            ]),
            ContentBlock(id: "fit403_b3", type: .stepByStep, title: "Building the Habit", bullets: [
                "Anchor workouts to fixed times so they become automatic, not a daily decision.",
                "Start smaller than feels necessary; an easy habit you keep beats a hard one you drop.",
                "Track a simple streak or log to make consistency visible and rewarding.",
                "Plan for life: have a 20-minute minimum session for busy days so you never fully stop.",
                "Expect setbacks; restart fast instead of treating one missed week as failure."
            ]),
            ContentBlock(id: "fit403_b4", type: .commonMistakes, title: "Why Most People Quit", bullets: [
                "Starting with an extreme plan that is impossible to sustain.",
                "Going all-or-nothing: missing one day, then abandoning the whole week.",
                "Chasing perfection instead of accumulating consistent good-enough sessions.",
                "Tying training only to short-term aesthetics, which fades when results slow."
            ]),
            ContentBlock(id: "fit403_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Sustainable training you keep for years beats heroic efforts you abandon.",
                "Lean on systems, convenience, and process goals rather than motivation.",
                "Build a minimum-dose habit and restart quickly after any inevitable setback."
            ])
        ],
        quiz: Quiz(id: "fit403_q", passPercent: 80, questions: [
            Question(id: "fit403_q1", type: .multipleChoice, prompt: "What produces the best long-term fitness results?", choices: ["A brutal program you quit after a month", "A sustainable approach you maintain for years", "Relying purely on motivation", "Training only when you feel inspired"], correctIndex: 1, explanation: "Long-term consistency compounds. A program you maintain for years beats an extreme one you abandon quickly."),
            Question(id: "fit403_q2", type: .scenario, prompt: "You miss your Monday workout because of a work emergency. What is the sustainable mindset?", choices: ["The week is ruined, give up until next week", "Restart fast, do the next session, treat one miss as normal not failure", "Punish yourself with a double session", "Quit the program entirely"], correctIndex: 1, explanation: "All-or-nothing thinking is what derails people. Missing one session is normal; the skill is restarting quickly."),
            Question(id: "fit403_q3", type: .multiSelect, prompt: "Which strategies make training sustainable?", choices: ["Anchoring workouts to fixed times", "Having a short minimum session for busy days", "Setting process goals like showing up 3x a week", "Always training to absolute failure every set", "Making training convenient and low-friction"], correctIndices: [0, 1, 2, 4], explanation: "Habits, minimum doses, process goals, and convenience all sustain training. Maxing out every set invites burnout."),
            Question(id: "fit403_q4", prompt: "A goal you control directly, like showing up 3 times a week, is a _____ goal (as opposed to an outcome goal).", acceptedAnswers: ["process", "process-based", "behavior"], explanation: "Process goals focus on actions you control, which build the consistency that eventually produces outcomes.")
        ]),
        flashcards: [
            Flashcard(id: "fit403_f1", front: "Sustainable training", back: "Training at a volume you can recover from and repeat for years"),
            Flashcard(id: "fit403_f2", front: "Process goal", back: "A goal about actions you control, like showing up 3x a week"),
            Flashcard(id: "fit403_f3", front: "Minimum-dose session", back: "A short fallback workout for busy days so you never fully stop"),
            Flashcard(id: "fit403_f4", front: "All-or-nothing trap", back: "Quitting the whole week after one missed day; restart fast instead")
        ],
        tags: ["mastery", "habits", "longevity"]
    )

    static let lesson16 = Lesson(
        id: "fit_t4_04",
        categoryId: .fitness,
        tier: 4,
        lessonNumber: 4,
        title: "Adjusting Your Training As You Age",
        subtitle: "Stay strong and capable for the long haul",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fit_t4_03"],
        contentBlocks: [
            ContentBlock(id: "fit404_b1", type: .whyMatters, title: "Why Aging Changes the Game (But Not the Goal)", bullets: [
                "After about age 30, adults naturally lose muscle (sarcopenia) and some bone density if inactive.",
                "Recovery slows with age, so training has to get smarter, not necessarily easier.",
                "The good news: resistance training is the proven antidote and works at any age.",
                "Strength training older is about staying capable, independent, and pain-free for decades."
            ], callouts: ["Educational only. Older adults and anyone with health conditions should consult a physician before starting or changing a program."]),
            ContentBlock(id: "fit404_b2", type: .keyTerms, title: "Key Age-Related Terms", bullets: [
                "Sarcopenia: age-related loss of muscle mass and strength, accelerating without training.",
                "Osteopenia / osteoporosis: loss of bone density that raises fracture risk.",
                "Power: force times speed; it declines faster than raw strength with age and matters for balance.",
                "Resistance training combats all three by stimulating muscle and bone."
            ]),
            ContentBlock(id: "fit404_b3", type: .ownerActions, title: "How To Adjust Over Time", bullets: [
                "Keep lifting heavy enough to challenge muscle and bone; don't drift into only light weights.",
                "Add a little more warmup, mobility, and recovery time between hard sessions.",
                "Train power deliberately (controlled explosive reps, jumps if appropriate) to fight power loss.",
                "Prioritize joint-friendly variations if needed, but keep the core movement patterns.",
                "Protein needs may rise slightly with age to maintain muscle (often 1.0-plus g per lb of target weight)."
            ]),
            ContentBlock(id: "fit404_b4", type: .realWorld, title: "What Matters Most Later in Life", bullets: [
                "Strength and balance prevent falls, the leading cause of serious injury in older adults.",
                "Maintaining muscle protects metabolism, blood sugar control, and independence.",
                "Mobility work keeps daily tasks (stairs, getting off the floor) easy.",
                "Carries, sit-to-stand, and step-ups translate directly to real-life capability."
            ]),
            ContentBlock(id: "fit404_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Aging brings muscle, bone, and power loss, but training is the proven counter at any age.",
                "Keep challenging your muscles and bones; add recovery, mobility, and deliberate power work.",
                "The goal shifts toward strength, balance, and independence that keep you capable for life."
            ])
        ],
        quiz: Quiz(id: "fit404_q", passPercent: 80, questions: [
            Question(id: "fit404_q1", prompt: "The age-related loss of muscle mass and strength is called _____.", acceptedAnswers: ["sarcopenia"], explanation: "Sarcopenia is the progressive loss of muscle mass and strength with age, accelerated by inactivity and countered by resistance training."),
            Question(id: "fit404_q2", type: .scenario, prompt: "A 55-year-old worries lifting is 'too risky' and switches to only light weights. What is the issue?", choices: ["He's right, older adults should never lift heavy", "Drifting to only light weights underloads muscle and bone; challenging resistance is the proven antidote to age-related loss", "He should stop all exercise", "Light weights build the most strength"], correctIndex: 1, explanation: "Resistance training, with enough challenge, is exactly what fights sarcopenia and bone loss. Only-light training underdelivers on stimulus."),
            Question(id: "fit404_q3", type: .multiSelect, prompt: "Which adjustments make sense as a lifter ages?", choices: ["Add more warmup, mobility, and recovery time", "Stop challenging the muscles entirely", "Train power deliberately to combat power loss", "Keep core movement patterns, using joint-friendly variations as needed", "Possibly increase protein intake to maintain muscle"], correctIndices: [0, 2, 3, 4], explanation: "More recovery, deliberate power work, smart variations, and adequate protein all help. Ceasing to challenge muscles accelerates decline."),
            Question(id: "fit404_q4", type: .multipleChoice, prompt: "Why is training power (force times speed) especially important for older adults?", choices: ["It looks impressive", "Power declines faster than raw strength and is key to balance and preventing falls", "It is the only thing that builds muscle", "Power has no relevance to daily life"], correctIndex: 1, explanation: "Power fades faster than strength with age and underpins reactions and balance, making it vital for fall prevention."),
            Question(id: "fit404_q5", prompt: "Match each age-related concept to its description.", matchingPairs: [
                MatchingPair(left: "Sarcopenia", right: "Age-related muscle loss"),
                MatchingPair(left: "Osteoporosis", right: "Loss of bone density"),
                MatchingPair(left: "Power", right: "Force times speed, key to balance"),
                MatchingPair(left: "Resistance training", right: "Proven counter to age-related decline")
            ], explanation: "Understanding these concepts shows why lifting remains essential, and arguably more important, with age.")
        ]),
        flashcards: [
            Flashcard(id: "fit404_f1", front: "Sarcopenia", back: "Age-related loss of muscle mass and strength, countered by resistance training"),
            Flashcard(id: "fit404_f2", front: "Osteoporosis", back: "Loss of bone density that raises fracture risk; lifting helps maintain bone"),
            Flashcard(id: "fit404_f3", front: "Power", back: "Force times speed; declines faster than strength with age and aids balance"),
            Flashcard(id: "fit404_f4", front: "Aging and protein", back: "Protein needs may rise slightly with age to help maintain muscle")
        ],
        tags: ["mastery", "aging", "longevity", "strength"]
    )
}
