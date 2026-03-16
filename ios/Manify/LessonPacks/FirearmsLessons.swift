import Foundation

enum FirearmsLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3,
        lesson4, lesson5, lesson6,
        lesson7, lesson8
    ]

    // MARK: - Tier 1: Structural Awareness

    static let lesson1 = Lesson(
        id: "fire_t1_01",
        categoryId: .firearms,
        tier: 1,
        lessonNumber: 1,
        title: "The 4 Universal Safety Rules",
        subtitle: "The foundation everything else stands on",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "fire101_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Every negligent discharge traces back to violating at least one of these rules.",
                "These are not suggestions — they are a system. Violate two simultaneously and someone gets hurt.",
                "Knowing these cold is the first marker of competence."
            ]),
            ContentBlock(id: "fire101_b2", type: .systemOverview, title: "The Four Rules", bullets: [
                "1. Treat every firearm as if it is loaded.",
                "2. Never point the muzzle at anything you are not willing to destroy.",
                "3. Keep your finger off the trigger until your sights are on the target and you have decided to fire.",
                "4. Be sure of your target and what is beyond it."
            ]),
            ContentBlock(id: "fire101_b3", type: .howItWorks, title: "How They Work Together", bullets: [
                "The rules are layered — each one is a backup for the others.",
                "If you break Rule 1 but follow Rules 2, 3, and 4, no one gets hurt.",
                "If you break Rule 3 but follow Rule 2, the round goes into something safe.",
                "Negligent discharges almost always require breaking multiple rules simultaneously."
            ]),
            ContentBlock(id: "fire101_b4", type: .failureModes, title: "Common Violations", bullets: [
                "Assuming a firearm is unloaded without checking.",
                "Flagging other people with the muzzle while handling or showing a firearm.",
                "Resting a finger on the trigger while talking or looking around.",
                "Shooting at a target without knowing what is behind or beside it."
            ]),
            ContentBlock(id: "fire101_b5", type: .summary, title: "Summary", bullets: [
                "Four rules. Always loaded. Muzzle discipline. Trigger discipline. Know your target and beyond.",
                "These are not optional. They are the price of entry."
            ])
        ],
        quiz: Quiz(id: "fire101_q", passPercent: 80, questions: [
            Question(id: "fire101_q1", prompt: "Match each safety rule to its description.", matchingPairs: [
                MatchingPair(left: "Rule 1", right: "Treat every firearm as loaded"),
                MatchingPair(left: "Rule 2", right: "Never point at anything you won't destroy"),
                MatchingPair(left: "Rule 3", right: "Finger off trigger until ready to fire"),
                MatchingPair(left: "Rule 4", right: "Know your target and what's beyond it")
            ], explanation: "The four universal safety rules are layered — each backs up the others."),
            Question(id: "fire101_q2", type: .scenario, prompt: "Someone hands you a firearm and says 'Don't worry, it's unloaded.' You should:", choices: ["Trust them — they just checked", "Point it in a safe direction and verify yourself", "Hand it back immediately", "Set it down without touching the action"], correctIndex: 1, explanation: "Rule 1 applies always. Verify the condition of any firearm handed to you, regardless of what anyone tells you."),
            Question(id: "fire101_q3", prompt: "Be sure of your target and what is _____ it.", acceptedAnswers: ["beyond", "behind", "past"], explanation: "Rule 4: Be sure of your target and what is beyond it — bullets can penetrate or miss."),
            Question(id: "fire101_q4", type: .multiSelect, prompt: "Which scenarios violate one or more of the four rules?", choices: ["Resting finger on trigger while talking", "Assuming a gun is unloaded without checking", "Keeping muzzle pointed downrange", "Shooting at a target with unknown backstop", "Verifying chamber is clear before handling"], correctIndices: [0, 1, 3], explanation: "Trigger finger while talking violates Rule 3, assuming unloaded violates Rule 1, and unknown backstop violates Rule 4."),
            Question(id: "fire101_q5", prompt: "Negligent discharges almost always involve:", choices: ["Equipment malfunction", "One rule broken", "Lack of certification", "Breaking two or more rules simultaneously"], correctIndex: 3, explanation: "The safety rules are redundant by design. Injuries almost always require violating multiple rules at once."),
            Question(id: "fire101_q6", type: .scenario, prompt: "You're at the range and notice someone flagging people with their muzzle while chatting. Which rules are they violating?", choices: ["Only Rule 1", "Rules 2 and 3 — muzzle discipline and likely trigger discipline", "Only Rule 4", "No rules — they're at a range"], correctIndex: 1, explanation: "Flagging people violates Rule 2 (muzzle discipline), and chatting while pointing a firearm often accompanies poor trigger discipline (Rule 3).")
        ]),
        flashcards: [
            Flashcard(id: "fire101_f1", front: "Muzzle Discipline", back: "Always keeping the muzzle pointed in a safe direction, away from anything you're not willing to destroy"),
            Flashcard(id: "fire101_f2", front: "Trigger Discipline", back: "Keeping your finger off the trigger and outside the trigger guard until sights are on target and you've decided to fire"),
            Flashcard(id: "fire101_f3", front: "Negligent Discharge", back: "An unintended firing of a weapon caused by handling error, not mechanical failure"),
            Flashcard(id: "fire101_f4", front: "Flagging", back: "Pointing the muzzle at a person unintentionally — a serious Rule 2 violation"),
            Flashcard(id: "fire101_f5", front: "Backstop Awareness", back: "Knowing what is behind and beyond your target before firing (Rule 4)")
        ],
        tags: ["safety", "fundamentals"]
    )

    static let lesson2 = Lesson(
        id: "fire_t1_02",
        categoryId: .firearms,
        tier: 1,
        lessonNumber: 2,
        title: "Firearm Types Overview",
        subtitle: "Handguns, rifles, and shotguns",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["fire_t1_01"],
        contentBlocks: [
            ContentBlock(id: "fire102_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Before you can understand any specific firearm, you need to know the three major categories and what distinguishes them.",
                "Each type exists for different purposes and operates on different mechanical principles."
            ]),
            ContentBlock(id: "fire102_b2", type: .componentBreakdown, title: "The Three Categories", bullets: [
                "Handgun — Designed to be fired with one or two hands. Short barrel. Compact. Used for self-defense, concealed carry, and close-range applications.",
                "Rifle — Long barrel with rifling (spiral grooves). Fired from the shoulder. Greater accuracy and range. Used for hunting, sport shooting, and defense.",
                "Shotgun — Smooth or rifled bore. Fires multiple projectiles (shot) or single slugs. Versatile: hunting, home defense, sport (skeet, trap)."
            ]),
            ContentBlock(id: "fire102_b3", type: .howItWorks, title: "Key Distinctions", bullets: [
                "Barrel length affects accuracy, velocity, and legal classification.",
                "Rifling (spiral grooves in the barrel) spins the bullet for accuracy — present in handguns and rifles, not most shotguns.",
                "Caliber (handguns/rifles) vs gauge (shotguns) — different measurement systems.",
                "Action type (how the firearm loads, fires, and ejects) varies within each category."
            ]),
            ContentBlock(id: "fire102_b4", type: .summary, title: "Summary", bullets: [
                "Three categories: handgun, rifle, shotgun.",
                "Each optimized for different range, portability, and application.",
                "Understanding the category is the first step to understanding any specific firearm."
            ])
        ],
        quiz: Quiz(id: "fire102_q", passPercent: 80, questions: [
            Question(id: "fire102_q1", prompt: "Match each firearm type to its primary characteristic.", matchingPairs: [
                MatchingPair(left: "Handgun", right: "Compact, fired with one or two hands"),
                MatchingPair(left: "Rifle", right: "Long barrel with spiral grooves for accuracy"),
                MatchingPair(left: "Shotgun", right: "Fires multiple projectiles or single slugs")
            ], explanation: "Each firearm type is optimized for different range, portability, and application."),
            Question(id: "fire102_q2", prompt: "The spiral grooves inside a barrel that spin the bullet are called _____.", acceptedAnswers: ["rifling", "rifle grooves", "grooves"], explanation: "Rifling — spiral grooves in the barrel — spins the bullet for stability and accuracy. It's where the name 'rifle' comes from."),
            Question(id: "fire102_q3", type: .scenario, prompt: "You're choosing between caliber and gauge when buying ammunition. Gauge is the measurement system for:", choices: ["Handguns", "Rifles", "Shotguns", "All firearms"], correctIndex: 2, explanation: "Shotguns use gauge (12 gauge, 20 gauge), while rifles and handguns use caliber measurements."),
            Question(id: "fire102_q4", type: .multiSelect, prompt: "Which statements about rifling are correct?", choices: ["Present in all handguns and rifles", "Creates spiral grooves that spin the bullet", "Present in most shotguns", "Improves accuracy at distance", "Only found in military weapons"], correctIndices: [0, 1, 3], explanation: "Rifling is present in handguns and rifles (not most shotguns), spins the bullet via grooves, and improves accuracy.")
        ]),
        flashcards: [
            Flashcard(id: "fire102_f1", front: "Rifling", back: "Spiral grooves inside a barrel that spin the projectile for stability and accuracy"),
            Flashcard(id: "fire102_f2", front: "Caliber", back: "The internal diameter of a firearm barrel, used to classify handguns and rifles"),
            Flashcard(id: "fire102_f3", front: "Gauge", back: "The measurement system for shotgun bore diameter — lower number means larger bore"),
            Flashcard(id: "fire102_f4", front: "Action", back: "The mechanism by which a firearm loads, fires, and ejects cartridges")
        ],
        tags: ["types", "basics"]
    )

    static let lesson3 = Lesson(
        id: "fire_t1_03",
        categoryId: .firearms,
        tier: 1,
        lessonNumber: 3,
        title: "Handgun Components",
        subtitle: "Frame, slide, barrel, trigger — mapped",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["fire_t1_02"],
        contentBlocks: [
            ContentBlock(id: "fire103_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "You cannot maintain, diagnose, or safely operate a handgun without knowing its parts.",
                "When something goes wrong, the language of components is how you describe and resolve it."
            ]),
            ContentBlock(id: "fire103_b2", type: .componentBreakdown, title: "Component Breakdown", bullets: [
                "Frame — The main body and chassis. Houses the trigger mechanism and grip. The serialized, legally-regulated part.",
                "Slide — The upper portion on semi-autos. Reciprocates to chamber rounds and eject casings.",
                "Barrel — The tube the bullet travels through. Contains rifling for spin.",
                "Trigger — Initiates the firing sequence. Connected to internal firing mechanism.",
                "Magazine — Detachable container holding ammunition. Spring-fed.",
                "Sights — Front and rear alignment system for aiming.",
                "Safety — Mechanical device(s) preventing unintended discharge. Varies by model."
            ]),
            ContentBlock(id: "fire103_b3", type: .failureModes, title: "Common Mistakes", bullets: [
                "Calling the magazine a 'clip' — a clip feeds a magazine, a magazine feeds the firearm.",
                "Not knowing where the safety is or how it operates on your specific firearm.",
                "Ignoring the slide lock — it indicates the magazine is empty."
            ]),
            ContentBlock(id: "fire103_b4", type: .summary, title: "Summary", bullets: [
                "Know the frame, slide, barrel, trigger, magazine, sights, and safety.",
                "The frame is the serialized, legally-regulated component.",
                "Each part has a specific function in the firing cycle."
            ])
        ],
        quiz: Quiz(id: "fire103_q", passPercent: 80, questions: [
            Question(id: "fire103_q1", prompt: "Match each handgun component to its function.", matchingPairs: [
                MatchingPair(left: "Frame", right: "Serialized main body housing the trigger"),
                MatchingPair(left: "Slide", right: "Reciprocates to chamber rounds and eject casings"),
                MatchingPair(left: "Barrel", right: "Tube the bullet travels through with rifling"),
                MatchingPair(left: "Magazine", right: "Spring-fed container holding ammunition")
            ], explanation: "Each component serves a specific function in the firing cycle."),
            Question(id: "fire103_q2", prompt: "A _____ feeds ammunition into the firearm, not a clip.", acceptedAnswers: ["magazine", "mag", "the magazine"], explanation: "A magazine is the spring-loaded container that feeds the firearm. A clip is a device that holds rounds together to load into a magazine."),
            Question(id: "fire103_q3", type: .scenario, prompt: "The slide locks open after firing the last round. This indicates:", choices: ["A malfunction has occurred", "The safety is engaged", "The magazine is empty", "The barrel is overheated"], correctIndex: 2, explanation: "The slide lock is designed to hold the slide open after the last round, providing a visual and tactile indication that the magazine is empty."),
            Question(id: "fire103_q4", prompt: "Which component is the legally serialized and regulated part of a handgun?", choices: ["Barrel", "Magazine", "Slide", "Frame (receiver)"], correctIndex: 3, explanation: "The frame or receiver is the serialized, legally-regulated component. All other parts are considered accessories.")
        ]),
        flashcards: [
            Flashcard(id: "fire103_f1", front: "Frame/Receiver", back: "The main body of the firearm, housing the trigger mechanism — the legally serialized component"),
            Flashcard(id: "fire103_f2", front: "Slide", back: "The upper reciprocating assembly on a semi-auto handgun that chambers rounds and ejects casings"),
            Flashcard(id: "fire103_f3", front: "Magazine vs Clip", back: "A magazine is a spring-loaded container that feeds the firearm. A clip is a device that holds rounds together to load into a magazine."),
            Flashcard(id: "fire103_f4", front: "Slide Lock", back: "A mechanism that holds the slide open when the last round has been fired, indicating an empty magazine")
        ],
        tags: ["handgun", "components", "basics"]
    )

    // MARK: - Tier 2: Operational Competence

    static let lesson4 = Lesson(
        id: "fire_t2_01",
        categoryId: .firearms,
        tier: 2,
        lessonNumber: 1,
        title: "Ammunition Types and Selection",
        subtitle: "What goes in the chamber matters",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["fire_t1_03"],
        contentBlocks: [
            ContentBlock(id: "fire201_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Using the wrong ammunition can destroy your firearm and injure you.",
                "Different applications require different projectile types — target shooting, self-defense, and hunting all have different needs."
            ]),
            ContentBlock(id: "fire201_b2", type: .componentBreakdown, title: "Cartridge Anatomy", bullets: [
                "Case — Brass, steel, or aluminum shell that holds everything together.",
                "Primer — Impact-sensitive compound at the base. Ignites when struck by the firing pin.",
                "Powder — Propellant that burns rapidly to create expanding gas.",
                "Projectile (Bullet) — The part that leaves the barrel. Only this component travels to the target."
            ]),
            ContentBlock(id: "fire201_b3", type: .howItWorks, title: "Common Projectile Types", bullets: [
                "FMJ (Full Metal Jacket) — Copper-jacketed lead core. Standard for target practice. Penetrates but doesn't expand.",
                "JHP (Jacketed Hollow Point) — Expands on impact. Standard self-defense choice. Reduces over-penetration.",
                "Soft Point — Exposed lead tip that expands. Common for hunting.",
                "Frangible — Designed to break apart on impact. Used in training environments with steel targets."
            ]),
            ContentBlock(id: "fire201_b4", type: .failureModes, title: "Critical Mistakes", bullets: [
                "Loading wrong caliber ammunition — can cause catastrophic failure.",
                "Mixing ammunition types in the same magazine without understanding why.",
                "Using corroded or damaged ammunition.",
                "Ignoring grain weight when zeroing a firearm."
            ]),
            ContentBlock(id: "fire201_b5", type: .summary, title: "Summary", bullets: [
                "Know your cartridge: case, primer, powder, projectile.",
                "FMJ for practice, JHP for defense, soft point for hunting.",
                "Never use wrong-caliber ammunition. Ever."
            ])
        ],
        quiz: Quiz(id: "fire201_q", passPercent: 80, questions: [
            Question(id: "fire201_q1", prompt: "Match each ammunition type to its primary use.", matchingPairs: [
                MatchingPair(left: "FMJ (Full Metal Jacket)", right: "Target practice — penetrates without expanding"),
                MatchingPair(left: "JHP (Jacketed Hollow Point)", right: "Self-defense — expands on impact"),
                MatchingPair(left: "Soft Point", right: "Hunting — exposed lead tip expands"),
                MatchingPair(left: "Frangible", right: "Training on steel — breaks apart on impact")
            ], explanation: "Different projectile types are designed for different applications. Using the right type matters."),
            Question(id: "fire201_q2", type: .scenario, prompt: "You find ammunition labeled .40 S&W but your pistol is chambered in 9mm. You should:", choices: ["Try it — close enough in size", "Use it for practice only", "Never load it — wrong caliber causes catastrophic failure", "File the cartridge down to fit"], correctIndex: 2, explanation: "Wrong-caliber ammunition can cause the firearm to explode. Only use ammunition specifically matched to your firearm's chamber."),
            Question(id: "fire201_q3", prompt: "The component of a cartridge that ignites the propellant when struck by the firing pin is called the _____.", acceptedAnswers: ["primer", "the primer", "primers"], explanation: "The primer is the impact-sensitive compound at the base of a cartridge that ignites when struck by the firing pin."),
            Question(id: "fire201_q4", type: .multiSelect, prompt: "Which are components of a complete cartridge?", choices: ["Case", "Barrel", "Primer", "Powder (propellant)", "Projectile (bullet)", "Magazine spring"], correctIndices: [0, 2, 3, 4], explanation: "A cartridge has four components: case, primer, powder, and projectile. The barrel and magazine spring are parts of the firearm, not the ammunition.")
        ]),
        flashcards: [
            Flashcard(id: "fire201_f1", front: "Full Metal Jacket (FMJ)", back: "A bullet fully encased in a copper jacket — standard for target practice, penetrates without expanding"),
            Flashcard(id: "fire201_f2", front: "Jacketed Hollow Point (JHP)", back: "A bullet with a hollow cavity that expands on impact — standard self-defense ammunition"),
            Flashcard(id: "fire201_f3", front: "Grain Weight", back: "The unit of measurement for bullet weight — affects velocity, recoil, and trajectory"),
            Flashcard(id: "fire201_f4", front: "Primer", back: "The impact-sensitive compound at the base of a cartridge that ignites when struck by the firing pin")
        ],
        tags: ["ammunition", "caliber", "selection"]
    )

    static let lesson5 = Lesson(
        id: "fire_t2_02",
        categoryId: .firearms,
        tier: 2,
        lessonNumber: 2,
        title: "Cleaning and Maintenance",
        subtitle: "Reliability is earned through maintenance",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["fire_t2_01"],
        contentBlocks: [
            ContentBlock(id: "fire202_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "A dirty firearm is an unreliable firearm. Malfunctions are overwhelmingly caused by fouling and lack of lubrication.",
                "Cleaning is also inspection — you catch wear and damage before it becomes failure."
            ]),
            ContentBlock(id: "fire202_b2", type: .componentBreakdown, title: "Cleaning Kit Essentials", bullets: [
                "Bore brush and cleaning rod — matches caliber/gauge of your firearm.",
                "Patches and jag — for applying solvent and wiping the bore.",
                "Solvent — dissolves carbon fouling and copper deposits.",
                "Lubricant — reduces friction on moving parts. Different from solvent.",
                "Nylon brush — for scrubbing exterior parts without scratching."
            ]),
            ContentBlock(id: "fire202_b3", type: .howItWorks, title: "Basic Cleaning Process", bullets: [
                "Verify unloaded. Remove magazine. Lock slide/bolt open. Visual and physical chamber check.",
                "Field strip per manufacturer instructions — do not fully disassemble unless trained.",
                "Run solvent-soaked patches through the bore. Let soak 5-10 minutes.",
                "Scrub bore with bore brush. Run clean patches until they come out clean.",
                "Wipe down all accessible surfaces. Remove carbon buildup on slide rails, breech face, and feed ramp.",
                "Apply light lubricant to friction points specified in your owner's manual.",
                "Reassemble. Function check."
            ]),
            ContentBlock(id: "fire202_b4", type: .summary, title: "Summary", bullets: [
                "Clean after every range session. Lubricate friction points lightly.",
                "Always verify unloaded before disassembly.",
                "Cleaning is maintenance AND inspection."
            ])
        ],
        quiz: Quiz(id: "fire202_q", passPercent: 80, questions: [
            Question(id: "fire202_q1", type: .scenario, prompt: "You're about to clean your pistol after a range session. The absolute first step before touching any tools is:", choices: ["Gather cleaning supplies", "Remove the magazine", "Verify unloaded — magazine out, chamber clear, visual check", "Apply solvent to the bore"], correctIndex: 2, explanation: "Safety first — always verify the firearm is completely unloaded before any cleaning or disassembly."),
            Question(id: "fire202_q2", prompt: "Most firearm malfunctions are caused by _____ and lack of lubrication.", acceptedAnswers: ["fouling", "carbon fouling", "carbon buildup", "dirt", "carbon"], explanation: "Carbon fouling buildup is the primary cause of reliability issues in firearms."),
            Question(id: "fire202_q3", prompt: "Match each cleaning product to its purpose.", matchingPairs: [
                MatchingPair(left: "Solvent", right: "Dissolves carbon fouling and copper deposits"),
                MatchingPair(left: "Lubricant", right: "Reduces friction on moving parts"),
                MatchingPair(left: "Bore brush", right: "Scrubs inside the barrel"),
                MatchingPair(left: "Nylon brush", right: "Cleans exterior parts without scratching")
            ], explanation: "Each cleaning tool and product serves a specific purpose. Solvent and lubricant are NOT the same thing."),
            Question(id: "fire202_q4", type: .multiSelect, prompt: "Which are part of a proper cleaning process?", choices: ["Run solvent-soaked patches through the bore", "Fully disassemble without training", "Wipe down slide rails and feed ramp", "Apply lubricant to friction points", "Skip function check after reassembly"], correctIndices: [0, 2, 3], explanation: "Proper cleaning includes solvent patches, wiping key surfaces, and light lubrication. Never fully disassemble without training, and always function check after reassembly.")
        ]),
        flashcards: [
            Flashcard(id: "fire202_f1", front: "Field Strip", back: "Basic disassembly of a firearm for cleaning — does not require specialized tools or full disassembly"),
            Flashcard(id: "fire202_f2", front: "Bore Brush", back: "A caliber-specific brush used to scrub the inside of the barrel and remove fouling"),
            Flashcard(id: "fire202_f3", front: "Feed Ramp", back: "The angled surface that guides cartridges from the magazine into the chamber — must be clean for reliable feeding"),
            Flashcard(id: "fire202_f4", front: "Function Check", back: "Testing the mechanical operation of a firearm after cleaning or reassembly to verify correct assembly")
        ],
        tags: ["maintenance", "cleaning", "reliability"]
    )

    static let lesson6 = Lesson(
        id: "fire_t2_03",
        categoryId: .firearms,
        tier: 2,
        lessonNumber: 3,
        title: "Safe Storage and Transport",
        subtitle: "Securing firearms when not in use",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["fire_t2_01"],
        contentBlocks: [
            ContentBlock(id: "fire203_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Safe storage prevents unauthorized access — especially by children.",
                "Transport laws vary by state and violating them can result in felony charges.",
                "A firearm that isn't properly secured is a liability, not an asset."
            ]),
            ContentBlock(id: "fire203_b2", type: .componentBreakdown, title: "Storage Options", bullets: [
                "Gun safe — Best option. Fire-rated, bolted to floor/wall. Stores firearms and ammunition.",
                "Lock box — Compact, quick-access options for bedside or vehicle. Combination or biometric.",
                "Cable lock — Threads through the action to prevent loading/firing. Free from most manufacturers.",
                "Trigger lock — Blocks the trigger. Low-cost barrier but less secure than other options."
            ]),
            ContentBlock(id: "fire203_b3", type: .howItWorks, title: "Transport Basics", bullets: [
                "Federal law (FOPA safe passage) — unloaded, in a locked container, separate from ammunition during interstate transport.",
                "State laws vary significantly — what's legal in one state may be a felony in another.",
                "Always research destination and transit state laws before traveling with firearms.",
                "Airline transport: unloaded, in a hard-sided locked case, declared at check-in."
            ]),
            ContentBlock(id: "fire203_b4", type: .summary, title: "Summary", bullets: [
                "A gun safe is the gold standard for home storage.",
                "Know your state's transport laws before moving firearms.",
                "Unauthorized access prevention is your responsibility."
            ])
        ],
        quiz: Quiz(id: "fire203_q", passPercent: 80, questions: [
            Question(id: "fire203_q1", prompt: "Match each storage option to its security level.", matchingPairs: [
                MatchingPair(left: "Gun safe (bolted)", right: "Highest security — fire-rated, theft-resistant"),
                MatchingPair(left: "Lock box", right: "Quick-access, moderate security"),
                MatchingPair(left: "Cable lock", right: "Prevents loading/firing, low-cost barrier"),
                MatchingPair(left: "Trigger lock", right: "Blocks trigger only, least secure option")
            ], explanation: "Different storage solutions offer different levels of security. A bolted gun safe is the gold standard."),
            Question(id: "fire203_q2", type: .scenario, prompt: "You're driving through three states to visit family, with a legally-owned firearm. Before departing you should:", choices: ["Just follow federal law — it overrides everything", "Research the specific transport laws of every state you'll pass through", "Leave the firearm at home to be safe", "Call each state's governor's office"], correctIndex: 1, explanation: "State laws vary dramatically. FOPA provides some safe passage protection but is not always enforced uniformly."),
            Question(id: "fire203_q3", type: .multiSelect, prompt: "Under FOPA safe passage, which conditions must be met for interstate transport?", choices: ["Firearm must be unloaded", "Stored in a locked container", "Ammunition stored separately from firearm", "Concealed carry permit required", "Legal to possess at origin and destination"], correctIndices: [0, 1, 2, 4], explanation: "FOPA requires unloaded, locked container, separate ammo, and legal possession at both origin and destination. No carry permit is required for transport."),
            Question(id: "fire203_q4", prompt: "A cable lock prevents a firearm from being loaded and fired by threading through the _____.", acceptedAnswers: ["action", "the action", "chamber", "receiver", "barrel"], explanation: "A cable lock threads through the action, physically preventing the firearm from being loaded or fired.")
        ]),
        flashcards: [
            Flashcard(id: "fire203_f1", front: "FOPA (Firearms Owners' Protection Act)", back: "Federal law providing safe passage for legal transport of firearms through states — requires unloaded, locked, separated from ammo"),
            Flashcard(id: "fire203_f2", front: "Cable Lock", back: "A locking device that threads through the firearm's action, preventing loading and firing"),
            Flashcard(id: "fire203_f3", front: "Gun Safe", back: "A secure, fire-rated storage container for firearms — best practice for home storage, should be bolted to structure")
        ],
        tags: ["storage", "transport", "legal"]
    )

    // MARK: - Tier 3: Diagnostic Thinking

    static let lesson7 = Lesson(
        id: "fire_t3_01",
        categoryId: .firearms,
        tier: 3,
        lessonNumber: 1,
        title: "Malfunction Diagnosis",
        subtitle: "Misfire, hangfire, squib — know the difference",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["fire_t2_03"],
        contentBlocks: [
            ContentBlock(id: "fire301_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Malfunctions happen. How you respond determines whether it stays an inconvenience or becomes a catastrophe.",
                "A squib load followed by another trigger pull can destroy the firearm and injure the shooter."
            ]),
            ContentBlock(id: "fire301_b2", type: .componentBreakdown, title: "The Three Critical Malfunctions", bullets: [
                "Misfire — Trigger pulled, firing pin strikes, nothing happens. The round did not fire.",
                "Hangfire — A delayed ignition. The round fires after a noticeable delay (could be milliseconds to seconds).",
                "Squib Load — Partial ignition. The bullet leaves the case but lodges in the barrel. Extremely dangerous."
            ]),
            ContentBlock(id: "fire301_b3", type: .howItWorks, title: "Response Protocol", bullets: [
                "Misfire: Keep the muzzle pointed downrange. Wait 30 seconds (could be hangfire). Then eject the round safely.",
                "Hangfire: Same as misfire protocol — the wait period is the critical difference. Do not open the action immediately.",
                "Squib: STOP IMMEDIATELY. If you hear a pop instead of a bang, or feel reduced recoil, do NOT fire again. Clear the firearm, inspect the bore for an obstruction."
            ]),
            ContentBlock(id: "fire301_b4", type: .failureModes, title: "Why Squibs Are Catastrophic", bullets: [
                "A bullet stuck in the barrel creates a complete obstruction.",
                "Firing another round into that obstruction causes a barrel explosion.",
                "The key indicator: reduced recoil and a different sound (pop instead of bang)."
            ]),
            ContentBlock(id: "fire301_b5", type: .summary, title: "Summary", bullets: [
                "Misfire = no bang. Hangfire = delayed bang. Squib = weak pop with bullet stuck in barrel.",
                "For misfire/hangfire: wait 30 seconds, muzzle downrange.",
                "For squib: STOP. Do not fire again. Inspect the bore."
            ])
        ],
        quiz: Quiz(id: "fire301_q", passPercent: 80, questions: [
            Question(id: "fire301_q1", prompt: "Match each malfunction to its definition.", matchingPairs: [
                MatchingPair(left: "Misfire", right: "Trigger pulled, firing pin strikes, nothing happens"),
                MatchingPair(left: "Hangfire", right: "Delayed ignition — round fires after a pause"),
                MatchingPair(left: "Squib Load", right: "Partial ignition — bullet lodges in barrel")
            ], explanation: "These three malfunctions require different responses. Confusing them can be catastrophic."),
            Question(id: "fire301_q2", type: .scenario, prompt: "You fire and hear a quiet 'pop' instead of a normal bang, with noticeably less recoil. Your immediate action should be:", choices: ["Fire again to clear it", "Tap-rack-bang drill", "Stop immediately — inspect the bore for a lodged bullet", "Wait 30 seconds then continue"], correctIndex: 2, explanation: "A pop with reduced recoil is the classic squib indicator. Stop immediately. Firing another round into an obstructed barrel causes catastrophic failure."),
            Question(id: "fire301_q3", prompt: "After a suspected misfire, keep the muzzle pointed downrange and wait at least _____ seconds.", acceptedAnswers: ["30", "thirty", "30 seconds", "thirty seconds"], explanation: "Wait 30 seconds — it could be a hangfire with delayed ignition. Opening the action too early with a hangfire is extremely dangerous."),
            Question(id: "fire301_q4", type: .multiSelect, prompt: "Which are indicators of a possible squib load?", choices: ["Quieter sound than normal (pop vs bang)", "Reduced or absent recoil", "Loud explosion", "Slide fails to cycle fully", "Normal recoil with a click"], correctIndices: [0, 1, 3], explanation: "A squib produces a quiet pop, reduced recoil, and may prevent the slide from cycling. Any of these should trigger an immediate stop.")
        ]),
        flashcards: [
            Flashcard(id: "fire301_f1", front: "Misfire", back: "Trigger pulled, firing pin strikes, no ignition occurs — the round fails to fire"),
            Flashcard(id: "fire301_f2", front: "Hangfire", back: "A delayed ignition — there is a perceptible delay between the trigger pull and the round firing"),
            Flashcard(id: "fire301_f3", front: "Squib Load", back: "A round with insufficient propellant that lodges the bullet in the barrel — extremely dangerous if followed by another shot"),
            Flashcard(id: "fire301_f4", front: "Tap-Rack-Bang", back: "A clearing drill for semi-auto pistols: tap the magazine, rack the slide, reassess — NOT used for squib loads")
        ],
        tags: ["malfunction", "diagnosis", "safety"]
    )

    static let lesson8 = Lesson(
        id: "fire_t3_02",
        categoryId: .firearms,
        tier: 3,
        lessonNumber: 2,
        title: "Legal Framework Overview",
        subtitle: "Federal, state, and the lines between them",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fire_t3_01"],
        contentBlocks: [
            ContentBlock(id: "fire302_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Ignorance of firearms law is not a defense. The legal landscape is complex and varies dramatically by jurisdiction.",
                "What is perfectly legal in one state may be a felony in the next."
            ]),
            ContentBlock(id: "fire302_b2", type: .systemOverview, title: "Federal Law Basics", bullets: [
                "GCA (Gun Control Act 1968) — Establishes the FFL system, prohibited persons categories, and interstate commerce rules.",
                "NFA (National Firearms Act 1934) — Regulates short-barreled rifles/shotguns, suppressors, machine guns, and destructive devices.",
                "Brady Act (1993) — Established the NICS background check system for commercial sales.",
                "FOPA (1986) — Safe passage provision, machine gun registry closure."
            ]),
            ContentBlock(id: "fire302_b3", type: .howItWorks, title: "State Law Variations", bullets: [
                "Permit requirements — Some states require permits to purchase; others don't.",
                "Carry laws — Constitutional carry (no permit), shall-issue, may-issue, or no-issue.",
                "Magazine capacity restrictions — Some states limit magazine size.",
                "Assault weapon bans — A handful of states restrict certain semi-automatic features.",
                "Red flag laws — Some states allow temporary firearm removal orders."
            ]),
            ContentBlock(id: "fire302_b4", type: .ownerActions, title: "Owner Actions", bullets: [
                "Know your state's specific laws — do not rely on general internet advice.",
                "If you travel with firearms, research every state you will pass through.",
                "Keep purchase records and documentation.",
                "Consult a firearms attorney for complex situations."
            ]),
            ContentBlock(id: "fire302_b5", type: .summary, title: "Summary", bullets: [
                "Federal law sets the floor. State law can be more restrictive.",
                "Know the GCA, NFA, and your state's specific regulations.",
                "Legal competence is non-negotiable for responsible ownership."
            ])
        ],
        quiz: Quiz(id: "fire302_q", passPercent: 80, questions: [
            Question(id: "fire302_q1", prompt: "Match each federal law to what it established.", matchingPairs: [
                MatchingPair(left: "GCA (1968)", right: "FFL system and prohibited persons"),
                MatchingPair(left: "NFA (1934)", right: "Regulates SBRs, suppressors, machine guns"),
                MatchingPair(left: "Brady Act (1993)", right: "NICS background check system"),
                MatchingPair(left: "FOPA (1986)", right: "Safe passage and machine gun registry closure")
            ], explanation: "Four major federal firearms laws form the regulatory framework every owner should understand."),
            Question(id: "fire302_q2", type: .scenario, prompt: "You're relocating to a new state. Regarding your firearms, you should:", choices: ["Assume the same laws apply everywhere", "Research the new state's specific purchase, possession, carry, and storage laws", "Only check if you plan to buy new firearms", "Federal law is all that matters"], correctIndex: 1, explanation: "State laws vary dramatically. What's legal in one state may be a felony in another. Research before relocating."),
            Question(id: "fire302_q3", type: .multiSelect, prompt: "Which items does the NFA specifically regulate?", choices: ["Standard semi-automatic pistols", "Short-barreled rifles", "Suppressors", "Hunting shotguns", "Machine guns", "Destructive devices"], correctIndices: [1, 2, 4, 5], explanation: "The NFA regulates SBRs, SBSs, suppressors, machine guns, and destructive devices — not standard pistols or hunting shotguns."),
            Question(id: "fire302_q4", prompt: "'Constitutional carry' means a state allows lawful carry without requiring a _____.", acceptedAnswers: ["permit", "license", "government permit", "carry permit", "concealed carry permit"], explanation: "Constitutional carry states allow lawful firearm carry without requiring any government-issued permit or license.")
        ]),
        flashcards: [
            Flashcard(id: "fire302_f1", front: "GCA (Gun Control Act 1968)", back: "Federal law establishing the FFL system, prohibited persons categories, and interstate firearms commerce rules"),
            Flashcard(id: "fire302_f2", front: "NFA (National Firearms Act 1934)", back: "Federal law regulating short-barreled weapons, suppressors, machine guns, and destructive devices through registration and tax stamps"),
            Flashcard(id: "fire302_f3", front: "NICS", back: "National Instant Criminal Background Check System — used for background checks on commercial firearm purchases"),
            Flashcard(id: "fire302_f4", front: "Constitutional Carry", back: "State law allowing lawful carry of a firearm without requiring a government-issued permit")
        ],
        tags: ["legal", "federal", "state law"]
    )
}
