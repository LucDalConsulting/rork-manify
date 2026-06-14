import Foundation

enum FirstAidLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12,
        lesson13, lesson14, lesson15, lesson16
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "aid_t1_01",
        categoryId: .firstAid,
        tier: 1,
        lessonNumber: 1,
        title: "Scene Safety and the First 60 Seconds",
        subtitle: "Don't become the second victim",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "aid101_b1", type: .whyMatters, title: "Why You Stop and Look First", bullets: [
                "A dead rescuer helps no one. The single most common way bystanders get hurt is rushing in without checking the scene.",
                "Roughly 10 percent of responders in some EMS studies are injured because the original hazard was still active.",
                "Your first job is not the patient. It is making sure the environment will not create a second casualty."
            ], body: "Calm control starts before you ever touch anyone. The few seconds you spend scanning the scene are the most valuable seconds you will spend.", callouts: ["This lesson is education, not certified training. Take a hands-on course such as Red Cross or American Heart Association first aid and CPR."]),
            ContentBlock(id: "aid101_b2", type: .stepByStep, title: "The Scene Size-Up", bullets: [
                "STOP at the edge of the scene. Do not run in.",
                "SCAN for hazards: traffic, fire, smoke, water, electrical lines, fumes, unstable structures, or a violent person.",
                "If the scene is unsafe and you cannot make it safe, do not enter. Call 911 and wait.",
                "Look for clues about what happened (mechanism of injury) and how many people are hurt.",
                "Protect yourself: gloves if you have them, eye protection, and distance from anything live."
            ]),
            ContentBlock(id: "aid101_b3", type: .safety, title: "Hazards That Kill Rescuers", bullets: [
                "Moving traffic at roadside crashes. Park to shield the scene and use hazard lights.",
                "Downed power lines. Assume every wire is live and stay at least 30 feet away.",
                "Confined spaces and gas. If one person is down from fumes, going in unprotected drops you too.",
                "Drowning. Reach or throw, do not go in unless you are trained in water rescue."
            ], callouts: ["If you cannot reach a person safely, your fastest help is calling 911 and guiding professionals in."]),
            ContentBlock(id: "aid101_b4", type: .ownerActions, title: "What You Do Once It Is Safe", bullets: [
                "Form a general impression: are they awake, moving, breathing, bleeding badly?",
                "Get consent from a conscious adult before helping. State your name and that you know first aid.",
                "Assign tasks. Point at a specific person and say what you need: 'You, in the red coat, call 911.'",
                "Keep bystanders back and useful, not crowding the patient."
            ]),
            ContentBlock(id: "aid101_b5", type: .summary, title: "The Core Habit", bullets: [
                "Scene first, patient second. Always.",
                "Make it safe, make it visible, then make contact.",
                "Direct people by pointing and naming. Vague requests get ignored in a crisis."
            ])
        ],
        quiz: Quiz(id: "aid101_q", passPercent: 80, questions: [
            Question(id: "aid101_q1", type: .multipleChoice, prompt: "What is your very first priority when you arrive at an emergency scene?", choices: ["Start CPR immediately", "Check that the scene is safe for you to enter", "Move the patient to a comfortable spot", "Find out the patient's name"], correctIndex: 1, explanation: "Scene safety comes before everything. A rescuer who gets hurt becomes a second patient and removes the help the first patient needed."),
            Question(id: "aid101_q2", type: .scenario, prompt: "You see a person collapsed next to a downed power line that is sparking. What should you do?", choices: ["Grab them quickly and pull them clear", "Pour water on the line to stop the sparks", "Stay back at least 30 feet, call 911, and keep others away", "Use a wooden stick to move the wire"], correctIndex: 2, explanation: "Downed lines can energize the ground and anything touching the victim. Assume the wire is live, keep your distance, and let trained crews de-energize it."),
            Question(id: "aid101_q3", prompt: "Before helping a conscious adult, you should get their _____.", acceptedAnswers: ["consent", "permission"], explanation: "A conscious adult has the right to refuse care. Identify yourself, say you know first aid, and ask permission before touching them."),
            Question(id: "aid101_q4", type: .multiSelect, prompt: "Which of these are hazards you should scan for during a scene size-up?", choices: ["Moving traffic", "Fire or smoke", "The patient's eye color", "Downed electrical lines", "Toxic fumes or gas"], correctIndices: [0, 1, 3, 4], explanation: "Traffic, fire, electricity, and fumes are all active hazards that can injure a rescuer. The patient's eye color is not a scene hazard."),
            Question(id: "aid101_q5", type: .scenario, prompt: "You need someone to call 911. What is the most effective way to make it happen?", choices: ["Shout 'Somebody call 911!' to the crowd", "Point at a specific person and tell them directly to call 911 and report back", "Wait for someone to volunteer", "Call out the address loudly"], correctIndex: 1, explanation: "Diffusion of responsibility means a crowd often assumes someone else will act. Pointing at and naming one person assigns clear ownership of the task.")
        ]),
        flashcards: [
            Flashcard(id: "aid101_f1", front: "Scene size-up", back: "The quick scan of an emergency scene for hazards, mechanism of injury, and number of patients before you make contact"),
            Flashcard(id: "aid101_f2", front: "Mechanism of injury", back: "How an injury happened (fall, crash, etc.), which hints at what damage to expect"),
            Flashcard(id: "aid101_f3", front: "Second victim", back: "A rescuer who becomes a patient because they entered an unsafe scene"),
            Flashcard(id: "aid101_f4", front: "Implied consent", back: "Permission to treat that is assumed when a patient is unconscious or unable to respond")
        ],
        tags: ["safety", "fundamentals", "scene"]
    )

    static let lesson2 = Lesson(
        id: "aid_t1_02",
        categoryId: .firstAid,
        tier: 1,
        lessonNumber: 2,
        title: "Calling 911 and the Primary Assessment",
        subtitle: "ABCs and getting real help moving",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["aid_t1_01"],
        contentBlocks: [
            ContentBlock(id: "aid102_b1", type: .whyMatters, title: "Why the Call Matters as Much as the Care", bullets: [
                "First aid buys time. Definitive care comes from EMS, the hospital, or a 911 dispatcher coaching you.",
                "Average EMS response in the US is roughly 7 to 14 minutes. Survival in cardiac arrest drops about 7 to 10 percent for every minute without help.",
                "Dispatchers are trained to walk you through CPR, bleeding control, and childbirth over the phone. They are part of your team."
            ]),
            ContentBlock(id: "aid102_b2", type: .stepByStep, title: "How to Call 911 Effectively", bullets: [
                "State your location first. If the call drops, that is the one thing they must have.",
                "Say what happened and how many people are hurt.",
                "Describe the patient's condition: awake or not, breathing or not, bleeding or not.",
                "Answer their questions and follow instructions. Do not hang up until they tell you to.",
                "Put the phone on speaker so your hands are free to give care."
            ], callouts: ["If you are alone with an unresponsive adult who is not breathing, call 911 first, then start CPR. For a child or drowning victim, give about 2 minutes of care first if alone."]),
            ContentBlock(id: "aid102_b3", type: .systemOverview, title: "The Primary Assessment: ABC", bullets: [
                "A - Airway: Is the airway open and clear? A tongue, vomit, or object can block it.",
                "B - Breathing: Are they breathing normally? Look at the chest, listen, feel for air.",
                "C - Circulation: Is there a pulse and any severe bleeding to control?",
                "Some systems add a leading C for Catastrophic bleeding, becoming CABC, because massive bleeding can kill before airway problems do."
            ]),
            ContentBlock(id: "aid102_b4", type: .howItWorks, title: "Checking Responsiveness: AVPU", bullets: [
                "Tap the shoulders firmly and shout: 'Are you okay?'",
                "A - Alert: eyes open, talking, aware.",
                "V - Voice: responds only when you speak to them.",
                "P - Pain: responds only to a pinch or firm tap.",
                "U - Unresponsive: no reaction at all. This is an emergency. Call 911 now."
            ]),
            ContentBlock(id: "aid102_b5", type: .summary, title: "The Order That Saves Lives", bullets: [
                "Check responsiveness, call 911, then work the ABCs in order.",
                "Airway open, breathing present, bleeding controlled.",
                "Location first on the call. Stay on the line."
            ])
        ],
        quiz: Quiz(id: "aid102_q", passPercent: 80, questions: [
            Question(id: "aid102_q1", prompt: "Match each letter of the primary assessment to what it checks.", matchingPairs: [
                MatchingPair(left: "A", right: "Airway is open and clear"),
                MatchingPair(left: "B", right: "Breathing is present and normal"),
                MatchingPair(left: "C", right: "Circulation and severe bleeding")
            ], explanation: "ABC is the ordered priority of the primary assessment: an open airway, then breathing, then circulation."),
            Question(id: "aid102_q2", type: .multipleChoice, prompt: "What is the single most important piece of information to give a 911 dispatcher first?", choices: ["The patient's age", "Your location", "Your phone number", "What you had for breakfast"], correctIndex: 1, explanation: "If the call drops, location is what lets help still reach you. Always lead with where you are."),
            Question(id: "aid102_q3", prompt: "The 'U' in the AVPU scale stands for _____.", acceptedAnswers: ["unresponsive", "unconscious"], explanation: "AVPU stands for Alert, Voice, Pain, Unresponsive. 'U' means no reaction to any stimulus, a true emergency."),
            Question(id: "aid102_q4", type: .scenario, prompt: "You are alone with an adult who is unresponsive and not breathing normally. What do you do first?", choices: ["Give 2 minutes of CPR, then call 911", "Call 911 (or have it on speaker), then start CPR", "Drive them to the hospital", "Wait to see if they wake up"], correctIndex: 1, explanation: "For an unresponsive adult, call 911 first so EMS and a defibrillator are en route, then begin CPR. The exception is a child or drowning victim when alone."),
            Question(id: "aid102_q5", type: .multiSelect, prompt: "Which actions make a 911 call more effective?", choices: ["Stating your location first", "Putting the call on speaker to free your hands", "Hanging up quickly to save time", "Describing whether the patient is breathing", "Following the dispatcher's instructions"], correctIndices: [0, 1, 3, 4], explanation: "Lead with location, use speaker, describe the condition, and follow instructions. Never hang up early; the dispatcher coaches your care.")
        ]),
        flashcards: [
            Flashcard(id: "aid102_f1", front: "ABC", back: "Airway, Breathing, Circulation: the ordered priorities of the primary assessment"),
            Flashcard(id: "aid102_f2", front: "AVPU", back: "Alert, Voice, Pain, Unresponsive: a quick scale for level of responsiveness"),
            Flashcard(id: "aid102_f3", front: "Primary assessment", back: "The rapid check for immediately life-threatening problems with the airway, breathing, and circulation"),
            Flashcard(id: "aid102_f4", front: "Dispatcher CPR", back: "Step-by-step coaching a 911 operator gives over the phone to guide a bystander")
        ],
        tags: ["911", "assessment", "abc"]
    )

    static let lesson3 = Lesson(
        id: "aid_t1_03",
        categoryId: .firstAid,
        tier: 1,
        lessonNumber: 3,
        title: "Hands-Only CPR",
        subtitle: "Push hard, push fast, save a life",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["aid_t1_02"],
        contentBlocks: [
            ContentBlock(id: "aid103_b1", type: .whyMatters, title: "Why Bystander CPR Doubles Survival", bullets: [
                "About 350,000 cardiac arrests happen outside hospitals each year in the US. Most happen at home.",
                "Immediate bystander CPR can double or triple a person's chance of survival.",
                "Hands-only CPR (no mouth-to-mouth) is recommended for untrained or unwilling bystanders for adult sudden collapse, and it works."
            ], callouts: ["This is an overview, not certification. Real CPR skill comes from hands-on practice on a manikin in a certified class."]),
            ContentBlock(id: "aid103_b2", type: .stepByStep, title: "The Hands-Only Sequence", bullets: [
                "Confirm the person is unresponsive and not breathing normally (gasping does not count as breathing).",
                "Call 911 and get an AED if one is nearby.",
                "Kneel beside them. Place the heel of one hand on the center of the chest, the other hand on top, fingers interlaced.",
                "Push hard and fast: at least 2 inches deep, 100 to 120 compressions per minute.",
                "Let the chest fully recoil between each push. Do not lean on the chest.",
                "Do not stop until EMS takes over, an AED is ready, or the person starts breathing."
            ]),
            ContentBlock(id: "aid103_b3", type: .proTips, title: "Getting the Rhythm Right", bullets: [
                "Push to the beat of 'Stayin' Alive' by the Bee Gees; it is almost exactly 100 to 110 beats per minute.",
                "Use your body weight, arms straight, shoulders directly over your hands. Do not bend your elbows.",
                "If others are present, swap compressors every 2 minutes to fight fatigue. Tired compressions are weak compressions.",
                "Hard compressions can crack ribs. Keep going anyway; broken ribs heal, a stopped heart does not."
            ]),
            ContentBlock(id: "aid103_b4", type: .systemOverview, title: "Where the AED Fits", bullets: [
                "An AED (automated external defibrillator) analyzes the heart and delivers a shock if needed.",
                "It talks you through every step. Turn it on and follow the voice prompts.",
                "Apply pads to the bare chest as the diagram shows, then let it analyze. Do not touch the patient during analysis or shock.",
                "Resume compressions immediately after a shock or a 'no shock advised' message."
            ], callouts: ["AEDs are designed for untrained users. If one is available, use it. It will not shock a heart that should not be shocked."]),
            ContentBlock(id: "aid103_b5", type: .summary, title: "The One Thing to Remember", bullets: [
                "Push hard, push fast, in the center of the chest, and do not stop.",
                "Call 911 and get an AED if you can.",
                "Imperfect CPR is far better than no CPR."
            ])
        ],
        quiz: Quiz(id: "aid103_q", passPercent: 80, questions: [
            Question(id: "aid103_q1", type: .multipleChoice, prompt: "What is the correct rate of chest compressions in hands-only CPR?", choices: ["40 to 60 per minute", "60 to 80 per minute", "100 to 120 per minute", "150 to 180 per minute"], correctIndex: 2, explanation: "The recommended rate is 100 to 120 compressions per minute, about the tempo of the song 'Stayin' Alive'."),
            Question(id: "aid103_q2", prompt: "Compressions should be at least _____ inches deep for an adult.", acceptedAnswers: ["2", "two"], explanation: "Push at least 2 inches (about 5 cm) deep for an adult so blood actually moves out of the heart."),
            Question(id: "aid103_q3", type: .scenario, prompt: "You start CPR and feel a rib crack under your hands. What should you do?", choices: ["Stop immediately to avoid more harm", "Push more gently from now on", "Keep going with full-depth compressions", "Switch to mouth-to-mouth only"], correctIndex: 2, explanation: "Cracked ribs are a common and acceptable side effect. Continue full compressions; shallow ones will not circulate blood."),
            Question(id: "aid103_q4", type: .multiSelect, prompt: "Which are correct techniques for hands-only CPR?", choices: ["Push in the center of the chest", "Let the chest fully recoil between pushes", "Keep your elbows bent", "Swap compressors every 2 minutes when possible", "Stop checking for a pulse every few seconds"], correctIndices: [0, 1, 3, 4], explanation: "Push center-chest, allow full recoil, rotate every 2 minutes, and do not pause to recheck pulses. Keep your elbows locked straight, not bent."),
            Question(id: "aid103_q5", type: .scenario, prompt: "An AED arrives while you are doing CPR. The machine says 'No shock advised.' What now?", choices: ["Turn the AED off and stop CPR", "Remove the pads and wait for EMS", "Resume chest compressions immediately", "Shock the patient manually"], correctIndex: 2, explanation: "A 'no shock advised' message means continue CPR right away. Compressions still circulate oxygenated blood until help arrives.")
        ]),
        flashcards: [
            Flashcard(id: "aid103_f1", front: "Hands-only CPR", back: "Chest compressions without rescue breaths, recommended for untrained bystanders responding to adult sudden collapse"),
            Flashcard(id: "aid103_f2", front: "Compression rate", back: "100 to 120 pushes per minute, the tempo of 'Stayin' Alive'"),
            Flashcard(id: "aid103_f3", front: "Chest recoil", back: "Letting the chest spring fully back up between compressions so the heart can refill"),
            Flashcard(id: "aid103_f4", front: "AED", back: "Automated External Defibrillator: a device that analyzes the heart and delivers a shock if needed, with voice guidance")
        ],
        tags: ["cpr", "cardiac", "aed"]
    )

    static let lesson4 = Lesson(
        id: "aid_t1_04",
        categoryId: .firstAid,
        tier: 1,
        lessonNumber: 4,
        title: "Choking Response",
        subtitle: "Abdominal thrusts and the conscious choke",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["aid_t1_03"],
        contentBlocks: [
            ContentBlock(id: "aid104_b1", type: .whyMatters, title: "Why Seconds Decide the Outcome", bullets: [
                "Choking is a top cause of accidental death, especially in children and older adults.",
                "A fully blocked airway gives roughly 4 to 6 minutes before brain damage begins.",
                "The fix is fast, mechanical, and learnable in minutes. You can do it."
            ]),
            ContentBlock(id: "aid104_b2", type: .keyTerms, title: "Reading the Signs", bullets: [
                "Universal choking sign: hands clutched at the throat.",
                "Mild (partial) block: they can cough, speak, or wheeze. Encourage them to keep coughing. Do not interfere.",
                "Severe (full) block: silent, cannot cough or speak, may turn blue. Act now.",
                "If they can still cough forcefully, their own cough is the best tool. Stand by."
            ], callouts: ["Never slap the back of someone who is coughing effectively; you could dislodge the object into a worse position."]),
            ContentBlock(id: "aid104_b3", type: .stepByStep, title: "The Heimlich on a Conscious Adult", bullets: [
                "Ask: 'Are you choking? Can I help?' Get consent if they can respond.",
                "Many guidelines now recommend 5 back blows first: bend them forward, strike between the shoulder blades with the heel of your hand.",
                "If that fails, give abdominal thrusts: stand behind them, make a fist just above the navel, grasp it with your other hand.",
                "Thrust inward and upward, hard and quick, like a J shape.",
                "Alternate 5 back blows and 5 abdominal thrusts until the object comes out or they go unconscious."
            ]),
            ContentBlock(id: "aid104_b4", type: .failureModes, title: "When the Person Goes Limp", bullets: [
                "If they become unresponsive, lower them gently to the floor and call 911.",
                "Start CPR. Each time you open the airway to (in trained settings) give breaths, look for the object and remove it if you can see it.",
                "Never do a blind finger sweep; you can push the object deeper.",
                "Compressions can also generate pressure that helps expel the object."
            ], callouts: ["For a pregnant or obese person, give chest thrusts instead of abdominal thrusts. For an infant, use back blows and chest thrusts, never abdominal thrusts."]),
            ContentBlock(id: "aid104_b5", type: .summary, title: "The Decision Tree", bullets: [
                "Coughing? Let them cough. Silent and cannot breathe? Act.",
                "Back blows, then abdominal thrusts, alternating.",
                "Unconscious? To the floor, call 911, start CPR."
            ])
        ],
        quiz: Quiz(id: "aid104_q", passPercent: 80, questions: [
            Question(id: "aid104_q1", type: .scenario, prompt: "A coworker grabs their throat but is coughing forcefully and loudly. What should you do?", choices: ["Immediately give abdominal thrusts", "Slap their back hard five times", "Encourage them to keep coughing and stand ready", "Lay them on the floor"], correctIndex: 2, explanation: "A forceful cough means air is still moving. Their own cough is the most effective tool; do not interfere with a partial block."),
            Question(id: "aid104_q2", type: .multipleChoice, prompt: "Where do you place your fist for abdominal thrusts on an adult?", choices: ["On the center of the chest", "Just above the navel", "On the lower ribs", "Below the navel"], correctIndex: 1, explanation: "Place the thumb side of your fist just above the navel and well below the breastbone, then thrust inward and upward."),
            Question(id: "aid104_q3", prompt: "For a choking infant you use back blows and chest thrusts, never _____ thrusts.", acceptedAnswers: ["abdominal", "stomach"], explanation: "Abdominal thrusts can injure an infant's organs. Use 5 back blows and 5 chest thrusts instead."),
            Question(id: "aid104_q4", type: .multiSelect, prompt: "Which are signs of a severe airway blockage that require immediate action?", choices: ["Cannot speak or make sound", "Forceful loud coughing", "Skin turning blue", "Clutching the throat with no air moving", "Talking in full sentences"], correctIndices: [0, 2, 3], explanation: "Silence, blue skin, and the choking sign with no air movement signal a full block. Loud coughing and talking mean air is still moving."),
            Question(id: "aid104_q5", type: .scenario, prompt: "Your choking friend suddenly goes limp and unresponsive. What is your next step?", choices: ["Keep doing abdominal thrusts while they lie down", "Do a blind finger sweep deep in the throat", "Lower them to the floor, call 911, and begin CPR", "Give them water to wash it down"], correctIndex: 2, explanation: "An unresponsive choking victim needs CPR. Lower them safely, call 911, and start compressions. Only remove an object you can clearly see; never sweep blindly.")
        ]),
        flashcards: [
            Flashcard(id: "aid104_f1", front: "Universal choking sign", back: "Both hands clutched at the throat, signaling an airway emergency"),
            Flashcard(id: "aid104_f2", front: "Abdominal thrusts (Heimlich)", back: "Inward-and-upward thrusts above the navel to force air out and dislodge an object"),
            Flashcard(id: "aid104_f3", front: "Partial vs full block", back: "Partial: can cough or speak, let them cough. Full: silent, cannot breathe, act immediately"),
            Flashcard(id: "aid104_f4", front: "Blind finger sweep", back: "Reaching into the throat without seeing the object; never do this, it can push the blockage deeper")
        ],
        tags: ["choking", "airway", "heimlich"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "aid_t2_01",
        categoryId: .firstAid,
        tier: 2,
        lessonNumber: 1,
        title: "Bleeding Control: Direct Pressure",
        subtitle: "Stop the bleed before anything else",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["aid_t1_04"],
        contentBlocks: [
            ContentBlock(id: "aid201_b1", type: .whyMatters, title: "Why Bleeding Is a Race", bullets: [
                "A person can bleed to death from a major artery in as little as 3 to 5 minutes.",
                "Uncontrolled bleeding is the number one preventable cause of death from trauma.",
                "You have more time and more impact with a wound than almost any other emergency. Pressure works."
            ], callouts: ["This is education only. Programs like Stop the Bleed offer hands-on training and are worth taking."]),
            ContentBlock(id: "aid201_b2", type: .stepByStep, title: "Applying Direct Pressure", bullets: [
                "Protect yourself: wear gloves or use a barrier if you have one.",
                "Expose the wound by moving or cutting away clothing so you can see the source.",
                "Place a clean cloth or gauze directly on the wound.",
                "Press down hard with the heel of your hand and your body weight. Firm and constant.",
                "Do not lift to peek. If blood soaks through, add more cloth on top and keep pressing.",
                "Hold continuously. Direct pressure stops most bleeding if you commit to it."
            ]),
            ContentBlock(id: "aid201_b3", type: .keyTerms, title: "Reading the Bleed", bullets: [
                "Arterial: bright red, spurting with each heartbeat. The most dangerous; act fast.",
                "Venous: darker red, steady flowing. Serious but more controllable.",
                "Capillary: oozing from scrapes. Minor and usually self-limiting.",
                "Life-threatening signs: pooling blood, soaked clothing, spurting, or a limb wound that will not stop."
            ]),
            ContentBlock(id: "aid201_b4", type: .commonMistakes, title: "What Goes Wrong", bullets: [
                "Pressing too gently. Direct pressure has to be hard and uncomfortable to work.",
                "Lifting the dressing to check. This breaks the clot and restarts the bleed.",
                "Removing soaked gauze instead of stacking fresh on top.",
                "Wasting time looking for a tourniquet when firm hand pressure would have stopped it."
            ]),
            ContentBlock(id: "aid201_b5", type: .summary, title: "The Foundation of Bleeding Control", bullets: [
                "Direct, hard, continuous pressure is the first and best tool.",
                "Add layers, never remove them.",
                "Call 911 for any bleeding you cannot quickly control."
            ])
        ],
        quiz: Quiz(id: "aid201_q", passPercent: 80, questions: [
            Question(id: "aid201_q1", type: .multipleChoice, prompt: "What is the first and most effective action to control most bleeding?", choices: ["Apply a tourniquet", "Apply firm, direct pressure on the wound", "Elevate the limb only", "Rinse the wound with water"], correctIndex: 1, explanation: "Firm, direct pressure stops the majority of bleeding. It is the foundation of bleeding control and your first move."),
            Question(id: "aid201_q2", prompt: "Match each bleeding type to its appearance.", matchingPairs: [
                MatchingPair(left: "Arterial", right: "Bright red, spurting with the heartbeat"),
                MatchingPair(left: "Venous", right: "Dark red, steady flow"),
                MatchingPair(left: "Capillary", right: "Slow oozing from a scrape")
            ], explanation: "Arterial bleeding is the most urgent because it loses blood fastest under pressure from the heart."),
            Question(id: "aid201_q3", type: .scenario, prompt: "Blood soaks through the gauze you are pressing on a wound. What do you do?", choices: ["Remove the soaked gauze and apply fresh", "Lift the dressing to inspect the wound", "Add more gauze on top and keep pressing", "Stop and wait for EMS"], correctIndex: 2, explanation: "Removing soaked gauze tears the forming clot. Stack fresh material on top and maintain unbroken pressure."),
            Question(id: "aid201_q4", prompt: "Bright red blood that spurts with each heartbeat indicates _____ bleeding.", acceptedAnswers: ["arterial", "artery"], explanation: "Arterial bleeding is bright red and pulsing because it is under high pressure directly from the heart. It is the most dangerous."),
            Question(id: "aid201_q5", type: .multiSelect, prompt: "Which are common mistakes in bleeding control?", choices: ["Pressing too gently", "Lifting the dressing to peek", "Adding gauze on top of soaked gauze", "Removing soaked dressings", "Holding firm continuous pressure"], correctIndices: [0, 1, 3], explanation: "Gentle pressure, peeking, and removing soaked dressings all restart bleeding. Adding layers and holding firm pressure are correct.")
        ]),
        flashcards: [
            Flashcard(id: "aid201_f1", front: "Direct pressure", back: "Hard, continuous pressure applied straight onto a wound to stop bleeding"),
            Flashcard(id: "aid201_f2", front: "Arterial bleeding", back: "Bright red, spurting blood under high pressure from an artery; the most life-threatening"),
            Flashcard(id: "aid201_f3", front: "Stacking dressings", back: "Adding fresh gauze on top of soaked gauze instead of removing it, to protect the clot"),
            Flashcard(id: "aid201_f4", front: "Stop the Bleed", back: "A national program teaching bystanders to control life-threatening bleeding")
        ],
        tags: ["bleeding", "trauma", "pressure"]
    )

    static let lesson6 = Lesson(
        id: "aid_t2_02",
        categoryId: .firstAid,
        tier: 2,
        lessonNumber: 2,
        title: "Wound Packing and Tourniquets",
        subtitle: "When pressure alone is not enough",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["aid_t2_01"],
        contentBlocks: [
            ContentBlock(id: "aid202_b1", type: .whyMatters, title: "When You Escalate Beyond Pressure", bullets: [
                "Deep wounds in the groin, armpit, or neck may not respond to surface pressure alone.",
                "A spurting limb that pressure cannot stop is a tourniquet situation.",
                "These tools became standard for the public after battlefield medicine proved they save lives in minutes."
            ], callouts: ["Education only. Tourniquet and wound-packing skill should be learned hands-on in a Stop the Bleed or equivalent course."]),
            ContentBlock(id: "aid202_b2", type: .stepByStep, title: "Packing a Deep Wound", bullets: [
                "Use for deep wounds where you cannot apply a tourniquet (junctional areas like the groin or shoulder).",
                "Pack gauze (hemostatic if available) tightly into the wound, all the way down to the bleeding source.",
                "Keep stuffing gauze in and pressing until the wound is full and tight.",
                "Then hold firm direct pressure on top for at least 3 minutes.",
                "Do not pack wounds of the chest, abdomen, or skull."
            ]),
            ContentBlock(id: "aid202_b3", type: .stepByStep, title: "Applying a Tourniquet", bullets: [
                "Use for life-threatening limb bleeding that direct pressure cannot stop.",
                "Place it 2 to 3 inches above the wound, never on a joint. High and tight on the limb is acceptable in a crisis.",
                "Tighten the windlass until the bleeding stops completely. It will hurt; that is expected.",
                "Secure the windlass and note the time of application.",
                "Never loosen or remove it once applied. Let EMS or the hospital do that."
            ], callouts: ["Write the application time on the tourniquet or the patient's skin. Surgeons need to know how long blood flow has been cut off."]),
            ContentBlock(id: "aid202_b4", type: .commonMistakes, title: "Tourniquet Errors That Cost Lives", bullets: [
                "Applying it too loose. A half-tight tourniquet still bleeds and can be worse than none.",
                "Placing it over a joint like the elbow or knee, where it cannot compress the artery.",
                "Periodically loosening it to 'let blood flow.' This can be fatal; leave it on.",
                "Hesitating. A proper tourniquet is a limb-saving and life-saving device, and modern care saves the limb in most cases under 2 hours."
            ]),
            ContentBlock(id: "aid202_b5", type: .summary, title: "The Escalation Ladder", bullets: [
                "Direct pressure first, then packing for deep junctional wounds, then a tourniquet for uncontrolled limb bleeding.",
                "Tourniquet: high and tight, fully stop the bleed, mark the time, never loosen.",
                "Get to definitive care fast."
            ])
        ],
        quiz: Quiz(id: "aid202_q", passPercent: 80, questions: [
            Question(id: "aid202_q1", type: .scenario, prompt: "An arm wound is spurting bright red blood and direct pressure has not stopped it after a minute. What is the right escalation?", choices: ["Loosen and reapply pressure", "Apply a tourniquet above the wound", "Elevate the arm and wait", "Pack the wound and release pressure"], correctIndex: 1, explanation: "Life-threatening limb bleeding that pressure cannot control calls for a tourniquet placed above the wound, tightened until bleeding stops."),
            Question(id: "aid202_q2", type: .multipleChoice, prompt: "Once a tourniquet has stopped the bleeding, what should you do with it?", choices: ["Loosen it every 10 minutes", "Remove it after 5 minutes", "Leave it on and note the time of application", "Reposition it lower on the limb"], correctIndex: 2, explanation: "Never loosen or remove a tourniquet in the field. Leave it on, mark the application time, and let medical professionals manage it."),
            Question(id: "aid202_q3", prompt: "You should write the tourniquet's application _____ on the patient so surgeons know how long blood flow was cut off.", acceptedAnswers: ["time", "time of application"], explanation: "Recording the application time is critical. It tells the surgical team how long the limb has been without circulation."),
            Question(id: "aid202_q4", type: .multiSelect, prompt: "Which wounds should you NOT pack with gauze?", choices: ["Chest", "Deep groin wound", "Abdomen", "Skull", "Deep shoulder (armpit) wound"], correctIndices: [0, 2, 3], explanation: "Never pack chest, abdominal, or skull wounds. Wound packing is for deep junctional limb-area wounds like the groin or armpit."),
            Question(id: "aid202_q5", prompt: "Match each tool to its correct use.", matchingPairs: [
                MatchingPair(left: "Direct pressure", right: "First step for most bleeding"),
                MatchingPair(left: "Wound packing", right: "Deep junctional wound, not chest or abdomen"),
                MatchingPair(left: "Tourniquet", right: "Uncontrolled limb bleeding, placed above the wound")
            ], explanation: "These are the three rungs of the bleeding-control escalation ladder, used in order of severity.")
        ]),
        flashcards: [
            Flashcard(id: "aid202_f1", front: "Wound packing", back: "Stuffing gauze tightly into a deep wound down to the bleeding source, then holding pressure"),
            Flashcard(id: "aid202_f2", front: "Tourniquet", back: "A tight band placed above a limb wound to fully stop arterial bleeding when pressure fails"),
            Flashcard(id: "aid202_f3", front: "Windlass", back: "The rod on a tourniquet that you twist to tighten and cut off blood flow"),
            Flashcard(id: "aid202_f4", front: "Junctional wound", back: "A wound at the junction of limb and torso (groin, armpit, neck) where a tourniquet cannot reach")
        ],
        tags: ["bleeding", "tourniquet", "trauma"]
    )

    static let lesson7 = Lesson(
        id: "aid_t2_03",
        categoryId: .firstAid,
        tier: 2,
        lessonNumber: 3,
        title: "Wounds and Burns",
        subtitle: "Cleaning, dressing, and degrees of burns",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["aid_t2_02"],
        contentBlocks: [
            ContentBlock(id: "aid203_b1", type: .whyMatters, title: "Why Good Wound Care Matters Later", bullets: [
                "After bleeding is controlled, infection becomes the next threat. Proper cleaning prevents it.",
                "Burns are deceptively serious. A burn the size of your palm is about 1 percent of body surface.",
                "How you treat a wound or burn in the first hour shapes how it heals for weeks."
            ]),
            ContentBlock(id: "aid203_b2", type: .stepByStep, title: "Cleaning and Dressing a Wound", bullets: [
                "Wash your hands and wear gloves if possible.",
                "Rinse the wound with clean running water for several minutes to flush out debris.",
                "Pat dry, apply a thin layer of antibiotic ointment if available.",
                "Cover with a sterile non-stick dressing and bandage.",
                "Change the dressing daily and watch for infection."
            ], callouts: ["Do not remove a large embedded object. Stabilize it in place and let the hospital remove it; pulling it out can cause severe bleeding."]),
            ContentBlock(id: "aid203_b3", type: .componentBreakdown, title: "The Three Degrees of Burns", bullets: [
                "First-degree: red, dry, painful, like a sunburn. Affects only the top layer.",
                "Second-degree: blisters, wet, very painful, red and white. Goes into the second skin layer.",
                "Third-degree: leathery, white or charred, may be painless because nerves are destroyed. Full thickness.",
                "Depth matters, but size and location matter just as much for severity."
            ]),
            ContentBlock(id: "aid203_b4", type: .stepByStep, title: "Treating a Burn", bullets: [
                "Stop the burning: remove from heat, smother flames, or remove a chemical source.",
                "Cool with cool (not ice-cold) running water for 10 to 20 minutes.",
                "Remove rings and tight items before swelling starts.",
                "Cover loosely with a clean, non-stick dressing or plastic wrap.",
                "Do not pop blisters, apply butter, ice, or toothpaste; these cause harm."
            ], callouts: ["Call 911 for burns to the face, hands, feet, groin, or over a major joint; burns larger than the palm; or any third-degree burn."]),
            ContentBlock(id: "aid203_b5", type: .summary, title: "The Care Priorities", bullets: [
                "Clean and cover wounds; do not remove embedded objects.",
                "Cool burns with water, never ice or grease; cover loosely.",
                "Know which burns demand emergency care."
            ])
        ],
        quiz: Quiz(id: "aid203_q", passPercent: 80, questions: [
            Question(id: "aid203_q1", prompt: "Match each burn degree to its description.", matchingPairs: [
                MatchingPair(left: "First-degree", right: "Red, dry, painful, like sunburn"),
                MatchingPair(left: "Second-degree", right: "Blistered, wet, very painful"),
                MatchingPair(left: "Third-degree", right: "Leathery or charred, may be painless")
            ], explanation: "Burn depth increases from first to third degree. Third-degree can be painless because the nerves are destroyed."),
            Question(id: "aid203_q2", type: .multipleChoice, prompt: "How should you cool a burn?", choices: ["Pack it in ice for 30 minutes", "Cool running water for 10 to 20 minutes", "Apply butter to soothe it", "Cover with toothpaste"], correctIndex: 1, explanation: "Cool running water for 10 to 20 minutes is correct. Ice can cause further tissue damage, and butter or toothpaste trap heat and invite infection."),
            Question(id: "aid203_q3", type: .scenario, prompt: "A nail is embedded deep in someone's foot. What should you do?", choices: ["Pull it straight out and bandage", "Stabilize it in place and get medical help", "Twist it to ease it out", "Push it the rest of the way through"], correctIndex: 1, explanation: "Removing an embedded object can trigger heavy bleeding. Stabilize it in place and let medical professionals remove it safely."),
            Question(id: "aid203_q4", prompt: "You should never pop a burn _____.", acceptedAnswers: ["blister", "blisters"], explanation: "Intact blisters protect the wound underneath from infection. Popping them opens a path for bacteria."),
            Question(id: "aid203_q5", type: .multiSelect, prompt: "Which burns warrant emergency medical care?", choices: ["A small first-degree sunburn on the arm", "A burn to the face or airway", "Any third-degree burn", "A burn larger than the patient's palm", "Burns to the hands, feet, or groin"], correctIndices: [1, 2, 3, 4], explanation: "Face, airway, third-degree, large burns, and burns to hands, feet, or groin all need professional care. A small sunburn does not.")
        ]),
        flashcards: [
            Flashcard(id: "aid203_f1", front: "First-degree burn", back: "Affects only the outer skin layer; red, dry, and painful like a sunburn"),
            Flashcard(id: "aid203_f2", front: "Third-degree burn", back: "Full-thickness burn; leathery or charred and possibly painless due to nerve damage"),
            Flashcard(id: "aid203_f3", front: "Embedded object", back: "A foreign object stuck in a wound; stabilize, do not remove, and seek medical care"),
            Flashcard(id: "aid203_f4", front: "Rule of palm", back: "The patient's palm equals roughly 1 percent of their total body surface area, used to estimate burn size")
        ],
        tags: ["wounds", "burns", "infection"]
    )

    static let lesson8 = Lesson(
        id: "aid_t2_04",
        categoryId: .firstAid,
        tier: 2,
        lessonNumber: 4,
        title: "Recognizing and Treating Shock",
        subtitle: "The silent killer after an injury",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["aid_t2_03"],
        contentBlocks: [
            ContentBlock(id: "aid204_b1", type: .whyMatters, title: "What Shock Actually Is", bullets: [
                "Shock is the body's failure to deliver enough oxygenated blood to vital organs.",
                "It can follow severe bleeding, burns, dehydration, allergic reaction, heart problems, or major infection.",
                "Untreated shock progresses and can kill even after the original injury looks handled. Recognize it early."
            ]),
            ContentBlock(id: "aid204_b2", type: .keyTerms, title: "The Warning Signs", bullets: [
                "Pale, cool, clammy skin.",
                "Rapid, weak pulse and fast, shallow breathing.",
                "Confusion, anxiety, restlessness, or a sense of impending doom.",
                "Nausea, thirst, dizziness, and weakness.",
                "Bluish lips and fingernails as it worsens."
            ], callouts: ["Shock can develop quietly. Treat for it whenever someone has a serious injury, even before symptoms are obvious."]),
            ContentBlock(id: "aid204_b3", type: .stepByStep, title: "How to Treat for Shock", bullets: [
                "Call 911. Shock is a true emergency.",
                "Have the person lie down on their back.",
                "If no spinal, leg, or head injury is suspected, raise the legs about 6 to 12 inches.",
                "Keep them warm with a blanket or coat to prevent heat loss.",
                "Do not give food or water, even if they ask; they may need surgery.",
                "Control any bleeding and reassure them in a calm voice."
            ]),
            ContentBlock(id: "aid204_b4", type: .commonMistakes, title: "What Not to Do", bullets: [
                "Giving water to a shock patient; it risks vomiting and aspiration before surgery.",
                "Raising the legs when a spinal or leg fracture is possible.",
                "Letting them get cold; hypothermia worsens shock and blood clotting.",
                "Assuming someone is fine because they are talking. Early shock patients can be alert."
            ]),
            ContentBlock(id: "aid204_b5", type: .summary, title: "The Shock Protocol", bullets: [
                "Recognize: pale, cool, clammy, fast weak pulse, confusion.",
                "Lay flat, raise legs if safe, keep warm, no food or water.",
                "Treat the cause, call 911, and stay with them."
            ])
        ],
        quiz: Quiz(id: "aid204_q", passPercent: 80, questions: [
            Question(id: "aid204_q1", type: .multipleChoice, prompt: "What is shock, medically speaking?", choices: ["An emotional reaction to trauma", "The body failing to deliver enough oxygenated blood to organs", "A sudden drop in body temperature", "A type of allergic reaction"], correctIndex: 1, explanation: "Shock is inadequate blood flow and oxygen delivery to vital organs. It can be fatal if not recognized and treated."),
            Question(id: "aid204_q2", type: .multiSelect, prompt: "Which are classic signs of shock?", choices: ["Pale, cool, clammy skin", "Rapid, weak pulse", "Slow, deep, relaxed breathing", "Confusion or restlessness", "Nausea and thirst"], correctIndices: [0, 1, 3, 4], explanation: "Shock shows pale clammy skin, a fast weak pulse, confusion, and nausea. Breathing becomes fast and shallow, not slow and relaxed."),
            Question(id: "aid204_q3", type: .scenario, prompt: "A shock patient says they are very thirsty and asks for water. What should you do?", choices: ["Give them a full glass of water", "Give small sips only", "Do not give food or water; they may need surgery", "Give them a sports drink"], correctIndex: 2, explanation: "Withhold food and water from a shock patient. They may require surgery, and anything in the stomach risks vomiting and aspiration."),
            Question(id: "aid204_q4", prompt: "If no spinal or leg injury is suspected, you can raise a shock patient's _____ to help blood return to the core.", acceptedAnswers: ["legs", "feet"], explanation: "Raising the legs 6 to 12 inches helps blood flow back to vital organs, but only when no spinal or leg injury is suspected."),
            Question(id: "aid204_q5", type: .scenario, prompt: "An injured person is alert and chatting but their skin is pale, cool, and sweaty with a fast pulse. What is the best move?", choices: ["Assume they are fine since they are talking", "Begin treating for shock now", "Give them coffee to perk them up", "Have them walk it off"], correctIndex: 1, explanation: "Early shock patients can still be alert. Pale, cool, clammy skin and a fast pulse are red flags; treat for shock before it worsens.")
        ]),
        flashcards: [
            Flashcard(id: "aid204_f1", front: "Shock", back: "The body's failure to circulate enough oxygenated blood to vital organs; a life-threatening emergency"),
            Flashcard(id: "aid204_f2", front: "Clammy skin", back: "Cool, pale, sweaty skin; a hallmark early sign of shock"),
            Flashcard(id: "aid204_f3", front: "Shock position", back: "Lying flat with legs raised 6 to 12 inches, used when no spinal or leg injury is suspected"),
            Flashcard(id: "aid204_f4", front: "Why no water in shock", back: "The patient may need surgery; stomach contents risk vomiting and aspiration")
        ],
        tags: ["shock", "circulation", "trauma"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "aid_t3_01",
        categoryId: .firstAid,
        tier: 3,
        lessonNumber: 1,
        title: "Fractures, Sprains, and Splinting",
        subtitle: "Stabilize what is broken",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["aid_t2_04"],
        contentBlocks: [
            ContentBlock(id: "aid301_b1", type: .whyMatters, title: "Why Stabilizing Beats Moving", bullets: [
                "A broken bone has sharp ends that can cut nerves, vessels, and muscle if the limb moves.",
                "You usually cannot tell a fracture from a bad sprain without an X-ray, so treat the worst case.",
                "Good splinting reduces pain, prevents further injury, and makes safe transport possible."
            ], callouts: ["Education only. Improvised splinting is a stopgap until professional care; do not attempt to set or realign a bone yourself."]),
            ContentBlock(id: "aid301_b2", type: .keyTerms, title: "Telling Fractures From Sprains", bullets: [
                "Fracture clues: deformity, a bone visible or felt, grinding, the person heard or felt a snap.",
                "Sprain: a stretched or torn ligament around a joint; swelling, bruising, and pain with movement.",
                "Open (compound) fracture: bone has broken the skin. High infection and bleeding risk.",
                "When in doubt, treat any of these as a possible fracture."
            ]),
            ContentBlock(id: "aid301_b3", type: .stepByStep, title: "Splinting Basics", bullets: [
                "Check circulation, sensation, and movement below the injury before and after splinting.",
                "Splint the limb in the position you found it; do not straighten it.",
                "Use a rigid object (board, rolled magazine, trekking pole) padded with cloth.",
                "Immobilize the joint above and the joint below the injury.",
                "Secure snugly but not so tight you cut off circulation. Recheck the fingers or toes."
            ], callouts: ["If the splinted limb's fingers or toes turn blue, cold, or numb, loosen the splint immediately; you are cutting off blood flow."]),
            ContentBlock(id: "aid301_b4", type: .principles, title: "RICE for Sprains", bullets: [
                "Rest: stop using the joint.",
                "Ice: 20 minutes on, then off, wrapped in cloth, for the first day or two.",
                "Compression: an elastic wrap to limit swelling, not so tight it numbs.",
                "Elevation: raise the limb above heart level to reduce swelling.",
                "Seek care if there is deformity, inability to bear weight, or numbness."
            ]),
            ContentBlock(id: "aid301_b5", type: .summary, title: "The Stabilize-and-Transport Mindset", bullets: [
                "Treat unclear injuries as fractures.",
                "Splint in place, immobilize the joints above and below, recheck circulation.",
                "RICE the sprains; get imaging when in doubt."
            ])
        ],
        quiz: Quiz(id: "aid301_q", passPercent: 80, questions: [
            Question(id: "aid301_q1", type: .multipleChoice, prompt: "When splinting a possibly broken limb, what position should you splint it in?", choices: ["Straightened out", "The position you found it in", "Bent at 90 degrees", "Pulled into traction"], correctIndex: 1, explanation: "Splint the limb in the position found. Trying to straighten or realign it can damage nerves and vessels and cause severe pain."),
            Question(id: "aid301_q2", prompt: "RICE stands for Rest, Ice, Compression, and _____.", acceptedAnswers: ["elevation", "elevate"], explanation: "RICE is Rest, Ice, Compression, Elevation, the standard early care for a sprain to reduce pain and swelling."),
            Question(id: "aid301_q3", type: .scenario, prompt: "After you splint a forearm, the person's fingers turn blue, cold, and numb. What does this mean and what do you do?", choices: ["Normal swelling, leave it", "The splint is too tight; loosen it immediately", "The bone is healing; keep it on", "Apply more pressure to stop bleeding"], correctIndex: 1, explanation: "Blue, cold, numb fingers mean the splint is cutting off circulation. Loosen it right away and recheck blood flow."),
            Question(id: "aid301_q4", type: .multiSelect, prompt: "Which signs point to a likely fracture rather than a simple sprain?", choices: ["Visible deformity", "A snap that was heard or felt", "Mild swelling that improves with rest", "Bone protruding through the skin", "Grinding sensation in the limb"], correctIndices: [0, 1, 3, 4], explanation: "Deformity, a snap, exposed bone, and grinding all suggest a fracture. Mild swelling that improves is more typical of a minor sprain."),
            Question(id: "aid301_q5", prompt: "Match each term to its meaning.", matchingPairs: [
                MatchingPair(left: "Sprain", right: "Stretched or torn ligament at a joint"),
                MatchingPair(left: "Open fracture", right: "Broken bone that has pierced the skin"),
                MatchingPair(left: "Splint", right: "A rigid support that immobilizes an injured limb")
            ], explanation: "Knowing these terms lets you communicate clearly with EMS and choose the right care.")
        ]),
        flashcards: [
            Flashcard(id: "aid301_f1", front: "Splint", back: "A rigid, padded support that immobilizes a fracture, including the joints above and below it"),
            Flashcard(id: "aid301_f2", front: "Open (compound) fracture", back: "A broken bone that has pierced the skin; high risk of bleeding and infection"),
            Flashcard(id: "aid301_f3", front: "RICE", back: "Rest, Ice, Compression, Elevation: early care for sprains and soft-tissue injuries"),
            Flashcard(id: "aid301_f4", front: "Circulation check", back: "Confirming warmth, color, and feeling in fingers or toes below a splint to ensure blood is flowing")
        ],
        tags: ["fractures", "sprains", "splinting"]
    )

    static let lesson10 = Lesson(
        id: "aid_t3_02",
        categoryId: .firstAid,
        tier: 3,
        lessonNumber: 2,
        title: "Head, Neck, and Spine Injuries",
        subtitle: "When NOT moving someone saves them",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["aid_t3_01"],
        contentBlocks: [
            ContentBlock(id: "aid302_b1", type: .whyMatters, title: "Why Spinal Caution Is Different", bullets: [
                "A spinal cord injury can cause permanent paralysis. Moving the person wrong can complete a partial injury.",
                "When the mechanism suggests it (falls, crashes, diving, blows to the head), assume a spine injury until proven otherwise.",
                "Here, the right first aid is often to keep someone still rather than help them up."
            ], callouts: ["This is education only. Spinal management is an advanced skill; the safest bystander action is usually to keep the person still and wait for EMS."]),
            ContentBlock(id: "aid302_b2", type: .keyTerms, title: "Signs of Head and Spine Injury", bullets: [
                "Head: confusion, repeated vomiting, unequal pupils, clear fluid from nose or ears, loss of consciousness.",
                "Spine: numbness, tingling, weakness, or inability to move arms or legs.",
                "Pain along the spine or neck, or a head/neck position that looks unnatural.",
                "Concussion: headache, dizziness, fogginess, sensitivity to light after a blow to the head."
            ]),
            ContentBlock(id: "aid302_b3", type: .stepByStep, title: "What to Do for a Suspected Spine Injury", bullets: [
                "Call 911 immediately.",
                "Tell the person to hold still and not move their head or neck.",
                "Manually stabilize the head: gently hold it in line with the body using both hands.",
                "Do not move them unless they are in immediate danger (fire, water, traffic).",
                "If they vomit or you must move them, use a coordinated log roll keeping head and spine aligned."
            ], callouts: ["The only reasons to move a suspected spine injury are an immediate threat to life or the need to give CPR."]),
            ContentBlock(id: "aid302_b4", type: .safety, title: "Concussion and Head-Injury Danger Signs", bullets: [
                "Worsening or severe headache, repeated vomiting, or seizures.",
                "Increasing confusion, slurred speech, or one pupil larger than the other.",
                "Weakness, numbness, or inability to wake up.",
                "Any of these means call 911 now; bleeding inside the skull can be deadly."
            ]),
            ContentBlock(id: "aid302_b5", type: .summary, title: "The Stillness Principle", bullets: [
                "Suspect a spine injury based on how it happened, not just symptoms.",
                "Keep the head and neck still; stabilize, do not move.",
                "Move only for immediate danger or CPR, using a log roll with help."
            ])
        ],
        quiz: Quiz(id: "aid302_q", passPercent: 80, questions: [
            Question(id: "aid302_q1", type: .scenario, prompt: "A person fell from a ladder and is conscious but complaining of neck pain and tingling in their hands. What is the best action?", choices: ["Help them sit up and walk it off", "Keep them still, stabilize the head, and call 911", "Roll them onto their side immediately", "Have them turn their head to check mobility"], correctIndex: 1, explanation: "Neck pain plus tingling after a fall strongly suggests a spine injury. Keep them still, stabilize the head in line with the body, and call 911."),
            Question(id: "aid302_q2", type: .multiSelect, prompt: "Which are danger signs of a serious head injury?", choices: ["Unequal pupils", "Clear fluid from the nose or ears", "Mild thirst", "Repeated vomiting", "Increasing confusion or slurred speech"], correctIndices: [0, 1, 3, 4], explanation: "Unequal pupils, clear fluid leaking, repeated vomiting, and worsening confusion all signal possible bleeding in the skull. Mild thirst does not."),
            Question(id: "aid302_q3", prompt: "When you must move a person with a suspected spine injury, you use a coordinated _____ roll to keep the spine aligned.", acceptedAnswers: ["log", "log roll"], explanation: "A log roll moves the head, neck, and torso as one unit, keeping the spine in line to prevent further cord damage."),
            Question(id: "aid302_q4", type: .multipleChoice, prompt: "What is the safest default for a bystander with a suspected spinal injury?", choices: ["Reposition the person for comfort", "Keep them still and wait for EMS", "Have them stand to test for paralysis", "Carry them to a car for transport"], correctIndex: 1, explanation: "Keeping the person still and waiting for EMS is the safest default. Unnecessary movement can turn a partial injury into permanent paralysis."),
            Question(id: "aid302_q5", type: .scenario, prompt: "A person with a suspected spine injury starts to vomit while lying on their back. What do you do?", choices: ["Leave them flat to avoid moving the spine", "Log roll them onto their side as a unit to protect the airway", "Sit them straight up", "Tilt only their head to the side"], correctIndex: 1, explanation: "Airway comes first. Log roll them as a single unit onto their side so they do not aspirate, keeping the head and spine aligned.")
        ]),
        flashcards: [
            Flashcard(id: "aid302_f1", front: "Spinal precaution", back: "Keeping the head, neck, and back still when a spine injury is possible, to prevent paralysis"),
            Flashcard(id: "aid302_f2", front: "Log roll", back: "A coordinated technique that turns a person as one unit, keeping the spine aligned"),
            Flashcard(id: "aid302_f3", front: "Concussion", back: "A mild traumatic brain injury from a blow to the head, causing headache, dizziness, and fogginess"),
            Flashcard(id: "aid302_f4", front: "Unequal pupils", back: "A danger sign of serious head injury that can indicate bleeding or pressure inside the skull")
        ],
        tags: ["head", "spine", "concussion"]
    )

    static let lesson11 = Lesson(
        id: "aid_t3_03",
        categoryId: .firstAid,
        tier: 3,
        lessonNumber: 3,
        title: "Allergic Reactions and Anaphylaxis",
        subtitle: "The EpiPen and a closing airway",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["aid_t3_02"],
        contentBlocks: [
            ContentBlock(id: "aid303_b1", type: .whyMatters, title: "Why Minutes Matter in Anaphylaxis", bullets: [
                "Anaphylaxis is a severe, body-wide allergic reaction that can close the airway and crash blood pressure in minutes.",
                "Common triggers: foods (nuts, shellfish), insect stings, medications, and latex.",
                "Epinephrine is the only first-line treatment that reverses it. Antihistamines like Benadryl are not enough."
            ], callouts: ["Education only. If you carry or use an epinephrine auto-injector, follow its instructions and your doctor's guidance, and always call 911."]),
            ContentBlock(id: "aid303_b2", type: .keyTerms, title: "Recognizing Anaphylaxis", bullets: [
                "Skin: hives, widespread itching, flushing, or swelling of the lips, tongue, or face.",
                "Airway: tight throat, hoarse voice, wheezing, or trouble breathing.",
                "Circulation: dizziness, fainting, rapid weak pulse, sense of doom.",
                "Gut: cramping, vomiting, or diarrhea.",
                "Two or more body systems involved after exposure equals anaphylaxis until proven otherwise."
            ]),
            ContentBlock(id: "aid303_b3", type: .stepByStep, title: "Using an Epinephrine Auto-Injector", bullets: [
                "Get the auto-injector. Remove the safety cap.",
                "Hold it in a fist with the orange or business end pointed at the outer thigh.",
                "Press firmly into the outer thigh until it clicks; it works through clothing.",
                "Hold in place for about 3 seconds (check your device's instructions), then remove.",
                "Call 911 immediately. Note the time. A second dose may be needed in 5 to 15 minutes if no improvement.",
                "Have the person lie down with legs raised unless breathing is hard, then let them sit up."
            ], callouts: ["Never inject into a thumb, finger, or buttock. Aim for the outer thigh muscle. Always call 911 even after epinephrine works, as symptoms can return."]),
            ContentBlock(id: "aid303_b4", type: .principles, title: "Key Rules of Epinephrine", bullets: [
                "When in doubt, give it. Epinephrine is far safer than a missed anaphylaxis.",
                "It buys time; it is not a cure. The person still needs the hospital.",
                "A reaction can rebound hours later (biphasic), so monitoring at a hospital matters.",
                "Antihistamines and inhalers are add-ons, never substitutes for epinephrine."
            ]),
            ContentBlock(id: "aid303_b5", type: .summary, title: "The Anaphylaxis Response", bullets: [
                "Recognize two or more systems after exposure.",
                "Epinephrine to the outer thigh, then 911, then monitor.",
                "When unsure, give the epinephrine. Hesitation is the bigger risk."
            ])
        ],
        quiz: Quiz(id: "aid303_q", passPercent: 80, questions: [
            Question(id: "aid303_q1", type: .multipleChoice, prompt: "What is the first-line treatment for anaphylaxis?", choices: ["Antihistamine like Benadryl", "Epinephrine (an auto-injector)", "An asthma inhaler", "Cold water and rest"], correctIndex: 1, explanation: "Epinephrine is the only first-line treatment that reverses anaphylaxis. Antihistamines and inhalers are supportive add-ons, not substitutes."),
            Question(id: "aid303_q2", prompt: "An epinephrine auto-injector should be injected into the outer _____.", acceptedAnswers: ["thigh", "leg"], explanation: "The outer thigh muscle is the correct injection site. Never use the thumb, finger, or buttock."),
            Question(id: "aid303_q3", type: .scenario, prompt: "Someone eats shrimp and within minutes has hives, a swelling tongue, and is wheezing. What should you do?", choices: ["Give an antihistamine and wait", "Use their epinephrine auto-injector and call 911", "Have them drink water and lie down only", "Wait to see if it gets worse"], correctIndex: 1, explanation: "Hives plus airway swelling and wheezing after a known trigger is anaphylaxis. Give epinephrine to the outer thigh and call 911 at once."),
            Question(id: "aid303_q4", type: .multiSelect, prompt: "Which are warning signs of anaphylaxis?", choices: ["Swelling of the lips or tongue", "A tight throat or wheezing", "A small papercut", "Dizziness and a sense of doom", "Widespread hives and itching"], correctIndices: [0, 1, 3, 4], explanation: "Lip or tongue swelling, airway tightness, dizziness, and hives are anaphylaxis signs. A small papercut is not an allergic reaction."),
            Question(id: "aid303_q5", type: .scenario, prompt: "You gave epinephrine and the person feels much better after a few minutes. What now?", choices: ["They are cured; no need for a hospital", "Still call 911 and get them to a hospital for monitoring", "Give a second dose right away to be safe", "Send them home to rest"], correctIndex: 1, explanation: "Epinephrine buys time but is not a cure. Symptoms can return hours later (biphasic reaction), so always get hospital monitoring.")
        ]),
        flashcards: [
            Flashcard(id: "aid303_f1", front: "Anaphylaxis", back: "A severe, rapid, whole-body allergic reaction that can close the airway and drop blood pressure"),
            Flashcard(id: "aid303_f2", front: "Epinephrine auto-injector", back: "A device that injects epinephrine into the outer thigh to reverse anaphylaxis"),
            Flashcard(id: "aid303_f3", front: "Biphasic reaction", back: "A return of anaphylaxis symptoms hours after the first reaction, which is why hospital monitoring is needed"),
            Flashcard(id: "aid303_f4", front: "Two-system rule", back: "Suspect anaphylaxis when two or more body systems react after an allergen exposure")
        ],
        tags: ["allergy", "anaphylaxis", "epinephrine"]
    )

    static let lesson12 = Lesson(
        id: "aid_t3_04",
        categoryId: .firstAid,
        tier: 3,
        lessonNumber: 4,
        title: "Heat Stroke and Hypothermia",
        subtitle: "When body temperature becomes the emergency",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["aid_t3_03"],
        contentBlocks: [
            ContentBlock(id: "aid304_b1", type: .whyMatters, title: "Why Temperature Extremes Kill", bullets: [
                "Heat stroke is a medical emergency where the body's cooling system fails and core temperature climbs above 104 F (40 C).",
                "Hypothermia is core temperature dropping below 95 F (35 C), impairing the heart and brain.",
                "Both can be fatal, and both progress in stages you can learn to recognize and interrupt."
            ]),
            ContentBlock(id: "aid304_b2", type: .keyTerms, title: "Heat Exhaustion vs Heat Stroke", bullets: [
                "Heat exhaustion: heavy sweating, weakness, nausea, cool clammy skin, fast pulse. Treatable on scene.",
                "Heat stroke: hot skin, confusion, slurred speech, possible loss of consciousness; sweating may stop.",
                "The shift to confusion or altered mental status is the red line into heat stroke.",
                "Heat stroke is a 911 emergency; minutes of high core temperature damage the brain and organs."
            ], callouts: ["If someone overheated becomes confused or stops making sense, treat it as heat stroke and call 911 immediately."]),
            ContentBlock(id: "aid304_b3", type: .stepByStep, title: "Cooling a Heat Stroke Victim", bullets: [
                "Call 911. Move them to shade or air conditioning.",
                "Remove excess clothing.",
                "Cool aggressively: cold water immersion if possible, or ice packs to the neck, armpits, and groin.",
                "Spray or sponge with cool water and fan to speed evaporation.",
                "Do not give fluids to a confused or unconscious person; they can choke."
            ]),
            ContentBlock(id: "aid304_b4", type: .stepByStep, title: "Rewarming a Hypothermia Victim", bullets: [
                "Move them somewhere warm and dry. Call 911 for moderate or severe cases.",
                "Remove wet clothing and replace with dry layers and blankets.",
                "Warm the core first: chest, neck, and groin. Use warm (not hot) packs and skin-to-skin if needed.",
                "Handle them gently; rough movement can trigger a dangerous heart rhythm.",
                "If alert, give warm sweet non-alcoholic drinks. Never give alcohol; it worsens heat loss."
            ], callouts: ["A severely hypothermic person can appear dead with no obvious pulse. Continue CPR and rewarming; people have survived. 'Not dead until warm and dead.'"]),
            ContentBlock(id: "aid304_b5", type: .summary, title: "The Temperature Emergency Rules", bullets: [
                "Heat stroke: confusion plus heat means cool fast and call 911.",
                "Hypothermia: dry off, warm the core gently, handle with care.",
                "Mental status change is the warning line in both directions."
            ])
        ],
        quiz: Quiz(id: "aid304_q", passPercent: 80, questions: [
            Question(id: "aid304_q1", type: .multipleChoice, prompt: "What sign marks the dangerous shift from heat exhaustion to heat stroke?", choices: ["Heavy sweating", "Confusion or altered mental status", "Thirst", "Muscle cramps"], correctIndex: 1, explanation: "Confusion or altered mental status signals heat stroke, a life-threatening emergency requiring aggressive cooling and 911."),
            Question(id: "aid304_q2", prompt: "Hypothermia is defined as a core body temperature below 95 degrees _____.", acceptedAnswers: ["fahrenheit", "f"], explanation: "Hypothermia begins below 95 F (35 C), the point where the heart and brain start to malfunction from cold."),
            Question(id: "aid304_q3", type: .scenario, prompt: "A runner collapses on a hot day, skin hot and dry, confused and slurring words. What is your priority?", choices: ["Give them a sports drink", "Have them rest in the shade and recover", "Call 911 and cool aggressively with ice to neck, armpits, groin", "Wrap them in a blanket"], correctIndex: 2, explanation: "Hot skin, confusion, and slurred speech indicate heat stroke. Call 911 and cool the body rapidly with ice to the major pulse points."),
            Question(id: "aid304_q4", type: .multiSelect, prompt: "Which are correct steps for treating hypothermia?", choices: ["Remove wet clothing", "Warm the core with warm packs to chest and neck", "Handle the person gently", "Give them an alcoholic drink to warm up", "Replace wet layers with dry blankets"], correctIndices: [0, 1, 2, 4], explanation: "Remove wet clothes, warm the core gently, and handle carefully. Never give alcohol; it dilates vessels and increases heat loss."),
            Question(id: "aid304_q5", type: .scenario, prompt: "A person pulled from cold water appears lifeless with no obvious pulse. They are severely hypothermic. What guides your action?", choices: ["Stop care; they are clearly dead", "Continue CPR and rewarming, since they are not dead until warm and dead", "Pour hot water over them quickly", "Shake them vigorously to wake them"], correctIndex: 1, explanation: "Severe hypothermia can mimic death and slow the pulse to undetectable. The rule is 'not dead until warm and dead', so continue CPR and rewarming.")
        ]),
        flashcards: [
            Flashcard(id: "aid304_f1", front: "Heat stroke", back: "A life-threatening failure of the body's cooling system with core temperature above 104 F and altered mental status"),
            Flashcard(id: "aid304_f2", front: "Heat exhaustion", back: "An earlier heat illness with heavy sweating, weakness, and cool clammy skin; treatable on scene"),
            Flashcard(id: "aid304_f3", front: "Hypothermia", back: "Core body temperature below 95 F (35 C), impairing the heart and brain"),
            Flashcard(id: "aid304_f4", front: "Not dead until warm and dead", back: "The principle that a severely hypothermic person may be revivable, so continue CPR and rewarming")
        ],
        tags: ["heat", "cold", "environment"]
    )

    // MARK: - Tier 4: Mastery

    static let lesson13 = Lesson(
        id: "aid_t4_01",
        categoryId: .firstAid,
        tier: 4,
        lessonNumber: 1,
        title: "Building a Real First-Aid Kit",
        subtitle: "What actually belongs in the bag",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["aid_t3_04"],
        contentBlocks: [
            ContentBlock(id: "aid401_b1", type: .whyMatters, title: "Why a Thoughtful Kit Beats a Store Kit", bullets: [
                "Most pre-made kits are 90 percent bandages and 10 percent of what you actually need in a real emergency.",
                "The gear that saves lives, like a tourniquet and trauma dressing, is rarely in a drugstore kit.",
                "A kit you assembled and understand is one you can actually use under stress."
            ]),
            ContentBlock(id: "aid401_b2", type: .componentBreakdown, title: "The Trauma Tier (Life-Threatening)", bullets: [
                "Commercial tourniquet (CAT or SOFTT-W). Not improvised.",
                "Hemostatic gauze and compressed gauze for wound packing.",
                "Trauma dressing (pressure bandage) and a chest seal for penetrating chest wounds.",
                "Nitrile gloves and trauma shears to expose wounds.",
                "A space blanket for shock and warmth."
            ], callouts: ["Learn to use trauma gear before you need it. A tourniquet you have never practiced with is hard to apply correctly under stress."]),
            ContentBlock(id: "aid401_b3", type: .componentBreakdown, title: "The Everyday Tier (Common Injuries)", bullets: [
                "Assorted adhesive bandages, gauze pads, and medical tape.",
                "Antiseptic wipes, antibiotic ointment, and burn gel.",
                "Tweezers, scissors, safety pins, and an elastic wrap for sprains.",
                "Pain relievers, antihistamine, and any personal prescriptions (with care).",
                "A CPR face shield, instant cold pack, and a small flashlight."
            ]),
            ContentBlock(id: "aid401_b4", type: .proTips, title: "Building and Maintaining It", bullets: [
                "Keep one kit at home, one in the car, and a small one in your everyday bag.",
                "Check expiration dates every 6 to 12 months; medications and adhesives degrade.",
                "Customize for your life: allergies (epinephrine), kids, pets, remote travel.",
                "Add a written emergency contact card and a list of medical conditions.",
                "Know how to use every item. Gear without skill is just weight."
            ]),
            ContentBlock(id: "aid401_b5", type: .summary, title: "The Two-Tier Kit", bullets: [
                "Trauma tier for the things that kill in minutes; everyday tier for the rest.",
                "Buy real gear, practice with it, and maintain it.",
                "Home, car, and go-bag coverage."
            ])
        ],
        quiz: Quiz(id: "aid401_q", passPercent: 80, questions: [
            Question(id: "aid401_q1", type: .multiSelect, prompt: "Which items belong in the trauma (life-threatening) tier of a serious first-aid kit?", choices: ["Commercial tourniquet", "Hemostatic gauze", "Adhesive bandages", "Chest seal", "Nitrile gloves"], correctIndices: [0, 1, 3, 4], explanation: "Tourniquets, hemostatic gauze, chest seals, and gloves address life threats. Adhesive bandages are everyday-tier items."),
            Question(id: "aid401_q2", type: .multipleChoice, prompt: "How often should you check a first-aid kit for expired items?", choices: ["Never; supplies do not expire", "Every 6 to 12 months", "Once every 5 years", "Only after using it"], correctIndex: 1, explanation: "Medications, adhesives, and sterile items degrade. Check the kit every 6 to 12 months and replace what has expired."),
            Question(id: "aid401_q3", prompt: "Trauma gear like a tourniquet is only useful if you have _____ with it beforehand.", acceptedAnswers: ["practiced", "trained", "practice"], explanation: "Owning gear is not enough. Practicing with a tourniquet beforehand is what lets you apply it correctly under stress."),
            Question(id: "aid401_q4", type: .scenario, prompt: "You are assembling kits for your household and live in a home with a family member who has a severe nut allergy. What should you add?", choices: ["More adhesive bandages", "An epinephrine auto-injector and an action plan", "Extra burn gel", "A second flashlight"], correctIndex: 1, explanation: "Customize the kit to your life. A severe allergy means stocking a prescribed epinephrine auto-injector and a written allergy action plan."),
            Question(id: "aid401_q5", prompt: "Match each kit item to its primary purpose.", matchingPairs: [
                MatchingPair(left: "Tourniquet", right: "Stop life-threatening limb bleeding"),
                MatchingPair(left: "Chest seal", right: "Cover a penetrating chest wound"),
                MatchingPair(left: "Space blanket", right: "Prevent heat loss and treat shock")
            ], explanation: "Matching gear to purpose ensures you reach for the right tool fast in an emergency.")
        ]),
        flashcards: [
            Flashcard(id: "aid401_f1", front: "Hemostatic gauze", back: "Gauze treated to speed clotting, packed into deep wounds to control severe bleeding"),
            Flashcard(id: "aid401_f2", front: "Chest seal", back: "An occlusive dressing that covers a penetrating chest wound to protect the lung"),
            Flashcard(id: "aid401_f3", front: "Trauma shears", back: "Heavy-duty scissors used to quickly cut away clothing and expose wounds"),
            Flashcard(id: "aid401_f4", front: "Two-tier kit", back: "A kit split into life-threatening trauma gear and everyday injury supplies")
        ],
        tags: ["kit", "preparedness", "gear"]
    )

    static let lesson14 = Lesson(
        id: "aid_t4_02",
        categoryId: .firstAid,
        tier: 4,
        lessonNumber: 2,
        title: "Common Illnesses and When to Seek Care",
        subtitle: "Triage at home with confidence",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["aid_t4_01"],
        contentBlocks: [
            ContentBlock(id: "aid402_b1", type: .whyMatters, title: "Why Knowing the Threshold Matters", bullets: [
                "Most everyday illness is self-limiting and managed at home. Knowing that prevents panic and wasted ER trips.",
                "The skill is recognizing the small set of red flags that mean this is no longer routine.",
                "Good home triage saves time, money, and occasionally a life."
            ], callouts: ["Education only, not medical advice. When in doubt, call your doctor, a nurse line, or 911."]),
            ContentBlock(id: "aid402_b2", type: .context, title: "Levels of Care", bullets: [
                "Self-care at home: minor colds, mild stomach bugs, small cuts, low-grade fever in adults.",
                "Primary care or telehealth: lingering symptoms, mild infections, prescription needs.",
                "Urgent care: minor fractures, deep cuts needing stitches, moderate illness when the doctor is closed.",
                "Emergency room or 911: the red-flag symptoms in this lesson."
            ]),
            ContentBlock(id: "aid402_b3", type: .safety, title: "Red Flags That Mean Go Now", bullets: [
                "Chest pain or pressure, especially with sweating, nausea, or arm or jaw pain.",
                "Sudden trouble breathing or shortness of breath at rest.",
                "Sudden weakness, numbness, face droop, or trouble speaking (possible stroke).",
                "Severe or worsening abdominal pain, or vomiting blood.",
                "High fever with stiff neck, confusion, or a rash that does not fade when pressed.",
                "Signs of severe dehydration: no urination, dizziness when standing, sunken eyes."
            ]),
            ContentBlock(id: "aid402_b4", type: .realWorld, title: "Handling Common Complaints", bullets: [
                "Fever: in adults, treat for comfort and hydrate; seek care above about 103 F or if it persists past 3 days.",
                "Vomiting and diarrhea: focus on fluids and electrolytes; seek care for blood, severe pain, or dehydration.",
                "Dehydration: small frequent sips of water or an oral rehydration solution.",
                "Allergic flare or rash: antihistamine for mild cases; watch for the airway and swelling signs of anaphylaxis."
            ]),
            ContentBlock(id: "aid402_b5", type: .summary, title: "The Triage Mindset", bullets: [
                "Match the symptom to the right level of care.",
                "Memorize the red flags; they override everything else.",
                "Hydration and rest handle most everyday illness."
            ])
        ],
        quiz: Quiz(id: "aid402_q", passPercent: 80, questions: [
            Question(id: "aid402_q1", type: .multiSelect, prompt: "Which symptoms are red flags that warrant emergency care?", choices: ["Chest pressure with sweating and arm pain", "A mild runny nose", "Sudden face droop and slurred speech", "A rash that does not fade when pressed, with fever and stiff neck", "A small papercut"], correctIndices: [0, 2, 3], explanation: "Chest pressure with sweating, stroke signs, and a non-blanching rash with fever are emergencies. A runny nose and papercut are not."),
            Question(id: "aid402_q2", type: .scenario, prompt: "A family member has had vomiting and diarrhea for a day. They are urinating normally and keeping down sips of fluid. What level of care fits?", choices: ["Emergency room immediately", "Self-care at home with fluids and rest", "Call 911", "Surgery"], correctIndex: 1, explanation: "Mild gastroenteritis with normal urination and tolerated fluids is managed at home. Escalate only for blood, severe pain, or dehydration."),
            Question(id: "aid402_q3", prompt: "A rash that does NOT fade or blanch when you press on it, along with fever and a stiff neck, is a medical _____.", acceptedAnswers: ["emergency", "red flag"], explanation: "A non-blanching rash with fever and stiff neck can signal meningitis or sepsis, a true emergency. Seek care immediately."),
            Question(id: "aid402_q4", prompt: "Match each situation to the appropriate level of care.", matchingPairs: [
                MatchingPair(left: "Minor cold", right: "Self-care at home"),
                MatchingPair(left: "Deep cut needing stitches", right: "Urgent care"),
                MatchingPair(left: "Sudden trouble breathing", right: "Emergency room or 911")
            ], explanation: "Matching symptoms to the right level of care prevents both under-reacting and overcrowding emergency services."),
            Question(id: "aid402_q5", type: .scenario, prompt: "An adult has a fever of 101 F, body aches, and a cough but is alert, breathing normally, and drinking fluids. What is reasonable?", choices: ["Call 911 right away", "Rest, fluids, and fever care at home, watch for red flags", "Go straight to the ER", "Stop all fluids"], correctIndex: 1, explanation: "A moderate fever with normal breathing and good hydration is typically managed at home. Monitor for red flags like trouble breathing or very high fever.")
        ]),
        flashcards: [
            Flashcard(id: "aid402_f1", front: "Triage", back: "Sorting illness or injury by severity to decide the right level and urgency of care"),
            Flashcard(id: "aid402_f2", front: "Non-blanching rash", back: "A rash that does not fade when pressed; with fever it can signal meningitis or sepsis, an emergency"),
            Flashcard(id: "aid402_f3", front: "Oral rehydration", back: "Replacing fluids and electrolytes by mouth, in small frequent sips, to treat dehydration"),
            Flashcard(id: "aid402_f4", front: "Red flag symptom", back: "A warning sign (like chest pain or stroke signs) that overrides routine care and means seek help now")
        ],
        tags: ["illness", "triage", "care"]
    )

    static let lesson15 = Lesson(
        id: "aid_t4_03",
        categoryId: .firstAid,
        tier: 4,
        lessonNumber: 3,
        title: "Recognizing a Heart Attack and Stroke",
        subtitle: "FAST, the warning signs, and acting now",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["aid_t4_02"],
        contentBlocks: [
            ContentBlock(id: "aid403_b1", type: .whyMatters, title: "Why Recognition Is the Whole Game", bullets: [
                "Heart attack and stroke are time-critical. 'Time is muscle' for the heart, 'time is brain' for stroke.",
                "Stroke treatments work best within a few hours, and clot-busting drugs have a tight window.",
                "Most delay comes from victims and bystanders waiting, not from EMS. Knowing the signs is what saves them."
            ], callouts: ["Education only. Any suspected heart attack or stroke is a call-911-immediately situation; do not drive yourself."]),
            ContentBlock(id: "aid403_b2", type: .systemOverview, title: "FAST for Stroke", bullets: [
                "F - Face: ask them to smile. Does one side droop?",
                "A - Arms: ask them to raise both arms. Does one drift down?",
                "S - Speech: ask them to repeat a simple phrase. Is it slurred or strange?",
                "T - Time: if any sign is present, call 911 now and note the time symptoms started.",
                "Some add B-E for Balance and Eyes (sudden loss of balance or vision)."
            ]),
            ContentBlock(id: "aid403_b3", type: .keyTerms, title: "Heart Attack Warning Signs", bullets: [
                "Chest pain, pressure, squeezing, or fullness, often central.",
                "Pain spreading to the arm (often left), jaw, neck, back, or stomach.",
                "Shortness of breath, cold sweat, nausea, or lightheadedness.",
                "Women, older adults, and diabetics may have subtler signs: fatigue, indigestion-like discomfort, no crushing chest pain.",
                "Symptoms that come on with exertion and ease with rest are a warning sign."
            ]),
            ContentBlock(id: "aid403_b4", type: .stepByStep, title: "What to Do Right Now", bullets: [
                "Call 911 immediately. EMS can start treatment and alert the hospital en route.",
                "Have the person stop activity, sit or lie in a comfortable position, and stay calm.",
                "For a suspected heart attack, if the person is not allergic and it is not contraindicated, an aspirin (chewed) may help; follow 911 dispatcher guidance.",
                "Loosen tight clothing and monitor breathing.",
                "If they become unresponsive and stop breathing normally, start CPR and get an AED."
            ], callouts: ["Do not give aspirin for a suspected stroke; if the stroke is a bleed, aspirin can make it worse. Aspirin guidance applies to heart attack, per a dispatcher or doctor."]),
            ContentBlock(id: "aid403_b5", type: .summary, title: "The Time-Critical Pair", bullets: [
                "Stroke: think FAST, note the time, call 911.",
                "Heart attack: chest and radiating pain, sweat, shortness of breath; call 911.",
                "Never wait it out and never drive yourself."
            ])
        ],
        quiz: Quiz(id: "aid403_q", passPercent: 80, questions: [
            Question(id: "aid403_q1", prompt: "Match each letter of FAST to what you check for stroke.", matchingPairs: [
                MatchingPair(left: "F", right: "Face droop on one side"),
                MatchingPair(left: "A", right: "Arm drifts down when raised"),
                MatchingPair(left: "S", right: "Speech is slurred or strange"),
                MatchingPair(left: "T", right: "Time to call 911")
            ], explanation: "FAST is the standard public stroke screen: Face, Arms, Speech, Time."),
            Question(id: "aid403_q2", type: .scenario, prompt: "Your father suddenly has a drooping face and slurred speech, and one arm drifts down. What do you do?", choices: ["Have him lie down and rest, recheck in an hour", "Drive him to the doctor tomorrow", "Call 911 immediately and note the time symptoms started", "Give him aspirin and wait"], correctIndex: 2, explanation: "These are classic stroke signs. Call 911 at once and note the start time, since treatment windows are tight. Do not give aspirin for a suspected stroke."),
            Question(id: "aid403_q3", type: .multiSelect, prompt: "Which can be warning signs of a heart attack?", choices: ["Chest pressure or squeezing", "Pain spreading to the arm or jaw", "A non-blanching rash", "Cold sweat and nausea", "Shortness of breath"], correctIndices: [0, 1, 3, 4], explanation: "Chest pressure, radiating pain, cold sweat, and shortness of breath are heart attack signs. A non-blanching rash points to other emergencies."),
            Question(id: "aid403_q4", prompt: "For stroke recognition, the T in FAST stands for _____.", acceptedAnswers: ["time", "time to call 911"], explanation: "T means Time: if any sign is present, call 911 immediately and note when symptoms began, because treatment is time-sensitive."),
            Question(id: "aid403_q5", type: .scenario, prompt: "Someone has crushing chest pain and a cold sweat. Why should you NOT drive them to the hospital yourself?", choices: ["It is illegal", "EMS can start treatment and alert the hospital en route, and the person could arrest during the drive", "Hospitals only accept ambulances", "Driving is too slow"], correctIndex: 1, explanation: "EMS begins care immediately and pre-notifies the hospital. If the person goes into cardiac arrest during a private drive, no one can help.")
        ]),
        flashcards: [
            Flashcard(id: "aid403_f1", front: "FAST", back: "Face, Arms, Speech, Time: the public screening tool for recognizing a stroke"),
            Flashcard(id: "aid403_f2", front: "Time is brain", back: "The principle that brain cells die rapidly during a stroke, so fast treatment matters enormously"),
            Flashcard(id: "aid403_f3", front: "Radiating pain", back: "Heart attack pain that spreads from the chest to the arm, jaw, neck, back, or stomach"),
            Flashcard(id: "aid403_f4", front: "Aspirin caution", back: "Aspirin may help in a suspected heart attack but should not be given for a suspected stroke, which could be a bleed")
        ],
        tags: ["heart", "stroke", "fast"]
    )

    static let lesson16 = Lesson(
        id: "aid_t4_04",
        categoryId: .firstAid,
        tier: 4,
        lessonNumber: 4,
        title: "Staying Calm and Taking Command",
        subtitle: "The leadership that turns chaos into care",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["aid_t4_03"],
        contentBlocks: [
            ContentBlock(id: "aid404_b1", type: .whyMatters, title: "Why the Calm Person Wins", bullets: [
                "In an emergency, skills only matter if you can deploy them under stress. Panic freezes people.",
                "The bystander effect means a crowd often does nothing because no one takes charge.",
                "The person who stays calm and gives clear direction becomes the de facto leader, and that saves lives."
            ]),
            ContentBlock(id: "aid404_b2", type: .principles, title: "Controlling Yourself First", bullets: [
                "Take one slow breath. Box breathing (in 4, hold 4, out 4, hold 4) drops your heart rate fast.",
                "Name the situation out loud to yourself: 'Adult, conscious, bleeding leg.' It engages your thinking brain.",
                "Work the system you trained: scene safety, ABCs, call for help, treat the worst first.",
                "Accept that imperfect action beats perfect hesitation. Doing something useful beats freezing."
            ]),
            ContentBlock(id: "aid404_b3", type: .stepByStep, title: "Taking Command of the Scene", bullets: [
                "Announce yourself: 'I know first aid, I am going to help.'",
                "Assign tasks by pointing and naming: 'You, call 911. You, find an AED. You, bring blankets.'",
                "Ask each person to report back so you know the task is done.",
                "Keep the crowd back and give them useful jobs to channel their energy.",
                "Hand off clearly when EMS arrives: what happened, what you found, what you did, and when."
            ], callouts: ["Clear, specific commands beat polite vague requests every time. Direct people firmly and kindly."]),
            ContentBlock(id: "aid404_b4", type: .realWorld, title: "The Handoff and the Aftermath", bullets: [
                "Give EMS a tight report: mechanism, what you observed, interventions, and times.",
                "Mention a tourniquet time, an epinephrine dose, or when CPR started; these matter to the hospital.",
                "After it is over, debrief yourself. It is normal to feel shaky; reach out if it weighs on you.",
                "Reflect on what went well and what to drill so you are sharper next time."
            ]),
            ContentBlock(id: "aid404_b5", type: .summary, title: "The Mark of Real Readiness", bullets: [
                "Steady yourself, then steady the scene.",
                "Assign clear tasks, treat the worst first, and hand off cleanly.",
                "Calm, decisive leadership is the skill that ties all the others together."
            ])
        ],
        quiz: Quiz(id: "aid404_q", passPercent: 80, questions: [
            Question(id: "aid404_q1", type: .multipleChoice, prompt: "What is the bystander effect?", choices: ["When bystanders panic and run", "When a crowd does nothing because everyone assumes someone else will act", "When too many people give CPR at once", "When a bystander faints at the sight of blood"], correctIndex: 1, explanation: "The bystander effect is the diffusion of responsibility in a crowd. The cure is one person taking charge and assigning specific tasks."),
            Question(id: "aid404_q2", type: .scenario, prompt: "A man collapses in a busy store and a crowd just stares. What is the most effective first move?", choices: ["Yell 'someone help!' to the crowd", "Announce you know first aid and point at specific people to call 911 and find an AED", "Wait for a doctor to appear", "Quietly check the person without involving others"], correctIndex: 1, explanation: "Taking command overcomes the bystander effect. Announce your role and assign specific people to specific tasks so help actually happens."),
            Question(id: "aid404_q3", prompt: "A breathing technique to lower your heart rate by inhaling, holding, exhaling, and holding for equal counts is called _____ breathing.", acceptedAnswers: ["box", "boxed", "square"], explanation: "Box breathing (in 4, hold 4, out 4, hold 4) quickly calms the nervous system so you can think and act clearly."),
            Question(id: "aid404_q4", type: .multiSelect, prompt: "When handing off to EMS, which details should you report?", choices: ["What happened (mechanism)", "What you observed", "Interventions you performed and their times", "Your opinion of the patient's personality", "When CPR or a tourniquet was started"], correctIndices: [0, 1, 2, 4], explanation: "EMS needs mechanism, observations, interventions, and timing. Personal opinions about the patient are irrelevant to care."),
            Question(id: "aid404_q5", type: .scenario, prompt: "You successfully managed an emergency but feel shaky and replay it for days. What is the healthy response?", choices: ["Ignore it; real men do not get affected", "Recognize this is normal, debrief yourself, and reach out for support if it lingers", "Avoid ever helping again", "Pretend it never happened"], correctIndex: 1, explanation: "Stress reactions after an emergency are normal and human. Debriefing and seeking support when needed is a sign of strength, not weakness.")
        ]),
        flashcards: [
            Flashcard(id: "aid404_f1", front: "Bystander effect", back: "The tendency for people in a crowd to do nothing, assuming someone else will act"),
            Flashcard(id: "aid404_f2", front: "Box breathing", back: "Inhaling, holding, exhaling, and holding for equal counts to calm the nervous system"),
            Flashcard(id: "aid404_f3", front: "Taking command", back: "Announcing your role and assigning specific tasks to specific people in an emergency"),
            Flashcard(id: "aid404_f4", front: "EMS handoff", back: "A clear report to arriving responders covering mechanism, findings, interventions, and times")
        ],
        tags: ["leadership", "calm", "command"]
    )
}
