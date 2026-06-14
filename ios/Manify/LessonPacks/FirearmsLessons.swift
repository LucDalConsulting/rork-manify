import Foundation

enum FirearmsLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12,
        lesson13, lesson14, lesson15, lesson16
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "fire_t1_01",
        categoryId: .firearms,
        tier: 1,
        lessonNumber: 1,
        title: "The 4 Universal Safety Rules",
        subtitle: "The foundation everything else stands on",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "fire101_b1", type: .whyMatters, title: "Why These Rules Come First", bullets: [
                "Nearly every negligent discharge on record traces back to violating at least one of these four rules.",
                "They are not suggestions or preferences -- they are a layered system, and the layers cover each other.",
                "Knowing these cold, automatically, is the first real marker of firearm competence."
            ], body: "A responsible firearm owner follows these rules every single time, with every firearm, loaded or not, indoors or out. There are no exceptions and no days off.", callouts: ["This lesson is education, not a substitute for hands-on training with a certified instructor."]),
            ContentBlock(id: "fire101_b2", type: .principles, title: "The Four Rules", bullets: [
                "1. Treat every firearm as if it is loaded -- always.",
                "2. Never point the muzzle at anything you are not willing to destroy.",
                "3. Keep your finger off the trigger until your sights are on target and you have decided to fire.",
                "4. Be sure of your target and what is beyond it."
            ], callouts: ["Memorize these word for word before handling any firearm."]),
            ContentBlock(id: "fire101_b3", type: .howItWorks, title: "How the Layers Back Each Other Up", bullets: [
                "Each rule is a backup for the others, so a single mistake should not be enough to hurt anyone.",
                "Break Rule 1 (it was loaded) but follow Rules 2, 3, and 4 -- no one gets hurt.",
                "Break Rule 3 (finger slips) but follow Rule 2 -- the round goes into a safe direction.",
                "Negligent discharges that injure someone almost always require breaking two or more rules at once."
            ]),
            ContentBlock(id: "fire101_b4", type: .commonMistakes, title: "How People Actually Break Them", bullets: [
                "Assuming a firearm is unloaded because someone said so, without checking the chamber yourself.",
                "Flagging (sweeping the muzzle across) other people while handling, holstering, or showing off a gun.",
                "Resting a finger on the trigger while talking, walking, or looking around.",
                "Taking a shot without knowing what is behind or beside the target -- bullets travel far and pass through walls."
            ]),
            ContentBlock(id: "fire101_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Always loaded. Muzzle discipline. Trigger discipline. Know your target and beyond.",
                "These four are the price of entry to everything else in this category.",
                "When in doubt, default to the safest interpretation of each rule."
            ])
        ],
        quiz: Quiz(id: "fire101_q", passPercent: 80, questions: [
            Question(id: "fire101_q1", prompt: "Match each safety rule to its description.", matchingPairs: [
                MatchingPair(left: "Rule 1", right: "Treat every firearm as loaded"),
                MatchingPair(left: "Rule 2", right: "Never point at anything you won't destroy"),
                MatchingPair(left: "Rule 3", right: "Finger off trigger until ready to fire"),
                MatchingPair(left: "Rule 4", right: "Know your target and what's beyond it")
            ], explanation: "The four universal safety rules are layered -- each one backs up the others so a single error should not cause harm."),
            Question(id: "fire101_q2", type: .scenario, prompt: "Someone hands you a firearm and says 'Don't worry, it's unloaded.' You should:", choices: ["Trust them -- they just checked", "Point it in a safe direction and verify the chamber yourself", "Hand it back immediately", "Set it down without touching the action"], correctIndex: 1, explanation: "Rule 1 always applies. You personally verify the condition of any firearm handed to you, regardless of what anyone tells you."),
            Question(id: "fire101_q3", prompt: "Be sure of your target and what is ____ it.", acceptedAnswers: ["beyond", "behind", "past"], explanation: "Rule 4: be sure of your target and what is beyond it. Bullets can miss, pass through, or ricochet."),
            Question(id: "fire101_q4", type: .multiSelect, prompt: "Which of these scenarios violate one or more of the four rules?", choices: ["Resting a finger on the trigger while talking", "Assuming a gun is unloaded without checking", "Keeping the muzzle pointed downrange", "Shooting at a target with an unknown backstop", "Verifying the chamber is clear before handling"], correctIndices: [0, 1, 3], explanation: "Finger on the trigger violates Rule 3, assuming unloaded violates Rule 1, and an unknown backstop violates Rule 4. The other two are correct practice."),
            Question(id: "fire101_q5", type: .multipleChoice, prompt: "Negligent discharges that injure someone almost always involve:", choices: ["Equipment malfunction", "Exactly one rule broken", "Lack of a certification card", "Breaking two or more rules at the same time"], correctIndex: 3, explanation: "The rules are redundant by design. Because each backs up the others, injuries almost always require violating multiple rules simultaneously.")
        ]),
        flashcards: [
            Flashcard(id: "fire101_f1", front: "Muzzle Discipline", back: "Always keeping the muzzle pointed in a safe direction, away from anything you are not willing to destroy"),
            Flashcard(id: "fire101_f2", front: "Trigger Discipline", back: "Keeping your finger off the trigger and outside the trigger guard until your sights are on target and you have decided to fire"),
            Flashcard(id: "fire101_f3", front: "Negligent Discharge", back: "An unintended firing of a weapon caused by a handling error, not by mechanical failure"),
            Flashcard(id: "fire101_f4", front: "Flagging", back: "Pointing the muzzle at a person unintentionally -- a serious violation of Rule 2")
        ],
        tags: ["safety", "fundamentals"]
    )

    static let lesson2 = Lesson(
        id: "fire_t1_02",
        categoryId: .firearms,
        tier: 1,
        lessonNumber: 2,
        title: "How a Firearm Works",
        subtitle: "The firing cycle, from trigger to target",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["fire_t1_01"],
        contentBlocks: [
            ContentBlock(id: "fire102_b1", type: .whyMatters, title: "Why Understanding the Mechanism Matters", bullets: [
                "You cannot operate, maintain, or troubleshoot a tool you do not understand.",
                "Knowing the firing sequence makes malfunctions and safety procedures intuitive rather than memorized.",
                "Respect grows with understanding -- a firearm is a precision pressure vessel, not magic."
            ]),
            ContentBlock(id: "fire102_b2", type: .stepByStep, title: "The Firing Cycle", bullets: [
                "1. Feeding -- a cartridge is moved from the magazine into the chamber.",
                "2. Chambering -- the round seats fully in the chamber, ready to fire.",
                "3. Locking -- the action closes and seals the chamber to contain pressure.",
                "4. Firing -- the trigger releases the firing pin, which strikes the primer and ignites the powder.",
                "5. Unlocking -- the action opens after the bullet has left the barrel.",
                "6. Extraction -- the extractor pulls the spent case out of the chamber.",
                "7. Ejection -- the case is thrown clear, and the cycle repeats with the next round."
            ], body: "On a semi-automatic, energy from the fired round drives steps 5 through 7 and re-feeds the next cartridge automatically. On a manual action you perform some of these steps by hand."),
            ContentBlock(id: "fire102_b3", type: .keyTerms, title: "What Happens Inside the Chamber", bullets: [
                "The primer is a tiny impact-sensitive charge; the firing pin strikes it to start ignition.",
                "Burning powder produces rapidly expanding gas, building tens of thousands of pounds of pressure per square inch.",
                "That pressure pushes the bullet down the barrel; rifling spins it for stability.",
                "The case expands to seal the chamber, then contracts slightly so it can be extracted."
            ], callouts: ["This is why ammunition and chamber must match exactly -- pressure has nowhere safe to go if they do not."]),
            ContentBlock(id: "fire102_b4", type: .componentBreakdown, title: "Major Action Types", bullets: [
                "Semi-automatic -- one shot per trigger pull; recoil or gas cycles the action automatically.",
                "Bolt action -- you manually cycle a bolt to load and eject; common in precision rifles.",
                "Pump action -- you slide a forend to cycle; common in shotguns.",
                "Revolver -- rounds sit in a rotating cylinder rather than a magazine.",
                "Lever action -- a lever under the grip cycles the action."
            ]),
            ContentBlock(id: "fire102_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Feed, chamber, lock, fire, unlock, extract, eject -- the seven-step cycle.",
                "Firing pin hits primer, primer ignites powder, gas pressure drives the bullet.",
                "Action type just describes how those steps get performed -- by hand or automatically."
            ])
        ],
        quiz: Quiz(id: "fire102_q", passPercent: 80, questions: [
            Question(id: "fire102_q1", prompt: "Match each step of the firing cycle to what happens.", matchingPairs: [
                MatchingPair(left: "Chambering", right: "Round seats fully in the chamber"),
                MatchingPair(left: "Firing", right: "Firing pin strikes the primer"),
                MatchingPair(left: "Extraction", right: "Spent case is pulled from the chamber"),
                MatchingPair(left: "Ejection", right: "Spent case is thrown clear of the firearm")
            ], explanation: "The firing cycle proceeds in order: feed, chamber, lock, fire, unlock, extract, eject."),
            Question(id: "fire102_q2", prompt: "When the trigger releases the firing pin, the pin strikes the ____ to begin ignition.", acceptedAnswers: ["primer", "the primer", "primers"], explanation: "The firing pin strikes the primer, an impact-sensitive charge that ignites the main powder."),
            Question(id: "fire102_q3", type: .scenario, prompt: "On a semi-automatic pistol, what cycles the action and chambers the next round after a shot?", choices: ["You manually rack it every time", "Energy from the fired round (recoil or gas)", "A battery-powered motor", "The magazine spring alone"], correctIndex: 1, explanation: "A semi-automatic uses energy from the fired cartridge to unlock, extract, eject, and feed the next round -- one shot per trigger pull."),
            Question(id: "fire102_q4", type: .multiSelect, prompt: "Which of these are recognized firearm action types?", choices: ["Bolt action", "Pump action", "Lever action", "Hydraulic action", "Revolver"], correctIndices: [0, 1, 2, 4], explanation: "Bolt, pump, lever, semi-automatic, and revolver are real action types. 'Hydraulic action' is not."),
            Question(id: "fire102_q5", type: .multipleChoice, prompt: "Why must the chamber seal (lock) before firing?", choices: ["To make the gun quieter", "To contain the very high gas pressure safely", "To improve the trigger pull", "To load the magazine"], correctIndex: 1, explanation: "Firing produces tens of thousands of psi. The locked, sealed chamber contains that pressure so it drives the bullet rather than the action.")
        ]),
        flashcards: [
            Flashcard(id: "fire102_f1", front: "Firing Cycle", back: "The repeating sequence: feed, chamber, lock, fire, unlock, extract, eject"),
            Flashcard(id: "fire102_f2", front: "Primer", back: "The impact-sensitive charge at the base of a cartridge that ignites the main powder when struck by the firing pin"),
            Flashcard(id: "fire102_f3", front: "Semi-Automatic", back: "An action that fires one round per trigger pull and uses the fired round's energy to load the next"),
            Flashcard(id: "fire102_f4", front: "Extractor", back: "The part that grips and pulls the spent case out of the chamber during the cycle")
        ],
        tags: ["mechanics", "firing cycle", "basics"]
    )

    static let lesson3 = Lesson(
        id: "fire_t1_03",
        categoryId: .firearms,
        tier: 1,
        lessonNumber: 3,
        title: "The Three Main Types",
        subtitle: "Handgun, rifle, and shotgun",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["fire_t1_02"],
        contentBlocks: [
            ContentBlock(id: "fire103_b1", type: .whyMatters, title: "Why Categories Come First", bullets: [
                "Before understanding any specific firearm, you need the three major families and what sets them apart.",
                "Each type exists for different purposes and operates on different design principles.",
                "Buying, training, and legal questions all start with which category you are dealing with."
            ]),
            ContentBlock(id: "fire103_b2", type: .componentBreakdown, title: "The Three Categories", bullets: [
                "Handgun -- short-barreled, designed to be fired with one or two hands. Compact and portable. Common for self-defense and concealed carry.",
                "Rifle -- long barrel with rifling, fired from the shoulder. Highest accuracy and range. Used for hunting, sport, and defense.",
                "Shotgun -- typically smooth bore, fires multiple pellets (shot) or a single slug. Versatile for hunting, home defense, and clay sports."
            ]),
            ContentBlock(id: "fire103_b3", type: .keyTerms, title: "Key Distinctions", bullets: [
                "Barrel length affects accuracy, velocity, and even legal classification.",
                "Rifling (spiral grooves) spins the projectile for accuracy -- present in handguns and rifles, absent in most shotguns.",
                "Caliber measures handgun and rifle bore; gauge measures shotgun bore -- two different systems.",
                "Action type (how it loads and cycles) varies within every category."
            ]),
            ContentBlock(id: "fire103_b4", type: .realWorld, title: "Choosing by Purpose", bullets: [
                "Close-range, portable, concealable -- a handgun fits the role.",
                "Distance, precision, or hunting medium-to-large game -- a rifle is the tool.",
                "Bird hunting, clay sports, or close-range home defense -- a shotgun excels.",
                "There is no single 'best' firearm; the right one depends entirely on the job."
            ]),
            ContentBlock(id: "fire103_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Three families: handgun, rifle, shotgun.",
                "Each is optimized for a different range, portability, and application.",
                "Identifying the category is step one to understanding any specific gun."
            ])
        ],
        quiz: Quiz(id: "fire103_q", passPercent: 80, questions: [
            Question(id: "fire103_q1", prompt: "Match each firearm type to its defining characteristic.", matchingPairs: [
                MatchingPair(left: "Handgun", right: "Compact, fired with one or two hands"),
                MatchingPair(left: "Rifle", right: "Long rifled barrel, fired from the shoulder"),
                MatchingPair(left: "Shotgun", right: "Fires multiple pellets or a single slug")
            ], explanation: "Each type is optimized for different range, portability, and use."),
            Question(id: "fire103_q2", prompt: "The spiral grooves inside a barrel that spin the bullet are called ____.", acceptedAnswers: ["rifling", "rifle grooves", "grooves"], explanation: "Rifling -- spiral grooves in the barrel -- spins the bullet for stability. It is where the word 'rifle' comes from."),
            Question(id: "fire103_q3", type: .scenario, prompt: "You are buying ammunition and see both 'caliber' and 'gauge' on the shelf. Gauge is the measurement system for:", choices: ["Handguns", "Rifles", "Shotguns", "All firearms"], correctIndex: 2, explanation: "Shotguns use gauge (for example 12 or 20 gauge). Rifles and handguns use caliber."),
            Question(id: "fire103_q4", type: .multiSelect, prompt: "Which statements about rifling are correct?", choices: ["Present in handguns and rifles", "Spins the bullet for stability", "Present in most shotguns", "Improves accuracy at distance", "Only found on military firearms"], correctIndices: [0, 1, 3], explanation: "Rifling is in handguns and rifles (not most shotguns), spins the bullet, and improves accuracy. It is not exclusive to military firearms.")
        ]),
        flashcards: [
            Flashcard(id: "fire103_f1", front: "Rifling", back: "Spiral grooves inside a barrel that spin the projectile for stability and accuracy"),
            Flashcard(id: "fire103_f2", front: "Caliber", back: "The internal bore diameter used to classify handguns and rifles"),
            Flashcard(id: "fire103_f3", front: "Gauge", back: "The measurement system for shotgun bore diameter -- a lower number means a larger bore"),
            Flashcard(id: "fire103_f4", front: "Smooth Bore", back: "A barrel without rifling, typical of shotguns firing shot")
        ],
        tags: ["types", "basics"]
    )

    static let lesson4 = Lesson(
        id: "fire_t1_04",
        categoryId: .firearms,
        tier: 1,
        lessonNumber: 4,
        title: "Ammunition Basics",
        subtitle: "Cartridge anatomy and projectile types",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["fire_t1_03"],
        contentBlocks: [
            ContentBlock(id: "fire104_b1", type: .whyMatters, title: "Why Ammunition Knowledge Matters", bullets: [
                "Using the wrong ammunition can destroy your firearm and seriously injure you.",
                "Different jobs -- practice, defense, hunting -- call for different projectile types.",
                "Cartridge literacy is what lets you buy, store, and use ammo correctly."
            ], callouts: ["Only ever load ammunition that exactly matches the caliber or gauge stamped on your firearm."]),
            ContentBlock(id: "fire104_b2", type: .componentBreakdown, title: "Cartridge Anatomy", bullets: [
                "Case -- the brass, steel, or aluminum shell that holds everything together.",
                "Primer -- the impact-sensitive charge at the base; ignites when the firing pin strikes it.",
                "Powder -- the propellant that burns rapidly to create expanding gas.",
                "Projectile (bullet) -- the only part that leaves the barrel and travels to the target."
            ]),
            ContentBlock(id: "fire104_b3", type: .keyTerms, title: "Common Projectile Types", bullets: [
                "FMJ (Full Metal Jacket) -- copper-jacketed lead, standard for target practice; penetrates without expanding.",
                "JHP (Jacketed Hollow Point) -- expands on impact; common self-defense choice that reduces over-penetration.",
                "Soft Point -- exposed lead tip that expands; common for hunting.",
                "Frangible -- designed to break apart on impact; used for steel-target training."
            ]),
            ContentBlock(id: "fire104_b4", type: .commonMistakes, title: "Critical Mistakes to Avoid", bullets: [
                "Loading the wrong caliber -- even a close size can cause catastrophic failure.",
                "Mixing ammunition types in a magazine without understanding the consequences.",
                "Using corroded, dented, or improperly stored ammunition.",
                "Ignoring grain weight, which changes recoil, velocity, and point of impact."
            ], callouts: ["When in doubt about a round, set it aside. Cheap ammo is never worth a destroyed gun or an injury."]),
            ContentBlock(id: "fire104_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Four parts: case, primer, powder, projectile.",
                "FMJ for practice, JHP for defense, soft point for hunting.",
                "Match the caliber or gauge exactly -- no exceptions, ever."
            ])
        ],
        quiz: Quiz(id: "fire104_q", passPercent: 80, questions: [
            Question(id: "fire104_q1", prompt: "Match each ammunition type to its primary use.", matchingPairs: [
                MatchingPair(left: "FMJ", right: "Target practice -- penetrates without expanding"),
                MatchingPair(left: "JHP", right: "Self-defense -- expands on impact"),
                MatchingPair(left: "Soft Point", right: "Hunting -- exposed lead tip expands"),
                MatchingPair(left: "Frangible", right: "Steel-target training -- breaks apart on impact")
            ], explanation: "Each projectile type is designed for a different application; matching the right one to the job matters."),
            Question(id: "fire104_q2", type: .scenario, prompt: "You find a box labeled .40 S&W, but your pistol is chambered in 9mm. You should:", choices: ["Try it -- it is close enough", "Use it only for practice", "Never load it -- wrong caliber can cause catastrophic failure", "File the round down to fit"], correctIndex: 2, explanation: "Wrong-caliber ammunition can cause the firearm to fail catastrophically. Only use ammunition that matches your chamber exactly."),
            Question(id: "fire104_q3", prompt: "The component of a cartridge that ignites the propellant when struck is the ____.", acceptedAnswers: ["primer", "the primer", "primers"], explanation: "The primer is the impact-sensitive charge at the base of the cartridge that ignites when the firing pin strikes it."),
            Question(id: "fire104_q4", type: .multiSelect, prompt: "Which of these are components of a complete cartridge?", choices: ["Case", "Barrel", "Primer", "Powder", "Projectile", "Magazine spring"], correctIndices: [0, 2, 3, 4], explanation: "A cartridge has four parts: case, primer, powder, and projectile. The barrel and magazine spring belong to the firearm, not the ammunition.")
        ]),
        flashcards: [
            Flashcard(id: "fire104_f1", front: "Full Metal Jacket (FMJ)", back: "A bullet fully encased in copper -- standard target ammo that penetrates without expanding"),
            Flashcard(id: "fire104_f2", front: "Jacketed Hollow Point (JHP)", back: "A bullet with a hollow cavity that expands on impact -- common self-defense ammunition"),
            Flashcard(id: "fire104_f3", front: "Grain Weight", back: "The unit of measure for bullet weight; affects velocity, recoil, and point of impact"),
            Flashcard(id: "fire104_f4", front: "Cartridge", back: "A complete round of ammunition: case, primer, powder, and projectile assembled together")
        ],
        tags: ["ammunition", "caliber", "basics"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "fire_t2_01",
        categoryId: .firearms,
        tier: 2,
        lessonNumber: 1,
        title: "Safe Storage and Kids",
        subtitle: "Securing firearms and preventing access",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["fire_t1_04"],
        contentBlocks: [
            ContentBlock(id: "fire201_b1", type: .whyMatters, title: "Why Storage Is a Responsibility", bullets: [
                "Safe storage prevents unauthorized access, theft, and tragic accidents -- especially involving children.",
                "An unsecured firearm is a liability that can end in a death, a lawsuit, or a felony.",
                "Most states impose some legal duty around access by minors; many have child-access-prevention laws."
            ], callouts: ["Laws on storage and child access vary by state. Confirm your local requirements -- this is education, not legal advice."]),
            ContentBlock(id: "fire201_b2", type: .componentBreakdown, title: "Storage Options Ranked", bullets: [
                "Gun safe -- the gold standard. Fire-rated, bolted to floor or wall, defeats theft and curiosity alike.",
                "Lock box -- compact quick-access unit (combination or biometric) for bedside or vehicle.",
                "Cable lock -- threads through the action to physically block loading and firing; free from most makers.",
                "Trigger lock -- blocks the trigger; a low-cost barrier but the least secure option."
            ]),
            ContentBlock(id: "fire201_b3", type: .safety, title: "Storage and Children", bullets: [
                "Store firearms unloaded and locked, with ammunition secured separately, when not in use or on your person.",
                "Curiosity is normal -- never assume 'they would never touch it' or that hiding is the same as securing.",
                "Teach age-appropriate safety: if you see a gun, stop, do not touch, leave the area, tell an adult.",
                "Account for visiting kids and homes your children visit -- ask other parents about their storage."
            ], callouts: ["A hidden firearm is not a secured firearm. Locks and safes are what actually prevent access."]),
            ContentBlock(id: "fire201_b4", type: .proTips, title: "Balancing Access and Security", bullets: [
                "For home-defense readiness, a quick-access biometric lock box keeps a firearm secure yet reachable.",
                "Keep spare keys and codes out of obvious places and away from children.",
                "Bolt safes to structure -- an unbolted safe can simply be carried off.",
                "Maintain a written record of serial numbers in a separate location for theft recovery."
            ]),
            ContentBlock(id: "fire201_b5", type: .summary, title: "The Bottom Line", bullets: [
                "A bolted gun safe is the best home solution; lock boxes balance speed and security.",
                "Hidden is not secured -- use real locks and safes.",
                "Know and follow your state's storage and child-access laws."
            ])
        ],
        quiz: Quiz(id: "fire201_q", passPercent: 80, questions: [
            Question(id: "fire201_q1", prompt: "Match each storage option to its security level.", matchingPairs: [
                MatchingPair(left: "Gun safe (bolted)", right: "Highest -- fire-rated and theft-resistant"),
                MatchingPair(left: "Lock box", right: "Quick-access, moderate security"),
                MatchingPair(left: "Cable lock", right: "Blocks loading and firing, low-cost"),
                MatchingPair(left: "Trigger lock", right: "Blocks the trigger only, least secure")
            ], explanation: "Different solutions offer different protection. A bolted gun safe is the gold standard."),
            Question(id: "fire201_q2", type: .scenario, prompt: "Your child has friends over and you keep a defensive handgun at home. The responsible approach is:", choices: ["Hide it on a high shelf -- kids can't reach it", "Keep it secured in a locked safe or lock box, accessible only to you", "Leave it loaded in a nightstand drawer", "Tell the kids it is off-limits and trust them"], correctIndex: 1, explanation: "Hiding and verbal warnings are not security. A locked safe or lock box prevents access while keeping the firearm available to you."),
            Question(id: "fire201_q3", prompt: "A cable lock prevents a firearm from being loaded and fired by threading through the ____.", acceptedAnswers: ["action", "the action", "chamber", "receiver"], explanation: "A cable lock threads through the open action, physically preventing the firearm from being loaded or fired."),
            Question(id: "fire201_q4", type: .multiSelect, prompt: "Which are sound practices for storing firearms around children?", choices: ["Store unloaded and locked", "Secure ammunition separately", "Rely on hiding the firearm", "Teach 'stop, don't touch, leave, tell an adult'", "Bolt the safe to the structure"], correctIndices: [0, 1, 3, 4], explanation: "Lock it, store ammo separately, teach children the safety response, and bolt the safe. Hiding alone is not securing.")
        ]),
        flashcards: [
            Flashcard(id: "fire201_f1", front: "Gun Safe", back: "A secure, fire-rated storage container, ideally bolted to structure -- the best practice for home storage"),
            Flashcard(id: "fire201_f2", front: "Biometric Lock Box", back: "A quick-access container opened by fingerprint -- balances rapid access with secure storage"),
            Flashcard(id: "fire201_f3", front: "Child-Access-Prevention Law", back: "State laws that can hold an owner liable when a minor accesses an improperly secured firearm"),
            Flashcard(id: "fire201_f4", front: "Cable Lock", back: "A locking device threaded through the action to physically block loading and firing")
        ],
        tags: ["storage", "safety", "kids"]
    )

    static let lesson6 = Lesson(
        id: "fire_t2_02",
        categoryId: .firearms,
        tier: 2,
        lessonNumber: 2,
        title: "Transport and Carry Concepts",
        subtitle: "Moving firearms lawfully -- general concepts only",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["fire_t2_01"],
        contentBlocks: [
            ContentBlock(id: "fire202_b1", type: .whyMatters, title: "Why Legal Literacy Matters", bullets: [
                "Firearms law is complex and varies dramatically by jurisdiction; ignorance is not a defense.",
                "What is legal in one state can be a felony in the next, sometimes by crossing a single line.",
                "Understanding the general concepts tells you when to stop and consult the actual law."
            ], callouts: ["These are general concepts only, not legal advice. Always consult current law for your specific state and any state you enter, ideally with a firearms attorney."]),
            ContentBlock(id: "fire202_b2", type: .systemOverview, title: "Transport Concepts", bullets: [
                "FOPA safe passage -- a federal provision intended to protect lawful interstate transport between two places you may legally possess a firearm.",
                "Typical safe-transport conditions -- unloaded, in a locked container, separate from ammunition, and not readily accessible from the passenger compartment.",
                "State variation is huge -- some states impose stricter rules even on travelers passing through.",
                "Airlines -- generally require unloaded firearms in a hard-sided locked case, declared at check-in per TSA and airline rules."
            ]),
            ContentBlock(id: "fire202_b3", type: .keyTerms, title: "Carry Concepts (Vocabulary, Not Permission)", bullets: [
                "Open carry vs. concealed carry -- whether the firearm is visible or hidden; legality differs by state.",
                "Permit systems -- constitutional carry (no permit), shall-issue, may-issue, and no-issue jurisdictions.",
                "Reciprocity -- whether one state honors another state's carry permit; it is far from universal.",
                "Prohibited places -- schools, federal buildings, and many private properties restrict carry regardless of permit."
            ], callouts: ["Holding a permit does not make carry legal everywhere. Reciprocity and location restrictions still apply."]),
            ContentBlock(id: "fire202_b4", type: .ownerActions, title: "What a Responsible Owner Does", bullets: [
                "Research the laws of every state you will drive through before any trip with a firearm.",
                "Confirm transport storage rules before you load the car, not at a traffic stop.",
                "Verify reciprocity and prohibited-place rules before carrying anywhere new.",
                "Keep documentation, and when a situation is complex, ask a qualified firearms attorney."
            ]),
            ContentBlock(id: "fire202_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Federal law sets a floor; states often go stricter -- assume nothing.",
                "Safe transport generally means unloaded, locked, and separated from ammunition.",
                "Carry concepts are vocabulary, not permission -- research and verify before you act."
            ])
        ],
        quiz: Quiz(id: "fire202_q", passPercent: 80, questions: [
            Question(id: "fire202_q1", type: .scenario, prompt: "You are driving through three states to visit family with a legally owned firearm. Before departing you should:", choices: ["Just follow federal law -- it overrides everything", "Research the specific transport laws of every state on the route", "Leave it home to be safe and never travel armed", "Assume your home-state rules apply the whole way"], correctIndex: 1, explanation: "State laws vary dramatically. FOPA offers some protection but is applied inconsistently, so research every state on your route."),
            Question(id: "fire202_q2", type: .multiSelect, prompt: "Which conditions are typical of lawful safe transport of a firearm?", choices: ["Firearm unloaded", "Stored in a locked container", "Ammunition separate from the firearm", "Loaded and within arm's reach for convenience", "Legal to possess at both origin and destination"], correctIndices: [0, 1, 2, 4], explanation: "Safe transport generally means unloaded, locked, ammo separated, and lawful possession at both ends. Loaded and accessible is the opposite of safe transport."),
            Question(id: "fire202_q3", prompt: "When one state honors another state's carry permit, that is called ____.", acceptedAnswers: ["reciprocity", "permit reciprocity", "carry reciprocity"], explanation: "Reciprocity is when a state recognizes a carry permit issued by another state. It is not universal and must be verified."),
            Question(id: "fire202_q4", type: .scenario, prompt: "You hold a valid concealed carry permit in your home state and visit a state with reciprocity. You can assume that:", choices: ["You may carry anywhere in that state", "Reciprocity lets you carry, but prohibited-place and local rules still apply", "Your permit is invalid the moment you cross the line", "Federal law guarantees carry nationwide"], correctIndex: 1, explanation: "Reciprocity may allow carry, but prohibited locations (schools, federal buildings, certain private property) and state-specific rules still apply.")
        ]),
        flashcards: [
            Flashcard(id: "fire202_f1", front: "FOPA Safe Passage", back: "A federal provision intended to protect lawful interstate transport of a firearm between two places you may legally possess it"),
            Flashcard(id: "fire202_f2", front: "Reciprocity", back: "When one state recognizes a carry permit issued by another -- it is not universal and must be checked"),
            Flashcard(id: "fire202_f3", front: "Constitutional Carry", back: "A jurisdiction that allows lawful carry without requiring a government-issued permit"),
            Flashcard(id: "fire202_f4", front: "Prohibited Places", back: "Locations such as schools and federal buildings where carry is restricted regardless of a permit")
        ],
        tags: ["legal", "transport", "carry"]
    )

    static let lesson7 = Lesson(
        id: "fire_t2_03",
        categoryId: .firearms,
        tier: 2,
        lessonNumber: 3,
        title: "Use-of-Force Principles",
        subtitle: "The serious responsibility behind defensive use",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["fire_t2_02"],
        contentBlocks: [
            ContentBlock(id: "fire203_b1", type: .whyMatters, title: "Why Force Literacy Is Non-Negotiable", bullets: [
                "Owning a firearm for defense means accepting responsibility for the gravest decision a person can make.",
                "Lethal force is a legal, moral, and emotional line that cannot be uncrossed.",
                "Understanding the principles helps you avoid situations that ever reach that point."
            ], callouts: ["This is general education, not legal advice. Use-of-force law varies by state. Consult an attorney and certified training before relying on any of this."]),
            ContentBlock(id: "fire203_b2", type: .principles, title: "Core Concepts Courts Examine", bullets: [
                "Ability -- did the threat have the capacity to cause death or great bodily harm?",
                "Opportunity -- was the threat positioned and able to carry it out now?",
                "Jeopardy (intent) -- did the person's actions indicate they intended to do harm?",
                "Reasonableness -- would a reasonable person in the same situation have perceived the same threat?"
            ], body: "Many jurisdictions evaluate self-defense through some version of ability, opportunity, and jeopardy, judged against what a reasonable person would believe."),
            ContentBlock(id: "fire203_b3", type: .keyTerms, title: "Important Distinctions", bullets: [
                "Lethal vs. non-lethal force -- a firearm is always considered lethal force.",
                "Duty to retreat vs. stand-your-ground -- states differ on whether you must attempt to withdraw if safe to do so.",
                "Castle doctrine -- many states give added protection for defense within your own home.",
                "Proportionality -- force used generally must be proportional to the threat faced."
            ], callouts: ["Brandishing a firearm to win an argument is not self-defense -- it can itself be a serious crime."]),
            ContentBlock(id: "fire203_b4", type: .safety, title: "The Mindset That Keeps You Out of Court", bullets: [
                "Avoidance is the highest skill -- the fight you never have is the one you always win.",
                "De-escalate, create distance, and leave whenever you safely can.",
                "A firearm is a last resort to stop an imminent, otherwise-unavoidable deadly threat -- never a tool for ego.",
                "Pulling a trigger starts a legal and financial aftermath that lasts for years (covered in Tier 4)."
            ]),
            ContentBlock(id: "fire203_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Ability, opportunity, jeopardy, and reasonableness frame defensive force.",
                "A firearm is always lethal force and always a last resort.",
                "Laws vary widely -- get certified training and legal guidance, and prioritize avoidance."
            ])
        ],
        quiz: Quiz(id: "fire203_q", passPercent: 80, questions: [
            Question(id: "fire203_q1", prompt: "Match each use-of-force concept to its meaning.", matchingPairs: [
                MatchingPair(left: "Ability", right: "Capacity to cause death or great harm"),
                MatchingPair(left: "Opportunity", right: "Positioned to carry the threat out now"),
                MatchingPair(left: "Jeopardy", right: "Actions indicating intent to do harm"),
                MatchingPair(left: "Reasonableness", right: "What a reasonable person would have perceived")
            ], explanation: "Many jurisdictions evaluate defensive force through ability, opportunity, and jeopardy, judged against a reasonable-person standard."),
            Question(id: "fire203_q2", type: .scenario, prompt: "Someone is verbally insulting you in a parking lot but makes no move toward you and has no weapon. Drawing a firearm here would most likely be:", choices: ["Justified self-defense", "A wise show of force", "Unlawful -- there is no imminent deadly threat, and it may be a crime", "Required to protect your honor"], correctIndex: 2, explanation: "Insults are not a deadly threat. With no ability, opportunity, or jeopardy present, drawing a firearm is not self-defense and can itself be a serious crime."),
            Question(id: "fire203_q3", prompt: "A firearm is always classified as ____ force in any use-of-force analysis.", acceptedAnswers: ["lethal", "deadly", "lethal force", "deadly force"], explanation: "A firearm is always considered lethal (deadly) force, which is why it is reserved for stopping imminent deadly threats."),
            Question(id: "fire203_q4", type: .multiSelect, prompt: "Which statements reflect responsible use-of-force thinking?", choices: ["Avoidance and de-escalation come first", "A firearm is a last resort, not an ego tool", "Use-of-force law is the same in every state", "Force should generally be proportional to the threat", "Brandishing to win an argument is fine"], correctIndices: [0, 1, 3], explanation: "Avoidance first, last resort, and proportionality are sound. Laws differ by state, and brandishing to win an argument is not lawful self-defense.")
        ]),
        flashcards: [
            Flashcard(id: "fire203_f1", front: "Ability / Opportunity / Jeopardy", back: "A common framework for evaluating a deadly threat: the capacity, the position, and the intent to cause harm"),
            Flashcard(id: "fire203_f2", front: "Duty to Retreat", back: "A legal requirement in some states to withdraw from a threat if it can be done safely before using force"),
            Flashcard(id: "fire203_f3", front: "Castle Doctrine", back: "Legal protections in many states for defending yourself within your own home"),
            Flashcard(id: "fire203_f4", front: "Brandishing", back: "Displaying a firearm to intimidate -- not self-defense, and often a crime in itself")
        ],
        tags: ["legal", "use of force", "responsibility"]
    )

    static let lesson8 = Lesson(
        id: "fire_t2_04",
        categoryId: .firearms,
        tier: 2,
        lessonNumber: 4,
        title: "Cleaning and Maintenance",
        subtitle: "Reliability is earned, not assumed",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["fire_t2_03"],
        contentBlocks: [
            ContentBlock(id: "fire204_b1", type: .whyMatters, title: "Why Maintenance Equals Reliability", bullets: [
                "A dirty firearm is an unreliable firearm; the overwhelming majority of malfunctions come from fouling and lack of lubrication.",
                "Cleaning doubles as inspection -- you catch wear, cracks, and damage before they cause a failure.",
                "A defensive firearm you cannot trust to fire is worse than useless."
            ], callouts: ["Always confirm the firearm is unloaded before any cleaning or disassembly. No exceptions."]),
            ContentBlock(id: "fire204_b2", type: .componentBreakdown, title: "Cleaning Kit Essentials", bullets: [
                "Bore brush and cleaning rod -- sized to your firearm's caliber or gauge.",
                "Patches and a jag -- to apply solvent and wipe the bore clean.",
                "Solvent -- dissolves carbon fouling and copper deposits.",
                "Lubricant -- reduces friction on moving parts; it is a different product from solvent.",
                "Nylon brush and cloths -- for scrubbing exterior surfaces without scratching."
            ]),
            ContentBlock(id: "fire204_b3", type: .stepByStep, title: "Basic Cleaning Process", bullets: [
                "1. Verify unloaded -- remove the magazine, lock the action open, and check the chamber visually and physically.",
                "2. Field strip to the manufacturer's instructions -- do not fully disassemble unless trained.",
                "3. Run solvent-soaked patches through the bore and let it soak several minutes.",
                "4. Scrub the bore with the bore brush, then run clean patches until they come out clean.",
                "5. Wipe carbon from the slide rails, breech face, and feed ramp.",
                "6. Apply light lubricant only to the friction points listed in your owner's manual.",
                "7. Reassemble, then perform a function check before storing or loading."
            ], callouts: ["More lubricant is not better -- excess oil attracts grit and can cause its own malfunctions."]),
            ContentBlock(id: "fire204_b4", type: .commonMistakes, title: "Maintenance Mistakes", bullets: [
                "Cleaning without first verifying the firearm is unloaded.",
                "Confusing solvent with lubricant, or skipping lubrication entirely.",
                "Fully disassembling beyond field-strip without training and reassembling wrong.",
                "Skipping the function check after reassembly."
            ]),
            ContentBlock(id: "fire204_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Verify unloaded, field strip, clean the bore, wipe key surfaces, lubricate lightly, function check.",
                "Solvent removes fouling; lubricant reduces friction -- two different jobs.",
                "Clean after range sessions and inspect as you go; reliability is maintained, not assumed."
            ])
        ],
        quiz: Quiz(id: "fire204_q", passPercent: 80, questions: [
            Question(id: "fire204_q1", type: .scenario, prompt: "You are about to clean your pistol after the range. The very first step, before touching any tools, is:", choices: ["Gather cleaning supplies", "Remove the magazine only", "Verify unloaded -- magazine out, action open, chamber checked", "Apply solvent to the bore"], correctIndex: 2, explanation: "Safety first: fully verify the firearm is unloaded before any cleaning or disassembly."),
            Question(id: "fire204_q2", prompt: "Most firearm malfunctions are caused by ____ and a lack of lubrication.", acceptedAnswers: ["fouling", "carbon fouling", "carbon buildup", "dirt", "carbon"], explanation: "Carbon fouling buildup is the leading cause of reliability problems, which is why regular cleaning matters."),
            Question(id: "fire204_q3", prompt: "Match each cleaning product to its purpose.", matchingPairs: [
                MatchingPair(left: "Solvent", right: "Dissolves carbon fouling and copper deposits"),
                MatchingPair(left: "Lubricant", right: "Reduces friction on moving parts"),
                MatchingPair(left: "Bore brush", right: "Scrubs the inside of the barrel"),
                MatchingPair(left: "Nylon brush", right: "Cleans exterior parts without scratching")
            ], explanation: "Each tool and product has a distinct purpose. Solvent and lubricant are not the same thing."),
            Question(id: "fire204_q4", type: .multiSelect, prompt: "Which of these belong in a proper cleaning process?", choices: ["Run solvent-soaked patches through the bore", "Fully disassemble with no training", "Wipe down slide rails and feed ramp", "Apply light lubricant to friction points", "Function check after reassembly"], correctIndices: [0, 2, 3, 4], explanation: "Solvent patches, wiping key surfaces, light lubrication, and a function check are all correct. Full disassembly without training is a mistake.")
        ]),
        flashcards: [
            Flashcard(id: "fire204_f1", front: "Field Strip", back: "Basic disassembly for cleaning that uses no special tools and stops short of full takedown"),
            Flashcard(id: "fire204_f2", front: "Solvent vs. Lubricant", back: "Solvent dissolves fouling; lubricant reduces friction -- two different products with two different jobs"),
            Flashcard(id: "fire204_f3", front: "Feed Ramp", back: "The angled surface that guides cartridges from the magazine into the chamber; must stay clean for reliable feeding"),
            Flashcard(id: "fire204_f4", front: "Function Check", back: "A test of mechanical operation after cleaning or reassembly to confirm the firearm went back together correctly")
        ],
        tags: ["maintenance", "cleaning", "reliability"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "fire_t3_01",
        categoryId: .firearms,
        tier: 3,
        lessonNumber: 1,
        title: "Marksmanship Fundamentals",
        subtitle: "Stance, grip, sights, trigger, breathing",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fire_t2_04"],
        contentBlocks: [
            ContentBlock(id: "fire301_b1", type: .whyMatters, title: "Why Fundamentals Beat Gear", bullets: [
                "Accuracy is a learned skill, not a feature you buy -- the fundamentals do the heavy lifting.",
                "Master five basics and you will outshoot people with far more expensive equipment.",
                "These fundamentals apply across handguns, rifles, and shotguns."
            ], callouts: ["Always observe the four safety rules while practicing. This is education, not a replacement for in-person coaching."]),
            ContentBlock(id: "fire301_b2", type: .componentBreakdown, title: "The Five Fundamentals", bullets: [
                "Stance -- a stable, athletic base; weight slightly forward to manage recoil.",
                "Grip -- high, firm, and consistent, with both hands working together on a handgun.",
                "Sight alignment and sight picture -- front sight centered in the rear notch, placed on the target.",
                "Trigger control -- a smooth, straight-back press that does not disturb the sights.",
                "Breathing -- press the trigger during a natural respiratory pause for a steady hold."
            ]),
            ContentBlock(id: "fire301_b3", type: .keyTerms, title: "Sight Alignment vs. Sight Picture", bullets: [
                "Sight alignment -- the relationship between the front and rear sights: equal light on each side, tops level.",
                "Sight picture -- the aligned sights placed correctly on the target.",
                "Focus on the front sight; the target and rear sight will appear slightly blurred -- that is correct.",
                "A consistent point of aim produces a consistent point of impact."
            ]),
            ContentBlock(id: "fire301_b4", type: .proTips, title: "Trigger Control, the Make-or-Break Skill", bullets: [
                "Place the pad of your finger on the trigger; press straight to the rear.",
                "The shot should almost surprise you -- no anticipating, no flinching, no slapping.",
                "Follow through: hold the trigger to the rear briefly and reacquire the sights after the shot.",
                "Dry-fire practice (with a verified-empty firearm) builds trigger control without recoil or cost."
            ], callouts: ["Before any dry-fire practice, triple-check the firearm is unloaded and point it at a safe backstop."]),
            ContentBlock(id: "fire301_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Stance, grip, sight alignment, trigger control, breathing -- the five fundamentals.",
                "Focus on the front sight and press the trigger straight back without disturbing it.",
                "Disciplined dry-fire and follow-through turn fundamentals into reflexes."
            ])
        ],
        quiz: Quiz(id: "fire301_q", passPercent: 80, questions: [
            Question(id: "fire301_q1", prompt: "Match each fundamental to its core idea.", matchingPairs: [
                MatchingPair(left: "Stance", right: "Stable base, weight slightly forward"),
                MatchingPair(left: "Grip", right: "High, firm, consistent, both hands"),
                MatchingPair(left: "Sight alignment", right: "Front sight centered in the rear notch"),
                MatchingPair(left: "Trigger control", right: "Smooth straight-back press")
            ], explanation: "The five fundamentals -- stance, grip, sight alignment, trigger control, breathing -- build accuracy."),
            Question(id: "fire301_q2", prompt: "When aiming, you should keep your visual focus on the ____ sight.", acceptedAnswers: ["front", "the front", "front sight"], explanation: "Focus on the front sight. The target and rear sight will appear slightly blurry, which is correct."),
            Question(id: "fire301_q3", type: .scenario, prompt: "Your shots consistently group low and left (for a right-handed shooter). The most common cause is:", choices: ["The barrel is bent", "Anticipating recoil and disturbing the sights during the trigger press", "The ammunition is defective", "The sights are factory-misaligned"], correctIndex: 1, explanation: "Low-left grouping for a right-handed shooter is the classic sign of jerking the trigger and anticipating recoil. Smooth trigger control and dry-fire practice fix it."),
            Question(id: "fire301_q4", type: .multipleChoice, prompt: "When should you press the trigger relative to your breathing?", choices: ["At the peak of a deep inhale", "During a natural respiratory pause", "While exhaling forcefully", "While holding a full breath as long as possible"], correctIndex: 1, explanation: "Pressing during the natural pause in your breathing cycle gives the steadiest hold without straining."),
            Question(id: "fire301_q5", type: .multiSelect, prompt: "Which habits improve trigger control?", choices: ["Pressing straight to the rear", "Slapping the trigger quickly", "Following through after the shot", "Using the pad of the finger", "Anticipating the recoil"], correctIndices: [0, 2, 3], explanation: "Straight-back press, follow-through, and using the finger pad all help. Slapping and anticipating recoil hurt accuracy.")
        ]),
        flashcards: [
            Flashcard(id: "fire301_f1", front: "Sight Alignment", back: "The relationship between front and rear sights: equal light on each side with the tops level"),
            Flashcard(id: "fire301_f2", front: "Sight Picture", back: "The aligned sights placed correctly on the intended target"),
            Flashcard(id: "fire301_f3", front: "Trigger Control", back: "A smooth, straight-back press that fires the shot without disturbing sight alignment"),
            Flashcard(id: "fire301_f4", front: "Dry-Fire Practice", back: "Practicing trigger control with a verified-empty firearm to build skill without recoil or ammo cost")
        ],
        tags: ["marksmanship", "fundamentals", "skill"]
    )

    static let lesson10 = Lesson(
        id: "fire_t3_02",
        categoryId: .firearms,
        tier: 3,
        lessonNumber: 2,
        title: "Malfunctions and Clearing",
        subtitle: "Misfire, hangfire, squib, and stoppages",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fire_t3_01"],
        contentBlocks: [
            ContentBlock(id: "fire302_b1", type: .whyMatters, title: "Why Malfunction Response Matters", bullets: [
                "Malfunctions happen to everyone; your response decides whether it stays a nuisance or becomes a disaster.",
                "A squib followed by another trigger pull can destroy the firearm and injure the shooter.",
                "Knowing the difference between stoppage types lets you respond correctly under pressure."
            ], callouts: ["This is education, not a substitute for hands-on malfunction training with a certified instructor."]),
            ContentBlock(id: "fire302_b2", type: .componentBreakdown, title: "The Three Dangerous Ammunition Malfunctions", bullets: [
                "Misfire -- trigger pulled, firing pin strikes, nothing happens; the round failed to fire.",
                "Hangfire -- a delayed ignition; the round fires after a perceptible pause, from milliseconds to seconds.",
                "Squib load -- partial ignition; the bullet leaves the case but lodges in the barrel. Extremely dangerous."
            ]),
            ContentBlock(id: "fire302_b3", type: .safety, title: "Response Protocol", bullets: [
                "Misfire: keep the muzzle downrange, wait about 30 seconds (it could be a hangfire), then eject the round safely.",
                "Hangfire: same wait-period discipline -- do not open the action immediately, because it may still fire.",
                "Squib: STOP IMMEDIATELY. If you hear a weak pop or feel reduced recoil, do not fire again.",
                "After a suspected squib, unload, lock the action, and inspect the bore for an obstruction before anything else."
            ], callouts: ["A bullet stuck in the bore plus another shot equals a barrel explosion. Reduced recoil and a 'pop' instead of a 'bang' are the warning signs."]),
            ContentBlock(id: "fire302_b4", type: .stepByStep, title: "Common Semi-Auto Stoppages", bullets: [
                "Failure to feed -- a round does not chamber; often a magazine or grip issue.",
                "Failure to eject (stovepipe) -- a spent case is trapped in the ejection port.",
                "Double feed -- two rounds try to enter the chamber at once; the toughest common stoppage.",
                "Standard clearing for feed/eject stoppages: Tap (seat the magazine), Rack (cycle the slide), Reassess.",
                "A double feed needs lock-slide, strip the magazine, rack several times, then reload -- not tap-rack."
            ], callouts: ["Tap-Rack is for feed/eject stoppages -- never use it to 'clear' a suspected squib."]),
            ContentBlock(id: "fire302_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Misfire = no bang; hangfire = delayed bang; squib = weak pop with the bullet stuck in the bore.",
                "Misfire and hangfire: muzzle downrange, wait 30 seconds. Squib: STOP and inspect the bore.",
                "Tap-Rack-Reassess clears most feed and eject stoppages, but never a squib."
            ])
        ],
        quiz: Quiz(id: "fire302_q", passPercent: 80, questions: [
            Question(id: "fire302_q1", prompt: "Match each malfunction to its definition.", matchingPairs: [
                MatchingPair(left: "Misfire", right: "Firing pin strikes, nothing happens"),
                MatchingPair(left: "Hangfire", right: "Delayed ignition after a pause"),
                MatchingPair(left: "Squib load", right: "Bullet lodges in the barrel"),
                MatchingPair(left: "Stovepipe", right: "Spent case trapped in the ejection port")
            ], explanation: "These malfunctions require different responses; confusing them can be catastrophic."),
            Question(id: "fire302_q2", type: .scenario, prompt: "You fire and hear a quiet 'pop' instead of a normal bang, with noticeably less recoil. Your immediate action is:", choices: ["Fire again to clear it", "Run a tap-rack drill and keep shooting", "Stop immediately and inspect the bore for a lodged bullet", "Wait 30 seconds, then continue firing"], correctIndex: 2, explanation: "A pop with reduced recoil is the classic squib indicator. Stop immediately -- firing into an obstructed barrel causes catastrophic failure."),
            Question(id: "fire302_q3", prompt: "After a suspected misfire, keep the muzzle downrange and wait at least ____ seconds.", acceptedAnswers: ["30", "thirty", "30 seconds", "thirty seconds"], explanation: "Wait about 30 seconds -- it could be a hangfire with delayed ignition. Opening the action too early on a hangfire is very dangerous."),
            Question(id: "fire302_q4", type: .multiSelect, prompt: "Which are indicators of a possible squib load?", choices: ["A quieter sound (pop instead of bang)", "Reduced or absent recoil", "A louder than normal explosion", "The slide fails to cycle fully", "A perfectly normal-feeling shot"], correctIndices: [0, 1, 3], explanation: "A squib produces a weak pop, reduced recoil, and may keep the slide from cycling. Any of these should trigger an immediate stop."),
            Question(id: "fire302_q5", type: .scenario, prompt: "You have a stovepipe -- a spent case caught in the ejection port. The correct response is:", choices: ["Stop and inspect the bore for an obstruction", "Tap the magazine, rack the slide, reassess", "Wait 30 seconds before doing anything", "Fully disassemble the firearm on the line"], correctIndex: 1, explanation: "A stovepipe is a failure-to-eject stoppage. Tap-Rack-Reassess clears it. The bore-inspection response is reserved for a suspected squib.")
        ]),
        flashcards: [
            Flashcard(id: "fire302_f1", front: "Misfire", back: "Trigger pulled, firing pin strikes, but the round fails to fire"),
            Flashcard(id: "fire302_f2", front: "Hangfire", back: "A delayed ignition -- a perceptible pause between the trigger pull and the round firing"),
            Flashcard(id: "fire302_f3", front: "Squib Load", back: "A round with too little propellant that lodges the bullet in the barrel -- extremely dangerous if another shot follows"),
            Flashcard(id: "fire302_f4", front: "Tap-Rack-Reassess", back: "A clearing drill for feed and eject stoppages: seat the magazine, cycle the slide, reassess -- never used for a squib")
        ],
        tags: ["malfunction", "clearing", "safety"]
    )

    static let lesson11 = Lesson(
        id: "fire_t3_03",
        categoryId: .firearms,
        tier: 3,
        lessonNumber: 3,
        title: "Range Safety and Etiquette",
        subtitle: "Commands, courtesy, and discipline on the line",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["fire_t3_02"],
        contentBlocks: [
            ContentBlock(id: "fire303_b1", type: .whyMatters, title: "Why the Range Has Rules", bullets: [
                "A range puts many shooters near each other and live ammunition; structure is what keeps it safe.",
                "Range etiquette marks you as competent and trustworthy to other shooters and staff.",
                "Most ranges will remove anyone who handles firearms carelessly -- and rightly so."
            ], callouts: ["Always follow the four universal safety rules and the specific rules posted at your range."]),
            ContentBlock(id: "fire303_b2", type: .keyTerms, title: "Range Commands You Must Know", bullets: [
                "'Cease fire' -- stop shooting instantly, finger off trigger, do not move; this can be called by anyone who sees danger.",
                "'Range is cold' -- no handling of firearms; this is when people may go downrange to set or retrieve targets.",
                "'Range is hot' -- firing is permitted again; no one is downrange.",
                "'Make ready' / 'Cease fire, unload and show clear' -- prepare to fire / safely unload and confirm empty."
            ], callouts: ["When a cease fire is called, stop immediately -- no 'just one more shot.'"]),
            ContentBlock(id: "fire303_b3", type: .safety, title: "The Bench and the Line", bullets: [
                "Keep firearms pointed downrange at all times, including while resting them on the bench.",
                "Never handle a firearm when anyone is downrange or the range is cold.",
                "Keep actions open and use a chamber flag when not actively shooting.",
                "Wear eye and ear protection at all times on the line -- no exceptions."
            ], callouts: ["Eye and ear protection are mandatory. Hearing damage is permanent and cumulative."]),
            ContentBlock(id: "fire303_b4", type: .proTips, title: "Etiquette That Earns Respect", bullets: [
                "Clean up your brass and target debris before you leave.",
                "Ask before touching or commenting on another person's firearm.",
                "Keep noise, movement, and distractions to a minimum on the firing line.",
                "If you are new, tell the range staff -- good ranges welcome questions over guesswork."
            ]),
            ContentBlock(id: "fire303_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Know the commands: cease fire, cold, hot, make ready, unload and show clear.",
                "Muzzle downrange, action open, eye and ear protection on, always.",
                "Courtesy and discipline are what make you welcome at any range."
            ])
        ],
        quiz: Quiz(id: "fire303_q", passPercent: 80, questions: [
            Question(id: "fire303_q1", prompt: "Match each range command to what it means.", matchingPairs: [
                MatchingPair(left: "Cease fire", right: "Stop shooting instantly, finger off trigger"),
                MatchingPair(left: "Range is cold", right: "No handling of firearms; people may go downrange"),
                MatchingPair(left: "Range is hot", right: "Firing is permitted; no one downrange"),
                MatchingPair(left: "Unload and show clear", right: "Safely unload and confirm the chamber is empty")
            ], explanation: "Knowing range commands cold is essential to operating safely on a shared firing line."),
            Question(id: "fire303_q2", type: .scenario, prompt: "You are mid-string when someone yells 'Cease fire!' You should:", choices: ["Finish your magazine first", "Stop instantly, take your finger off the trigger, and wait for instructions", "Quickly holster and walk downrange", "Ignore it unless staff says it"], correctIndex: 1, explanation: "Anyone can call a cease fire when they see danger. Stop instantly, finger off the trigger, and await instructions -- no 'one more shot.'"),
            Question(id: "fire303_q3", prompt: "When the range is 'cold,' a small flag inserted to show an empty chamber is called a chamber ____.", acceptedAnswers: ["flag", "chamber flag", "safety flag"], explanation: "A chamber flag (or empty-chamber indicator) visually confirms the firearm is unloaded and the action is open."),
            Question(id: "fire303_q4", type: .multiSelect, prompt: "Which behaviors are correct range etiquette and safety?", choices: ["Keep muzzles pointed downrange at all times", "Handle your firearm while the range is cold", "Wear eye and ear protection on the line", "Ask before touching someone else's firearm", "Leave your brass and trash for staff"], correctIndices: [0, 2, 3], explanation: "Muzzle downrange, protection on, and asking before touching are correct. Never handle firearms when cold, and clean up after yourself.")
        ]),
        flashcards: [
            Flashcard(id: "fire303_f1", front: "Cease Fire", back: "An immediate command to stop shooting and remove the finger from the trigger; anyone may call it"),
            Flashcard(id: "fire303_f2", front: "Cold vs. Hot Range", back: "Cold means no handling of firearms (people may go downrange); hot means firing is permitted with no one downrange"),
            Flashcard(id: "fire303_f3", front: "Chamber Flag", back: "A visible indicator inserted into an open action to show the chamber is empty"),
            Flashcard(id: "fire303_f4", front: "Show Clear", back: "Demonstrating to a range officer that a firearm is unloaded with the chamber empty and action open")
        ],
        tags: ["range", "safety", "etiquette"]
    )

    static let lesson12 = Lesson(
        id: "fire_t3_04",
        categoryId: .firearms,
        tier: 3,
        lessonNumber: 4,
        title: "Handgun Components in Depth",
        subtitle: "Naming, function, and the vocabulary of diagnosis",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["fire_t3_03"],
        contentBlocks: [
            ContentBlock(id: "fire304_b1", type: .whyMatters, title: "Why Component Fluency Matters", bullets: [
                "You cannot maintain, diagnose, or clearly describe a problem without naming the parts.",
                "When something goes wrong, the language of components is how you and a gunsmith communicate.",
                "Knowing what each part does makes safe operation and cleaning second nature."
            ]),
            ContentBlock(id: "fire304_b2", type: .componentBreakdown, title: "Major Components", bullets: [
                "Frame (receiver) -- the main body housing the fire-control parts; the legally serialized component.",
                "Slide -- the upper assembly on a semi-auto that reciprocates to chamber rounds and eject cases.",
                "Barrel -- the rifled tube the bullet travels through.",
                "Trigger and trigger guard -- initiates firing; the guard protects against unintended contact.",
                "Magazine -- the detachable, spring-fed container that holds and feeds ammunition.",
                "Sights -- front and rear references used to aim.",
                "Safety and slide lock -- mechanical safeguards and the lever that holds the slide open."
            ]),
            ContentBlock(id: "fire304_b3", type: .keyTerms, title: "Vocabulary That Prevents Mistakes", bullets: [
                "Magazine vs. clip -- a magazine feeds the firearm; a clip is a device that holds rounds to load a magazine.",
                "Breech face -- the part of the slide that supports the cartridge base; keep it clean.",
                "Extractor and ejector -- the extractor pulls the case out, the ejector throws it clear.",
                "Slide lock (slide stop) -- holds the slide open, typically after the last round."
            ], callouts: ["Calling a magazine a 'clip' is a small thing, but precise vocabulary signals real competence."]),
            ContentBlock(id: "fire304_b4", type: .commonMistakes, title: "Component Confusions to Avoid", bullets: [
                "Confusing the magazine with a clip.",
                "Not knowing where your specific firearm's safety is or how it operates.",
                "Ignoring a slide locked open, which signals an empty magazine.",
                "Assuming all handguns share the same controls -- layouts vary by model."
            ]),
            ContentBlock(id: "fire304_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Frame, slide, barrel, trigger, magazine, sights, safety -- know each one and its job.",
                "The frame is the serialized, legally regulated part.",
                "Precise vocabulary is the foundation of diagnosis and clear communication."
            ])
        ],
        quiz: Quiz(id: "fire304_q", passPercent: 80, questions: [
            Question(id: "fire304_q1", prompt: "Match each handgun component to its function.", matchingPairs: [
                MatchingPair(left: "Frame", right: "Serialized body housing fire-control parts"),
                MatchingPair(left: "Slide", right: "Reciprocates to chamber rounds and eject cases"),
                MatchingPair(left: "Barrel", right: "Rifled tube the bullet travels through"),
                MatchingPair(left: "Magazine", right: "Spring-fed container that holds and feeds ammo")
            ], explanation: "Each component plays a specific role in the firing cycle."),
            Question(id: "fire304_q2", prompt: "A ____ feeds ammunition into the firearm, while a clip merely holds rounds to load it.", acceptedAnswers: ["magazine", "mag", "the magazine"], explanation: "A magazine is the spring-loaded device that feeds the firearm. A clip holds rounds together to charge a magazine."),
            Question(id: "fire304_q3", type: .scenario, prompt: "After firing your last round, the slide locks open. This tells you:", choices: ["A malfunction occurred", "The safety engaged itself", "The magazine is empty", "The barrel overheated"], correctIndex: 2, explanation: "The slide lock holds the slide open after the last round, giving you a clear visual and tactile signal that the magazine is empty."),
            Question(id: "fire304_q4", type: .multipleChoice, prompt: "Which component of a handgun is the legally serialized and regulated part?", choices: ["Barrel", "Magazine", "Slide", "Frame (receiver)"], correctIndex: 3, explanation: "The frame or receiver is the serialized, legally regulated component; the other parts are generally treated as accessories."),
            Question(id: "fire304_q5", type: .multiSelect, prompt: "Which statements about handgun components are accurate?", choices: ["The extractor pulls the spent case from the chamber", "The ejector throws the case clear", "The breech face supports the cartridge base", "The magazine and clip are the same thing", "The frame is the serialized part"], correctIndices: [0, 1, 2, 4], explanation: "Extractor, ejector, breech face, and frame statements are correct. A magazine and a clip are not the same.")
        ]),
        flashcards: [
            Flashcard(id: "fire304_f1", front: "Frame / Receiver", back: "The main body of the firearm housing the fire-control parts -- the legally serialized component"),
            Flashcard(id: "fire304_f2", front: "Magazine vs. Clip", back: "A magazine is a spring-loaded device that feeds the firearm; a clip holds rounds together to load a magazine"),
            Flashcard(id: "fire304_f3", front: "Extractor vs. Ejector", back: "The extractor pulls the spent case from the chamber; the ejector throws it clear of the firearm"),
            Flashcard(id: "fire304_f4", front: "Slide Lock (Slide Stop)", back: "The lever that holds the slide open, typically after the last round, indicating an empty magazine")
        ],
        tags: ["handgun", "components", "diagnosis"]
    )

    // MARK: - Tier 4: Mastery

    static let lesson13 = Lesson(
        id: "fire_t4_01",
        categoryId: .firearms,
        tier: 4,
        lessonNumber: 1,
        title: "Defensive Mindset and De-escalation",
        subtitle: "Awareness, avoidance, and the will to walk away",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fire_t3_04"],
        contentBlocks: [
            ContentBlock(id: "fire401_b1", type: .whyMatters, title: "Why Mindset Outranks Hardware", bullets: [
                "The most important defensive tool is between your ears, not in a holster.",
                "The overwhelming majority of dangerous situations are won by awareness and avoidance, never by drawing.",
                "A mature defender measures success by the fights avoided, not the rounds fired."
            ], callouts: ["This is education, not legal or tactical advice, and not a substitute for certified defensive training."]),
            ContentBlock(id: "fire401_b2", type: .principles, title: "Situational Awareness: Color Codes", bullets: [
                "White -- unaware and unprepared; avoid living here in public.",
                "Yellow -- relaxed but alert; your everyday default in public.",
                "Orange -- a specific possible threat noticed; you focus and form a plan.",
                "Red -- the threat is acting; you execute your decided response."
            ], body: "The Cooper color codes describe escalating states of awareness. Spending your day in Yellow buys time to avoid trouble before it ever becomes Red."),
            ContentBlock(id: "fire401_b3", type: .keyTerms, title: "De-escalation and Avoidance", bullets: [
                "Distance is safety -- create space and put barriers between you and a potential threat.",
                "Verbal de-escalation -- a calm, non-provocative voice can defuse many confrontations.",
                "Exit early -- leaving a tense situation costs nothing and prevents everything.",
                "Do not let ego make decisions -- being right is not worth your life or your freedom."
            ], callouts: ["Avoidance is not cowardice -- it is the highest expression of skill and responsibility."]),
            ContentBlock(id: "fire401_b4", type: .safety, title: "If Force Becomes Unavoidable", bullets: [
                "Lethal force is justified only against an imminent threat of death or great bodily harm, where lawful.",
                "Your goal is to stop the threat, not to punish -- the moment the threat ends, the force must end.",
                "Everything you learned about use of force in Tier 2 applies here under real stress.",
                "What follows a defensive shooting is years of legal and financial consequence (next lessons)."
            ]),
            ContentBlock(id: "fire401_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Live in Yellow: relaxed, alert, and ahead of trouble.",
                "Distance, de-escalation, and a willingness to leave solve almost everything.",
                "A firearm is the last link in a long chain that begins with awareness."
            ])
        ],
        quiz: Quiz(id: "fire401_q", passPercent: 80, questions: [
            Question(id: "fire401_q1", prompt: "Match each Cooper color code to its state of awareness.", matchingPairs: [
                MatchingPair(left: "White", right: "Unaware and unprepared"),
                MatchingPair(left: "Yellow", right: "Relaxed but alert -- everyday default"),
                MatchingPair(left: "Orange", right: "A specific possible threat noticed"),
                MatchingPair(left: "Red", right: "The threat is acting; execute the plan")
            ], explanation: "The color codes describe escalating awareness. Spending public time in Yellow gives you time to avoid trouble."),
            Question(id: "fire401_q2", type: .scenario, prompt: "A stranger is becoming aggressive in a parking lot, but you have a clear path to your car and the exit. The best first response is:", choices: ["Stand your ground and argue back", "Create distance and leave the situation", "Display your firearm to deter them", "Wait to see what they do next"], correctIndex: 1, explanation: "Distance and leaving cost nothing and prevent everything. Avoidance is the highest skill; displaying a firearm here could itself be a crime."),
            Question(id: "fire401_q3", prompt: "For everyday public life, your default awareness state should be condition ____.", acceptedAnswers: ["yellow", "condition yellow"], explanation: "Condition Yellow -- relaxed but alert -- is the recommended everyday default that keeps you ahead of developing threats."),
            Question(id: "fire401_q4", type: .multiSelect, prompt: "Which are sound elements of a defensive mindset?", choices: ["Awareness and early avoidance", "Letting ego drive decisions", "Verbal de-escalation when possible", "Creating distance from threats", "Treating drawing a firearm as a first option"], correctIndices: [0, 2, 3], explanation: "Awareness, de-escalation, and distance define a mature mindset. Ego and a quick draw are exactly what a defender avoids."),
            Question(id: "fire401_q5", type: .multipleChoice, prompt: "When is lethal force generally justified, where lawful?", choices: ["To win any physical fight", "Against an imminent threat of death or great bodily harm", "To protect property alone", "Whenever you feel insulted"], correctIndex: 1, explanation: "Lethal force is reserved for an imminent threat of death or great bodily harm, and the force must stop when the threat stops.")
        ]),
        flashcards: [
            Flashcard(id: "fire401_f1", front: "Cooper Color Codes", back: "States of awareness -- White (unaware), Yellow (alert default), Orange (specific threat), Red (acting)"),
            Flashcard(id: "fire401_f2", front: "Condition Yellow", back: "Relaxed but alert -- the recommended everyday awareness state in public"),
            Flashcard(id: "fire401_f3", front: "De-escalation", back: "Using distance, calm communication, and an early exit to defuse a confrontation before force is needed"),
            Flashcard(id: "fire401_f4", front: "Stop the Threat", back: "The lawful goal of defensive force -- ending an imminent threat, never punishing; force ends when the threat ends")
        ],
        tags: ["mindset", "de-escalation", "defense"]
    )

    static let lesson14 = Lesson(
        id: "fire_t4_02",
        categoryId: .firearms,
        tier: 4,
        lessonNumber: 2,
        title: "Choosing the Right Firearm",
        subtitle: "Matching the tool to the job and to you",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["fire_t4_01"],
        contentBlocks: [
            ContentBlock(id: "fire402_b1", type: .whyMatters, title: "Why Fit Beats Hype", bullets: [
                "The 'best' firearm is the one that fits your purpose, your body, and your skill -- not the one with the best marketing.",
                "A firearm you shoot well and will actually carry beats a more powerful one you will not.",
                "Define the job first; the right tool follows from a clear purpose."
            ]),
            ContentBlock(id: "fire402_b2", type: .stepByStep, title: "A Decision Framework", bullets: [
                "1. Define the primary purpose -- home defense, concealed carry, hunting, or sport.",
                "2. Match the category -- handgun, rifle, or shotgun -- to that purpose.",
                "3. Consider fit -- grip size, weight, recoil, and how your hand reaches the controls.",
                "4. Weigh capacity, caliber, and reliability for the role.",
                "5. Rent or borrow and shoot candidates before you buy whenever possible."
            ], callouts: ["Try before you buy. The same model can feel completely different in two different hands."]),
            ContentBlock(id: "fire402_b3", type: .realWorld, title: "Common Roles and Sensible Choices", bullets: [
                "Concealed carry -- a reliable, manageable compact handgun you will carry consistently.",
                "Home defense -- many choose a handgun for maneuverability or a shotgun for stopping power; both demand training.",
                "Hunting -- caliber and platform matched to the game and legal requirements in your state.",
                "Sport and learning -- a .22 LR is affordable, low-recoil, and ideal for building fundamentals."
            ]),
            ContentBlock(id: "fire402_b4", type: .commonMistakes, title: "Buying Mistakes to Avoid", bullets: [
                "Buying for image or online hype instead of fit and purpose.",
                "Choosing more caliber or recoil than you can control well.",
                "Skipping the hands-on test and buying purely on spec sheets.",
                "Forgetting the true cost: ammunition, training, storage, and maintenance."
            ], callouts: ["Budget for training and a safe along with the firearm -- they are part of responsible ownership, not optional extras."]),
            ContentBlock(id: "fire402_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Purpose first, then category, then fit, then specifications.",
                "Reliability and a gun you will actually carry and shoot well matter most.",
                "Try before you buy, and budget for training and storage."
            ])
        ],
        quiz: Quiz(id: "fire402_q", passPercent: 80, questions: [
            Question(id: "fire402_q1", prompt: "Match each common purpose to a sensible firearm consideration.", matchingPairs: [
                MatchingPair(left: "Concealed carry", right: "Reliable compact handgun you will carry"),
                MatchingPair(left: "Home defense", right: "Maneuverable handgun or stopping-power shotgun"),
                MatchingPair(left: "Hunting", right: "Caliber matched to game and state law"),
                MatchingPair(left: "Learning fundamentals", right: "Affordable, low-recoil .22 LR")
            ], explanation: "The right choice flows from the purpose. Each role suggests different sensible options."),
            Question(id: "fire402_q2", type: .scenario, prompt: "A new shooter wants one firearm to learn fundamentals affordably. The most sensible first choice is often:", choices: ["A high-recoil magnum revolver", "A .22 LR with low recoil and cheap ammo", "The most powerful handgun available", "Whatever looks most tactical"], correctIndex: 1, explanation: "A .22 LR is low-recoil, affordable to shoot, and lets a new shooter build solid fundamentals without flinching."),
            Question(id: "fire402_q3", prompt: "Before category and specifications, the first thing to define when choosing a firearm is its ____.", acceptedAnswers: ["purpose", "the purpose", "use", "intended use", "job"], explanation: "Define the primary purpose first. The category and specifications all follow from a clear purpose."),
            Question(id: "fire402_q4", type: .multiSelect, prompt: "Which factors should genuinely drive a firearm purchase?", choices: ["Primary purpose", "Fit and how well you shoot it", "Reliability for the role", "Online hype and image", "Total cost including training and storage"], correctIndices: [0, 1, 2, 4], explanation: "Purpose, fit, reliability, and total cost matter. Hype and image are exactly what a responsible buyer ignores.")
        ]),
        flashcards: [
            Flashcard(id: "fire402_f1", front: "Purpose-First Selection", back: "Defining the job (defense, carry, hunting, sport) before choosing category and specifications"),
            Flashcard(id: "fire402_f2", front: "Fit", back: "How well a firearm matches your hand and body -- grip size, weight, recoil, and reach to the controls"),
            Flashcard(id: "fire402_f3", front: ".22 LR for Learning", back: "An affordable, low-recoil cartridge ideal for building marksmanship fundamentals"),
            Flashcard(id: "fire402_f4", front: "Total Cost of Ownership", back: "The real cost of a firearm including ammunition, training, secure storage, and maintenance")
        ],
        tags: ["selection", "buying", "fit"]
    )

    static let lesson15 = Lesson(
        id: "fire_t4_03",
        categoryId: .firearms,
        tier: 4,
        lessonNumber: 3,
        title: "A Responsible Training Progression",
        subtitle: "Building real skill over time, safely",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fire_t4_02"],
        contentBlocks: [
            ContentBlock(id: "fire403_b1", type: .whyMatters, title: "Why Training Is a Lifelong Practice", bullets: [
                "Owning a firearm without training is like owning a tool you never learned to use safely.",
                "Skill is perishable -- it fades without regular, deliberate practice.",
                "A structured progression turns a beginner into a confident, safe, capable shooter over time."
            ], callouts: ["This is education only. Seek qualified, certified, in-person instruction for actual skill development."]),
            ContentBlock(id: "fire403_b2", type: .stepByStep, title: "A Sensible Skill Ladder", bullets: [
                "1. Foundations -- master the four safety rules and basic operation cold before live fire.",
                "2. Fundamentals -- stance, grip, sights, trigger, and breathing with a qualified instructor.",
                "3. Live-fire marksmanship -- slow, accurate shooting at close distance, then extend gradually.",
                "4. Manipulations -- loading, reloading, malfunction clearing, and safe handling under mild stress.",
                "5. Applied and defensive courses -- only after fundamentals are solid and safe."
            ], callouts: ["Do not skip rungs. Speed and stress drills come after, not before, safe fundamentals."]),
            ContentBlock(id: "fire403_b3", type: .proTips, title: "Practice That Actually Builds Skill", bullets: [
                "Dry-fire regularly with a verified-empty firearm to refine trigger control at zero cost.",
                "Quality over quantity -- focused, deliberate reps beat blasting ammo carelessly.",
                "Track progress with targets and notes so you can see real improvement.",
                "Cross-train fitness and stress management; performance degrades under fatigue and adrenaline."
            ], callouts: ["Before every dry-fire session, remove all ammunition from the room and triple-check the chamber."]),
            ContentBlock(id: "fire403_b4", type: .commonMistakes, title: "Training Mistakes", bullets: [
                "Rushing to advanced or 'tactical' drills before fundamentals are reflexive.",
                "Practicing bad habits repeatedly, ingraining them permanently.",
                "Treating one class as 'done' -- skill needs ongoing maintenance.",
                "Never practicing under any stress, then expecting to perform under real stress."
            ]),
            ContentBlock(id: "fire403_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Climb the ladder in order: foundations, fundamentals, marksmanship, manipulations, applied.",
                "Dry-fire and deliberate practice build skill cheaply and effectively.",
                "Training is ongoing -- skill fades without it, so keep showing up."
            ])
        ],
        quiz: Quiz(id: "fire403_q", passPercent: 80, questions: [
            Question(id: "fire403_q1", prompt: "Match each training stage to its focus.", matchingPairs: [
                MatchingPair(left: "Foundations", right: "Safety rules and basic operation"),
                MatchingPair(left: "Fundamentals", right: "Stance, grip, sights, trigger, breathing"),
                MatchingPair(left: "Manipulations", right: "Loading, reloading, clearing malfunctions"),
                MatchingPair(left: "Applied courses", right: "Defensive skills after fundamentals are solid")
            ], explanation: "A responsible progression climbs in order; skipping rungs builds unsafe, unreliable habits."),
            Question(id: "fire403_q2", type: .scenario, prompt: "A shooter who just learned the basics wants to jump straight into fast-draw and movement drills. The sound advice is:", choices: ["Go for it -- learning fast is best", "Build safe, reflexive fundamentals first, then add speed and stress", "Skip fundamentals; they slow you down", "Only practice with stress to toughen up"], correctIndex: 1, explanation: "Speed and stress amplify whatever habits you have. Build safe fundamentals first, then layer in speed and stress gradually."),
            Question(id: "fire403_q3", prompt: "Practicing trigger control with a verified-empty firearm is called ____.", acceptedAnswers: ["dry-fire", "dry fire", "dry firing", "dry-fire practice"], explanation: "Dry-fire practice refines trigger control and manipulations at no ammo cost -- always with a confirmed-empty firearm."),
            Question(id: "fire403_q4", type: .multiSelect, prompt: "Which are marks of responsible training?", choices: ["Climbing the skill ladder in order", "Deliberate, focused repetitions", "Tracking progress over time", "Ingraining bad habits through careless reps", "Treating one class as the finish line"], correctIndices: [0, 1, 2], explanation: "Ordered progression, deliberate practice, and tracking progress build real skill. Careless reps and 'one and done' do the opposite.")
        ]),
        flashcards: [
            Flashcard(id: "fire403_f1", front: "Skill Ladder", back: "A staged progression: foundations, fundamentals, marksmanship, manipulations, then applied or defensive training"),
            Flashcard(id: "fire403_f2", front: "Perishable Skill", back: "The reality that shooting ability fades without regular, deliberate practice"),
            Flashcard(id: "fire403_f3", front: "Deliberate Practice", back: "Focused, intentional repetitions aimed at improvement -- quality over volume"),
            Flashcard(id: "fire403_f4", front: "Manipulations", back: "The handling skills of loading, reloading, and clearing malfunctions, ideally practiced under mild stress")
        ],
        tags: ["training", "progression", "skill"]
    )

    static let lesson16 = Lesson(
        id: "fire_t4_04",
        categoryId: .firearms,
        tier: 4,
        lessonNumber: 4,
        title: "The Aftermath: Legal and Financial Reality",
        subtitle: "What happens after a defensive use of force",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["fire_t4_03"],
        contentBlocks: [
            ContentBlock(id: "fire404_b1", type: .whyMatters, title: "Why the Aftermath Demands Forethought", bullets: [
                "A defensive shooting does not end when the threat stops -- a long legal and financial process begins.",
                "Even a fully justified defender can face investigation, prosecution, and civil lawsuits.",
                "Understanding this reality reinforces why avoidance is always the first goal."
            ], callouts: ["This is general education, not legal advice. Consult a licensed attorney in your jurisdiction for anything specific to your situation."]),
            ContentBlock(id: "fire404_b2", type: .systemOverview, title: "What Typically Follows", bullets: [
                "Police response and a scene investigation, regardless of how clearly justified the act seems.",
                "Possible detention, questioning, and seizure of your firearm as evidence.",
                "A prosecutor's review of whether to file charges.",
                "Potential civil litigation from the other party or their family, even after no criminal charge."
            ]),
            ContentBlock(id: "fire404_b3", type: .principles, title: "Protecting Yourself Legally", bullets: [
                "Anything you say can be used against you -- many attorneys advise stating you will cooperate fully after speaking with counsel.",
                "Request an attorney before giving a detailed statement; this is a right, not an admission.",
                "Cooperate calmly with lawful police commands while invoking that right.",
                "Document nothing on social media -- posts become evidence."
            ], callouts: ["Knowing when to stop talking and ask for a lawyer is itself a critical safety skill."]),
            ContentBlock(id: "fire404_b4", type: .realWorld, title: "The Financial Reality", bullets: [
                "Criminal defense and civil defense can each cost tens of thousands of dollars or far more.",
                "Self-defense legal protection programs or insurance exist to help offset these costs -- research them carefully before relying on one.",
                "Lost income, bail, and expert witnesses add up quickly during a long process.",
                "These costs are a real part of the responsibility you accept when you choose to carry."
            ]),
            ContentBlock(id: "fire404_b5", type: .summary, title: "The Bottom Line", bullets: [
                "A justified shooting can still mean investigation, charges, lawsuits, and major expense.",
                "Know your rights, ask for an attorney before detailed statements, and stay off social media.",
                "The full weight of the aftermath is the strongest argument for awareness and avoidance."
            ])
        ],
        quiz: Quiz(id: "fire404_q", passPercent: 80, questions: [
            Question(id: "fire404_q1", type: .scenario, prompt: "After a justified defensive use of force, police arrive and begin questioning you in detail. The wise approach is to:", choices: ["Explain everything immediately to clear it up", "State you will cooperate fully and request an attorney before a detailed statement", "Say nothing at all and resist", "Post your account online to set the record straight"], correctIndex: 1, explanation: "Calmly indicating you will cooperate and requesting counsel before a detailed statement protects you. Resisting and posting online both create serious problems."),
            Question(id: "fire404_q2", type: .multiSelect, prompt: "Which can follow even a fully justified defensive shooting?", choices: ["A police investigation", "Seizure of your firearm as evidence", "Possible criminal charges", "Civil lawsuits", "Automatic immunity from all consequences"], correctIndices: [0, 1, 2, 3], explanation: "Investigation, evidence seizure, possible charges, and civil suits can all follow. There is no automatic immunity from every consequence."),
            Question(id: "fire404_q3", prompt: "Before giving a detailed statement to investigators, it is generally wise to request a(n) ____.", acceptedAnswers: ["attorney", "lawyer", "an attorney", "a lawyer", "counsel"], explanation: "Requesting an attorney before a detailed statement is a right, not an admission, and helps protect you during the process."),
            Question(id: "fire404_q4", type: .multipleChoice, prompt: "Why should a defender avoid posting about an incident on social media?", choices: ["It is against firearm law everywhere", "Posts can become evidence used against you", "It violates range etiquette", "It cancels your insurance automatically"], correctIndex: 1, explanation: "Social media posts can be used as evidence. After any incident, document nothing publicly and let your attorney guide communication."),
            Question(id: "fire404_q5", type: .scenario, prompt: "A friend says 'If it's clearly self-defense, there's nothing to worry about afterward.' The accurate response is:", choices: ["True -- justification ends the matter on the spot", "Even justified force can bring investigation, charges, lawsuits, and large costs", "Only the criminal side ever matters", "Civil suits are impossible after self-defense"], correctIndex: 1, explanation: "Justification does not erase the aftermath. Investigation, prosecution, civil suits, and expense are all possible, which is why avoidance comes first.")
        ]),
        flashcards: [
            Flashcard(id: "fire404_f1", front: "Defensive Aftermath", back: "The legal and financial process -- investigation, possible charges, and civil suits -- that can follow a defensive use of force"),
            Flashcard(id: "fire404_f2", front: "Right to Counsel", back: "The right to request an attorney before giving a detailed statement; invoking it is not an admission of guilt"),
            Flashcard(id: "fire404_f3", front: "Civil vs. Criminal Liability", back: "A defender can face criminal charges and a separate civil lawsuit, even if no criminal charge is filed"),
            Flashcard(id: "fire404_f4", front: "Self-Defense Legal Protection", back: "Programs or insurance designed to offset the substantial legal costs of a defensive incident; research carefully before relying on one")
        ],
        tags: ["legal", "aftermath", "responsibility"]
    )
}
