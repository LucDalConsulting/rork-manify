import Foundation

enum SelfDefenseLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "def_t1_01",
        categoryId: .selfDefense,
        tier: 1,
        lessonNumber: 1,
        title: "Situational Awareness: The Real #1 Skill",
        subtitle: "The fight you win is the one you never have",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "def101_b1", type: .whyMatters, title: "Why Awareness Beats Skill", bullets: [
                "Most violence telegraphs itself. People who get ambushed were usually distracted, not outmatched.",
                "Awareness gives you time, and time gives you options: leave, create distance, call for help, prepare.",
                "No striking or grappling skill matters if you never saw the threat coming.",
                "The strongest people in any room are usually the ones who notice problems early and quietly avoid them."
            ], body: "Self-defense is decided long before contact. Awareness is the cheapest, most powerful tool you own, and it costs nothing but attention.", callouts: [
                "This is educational material, not a substitute for in-person training with a qualified instructor."
            ]),
            ContentBlock(id: "def101_b2", type: .systemOverview, title: "Cooper's Color Code", bullets: [
                "White: switched off, unaware, absorbed in your phone. The most dangerous state in public.",
                "Yellow: relaxed alertness. You notice who and what is around you without being paranoid. This is the goal in public.",
                "Orange: a specific thing has your attention. You identify a possible problem and form a plan.",
                "Red: the threat is real and you act on the plan you already made."
            ], body: "Developed by firearms instructor Jeff Cooper, the color code is a mental ladder. The aim is to live in Yellow when out in the world, not White."),
            ContentBlock(id: "def101_b3", type: .stepByStep, title: "Building the Habit", bullets: [
                "When you enter any space, locate the exits within the first few seconds.",
                "Scan hands, not faces. Hands hold weapons and signal intent.",
                "Pick a baseline for the environment, then watch for what breaks it.",
                "Put the phone away in transitional spaces: parking lots, stairwells, ATMs, doorways.",
                "Trust the early hit of unease and act on it before you can talk yourself out of it."
            ]),
            ContentBlock(id: "def101_b4", type: .commonMistakes, title: "How Awareness Fails", bullets: [
                "Living in Condition White because the phone owns your attention.",
                "Confusing paranoia with awareness. Paranoia is exhausting; awareness is calm and sustainable.",
                "Noticing a problem and then ignoring it to avoid feeling rude or silly.",
                "Only being alert in obviously sketchy places, then dropping your guard everywhere familiar."
            ], callouts: [
                "Most assaults of people who train still come from being caught in White. Awareness is a daily practice, not a switch."
            ]),
            ContentBlock(id: "def101_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Awareness buys time; time buys options; options keep you safe.",
                "Live in Yellow in public, escalate to Orange and Red only when needed.",
                "Your gut detects patterns your conscious mind has not finished naming. Listen to it."
            ])
        ],
        quiz: Quiz(id: "def101_q", passPercent: 80, questions: [
            Question(id: "def101_q1", prompt: "Match each Cooper color code level to its meaning.", matchingPairs: [
                MatchingPair(left: "White", right: "Unaware and switched off"),
                MatchingPair(left: "Yellow", right: "Relaxed alertness, the public default"),
                MatchingPair(left: "Orange", right: "A specific potential threat identified"),
                MatchingPair(left: "Red", right: "Acting on your plan against a real threat")
            ], explanation: "The color code is a mental ladder. The goal is to live in Yellow and climb only as needed."),
            Question(id: "def101_q2", type: .multipleChoice, prompt: "You walk into a gas station at night, head down, scrolling your phone. In Cooper's terms you are in:", choices: ["Yellow, relaxed alertness", "Orange, threat identified", "White, the most vulnerable state", "Red, ready to act"], correctIndex: 2, explanation: "Absorbed in your phone with no scan of the environment is Condition White, the state where most people get ambushed."),
            Question(id: "def101_q3", prompt: "The ideal everyday state in public is relaxed alertness, known in the color code as Condition _____.", acceptedAnswers: ["yellow", "condition yellow"], explanation: "Yellow is relaxed alertness: aware of your surroundings without being paranoid or tense."),
            Question(id: "def101_q4", type: .multiSelect, prompt: "Which habits genuinely build situational awareness?", choices: ["Locating exits when entering a space", "Watching people's hands", "Staying buried in your phone in parking lots", "Establishing a baseline and noticing what breaks it", "Trusting and acting on early unease"], correctIndices: [0, 1, 3, 4], explanation: "Exits, hands, baselines, and trusting your gut all build awareness. Burying yourself in your phone destroys it."),
            Question(id: "def101_q5", type: .scenario, prompt: "Crossing a parking garage, you feel a vague unease about a man loitering near your car with no clear reason to be there. The best response is:", choices: ["Ignore it so you don't seem rude or paranoid", "Walk straight to your car as planned", "Change your path, return to a populated area, and reassess", "Confront him and ask what he wants"], correctIndex: 2, explanation: "Early unease often detects a real pattern. Creating distance and returning to people costs you nothing and keeps options open."),
        ]),
        flashcards: [
            Flashcard(id: "def101_f1", front: "Situational awareness", back: "The practice of continuously noticing your environment and the people in it so you spot problems early"),
            Flashcard(id: "def101_f2", front: "Condition Yellow", back: "Relaxed alertness; the recommended everyday mental state in public"),
            Flashcard(id: "def101_f3", front: "Condition White", back: "Unaware and switched off; the most vulnerable state to be in among strangers"),
            Flashcard(id: "def101_f4", front: "Baseline", back: "The normal pattern of behavior in an environment; anomalies that break it deserve attention")
        ],
        tags: ["awareness", "avoidance", "foundations"]
    )

    static let lesson2 = Lesson(
        id: "def_t1_02",
        categoryId: .selfDefense,
        tier: 1,
        lessonNumber: 2,
        title: "Reading and De-escalating Threats",
        subtitle: "Spot the warning signs and lower the temperature",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["def_t1_01"],
        contentBlocks: [
            ContentBlock(id: "def102_b1", type: .whyMatters, title: "Why De-escalation Wins", bullets: [
                "The cheapest victory is the confrontation that ends in words, not violence.",
                "De-escalation protects you legally, physically, and morally; courts and witnesses notice who tried to calm things down.",
                "Most aggressors want compliance, an audience, or to save face, not an actual fight.",
                "Giving an angry person a dignified way out is a skill, not weakness."
            ]),
            ContentBlock(id: "def102_b2", type: .componentBreakdown, title: "Pre-Assault Indicators", bullets: [
                "Target glancing: repeatedly checking who is watching before acting.",
                "Closing distance with no legitimate reason, especially angling to your side or back.",
                "Hands hidden, clenching, or reaching toward a waistband or pocket.",
                "Sudden stillness or a flat, fixed stare after agitation, often called the predatory pause.",
                "Verbal escalation: insults, repeated questions, and demands designed to test your reaction."
            ], body: "Aggressors leak intent through body language before they act. Learning these tells buys you the seconds that decide everything."),
            ContentBlock(id: "def102_b3", type: .stepByStep, title: "The De-escalation Playbook", bullets: [
                "Keep your hands up, open, and visible in a non-threatening fence posture between you and them.",
                "Lower your volume and slow your speech; calm is contagious, and so is panic.",
                "Use non-challenging language: I don't want any trouble, you're right, my mistake.",
                "Give them an exit that lets them save face instead of cornering their ego.",
                "Create and keep distance; move toward exits, light, and other people."
            ], callouts: [
                "Never let de-escalation freeze you in place. Talking and moving toward safety happen at the same time."
            ]),
            ContentBlock(id: "def102_b4", type: .commonMistakes, title: "What Makes It Worse", bullets: [
                "Matching their volume and insults; you are now feeding the fire.",
                "Issuing ultimatums or challenges that force them to act to save face.",
                "Invading their space or jabbing a finger, which reads as the first strike.",
                "Turning your back or looking down at your phone mid-confrontation."
            ]),
            ContentBlock(id: "def102_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Read the pre-assault tells: target glancing, hidden hands, closing distance, the predatory pause.",
                "De-escalate with calm voice, open hands, face-saving exits, and distance.",
                "The goal is not to win the argument; it is to leave unharmed."
            ])
        ],
        quiz: Quiz(id: "def102_q", passPercent: 80, questions: [
            Question(id: "def102_q1", type: .multiSelect, prompt: "Which of these are recognized pre-assault indicators?", choices: ["Target glancing to see who is watching", "Hands hidden or reaching toward the waistband", "Offering a calm handshake", "Closing distance with no legitimate reason", "A sudden flat, fixed stare after agitation"], correctIndices: [0, 1, 3, 4], explanation: "Target glancing, hidden hands, unjustified closing of distance, and the predatory pause are classic pre-assault tells."),
            Question(id: "def102_q2", type: .scenario, prompt: "An angry stranger is shouting at you over a parking spot, drawing a crowd. The most effective de-escalation move is:", choices: ["Shout back to show you're not intimidated", "Lower your voice, keep open hands up, and give him a face-saving exit", "Step into his space and tell him to back off", "Turn your back and ignore him"], correctIndex: 1, explanation: "Calm voice, open visible hands, and an off-ramp that lets him save face defuse far more situations than matching aggression."),
            Question(id: "def102_q3", prompt: "The sudden stillness and flat stare an aggressor shows right before attacking is often called the predatory _____.", acceptedAnswers: ["pause", "predatory pause"], explanation: "The predatory pause is a sudden calm or fixed stare that frequently precedes an attack."),
            Question(id: "def102_q4", prompt: "Match each action to whether it de-escalates or escalates a confrontation.", matchingPairs: [
                MatchingPair(left: "Lowering your voice", right: "De-escalates"),
                MatchingPair(left: "Offering a face-saving exit", right: "De-escalates"),
                MatchingPair(left: "Jabbing a finger in their face", right: "Escalates"),
                MatchingPair(left: "Issuing an ultimatum", right: "Escalates")
            ], explanation: "Calm voice and dignified off-ramps cool a situation; finger-jabbing and ultimatums force a person to fight to save face."),
            Question(id: "def102_q5", type: .scenario, prompt: "While de-escalating, where should your attention and feet be going?", choices: ["Standing perfectly still so you don't provoke them", "Talking calmly while also moving toward exits, light, and people", "Turning around to walk away quickly", "Reaching for your phone to record"], correctIndex: 1, explanation: "Good de-escalation is talking and positioning at once: stay calm, keep hands up, and steadily move toward safety.")
        ]),
        flashcards: [
            Flashcard(id: "def102_f1", front: "Pre-assault indicators", back: "Body-language tells, such as target glancing and hidden hands, that signal an attack may be coming"),
            Flashcard(id: "def102_f2", front: "Predatory pause", back: "A sudden stillness or flat stare that often immediately precedes an attack"),
            Flashcard(id: "def102_f3", front: "Fence posture", back: "Hands up, open, and visible between you and a potential threat; non-threatening but ready"),
            Flashcard(id: "def102_f4", front: "Face-saving exit", back: "An off-ramp that lets an aggressor back down without losing pride, reducing the need to fight")
        ],
        tags: ["de-escalation", "threat-reading", "foundations"]
    )

    static let lesson3 = Lesson(
        id: "def_t1_03",
        categoryId: .selfDefense,
        tier: 1,
        lessonNumber: 3,
        title: "The Defender Mindset",
        subtitle: "Calm, decisive, and protective under pressure",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["def_t1_02"],
        contentBlocks: [
            ContentBlock(id: "def103_b1", type: .whyMatters, title: "Mindset Is the Engine", bullets: [
                "Under threat, your body reverts to whatever your mind rehearsed. A blank mind freezes.",
                "The defender mindset is protective, not aggressive: you defend life and dignity, you do not pick fights.",
                "Decisiveness, more than strength, separates people who get through a crisis from those who lock up.",
                "A clear personal code about when to act removes hesitation in the moment."
            ], body: "Skills are the hardware; mindset is the operating system. The right mindset turns training into action when it counts."),
            ContentBlock(id: "def103_b2", type: .principles, title: "Core Principles of the Defender", bullets: [
                "Avoidance first: the best fight is the one that never happens.",
                "Protect, do not punish: force is to stop a threat and escape, never revenge.",
                "Decide in advance: know your lines so the moment doesn't decide for you.",
                "Stay in control of yourself: ego and rage make worse decisions than fear ever will.",
                "Aftermath matters: surviving the encounter includes surviving the legal and emotional fallout."
            ], callouts: [
                "Carrying a tool or learning a technique does not create a defender. The mindset and judgment do."
            ]),
            ContentBlock(id: "def103_b3", type: .howItWorks, title: "Managing the Body's Alarm", bullets: [
                "Adrenaline narrows vision, speeds the heart, and degrades fine motor skills; this is normal.",
                "Combat or tactical breathing (in 4, hold 4, out 4, hold 4) lowers heart rate and restores thinking.",
                "Naming what you feel (I am scared, and I can still act) keeps the thinking brain online.",
                "Rehearsed simple plans survive adrenaline; complex plans collapse under it."
            ]),
            ContentBlock(id: "def103_b4", type: .commonMistakes, title: "Mindset Failures", bullets: [
                "Letting ego turn a survivable insult into an avoidable fight.",
                "Freezing because no decision was ever rehearsed.",
                "Going looking for trouble to prove toughness, which is the opposite of a defender.",
                "Believing a weapon or a black belt makes mindset optional."
            ]),
            ContentBlock(id: "def103_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Be calm, decisive, and protective; avoid first and act only to stop a threat and escape.",
                "Use tactical breathing to keep the thinking brain online under adrenaline.",
                "Decide your lines in advance so the moment never decides for you."
            ])
        ],
        quiz: Quiz(id: "def103_q", passPercent: 80, questions: [
            Question(id: "def103_q1", type: .scenario, prompt: "A man insults you loudly in front of others but makes no move toward you. The defender mindset says:", choices: ["Confront him to defend your reputation", "Absorb the insult, disengage, and leave with your safety intact", "Escalate so he learns a lesson", "Stand your ground and dare him to act"], correctIndex: 1, explanation: "A defender protects life and safety, not ego. A survivable insult is not worth an avoidable fight."),
            Question(id: "def103_q2", prompt: "The 4-count breathing pattern (in 4, hold 4, out 4, hold 4) used to control the adrenaline response is called combat or _____ breathing.", acceptedAnswers: ["tactical", "box", "tactical breathing", "box breathing"], explanation: "Tactical or box breathing slows the heart rate and helps keep the thinking brain online under stress."),
            Question(id: "def103_q3", type: .multiSelect, prompt: "Which are core principles of the defender mindset?", choices: ["Avoidance comes first", "Use force to punish, not just to stop", "Decide your lines in advance", "Protect rather than seek revenge", "Stay in control of your own ego"], correctIndices: [0, 2, 3, 4], explanation: "The defender avoids first, decides in advance, protects rather than punishes, and controls ego. Force is never for punishment."),
            Question(id: "def103_q4", prompt: "Match each adrenaline effect to its description.", matchingPairs: [
                MatchingPair(left: "Tunnel vision", right: "Narrowed visual field under stress"),
                MatchingPair(left: "Loss of fine motor control", right: "Hands and fingers get clumsy"),
                MatchingPair(left: "Elevated heart rate", right: "Heart races, impairing clear thought"),
                MatchingPair(left: "Tactical breathing", right: "Tool that counters the stress response")
            ], explanation: "Adrenaline causes tunnel vision, clumsy hands, and a racing heart; tactical breathing helps counter all three."),
            Question(id: "def103_q5", type: .scenario, prompt: "You realize during a tense encounter that your heart is pounding and your hands are shaking. The smartest immediate move is:", choices: ["Push the fear away and pretend you're fine", "Use tactical breathing and a simple pre-rehearsed plan", "Attempt a complicated technique to feel in control", "Apologize for being afraid"], correctIndex: 1, explanation: "Adrenaline is expected. Tactical breathing plus a simple rehearsed plan keeps you functional; complex plans fall apart under stress.")
        ]),
        flashcards: [
            Flashcard(id: "def103_f1", front: "Defender mindset", back: "A calm, decisive, protective state of mind focused on avoiding harm and stopping threats, not seeking fights"),
            Flashcard(id: "def103_f2", front: "Tactical breathing", back: "A 4-count breathing pattern (in, hold, out, hold) that calms the adrenaline response under stress"),
            Flashcard(id: "def103_f3", front: "Freeze response", back: "Locking up under threat, common when no decision or plan was ever rehearsed in advance"),
            Flashcard(id: "def103_f4", front: "Protect not punish", back: "The principle that force exists to stop a threat and escape, never for revenge or punishment")
        ],
        tags: ["mindset", "psychology", "foundations"]
    )

    static let lesson4 = Lesson(
        id: "def_t1_04",
        categoryId: .selfDefense,
        tier: 1,
        lessonNumber: 4,
        title: "Legal and Ethical Basics of Self-Defense",
        subtitle: "Know the lines before you ever need them",
        estimatedMinutes: 9,
        difficulty: 1,
        prerequisites: ["def_t1_03"],
        contentBlocks: [
            ContentBlock(id: "def104_b1", type: .whyMatters, title: "Why the Law Matters", bullets: [
                "Winning the physical fight but losing in court can cost you your freedom and your future.",
                "The law generally treats self-defense as a justification, meaning you may have to prove your actions were reasonable.",
                "Knowing the framework keeps your response inside what the law and your conscience will support.",
                "Ignorance of the law is not a defense; understanding it is part of being responsible."
            ], callouts: [
                "This is general education, not legal advice. Laws vary widely by state and country. Consult a qualified attorney about your local laws."
            ]),
            ContentBlock(id: "def104_b2", type: .keyTerms, title: "The Core Legal Concepts", bullets: [
                "Reasonable belief: would an ordinary, reasonable person in your shoes have feared imminent harm?",
                "Imminence: the threat must be happening now or about to, not a past wrong or a future maybe.",
                "Proportionality: the force used must roughly match the threat faced, not exceed it.",
                "Duty to retreat vs Stand Your Ground: some places require retreating if safe; others do not. This varies by jurisdiction.",
                "Castle Doctrine: many places give extra legal protection for defending yourself inside your own home."
            ], body: "Most self-defense law turns on a few recurring ideas. The exact rules differ by place, but these concepts appear almost everywhere."),
            ContentBlock(id: "def104_b3", type: .principles, title: "The Ethical Lines", bullets: [
                "Force is to stop a threat, and it must stop the instant the threat does.",
                "You cannot start a fight and then claim self-defense for finishing it.",
                "Defending others follows similar rules, but you must be sure you understand who the actual aggressor is.",
                "The least force that ends the threat is both the most ethical and the most legally defensible."
            ]),
            ContentBlock(id: "def104_b4", type: .ownerActions, title: "After a Defensive Incident", bullets: [
                "Get to safety first and call emergency services; report that you were attacked and need help.",
                "Render the scene safe; do not chase a fleeing attacker, which can flip you into the aggressor.",
                "Limit detailed statements until you have spoken with an attorney; say you will cooperate fully.",
                "Document what you can: injuries, witnesses, location, and time."
            ], callouts: [
                "What you say to police can be used in court. Be cooperative and brief, and ask for legal counsel before a detailed statement."
            ]),
            ContentBlock(id: "def104_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Lawful self-defense generally requires reasonable belief, imminence, and proportionality.",
                "Retreat rules, Stand Your Ground, and Castle Doctrine vary by jurisdiction; learn yours.",
                "Force ends when the threat ends; afterward, get safe, get help, and get legal counsel."
            ])
        ],
        quiz: Quiz(id: "def104_q", passPercent: 80, questions: [
            Question(id: "def104_q1", prompt: "Match each legal concept to its meaning.", matchingPairs: [
                MatchingPair(left: "Imminence", right: "The threat is happening now or about to"),
                MatchingPair(left: "Proportionality", right: "Force must roughly match the threat"),
                MatchingPair(left: "Reasonable belief", right: "A reasonable person would fear harm too"),
                MatchingPair(left: "Castle Doctrine", right: "Extra protection for defending your home")
            ], explanation: "Imminence, proportionality, reasonable belief, and Castle Doctrine are recurring pillars of self-defense law."),
            Question(id: "def104_q2", type: .scenario, prompt: "Someone shoves you, then turns and runs away. You chase him down and keep fighting. Legally, this is risky because:", choices: ["Chasing always proves courage", "Once the threat is fleeing, it is no longer imminent and you may become the aggressor", "Proportionality does not apply outdoors", "Self-defense has no time limit"], correctIndex: 1, explanation: "Self-defense generally ends when the threat ends. Pursuing a fleeing person can turn you from defender into aggressor."),
            Question(id: "def104_q3", prompt: "The legal principle that the force you use must roughly match the threat you face is called _____.", acceptedAnswers: ["proportionality", "proportional force", "proportional"], explanation: "Proportionality requires that defensive force be in reasonable proportion to the threat; excessive force can be unlawful."),
            Question(id: "def104_q4", type: .multiSelect, prompt: "Which statements about self-defense law are generally true?", choices: ["Force should stop when the threat stops", "You can start a fight and still claim self-defense for finishing it", "Reasonable belief of imminent harm is usually required", "Retreat rules vary by jurisdiction", "The least force that ends the threat is the most defensible"], correctIndices: [0, 2, 3, 4], explanation: "Force ends with the threat, reasonable belief is required, retreat rules vary, and minimal force is most defensible. You cannot start a fight and claim self-defense."),
            Question(id: "def104_q5", type: .scenario, prompt: "Immediately after defending yourself from an attacker who has now fled, the wisest sequence is:", choices: ["Post about it online to establish your version", "Get safe, call emergency services, cooperate briefly, and ask for an attorney before a detailed statement", "Give a long, detailed statement on the spot to seem honest", "Leave the scene and tell no one"], correctIndex: 1, explanation: "Get safe and call for help, state you were attacked, then be brief and request counsel before any detailed statement, since what you say can be used in court.")
        ]),
        flashcards: [
            Flashcard(id: "def104_f1", front: "Imminence", back: "The requirement that a threat be happening now or immediately about to, not past or merely possible"),
            Flashcard(id: "def104_f2", front: "Proportionality", back: "The requirement that defensive force roughly match the level of the threat faced"),
            Flashcard(id: "def104_f3", front: "Duty to retreat", back: "A rule in some jurisdictions requiring you to retreat if you can safely do so before using force"),
            Flashcard(id: "def104_f4", front: "Castle Doctrine", back: "Legal protection in many places for using force to defend yourself within your own home")
        ],
        tags: ["legal", "ethics", "foundations"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "def_t2_01",
        categoryId: .selfDefense,
        tier: 2,
        lessonNumber: 1,
        title: "Stance, Base, and Distance Management",
        subtitle: "Stay balanced and control the space",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["def_t1_04"],
        contentBlocks: [
            ContentBlock(id: "def201_b1", type: .whyMatters, title: "Why Position Comes First", bullets: [
                "A balanced stance lets you absorb a shove, move quickly, and stay on your feet.",
                "Controlling distance is the physical version of awareness: it keeps a threat outside arm's reach.",
                "Most untrained people lose because they are flat-footed and let an attacker close uninterrupted.",
                "Footwork and spacing keep you safe far more often than any single technique."
            ], callouts: [
                "This is conceptual education. Stance, movement, and contact skills must be practiced live with a qualified coach to be reliable."
            ]),
            ContentBlock(id: "def201_b2", type: .componentBreakdown, title: "Building a Solid Base", bullets: [
                "Feet roughly shoulder-width, one foot slightly back, weight on the balls of the feet.",
                "Knees softly bent, hips loaded, never locked straight; a locked stance topples easily.",
                "Hands up in a non-threatening fence, elbows in, chin tucked slightly.",
                "Stay mobile; a frozen stance is a target, a balanced moving stance is hard to hit and hard to take down."
            ], body: "Base is the foundation balance that keeps you upright and ready. Lose your base and you lose every option you had."),
            ContentBlock(id: "def201_b3", type: .systemOverview, title: "The Ranges of a Confrontation", bullets: [
                "Safe range: too far to be touched; here you talk, plan, and escape.",
                "Danger range: roughly one to two arm-lengths; an attacker can reach you in a fraction of a second.",
                "Contact range: hands-on; striking, grabbing, and grappling happen here.",
                "Your job is to stay in safe range as long as possible and re-create it whenever you can."
            ]),
            ContentBlock(id: "def201_b4", type: .stepByStep, title: "Managing Distance with the Fence", bullets: [
                "Put your hands up, open, palms toward the threat as a verbal and physical boundary.",
                "Match their movement: when they step in, you step back and to an angle, keeping the gap.",
                "Move off the line of attack rather than straight back, which is slower than they advance.",
                "Use barriers: a car, table, or doorway between you buys time and space.",
                "Re-set distance after any contact so you can reassess and escape."
            ]),
            ContentBlock(id: "def201_b5", type: .commonMistakes, title: "Where People Go Wrong", bullets: [
                "Standing square and flat-footed, which collapses under the first push.",
                "Backing straight up in a line; a determined attacker covers that ground faster than you retreat.",
                "Letting someone close inside arm's reach while still just talking.",
                "Locking the knees or leaning back, both of which destroy balance."
            ]),
            ContentBlock(id: "def201_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Balanced base: feet staggered, knees soft, weight forward, hands up.",
                "Guard your distance; safe range is where talking and escape live.",
                "Move on angles and use barriers; never let a threat close uninterrupted."
            ])
        ],
        quiz: Quiz(id: "def201_q", passPercent: 80, questions: [
            Question(id: "def201_q1", type: .multiSelect, prompt: "Which elements describe a solid defensive base?", choices: ["Feet roughly shoulder-width, one slightly back", "Knees locked straight for stability", "Weight on the balls of the feet", "Hands up in a fence with chin tucked", "Standing square and flat-footed"], correctIndices: [0, 2, 3], explanation: "A solid base has staggered feet, weight forward on the balls of the feet, and hands up. Locked knees and a flat square stance fail."),
            Question(id: "def201_q2", type: .scenario, prompt: "An aggressor is advancing on you. Backing straight away is risky because:", choices: ["It looks too aggressive", "A determined attacker covers straight-line ground faster than you can retreat", "It is against the law", "It puts your hands down"], correctIndex: 1, explanation: "Straight-line retreat is slower than an advance. Moving back and to an angle, off the line of attack, preserves the gap."),
            Question(id: "def201_q3", prompt: "The roughly one-to-two arm-length zone where an attacker can reach you almost instantly is called the _____ range.", acceptedAnswers: ["danger", "danger range"], explanation: "Danger range is within one to two arm-lengths, where an attacker can close and strike before you can react."),
            Question(id: "def201_q4", prompt: "Match each range to what you should be doing there.", matchingPairs: [
                MatchingPair(left: "Safe range", right: "Talk, plan, and escape"),
                MatchingPair(left: "Danger range", right: "Be ready; reach is almost instant"),
                MatchingPair(left: "Contact range", right: "Hands-on striking and grappling"),
                MatchingPair(left: "The fence", right: "Open hands marking a boundary")
            ], explanation: "Each range demands a different response. The fence is the open-hand boundary used to manage that distance."),
            Question(id: "def201_q5", type: .scenario, prompt: "While keeping distance in a parking lot, you notice your parked car between you and an aggressor. The smart move is to:", choices: ["Run around the car toward him to surprise him", "Keep the car as a barrier between you while you create more distance and call for help", "Climb onto the car", "Ignore the car and back into the open"], correctIndex: 1, explanation: "Barriers like a car buy time and space. Keeping it between you while creating distance and calling for help is sound distance management.")
        ]),
        flashcards: [
            Flashcard(id: "def201_f1", front: "Base", back: "The balanced, stable foundation of your stance that keeps you upright and ready to move"),
            Flashcard(id: "def201_f2", front: "Distance management", back: "Controlling the gap between you and a threat so they cannot reach you uncontested"),
            Flashcard(id: "def201_f3", front: "The fence", back: "Hands held up, open, and forward as a non-threatening physical and verbal boundary"),
            Flashcard(id: "def201_f4", front: "Off the line", back: "Moving on an angle out of an attacker's path rather than straight backward")
        ],
        tags: ["fundamentals", "footwork", "distance"]
    )

    static let lesson6 = Lesson(
        id: "def_t2_02",
        categoryId: .selfDefense,
        tier: 2,
        lessonNumber: 2,
        title: "Vulnerable Targets and Escaping Grabs",
        subtitle: "Concepts to break free and create space",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["def_t2_01"],
        contentBlocks: [
            ContentBlock(id: "def202_b1", type: .safety, title: "Read This First", bullets: [
                "This lesson teaches concepts only; escapes and strikes require live, supervised practice to work under pressure.",
                "The goal of any technique here is the same: break free and escape, not to win a brawl.",
                "Train these with a qualified instructor and a willing partner before you ever rely on them.",
                "Use force only when avoidance and de-escalation have failed and you reasonably believe you are in danger."
            ], callouts: [
                "Educational material, not a substitute for hands-on training. Practicing techniques wrong can build false confidence that gets you hurt."
            ]),
            ContentBlock(id: "def202_b2", type: .componentBreakdown, title: "High-Value Vulnerable Targets", bullets: [
                "Eyes: even light contact triggers a flinch and blinks that interrupt an attacker's plan.",
                "Throat: a sensitive area where even modest pressure disrupts breathing and focus.",
                "Nose: rich in nerves; contact causes watering eyes and a strong reflexive reaction.",
                "Groin: a reliable distraction target, though less reliable on a highly adrenalized attacker.",
                "Knees and shins: structural targets; damage here limits an attacker's ability to chase you."
            ], body: "When force is justified, aim for targets that create an opening to escape rather than trading blows toe to toe."),
            ContentBlock(id: "def202_b3", type: .principles, title: "The Physics of Escaping a Grab", bullets: [
                "Work against the thumb: a grip is weakest where the thumb meets the fingers.",
                "Move early; a grab is easiest to break in the first instant before it sets.",
                "Use your whole body and large muscles, not just the trapped limb.",
                "Create a base, then explode out and away toward open space, not into the attacker."
            ]),
            ContentBlock(id: "def202_b4", type: .stepByStep, title: "Same-Side Wrist Grab Escape (Concept)", bullets: [
                "Drop your base and bend your captured elbow to load power into the arm.",
                "Rotate your trapped hand so your thumb drives toward the gap in their grip.",
                "Pull sharply against their thumb, the weakest point of the grip.",
                "The instant you are free, move off the line and toward an exit; do not admire your work.",
                "Keep your other hand up to protect your head throughout."
            ], callouts: [
                "Reading this is not the same as drilling it. These steps only become reliable through repetition with a coach."
            ]),
            ContentBlock(id: "def202_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Vulnerable targets such as eyes, throat, nose, and knees create openings to escape.",
                "Break grabs by attacking the thumb, moving early, and using your whole body.",
                "Every technique ends the same way: create space and get out, then get help."
            ])
        ],
        quiz: Quiz(id: "def202_q", passPercent: 80, questions: [
            Question(id: "def202_q1", prompt: "When breaking a wrist grab, you pull against the weakest point of the grip, which is the attacker's _____.", acceptedAnswers: ["thumb", "thumbs"], explanation: "A grip is weakest at the thumb. Driving and pulling against the thumb breaks the hold most efficiently."),
            Question(id: "def202_q2", type: .multiSelect, prompt: "Which are commonly taught high-value vulnerable targets for creating an escape?", choices: ["Eyes", "Throat", "Top of the head", "Knees", "Groin"], correctIndices: [0, 1, 3, 4], explanation: "Eyes, throat, knees, and groin are sensitive or structural targets that create openings. The top of the skull is hard and a poor target."),
            Question(id: "def202_q3", type: .multipleChoice, prompt: "An attacker grabs your wrist. Why is reacting in the first instant so important?", choices: ["It looks more impressive", "A grab is easiest to break before it fully sets and the attacker gets control", "The law requires immediate action", "It tires the attacker out"], correctIndex: 1, explanation: "Grabs are easiest to break in the first moment, before the attacker establishes full grip and control."),
            Question(id: "def202_q4", prompt: "Match each vulnerable target to its primary effect.", matchingPairs: [
                MatchingPair(left: "Eyes", right: "Triggers a protective flinch and blink"),
                MatchingPair(left: "Throat", right: "Disrupts breathing and focus"),
                MatchingPair(left: "Knees", right: "Limits the ability to chase you"),
                MatchingPair(left: "Nose", right: "Causes watering eyes and reflex reaction")
            ], explanation: "Each target produces a distinct effect that opens a window to escape."),
            Question(id: "def202_q5", type: .scenario, prompt: "You successfully break free from a grab. Immediately afterward you should:", choices: ["Stay close and keep striking to win", "Move off the line toward an exit and get to safety and help", "Stop to check if the attacker is okay", "Pull out your phone to record"], correctIndex: 1, explanation: "The purpose of every escape is to create space and leave. Breaking free is the start of getting to safety, not an invitation to brawl.")
        ]),
        flashcards: [
            Flashcard(id: "def202_f1", front: "Vulnerable target", back: "A sensitive or structural body area where minimal force creates an opening to escape"),
            Flashcard(id: "def202_f2", front: "Grip weak point", back: "The thumb; a grab is broken most efficiently by working against the thumb"),
            Flashcard(id: "def202_f3", front: "Escape goal", back: "The aim of any defensive technique: break free, create space, and get to safety, not to win a fight"),
            Flashcard(id: "def202_f4", front: "First-instant rule", back: "Grabs are easiest to break in the first moment before the attacker fully sets their grip")
        ],
        tags: ["techniques", "escapes", "targets"]
    )

    static let lesson7 = Lesson(
        id: "def_t2_03",
        categoryId: .selfDefense,
        tier: 2,
        lessonNumber: 3,
        title: "Verbal Boundaries and Assertiveness",
        subtitle: "Words that stop trouble before it starts",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["def_t2_02"],
        contentBlocks: [
            ContentBlock(id: "def203_b1", type: .whyMatters, title: "Your Voice Is a Tool", bullets: [
                "A firm verbal boundary ends most low-level confrontations before any hands are raised.",
                "Clear, loud assertiveness signals you are not an easy target and alerts witnesses.",
                "Setting boundaries early prevents the slow boundary-testing that predators use to gauge victims.",
                "Strong words backed by calm body language do more work than fists ever will."
            ]),
            ContentBlock(id: "def203_b2", type: .stepByStep, title: "The Assertive Boundary Formula", bullets: [
                "Set a clear command: Stop. Back up. I'm not interested.",
                "Keep it short; long explanations invite negotiation and look like weakness.",
                "Match your body: hands up in a fence, square posture, steady eye contact, firm tone.",
                "Repeat once if needed, then escalate to a louder, witness-drawing command.",
                "Mean it; a boundary you do not enforce teaches the other person to keep pushing."
            ], callouts: [
                "A boundary is a statement, not a question. Do not soften it with sorry or maybe."
            ]),
            ContentBlock(id: "def203_b3", type: .proTips, title: "Drawing Witnesses and Help", bullets: [
                "Go loud and specific: Back away from me now is clearer than a vague yell.",
                "Name what is happening so bystanders understand: This man is following me, call the police.",
                "Loud assertiveness recruits the crowd and makes an aggressor self-conscious about an audience.",
                "Point at a specific person and give a direct instruction; crowds freeze, individuals act."
            ]),
            ContentBlock(id: "def203_b4", type: .commonMistakes, title: "Weak Boundary Patterns", bullets: [
                "Apologizing for setting a limit, which signals you can be pushed.",
                "Phrasing the boundary as a question: Could you maybe leave me alone?",
                "Over-explaining and negotiating instead of stating and repeating.",
                "Avoiding eye contact or shrinking your posture while saying strong words."
            ]),
            ContentBlock(id: "def203_b5", type: .summary, title: "The Bottom Line", bullets: [
                "State boundaries as short, firm commands, not soft questions.",
                "Match your words with strong, calm body language to make them land.",
                "Go loud and specific to recruit witnesses and break an aggressor's confidence."
            ])
        ],
        quiz: Quiz(id: "def203_q", passPercent: 80, questions: [
            Question(id: "def203_q1", type: .scenario, prompt: "A stranger keeps following you and ignoring polite hints. The strongest verbal boundary is:", choices: ["Um, could you maybe stop following me?", "Sorry to bother you, but I'd rather be alone", "Stop. Back away from me now.", "Saying nothing and walking faster"], correctIndex: 2, explanation: "A boundary is a short, firm command, not a soft question. Stop and back away leaves no room for negotiation."),
            Question(id: "def203_q2", type: .multiSelect, prompt: "Which make a verbal boundary effective?", choices: ["Keeping it short and direct", "Apologizing first", "Matching it with firm body language", "Stating it loudly to draw witnesses", "Phrasing it as a polite question"], correctIndices: [0, 2, 3], explanation: "Effective boundaries are short, direct, backed by strong body language, and loud enough to recruit help. Apologies and questions weaken them."),
            Question(id: "def203_q3", prompt: "When calling for help in a crowd, you should point at a specific person and give a direct instruction because crowds freeze while _____ act.", acceptedAnswers: ["individuals", "an individual", "specific people"], explanation: "The bystander effect means crowds diffuse responsibility. Singling out an individual with a direct instruction prompts action."),
            Question(id: "def203_q4", prompt: "Match each phrase to whether it is a strong or weak boundary.", matchingPairs: [
                MatchingPair(left: "Stop. Back up now.", right: "Strong boundary"),
                MatchingPair(left: "Sorry, could you maybe leave?", right: "Weak boundary"),
                MatchingPair(left: "I'm not interested. Leave.", right: "Strong boundary"),
                MatchingPair(left: "Um, please don't.", right: "Weak boundary")
            ], explanation: "Strong boundaries are firm commands; weak ones apologize, hedge, or ask permission."),
            Question(id: "def203_q5", type: .multipleChoice, prompt: "Why does a predator often test small boundaries first, like standing too close or ignoring a polite no?", choices: ["To be friendly", "To gauge whether you are an easy target who will not push back", "Because they are lost", "To start a normal conversation"], correctIndex: 1, explanation: "Boundary testing is how aggressors assess compliance. Enforcing limits early signals you are not an easy target.")
        ]),
        flashcards: [
            Flashcard(id: "def203_f1", front: "Verbal boundary", back: "A short, firm command that clearly states a limit and is backed by strong body language"),
            Flashcard(id: "def203_f2", front: "Boundary testing", back: "When an aggressor pushes small limits to gauge whether you will comply or resist"),
            Flashcard(id: "def203_f3", front: "Bystander effect", back: "The tendency of crowds to freeze; countered by pointing at one person and giving a direct instruction"),
            Flashcard(id: "def203_f4", front: "Assertiveness", back: "Communicating firmly and directly without aggression or apology, signaling you are not an easy target")
        ],
        tags: ["verbal", "boundaries", "communication"]
    )

    static let lesson8 = Lesson(
        id: "def_t2_04",
        categoryId: .selfDefense,
        tier: 2,
        lessonNumber: 4,
        title: "Protecting Family and Others",
        subtitle: "From defending yourself to defending those with you",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["def_t2_03"],
        contentBlocks: [
            ContentBlock(id: "def204_b1", type: .whyMatters, title: "The Stakes Change with Loved Ones", bullets: [
                "Protecting others changes the math: you cannot simply run, and your attention is divided.",
                "A clear family plan removes hesitation and confusion in a crisis.",
                "Your job as a protector is to be the calm, decisive anchor everyone else looks to.",
                "Prevention and positioning matter even more when you are responsible for someone else."
            ]),
            ContentBlock(id: "def204_b2", type: .principles, title: "Principles of Protecting Others", bullets: [
                "Position yourself between the threat and the people you protect.",
                "Your first goal is still to move your group to safety, not to engage.",
                "Issue clear, simple instructions; in a crisis people need direction, not discussion.",
                "Defending another person legally requires being right about who the real aggressor is."
            ], body: "Defending others uses the same legal pillars as self-defense, but with the added duty to correctly identify the genuine threat before you act.", callouts: [
                "Stepping into a fight you misread can make you the aggressor in the eyes of the law. Be sure before you act."
            ]),
            ContentBlock(id: "def204_b3", type: .stepByStep, title: "Building a Family Safety Plan", bullets: [
                "Agree on a code word that means go now, no questions, used by any family member.",
                "Designate a meeting point in case you get separated in public or at home.",
                "Teach children a simple rule: if I say run, you run to that spot and stay.",
                "Practice the plan calmly so it is familiar, not a fresh shock under stress.",
                "Identify safe havens on common routes: open businesses, fire stations, police stations."
            ]),
            ContentBlock(id: "def204_b4", type: .realWorld, title: "Positioning in Everyday Life", bullets: [
                "Walking a sidewalk, keep your family on the building side and yourself toward the street.",
                "At a restaurant, take the seat with the best view of entrances so you see trouble first.",
                "In a parking lot, keep kids loaded and buckled before you handle bags or carts.",
                "In a crowd, hold hands or set a clear regroup point so no one drifts off alone."
            ]),
            ContentBlock(id: "def204_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Position between the threat and your people, and move the group to safety first.",
                "A practiced family plan with a code word and meeting point removes hesitation.",
                "Defending others demands certainty about who the true aggressor is before you act."
            ])
        ],
        quiz: Quiz(id: "def204_q", passPercent: 80, questions: [
            Question(id: "def204_q1", type: .scenario, prompt: "A threat approaches while you are walking with your kids. Your first priority is to:", choices: ["Charge the threat to end it quickly", "Position yourself between the threat and your kids and move the group toward safety", "Tell the kids to scatter in all directions", "Argue with the threat to buy time"], correctIndex: 1, explanation: "Protecting others means positioning between the threat and your people and moving the group to safety, not engaging by choice."),
            Question(id: "def204_q2", type: .multiSelect, prompt: "Which belong in a solid family safety plan?", choices: ["A code word that means go now", "A designated meeting point", "Teaching kids to argue with strangers", "Identifying safe havens on common routes", "Practicing the plan calmly in advance"], correctIndices: [0, 1, 3, 4], explanation: "Code words, meeting points, known safe havens, and calm practice make a plan work. Teaching kids to argue with strangers does not."),
            Question(id: "def204_q3", prompt: "Defending another person legally requires you to be certain about who the real _____ is before you act.", acceptedAnswers: ["aggressor", "attacker", "threat"], explanation: "If you defend the wrong person, you can become the aggressor in law. Correctly identifying the true aggressor is essential."),
            Question(id: "def204_q4", type: .scenario, prompt: "Walking your family down a city sidewalk, where should you position yourself relative to them and the street?", choices: ["Behind everyone so you can watch their backs only", "On the building side, family toward the street", "On the street side, family toward the building", "It does not matter where you walk"], correctIndex: 2, explanation: "Keeping your family on the building side and yourself toward the street puts you between them and traffic-side threats."),
            Question(id: "def204_q5", prompt: "Match each protective habit to its setting.", matchingPairs: [
                MatchingPair(left: "Best view of entrances", right: "At a restaurant"),
                MatchingPair(left: "Kids buckled before handling bags", right: "In a parking lot"),
                MatchingPair(left: "Code word meaning go now", right: "Family safety plan"),
                MatchingPair(left: "Hold hands or set a regroup point", right: "In a crowd")
            ], explanation: "Each protective habit fits a specific everyday setting where it reduces risk to the people you are responsible for.")
        ]),
        flashcards: [
            Flashcard(id: "def204_f1", front: "Protective positioning", back: "Placing yourself between a threat and the people you are responsible for protecting"),
            Flashcard(id: "def204_f2", front: "Family code word", back: "A pre-agreed word meaning go now, no questions, used to trigger an immediate safety response"),
            Flashcard(id: "def204_f3", front: "Defense of others", back: "Using force to protect another person, which requires correctly identifying the true aggressor"),
            Flashcard(id: "def204_f4", front: "Safe haven", back: "A known location such as an open business or police station to move toward in an emergency")
        ],
        tags: ["family", "protection", "planning"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "def_t3_01",
        categoryId: .selfDefense,
        tier: 3,
        lessonNumber: 1,
        title: "Real-World Scenarios: Parking Lots, Home, and Going Out",
        subtitle: "Apply the fundamentals where attacks actually happen",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["def_t2_04"],
        contentBlocks: [
            ContentBlock(id: "def301_b1", type: .context, title: "Where and When Violence Happens", bullets: [
                "Transitional spaces, where you move between safe zones, are high-risk: parking lots, stairwells, entrances.",
                "Predators favor isolation, distraction, and low light; they choose the moment, so you must own the environment.",
                "Going out adds alcohol, crowds, and fatigue, all of which degrade judgment and awareness.",
                "Home invasions often exploit unlocked doors, social-engineering at the door, and people frozen by disbelief."
            ], body: "Violence is not random; it clusters around predictable times and places. Knowing them lets you raise your guard exactly when it counts."),
            ContentBlock(id: "def301_b2", type: .realWorld, title: "Parking Lot Protocol", bullets: [
                "Have keys ready before you leave the building; do not fumble at the car.",
                "Scan the area and check around and inside your vehicle as you approach.",
                "Park in well-lit, high-traffic spots and back into the space for a faster exit.",
                "If someone is loitering near your car with no clear reason, walk past and return to people.",
                "Once inside, lock the doors immediately and drive; do not sit there on your phone."
            ]),
            ContentBlock(id: "def301_b3", type: .realWorld, title: "Home Defense Layers", bullets: [
                "Outer layer: lighting, locked doors and windows, and not advertising that you are alone or away.",
                "Door layer: never open to strangers blindly; verify through a peephole, camera, or by talking through the door.",
                "Inner layer: a plan to gather family in one defensible room, phone in hand, calling for help.",
                "Escape over confrontation: if you can get everyone out safely, do that rather than clearing the house.",
                "Clearing your own home is dangerous and is a trained skill; default to barricade and call for help."
            ], callouts: [
                "Searching a home for an intruder is high-risk even for professionals. Unless someone you must protect is unreachable, barricade and call for help."
            ]),
            ContentBlock(id: "def301_b4", type: .realWorld, title: "Going-Out Discipline", bullets: [
                "Decide your limits before the first drink; impairment erodes the judgment self-defense depends on.",
                "Stay with people you trust and agree on a plan to leave together.",
                "Watch your drink and never accept an opened drink from a stranger.",
                "Have a charged phone and a way home that does not depend on a stranger or impaired friend."
            ]),
            ContentBlock(id: "def301_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Raise your guard in transitional spaces and at high-risk times.",
                "Parking lots: keys ready, scan, lock, and go; never linger.",
                "Home: layer your defenses and default to escape or barricade over clearing the house.",
                "Going out: set limits early, stay with trusted people, and protect your ride home."
            ])
        ],
        quiz: Quiz(id: "def301_q", passPercent: 80, questions: [
            Question(id: "def301_q1", type: .scenario, prompt: "You reach your car at night and a man is loitering beside it with no clear reason to be there. The best move is:", choices: ["Walk straight to the car and get in quickly", "Walk past, return to a populated area, and reassess", "Confront him about why he is there", "Sit on a nearby bench and wait for him to leave"], correctIndex: 1, explanation: "Do not close with an unexplained loiterer at your car. Returning to people and reassessing keeps your options and safety intact."),
            Question(id: "def301_q2", type: .multiSelect, prompt: "Which are sound parking lot habits?", choices: ["Have keys ready before leaving the building", "Sit in the car checking your phone after getting in", "Park in well-lit, high-traffic areas", "Scan around and inside the vehicle on approach", "Lock the doors immediately and drive"], correctIndices: [0, 2, 3, 4], explanation: "Keys ready, good lighting, scanning, and locking-and-going are all sound. Sitting on your phone in a parked car is a classic vulnerability."),
            Question(id: "def301_q3", type: .scenario, prompt: "You hear someone break into your home while your family is upstairs with you. The recommended default is to:", choices: ["Go room to room and clear the house yourself", "Gather everyone in one defensible room, call for help, and prepare to escape if possible", "Confront the intruder to scare them off", "Hide alone and stay silent"], correctIndex: 1, explanation: "Clearing a house is high-risk even for professionals. Gathering family, calling for help, and favoring escape or barricade is far safer."),
            Question(id: "def301_q4", prompt: "Spaces where you move between safe zones, like parking lots and stairwells, are higher risk and are called _____ spaces.", acceptedAnswers: ["transitional", "transition", "transitional spaces"], explanation: "Transitional spaces between safe zones are favored by predators because targets are often distracted and isolated there."),
            Question(id: "def301_q5", prompt: "Match each home-defense layer to its focus.", matchingPairs: [
                MatchingPair(left: "Outer layer", right: "Lighting, locks, and not advertising absence"),
                MatchingPair(left: "Door layer", right: "Verify before opening to strangers"),
                MatchingPair(left: "Inner layer", right: "Gather family, phone in hand, call for help"),
                MatchingPair(left: "Default response", right: "Escape or barricade over clearing the house")
            ], explanation: "Layered home defense moves from the perimeter inward, with escape or barricade as the safest default response.")
        ]),
        flashcards: [
            Flashcard(id: "def301_f1", front: "Transitional space", back: "An area where you move between safe zones, such as a parking lot or stairwell; statistically higher risk"),
            Flashcard(id: "def301_f2", front: "Layered home defense", back: "Defense built in rings: outer perimeter, the door, and an inner defensible room with a plan"),
            Flashcard(id: "def301_f3", front: "Barricade and call", back: "The safer default in a home invasion: secure a room, call for help, and avoid clearing the house"),
            Flashcard(id: "def301_f4", front: "Going-out plan", back: "Pre-set limits, trusted company, drink awareness, and a reliable, independent way home")
        ],
        tags: ["scenarios", "home-defense", "application"]
    )

    static let lesson10 = Lesson(
        id: "def_t3_02",
        categoryId: .selfDefense,
        tier: 3,
        lessonNumber: 2,
        title: "Fight, Flight, and the Decision to Disengage",
        subtitle: "Choosing the right response under pressure",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["def_t3_01"],
        contentBlocks: [
            ContentBlock(id: "def302_b1", type: .howItWorks, title: "The Body's Survival Responses", bullets: [
                "The stress response prepares the body to fight, flee, or freeze under perceived threat.",
                "Freeze is common and survivable, but it is the response you most want to train yourself out of.",
                "Adrenaline boosts strength and speed while cutting fine motor control and complex thought.",
                "These reactions are automatic; the goal is to channel them, not to pretend they will not happen."
            ], body: "Fight or flight is hardwired. Understanding it lets you plan around your own physiology instead of being surprised by it."),
            ContentBlock(id: "def302_b2", type: .principles, title: "Flight Is Usually the Win", bullets: [
                "If you can safely leave, leaving is almost always the best outcome.",
                "Fighting risks injury, legal consequences, and the unknown of an attacker's capabilities and friends.",
                "You do not know if an attacker is armed or has accomplices nearby; escape sidesteps both.",
                "Choosing flight is not cowardice; it is the disciplined choice a defender is trained to make."
            ], callouts: [
                "Pride is the most expensive thing in a fight. The defender who walks away keeps everything that matters."
            ]),
            ContentBlock(id: "def302_b3", type: .stepByStep, title: "A Decision Framework Under Stress", bullets: [
                "Can I leave safely right now? If yes, leave; that ends the decision.",
                "If I cannot leave, can I create the opening to leave with words, barriers, or distance?",
                "If I am cornered and harm is imminent, act decisively to stop the threat, then escape.",
                "The instant an exit appears, take it; the goal of fighting is to make leaving possible.",
                "After you are safe, call for help and seek legal and medical support."
            ]),
            ContentBlock(id: "def302_b4", type: .failureModes, title: "Decision Failures Under Pressure", bullets: [
                "Freezing because no plan was ever rehearsed for this moment.",
                "Fighting out of ego when a clear, safe exit was available.",
                "Continuing to fight after the threat has stopped or fled, which creates legal exposure.",
                "Tunnel vision that misses an open exit, accomplices, or a weapon."
            ]),
            ContentBlock(id: "def302_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Fight, flight, and freeze are automatic; plan around them with simple, rehearsed decisions.",
                "If you can leave safely, leave; flight is the disciplined win, not cowardice.",
                "Fight only to create an exit, and take that exit the moment it appears."
            ])
        ],
        quiz: Quiz(id: "def302_q", passPercent: 80, questions: [
            Question(id: "def302_q1", type: .scenario, prompt: "An aggressive man is squaring up to you, but a clear, safe path out of the area is open behind you. The disciplined defender:", choices: ["Stands ground to prove a point", "Takes the safe exit and leaves", "Closes distance to strike first", "Insults him to assert dominance"], correctIndex: 1, explanation: "If you can leave safely, leaving is almost always the best outcome. Flight here is discipline, not cowardice."),
            Question(id: "def302_q2", prompt: "The hardwired survival reaction that prepares the body to confront or escape a threat is called the _____ or flight response.", acceptedAnswers: ["fight", "fight or flight"], explanation: "The fight-or-flight response is the body's automatic survival reaction to a perceived threat."),
            Question(id: "def302_q3", type: .multiSelect, prompt: "Why is escape usually preferable to fighting when it is available?", choices: ["You may not know if the attacker is armed", "Fighting risks injury and legal consequences", "Walking away always proves cowardice", "The attacker may have accomplices nearby", "Leaving ends the encounter on your terms"], correctIndices: [0, 1, 3, 4], explanation: "Escape avoids unknown weapons, accomplices, injury, and legal risk. Leaving is a disciplined choice, not cowardice."),
            Question(id: "def302_q4", type: .scenario, prompt: "You are cornered and forced to act, then the attacker breaks off and a path opens. You should:", choices: ["Keep fighting until he is incapacitated", "Take the opening immediately and escape to safety", "Chase him to make sure he leaves", "Stay and demand an apology"], correctIndex: 1, explanation: "The purpose of fighting is to create an opening to leave. The moment an exit appears, take it; continuing creates legal and physical risk."),
            Question(id: "def302_q5", prompt: "Match each survival response to its description.", matchingPairs: [
                MatchingPair(left: "Fight", right: "Body readies to confront the threat"),
                MatchingPair(left: "Flight", right: "Body readies to escape the threat"),
                MatchingPair(left: "Freeze", right: "Locking up; the response to train away"),
                MatchingPair(left: "Adrenaline", right: "Boosts speed but cuts fine motor control")
            ], explanation: "Fight, flight, and freeze are the core stress responses; adrenaline drives them while degrading fine motor skills.")
        ]),
        flashcards: [
            Flashcard(id: "def302_f1", front: "Fight-or-flight response", back: "The body's automatic survival reaction preparing it to confront or escape a perceived threat"),
            Flashcard(id: "def302_f2", front: "Freeze response", back: "Locking up under threat; common and survivable, but the response to train yourself out of"),
            Flashcard(id: "def302_f3", front: "Disengagement", back: "Choosing to leave a confrontation when it is safe; usually the best and most disciplined outcome"),
            Flashcard(id: "def302_f4", front: "Exit-first principle", back: "Fighting exists to create an opening to escape; take any safe exit the instant it appears")
        ],
        tags: ["decision-making", "psychology", "disengage"]
    )

    static let lesson11 = Lesson(
        id: "def_t3_03",
        categoryId: .selfDefense,
        tier: 3,
        lessonNumber: 3,
        title: "Fitness and Resilience for Self-Defense",
        subtitle: "Conditioning the body that has to carry you out",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["def_t3_02"],
        contentBlocks: [
            ContentBlock(id: "def303_b1", type: .whyMatters, title: "Fitness Is a Force Multiplier", bullets: [
                "The most reliable self-defense tool is the ability to run, and to keep running, to safety.",
                "Conditioning extends the window before you gas out, which is often when fights are truly lost.",
                "Strength and durability help you survive contact, escape grabs, and stay on your feet.",
                "A fit body recovers faster from the adrenaline dump and thinks more clearly under stress."
            ], callouts: [
                "Consult a physician before starting a new exercise program, especially if you have existing health conditions."
            ]),
            ContentBlock(id: "def303_b2", type: .componentBreakdown, title: "The Pillars of Defensive Fitness", bullets: [
                "Cardio: the engine for sprinting away and not collapsing; build it with intervals and steady runs.",
                "Strength: legs, core, and grip carry you, protect your spine, and break or resist grabs.",
                "Mobility: hips, shoulders, and ankles that move freely reduce injury and improve balance.",
                "Anaerobic capacity: short, intense bursts mirror the explosive demands of a real encounter.",
                "Sleep and recovery: the foundation that lets all the training actually adapt your body."
            ]),
            ContentBlock(id: "def303_b3", type: .stepByStep, title: "A Practical Weekly Baseline", bullets: [
                "Two to three strength sessions covering squat, hinge, push, pull, and carry patterns.",
                "Two cardio sessions: one longer steady effort and one short, hard interval workout.",
                "Daily movement: walk, take stairs, and add brief mobility work to stay loose.",
                "Train grip directly with carries and holds; grip fails first in any struggle.",
                "Prioritize seven to nine hours of sleep; recovery is where adaptation happens."
            ]),
            ContentBlock(id: "def303_b4", type: .principles, title: "Resilience Is Trained, Not Born", bullets: [
                "Stress inoculation: controlled, hard training teaches you to function while uncomfortable.",
                "Confidence comes from capability; a body you trust calms the mind under threat.",
                "Consistency beats intensity; the program you sustain for years wins over the heroic week.",
                "Mental resilience and physical resilience reinforce each other; build both deliberately."
            ]),
            ContentBlock(id: "def303_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Cardio is your most reliable defense; build the engine that gets you to safety.",
                "Train strength, mobility, grip, and recovery as a complete, sustainable system.",
                "Resilience is built through consistent, slightly uncomfortable training over time."
            ])
        ],
        quiz: Quiz(id: "def303_q", passPercent: 80, questions: [
            Question(id: "def303_q1", type: .multipleChoice, prompt: "Of the following, which single attribute most reliably gets an average person out of a dangerous situation?", choices: ["A powerful punch", "The cardio to run and keep running to safety", "An advanced grappling submission", "Intimidating size"], correctIndex: 1, explanation: "The ability to run, and keep running, to safety is the most reliable real-world self-defense tool for most people."),
            Question(id: "def303_q2", type: .multiSelect, prompt: "Which are pillars of defensive fitness?", choices: ["Cardiovascular conditioning", "Strength in legs, core, and grip", "Skipping sleep to train more", "Mobility in hips, shoulders, and ankles", "Recovery and adequate rest"], correctIndices: [0, 1, 3, 4], explanation: "Cardio, strength, mobility, and recovery are all pillars. Skipping sleep undermines adaptation and performance."),
            Question(id: "def303_q3", prompt: "In a physical struggle, the part of the body that typically fatigues and fails first is the _____.", acceptedAnswers: ["grip", "grip strength", "hands"], explanation: "Grip fails first in most struggles, which is why carries and holds that train grip directly are valuable."),
            Question(id: "def303_q4", prompt: "Using controlled, hard training to teach yourself to function while uncomfortable is known as stress _____.", acceptedAnswers: ["inoculation", "stress inoculation"], explanation: "Stress inoculation conditions you to stay functional under discomfort, building resilience that transfers to real stress."),
            Question(id: "def303_q5", type: .scenario, prompt: "A beginner wants the most durable long-term result from training. The best guiding principle is:", choices: ["Train as hard as possible for one heroic week, then rest", "Favor consistency over intensity with a sustainable weekly routine", "Only do cardio and skip all strength work", "Train only when feeling motivated"], correctIndex: 1, explanation: "Consistency beats intensity. A sustainable routine maintained for years outperforms short bursts of extreme effort.")
        ]),
        flashcards: [
            Flashcard(id: "def303_f1", front: "Cardio for defense", back: "Conditioning that lets you sprint and keep moving to safety; the most reliable real-world self-defense tool"),
            Flashcard(id: "def303_f2", front: "Stress inoculation", back: "Controlled, hard training that teaches you to function while uncomfortable, building real-world resilience"),
            Flashcard(id: "def303_f3", front: "Grip endurance", back: "Strength that typically fails first in a struggle; trained directly with carries and holds"),
            Flashcard(id: "def303_f4", front: "Consistency over intensity", back: "The principle that a sustainable routine kept for years beats short bursts of extreme effort")
        ],
        tags: ["fitness", "conditioning", "resilience"]
    )

    static let lesson12 = Lesson(
        id: "def_t3_04",
        categoryId: .selfDefense,
        tier: 3,
        lessonNumber: 4,
        title: "Tools, Options, and Responsibility",
        subtitle: "Force multipliers and the duties that come with them",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["def_t3_03"],
        contentBlocks: [
            ContentBlock(id: "def304_b1", type: .safety, title: "Read This First", bullets: [
                "No tool replaces awareness, avoidance, and judgment; a tool is the last layer, not the first.",
                "A tool you cannot use calmly and competently under stress is a liability, not an asset.",
                "Every tool can be taken and used against you if you lack training and retention skills.",
                "Carrying a tool raises your responsibility, not your invincibility."
            ], callouts: [
                "This is general education, not legal advice. Weapon laws vary enormously by jurisdiction. Research your local laws and seek qualified instruction before carrying anything."
            ]),
            ContentBlock(id: "def304_b2", type: .systemOverview, title: "The Spectrum of Options", bullets: [
                "Your body and voice: always with you, never illegal, the foundation of everything.",
                "Everyday-carry awareness tools: a phone, a flashlight, and keys can aid escape and calls for help.",
                "Less-lethal tools: items such as pepper spray are restricted in some places and require training.",
                "Lethal tools: the highest responsibility, the strictest laws, and the most training and storage duties.",
                "More capability always means more responsibility, more training, and more legal exposure."
            ], body: "Think of options as a ladder of capability and responsibility. The right choice depends on your training, the law, and the threat, not on what feels powerful."),
            ContentBlock(id: "def304_b3", type: .principles, title: "The Responsibilities of Carrying", bullets: [
                "Know the law: where you can carry, how, and when force is justified, all vary by jurisdiction.",
                "Train regularly; owning a tool is not the same as being competent with it under stress.",
                "Store safely, especially around children; secure storage is part of responsible ownership.",
                "Maintain retention awareness so a tool cannot be stripped from you and used against you.",
                "Accept that any use of force invites legal scrutiny; be prepared to justify it."
            ]),
            ContentBlock(id: "def304_b4", type: .commonMistakes, title: "Dangerous Misconceptions", bullets: [
                "Believing a tool makes you safe without the training to deploy it under stress.",
                "Carrying something illegal where you are, creating legal jeopardy before any incident.",
                "Letting a tool replace awareness, the cheapest and most effective defense you have.",
                "Brandishing a tool to win an argument, which is often itself a serious crime.",
                "Neglecting secure storage, especially in a home with children."
            ], callouts: [
                "Drawing or threatening with a weapon when you are not legally justified can turn you from victim into defendant."
            ]),
            ContentBlock(id: "def304_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Tools are the last layer; awareness, avoidance, and judgment come first and always.",
                "Capability and responsibility rise together: more power demands more law, training, and care.",
                "Carry only what you know, can deploy calmly, can store safely, and are legally allowed to have."
            ])
        ],
        quiz: Quiz(id: "def304_q", passPercent: 80, questions: [
            Question(id: "def304_q1", type: .scenario, prompt: "A friend buys a self-defense tool and says he now feels totally safe, even though he has never trained with it. The accurate response is:", choices: ["He is right; owning the tool is what matters", "A tool without training is a liability and can be used against him", "He should carry it everywhere regardless of local law", "He no longer needs situational awareness"], correctIndex: 1, explanation: "Ownership is not competence. An untrained tool can be fumbled or stripped away and used against you; awareness still comes first."),
            Question(id: "def304_q2", type: .multiSelect, prompt: "Which are genuine responsibilities that come with carrying a self-defense tool?", choices: ["Knowing the local laws on carry and use", "Training with it regularly", "Assuming it makes you invincible", "Storing it safely, especially around children", "Maintaining retention so it cannot be taken from you"], correctIndices: [0, 1, 3, 4], explanation: "Knowing the law, training, safe storage, and retention are real duties. No tool makes anyone invincible."),
            Question(id: "def304_q3", prompt: "The self-defense option that is always with you, never illegal, and the foundation of everything else is your body and your _____.", acceptedAnswers: ["voice", "words"], explanation: "Your body and voice are always available, lawful everywhere, and the foundation that no tool replaces."),
            Question(id: "def304_q4", prompt: "Match each option to its place on the capability and responsibility spectrum.", matchingPairs: [
                MatchingPair(left: "Body and voice", right: "Always available, never illegal"),
                MatchingPair(left: "Flashlight and phone", right: "Everyday tools that aid escape and help"),
                MatchingPair(left: "Less-lethal tools", right: "Restricted in some places, need training"),
                MatchingPair(left: "Lethal tools", right: "Strictest laws and highest responsibility")
            ], explanation: "Options form a ladder: as capability rises, so do legal restrictions, training demands, and responsibility."),
            Question(id: "def304_q5", type: .scenario, prompt: "During a heated argument with no immediate threat of harm, someone pulls out a weapon to intimidate the other person. Legally, this is dangerous because:", choices: ["It always ends arguments peacefully", "Brandishing a weapon without legal justification is often itself a serious crime", "It is only a problem if someone is hurt", "Weapons have no legal restrictions in arguments"], correctIndex: 1, explanation: "Drawing or threatening with a weapon when not legally justified can turn the carrier from a potential victim into a criminal defendant.")
        ]),
        flashcards: [
            Flashcard(id: "def304_f1", front: "Force multiplier", back: "A tool that increases your defensive capability, along with your legal and training responsibilities"),
            Flashcard(id: "def304_f2", front: "Retention", back: "Keeping control of a tool so it cannot be stripped away and used against you"),
            Flashcard(id: "def304_f3", front: "Brandishing", back: "Displaying or threatening with a weapon; often a crime when not legally justified"),
            Flashcard(id: "def304_f4", front: "Capability and responsibility", back: "The principle that more powerful options carry stricter laws, more training duties, and greater accountability")
        ],
        tags: ["tools", "responsibility", "legal"]
    )
}
