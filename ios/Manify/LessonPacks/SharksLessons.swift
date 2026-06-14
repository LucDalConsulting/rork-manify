import Foundation

enum SharksLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "shark_t1_01",
        categoryId: .sharks,
        tier: 1,
        lessonNumber: 1,
        title: "What A Shark Actually Is",
        subtitle: "450 million years of refined design",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "shark101_b1", type: .whyMatters, title: "The Oldest Apex Design On Earth", bullets: [
                "Sharks are roughly 450 million years old. They predate trees, dinosaurs, Saturn's rings, and every empire in human history.",
                "There are over 500 known species, from the 8-inch dwarf lanternshark to the 40-foot whale shark.",
                "They live in every ocean and even swim up rivers. Most are completely harmless to humans.",
                "Knowing what a shark is, separate from the movie version, is the foundation for everything else in this category."
            ], body: "Real competence starts with accurate fundamentals. Strip away the Hollywood mythology and what remains is one of the most successful body plans evolution ever produced."),
            ContentBlock(id: "shark101_b2", type: .keyTerms, title: "The Cartilage Advantage", bullets: [
                "Sharks are cartilaginous fish (class Chondrichthyes) -- their skeleton is cartilage, not bone.",
                "Cartilage is lighter and more flexible than bone, which helps with buoyancy and tight turns.",
                "They have no swim bladder. Buoyancy comes from a huge oil-rich liver and constant motion.",
                "Their skin is covered in dermal denticles -- tiny tooth-like scales that cut drag and feel like sandpaper.",
                "Rays, skates, and sawfish are close cousins -- also cartilaginous, same broad family."
            ]),
            ContentBlock(id: "shark101_b3", type: .componentBreakdown, title: "The Five Tools Every Shark Carries", bullets: [
                "Teeth: arranged in multiple rows that replace continuously for life -- some species cycle through 30,000+ teeth.",
                "Gills: 5 to 7 slits pull oxygen from water; sharks have no lungs.",
                "Liver: can be a quarter of body weight, stores oil for energy and flotation.",
                "Fins: dorsal for stability, pectorals for lift, caudal (tail) for thrust.",
                "Senses: smell, hearing, lateral line, vision, and electroreception -- a stacked sensory suite."
            ]),
            ContentBlock(id: "shark101_b4", type: .systemOverview, title: "Size And Spread", bullets: [
                "Smallest: dwarf lanternshark, about 8 inches, glows in deep water.",
                "Largest: whale shark, up to 40+ feet -- a gentle filter feeder that eats plankton.",
                "Only about a dozen species pose any real risk to humans, and even those rarely do.",
                "Sharks are keystone predators: remove them and entire reef and coastal ecosystems unravel."
            ]),
            ContentBlock(id: "shark101_b5", type: .summary, title: "What To Lock In", bullets: [
                "450 million years old, 500+ species, cartilage skeleton, no swim bladder.",
                "Five core tools: teeth, gills, liver, fins, and a layered sensory suite.",
                "Sizes range from 8 inches to 40+ feet; the biggest is harmless to people.",
                "They are keystone predators -- the structure of the ocean depends on them."
            ])
        ],
        quiz: Quiz(id: "shark101_q", passPercent: 80, questions: [
            Question(id: "shark101_q1", type: .multipleChoice, prompt: "A shark's skeleton is made primarily of:", choices: ["Bone", "Cartilage", "Keratin", "Calcified shell"], correctIndex: 1, explanation: "Sharks are cartilaginous fish. Cartilage is lighter and more flexible than bone, helping with buoyancy and agility."),
            Question(id: "shark101_q2", type: .scenario, prompt: "Someone insists sharks are 'primitive dumb fish.' The most accurate correction is:", choices: ["They're right, sharks are simple", "Sharks are ~450 million years old and have outlasted dinosaurs and trees with a highly refined design", "Sharks are actually mammals", "Sharks only appeared a few million years ago"], correctIndex: 1, explanation: "Sharks predate trees and dinosaurs by hundreds of millions of years. Their design is refined, not primitive."),
            Question(id: "shark101_q3", prompt: "Sharks lack a swim bladder and instead rely on a large oil-rich ____ for buoyancy.", acceptedAnswers: ["liver", "the liver"], explanation: "A shark's oversized, oil-filled liver provides buoyancy and energy storage in place of the gas-filled swim bladder bony fish use."),
            Question(id: "shark101_q4", prompt: "Match each shark fact to its value.", matchingPairs: [
                MatchingPair(left: "Age as a group", right: "~450 million years"),
                MatchingPair(left: "Known species", right: "500+"),
                MatchingPair(left: "Smallest", right: "Dwarf lanternshark (~8 in)"),
                MatchingPair(left: "Largest", right: "Whale shark (~40+ ft)")
            ], explanation: "Sharks span an enormous size range and have existed far longer than almost any life on Earth."),
            Question(id: "shark101_q5", type: .multiSelect, prompt: "Which are true of sharks as a group?", choices: ["Cartilage skeleton", "They are mammals", "Teeth replace continuously for life", "Skin covered in dermal denticles", "They have lungs"], correctIndices: [0, 2, 3], explanation: "Sharks are cartilaginous fish with continuously replaced teeth and denticle-covered skin. They are not mammals and breathe with gills, not lungs.")
        ]),
        flashcards: [
            Flashcard(id: "shark101_f1", front: "Chondrichthyes", back: "The class of cartilaginous fish -- sharks, rays, and skates -- whose skeletons are cartilage rather than bone."),
            Flashcard(id: "shark101_f2", front: "Dermal denticles", back: "Tiny tooth-like scales covering shark skin that reduce drag and protect against parasites; feel like sandpaper."),
            Flashcard(id: "shark101_f3", front: "Keystone predator", back: "A species whose removal would fundamentally destabilize the structure of its ecosystem."),
            Flashcard(id: "shark101_f4", front: "Whale shark", back: "The largest fish in the ocean (40+ ft), a harmless plankton filter feeder.")
        ],
        tags: ["intro", "basics", "biology"]
    )

    static let lesson2 = Lesson(
        id: "shark_t1_02",
        categoryId: .sharks,
        tier: 1,
        lessonNumber: 2,
        title: "How A Shark Stays Alive",
        subtitle: "Breathing, buoyancy, and the constant-motion myth",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["shark_t1_01"],
        contentBlocks: [
            ContentBlock(id: "shark102_b1", type: .whyMatters, title: "Why The Mechanics Matter", bullets: [
                "The most repeated 'fact' about sharks -- that they all die if they stop swimming -- is mostly false.",
                "Understanding how a shark breathes and floats kills several myths at once.",
                "These mechanics also explain why sharks behave the way they do in the water."
            ]),
            ContentBlock(id: "shark102_b2", type: .howItWorks, title: "Two Ways To Breathe", bullets: [
                "Ram ventilation: swim forward, force water through the mouth and over the gills. Used by fast open-ocean species.",
                "Buccal pumping: actively pull water over the gills while resting on the bottom. Used by nurse sharks, wobbegongs, and many others.",
                "Obligate ram ventilators (great white, mako, whale shark) must keep moving to breathe -- this is where the myth comes from.",
                "Many bottom-dwelling sharks rest motionless for hours, even sleeping in caves and on sand."
            ], callouts: ["Myth check: 'all sharks die if they stop swimming' is FALSE -- only obligate ram ventilators must keep moving."]),
            ContentBlock(id: "shark102_b3", type: .componentBreakdown, title: "Staying Off The Bottom Without A Bladder", bullets: [
                "No gas-filled swim bladder means no easy way to hover -- sharks solve it differently.",
                "A liver loaded with low-density squalene oil gives passive lift.",
                "Pectoral fins act like airplane wings, generating lift as the shark moves.",
                "The asymmetrical (heterocercal) tail, with a longer upper lobe, also produces upward thrust.",
                "Most sharks are slightly negatively buoyant and would slowly sink if they stopped entirely."
            ]),
            ContentBlock(id: "shark102_b4", type: .principles, title: "Cold-Blooded, With Exceptions", bullets: [
                "Most sharks are ectothermic -- body temperature matches the surrounding water.",
                "A handful (great white, mako, salmon shark, porbeagle) are regional endotherms.",
                "These warm-bodied sharks use a heat-exchange network called the rete mirabile to keep muscles and brain warmer than the water.",
                "Warm muscles mean faster bursts and access to colder, prey-rich waters."
            ]),
            ContentBlock(id: "shark102_b5", type: .summary, title: "What To Lock In", bullets: [
                "Breathing: ram ventilation (must move) vs buccal pumping (can rest).",
                "Buoyancy: oily liver + pectoral fin lift + heterocercal tail, no swim bladder.",
                "Most sharks are cold-blooded; a few elite hunters are regionally warm-blooded.",
                "'Stop and die' only applies to obligate ram ventilators."
            ])
        ],
        quiz: Quiz(id: "shark102_q", passPercent: 80, questions: [
            Question(id: "shark102_q1", type: .multipleChoice, prompt: "A nurse shark resting motionless on the seabed is breathing by:", choices: ["Ram ventilation", "Buccal pumping", "Holding its breath", "Absorbing oxygen through skin"], correctIndex: 1, explanation: "Buccal pumping lets a shark actively draw water over its gills while stationary, so it does not need to keep swimming."),
            Question(id: "shark102_q2", type: .scenario, prompt: "A friend says 'every shark drowns the instant it stops swimming.' The correct response is:", choices: ["Completely true for all sharks", "Only true for obligate ram ventilators like great whites and makos", "False for every shark", "True only in cold water"], correctIndex: 1, explanation: "Only obligate ram ventilators must keep moving. Many bottom-dwellers rest, sleep, and breathe just fine while still."),
            Question(id: "shark102_q3", prompt: "In place of a swim bladder, a shark uses a large oil-rich ____ to help with buoyancy.", acceptedAnswers: ["liver", "the liver"], explanation: "Squalene oil stored in the liver is less dense than water and provides passive lift."),
            Question(id: "shark102_q4", type: .multiSelect, prompt: "Which sharks are regional endotherms (warm-bodied)?", choices: ["Great white", "Shortfin mako", "Whale shark", "Salmon shark", "Nurse shark"], correctIndices: [0, 1, 3], explanation: "Great whites, makos, and salmon sharks use a rete mirabile to stay warmer than the water. Whale and nurse sharks are cold-blooded."),
            Question(id: "shark102_q5", prompt: "Match each mechanism to what it does.", matchingPairs: [
                MatchingPair(left: "Ram ventilation", right: "Breathe by swimming forward"),
                MatchingPair(left: "Buccal pumping", right: "Breathe while resting still"),
                MatchingPair(left: "Squalene-rich liver", right: "Provides buoyancy"),
                MatchingPair(left: "Rete mirabile", right: "Retains body heat")
            ], explanation: "Each adaptation solves a specific survival problem: oxygen, buoyancy, or temperature.")
        ]),
        flashcards: [
            Flashcard(id: "shark102_f1", front: "Obligate ram ventilator", back: "A shark that must swim continuously to push water over its gills (e.g., great white, mako, whale shark)."),
            Flashcard(id: "shark102_f2", front: "Buccal pumping", back: "Actively drawing water over the gills while stationary -- lets bottom sharks rest and breathe."),
            Flashcard(id: "shark102_f3", front: "Rete mirabile", back: "A counter-current heat-exchange network that lets some sharks keep muscles and brain warmer than the surrounding water."),
            Flashcard(id: "shark102_f4", front: "Heterocercal tail", back: "An asymmetrical tail with a longer upper lobe that generates lift as well as forward thrust.")
        ],
        tags: ["physiology", "basics", "myths"]
    )

    static let lesson3 = Lesson(
        id: "shark_t1_03",
        categoryId: .sharks,
        tier: 1,
        lessonNumber: 3,
        title: "Legend vs Reality",
        subtitle: "How Jaws rewired a generation",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["shark_t1_02"],
        contentBlocks: [
            ContentBlock(id: "shark103_b1", type: .whyMatters, title: "Why The Myth Outran The Animal", bullets: [
                "Fear of sharks is wildly out of proportion to the actual danger -- and that gap was largely manufactured.",
                "Separating media mythology from biology is real critical thinking, not just trivia.",
                "Symbols travel faster than facts. Sharks are a textbook case."
            ]),
            ContentBlock(id: "shark103_b2", type: .history, title: "The Jaws Effect", bullets: [
                "Jaws (1975) created the modern cultural terror of sharks, painting a great white as a calculating man-eater.",
                "Beach tourism dropped and recreational shark killing spiked in the years that followed.",
                "Author Peter Benchley spent the rest of his life as a shark conservation advocate, saying he could not write the book today.",
                "Shark Week (Discovery, since 1988) turned that fear into an annual ritual -- part education, part spectacle."
            ], body: "One novel and film reshaped how an entire culture sees an ancient animal. That is the power, and the danger, of a strong symbol."),
            ContentBlock(id: "shark103_b3", type: .commonMistakes, title: "The Big Myths, Corrected", bullets: [
                "Myth: sharks are mindless killing machines. Reality: they are cautious, selective predators with complex behavior.",
                "Myth: sharks hunt humans. Reality: people are not on the menu; most bites are investigatory.",
                "Myth: you are likely to be attacked. Reality: roughly 70 unprovoked bites and about 5 to 10 deaths per year worldwide.",
                "Myth: sharks are taking over the oceans. Reality: many populations have fallen 70%+ in 50 years."
            ]),
            ContentBlock(id: "shark103_b4", type: .realWorld, title: "The Statistics That Reframe It", bullets: [
                "You are more likely to be killed by a vending machine, a cow, a bee, or a falling coconut than a shark.",
                "Humans kill an estimated 100 million sharks per year; sharks kill a single-digit number of humans.",
                "Most fatal bite years globally still total in the single digits to low teens.",
                "The risk ratio is absurdly lopsided -- we are by far the apex threat."
            ]),
            ContentBlock(id: "shark103_b5", type: .summary, title: "What To Lock In", bullets: [
                "Jaws (1975) manufactured a fear that the science does not support.",
                "~70 bites and roughly 5 to 10 deaths a year worldwide -- minuscule risk.",
                "Humans kill ~100 million sharks annually; the danger runs the other way.",
                "Most bites are investigatory, not predatory."
            ])
        ],
        quiz: Quiz(id: "shark103_q", passPercent: 80, questions: [
            Question(id: "shark103_q1", type: .scenario, prompt: "A headline reads 'Sharks are multiplying and getting more dangerous.' Based on the data, this is:", choices: ["Accurate -- populations are booming", "Backwards -- many populations have declined 70%+ in 50 years", "True only for makos", "Impossible to know"], correctIndex: 1, explanation: "Global shark populations have fallen sharply from fishing and finning. They are the ones in danger, not us."),
            Question(id: "shark103_q2", type: .multipleChoice, prompt: "Roughly how many unprovoked shark bites occur worldwide each year?", choices: ["About 70", "About 7,000", "About 70,000", "About 700,000"], correctIndex: 0, explanation: "There are roughly 70 unprovoked bites per year globally, with only a handful fatal -- a tiny risk."),
            Question(id: "shark103_q3", prompt: "The 1975 film that created the modern cultural fear of sharks was ____.", acceptedAnswers: ["jaws", "Jaws"], explanation: "Jaws reshaped public perception; even its author Peter Benchley later became a conservation advocate."),
            Question(id: "shark103_q4", type: .multiSelect, prompt: "Which are FALSE shark myths?", choices: ["Sharks are mindless killing machines", "Sharks deliberately hunt humans", "Most bites are investigatory", "Shark populations are skyrocketing", "Sharks are selective predators"], correctIndices: [0, 1, 3], explanation: "Mindless killers, deliberate human-hunting, and booming populations are all myths. Investigatory bites and selective predation are true."),
            Question(id: "shark103_q5", prompt: "Match each item to its cultural impact.", matchingPairs: [
                MatchingPair(left: "Jaws (1975)", right: "Created modern fear of sharks"),
                MatchingPair(left: "Shark Week (1988)", right: "Turned fear into annual ritual"),
                MatchingPair(left: "Peter Benchley later", right: "Became conservation advocate")
            ], explanation: "The arc from Jaws to Shark Week to Benchley's advocacy is the full story of sharks in American media.")
        ]),
        flashcards: [
            Flashcard(id: "shark103_f1", front: "Investigatory bite", back: "A 'test bite' where a shark mouths an object to identify it -- most human bites are this, not predation."),
            Flashcard(id: "shark103_f2", front: "The Jaws effect", back: "The lasting, exaggerated public fear of sharks traced to the 1975 film and novel."),
            Flashcard(id: "shark103_f3", front: "Unprovoked bite stats", back: "~70 unprovoked bites per year worldwide, roughly 5 to 10 fatal, versus ~100 million sharks killed by humans annually."),
            Flashcard(id: "shark103_f4", front: "Sensationalism", back: "Using shocking framing to grab attention, often at the expense of accuracy -- common in shark media.")
        ],
        tags: ["myths", "media", "statistics"]
    )

    static let lesson4 = Lesson(
        id: "shark_t1_04",
        categoryId: .sharks,
        tier: 1,
        lessonNumber: 4,
        title: "Species You Should Know",
        subtitle: "A quick field guide to the headliners",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["shark_t1_03"],
        contentBlocks: [
            ContentBlock(id: "shark104_b1", type: .whyMatters, title: "Know The Cast Of Characters", bullets: [
                "A handful of species dominate every conversation, documentary, and headline about sharks.",
                "Being able to tell them apart, and knowing which are harmless, is core literacy for this category.",
                "Most of these you will revisit in depth later -- this is the map before the deep dive."
            ]),
            ContentBlock(id: "shark104_b2", type: .componentBreakdown, title: "The Big Predators", bullets: [
                "Great white (Carcharodon carcharias): up to 20 ft, ambush hunter of seals, warm-bodied, the famous one.",
                "Tiger shark (Galeocerdo cuvier): up to 14 ft, blunt nose and fading stripes, eats almost anything.",
                "Bull shark (Carcharhinus leucas): up to 11 ft, stocky, tolerates fresh water, lives where people swim.",
                "Shortfin mako (Isurus oxyrinchus): the fastest shark, bursts to ~45 mph, slender and metallic blue.",
                "Hammerheads (Sphyrna): wing-shaped head packed with sensors; the great hammerhead reaches ~20 ft."
            ]),
            ContentBlock(id: "shark104_b3", type: .systemOverview, title: "The Gentle Giants", bullets: [
                "Whale shark: largest fish alive (40+ ft), a slow plankton filter feeder, completely harmless.",
                "Basking shark: second-largest fish, also a filter feeder, cruises with mouth wide open.",
                "Nurse shark: docile bottom-dweller that buccal-pumps and rests in groups on the seabed.",
                "Many filter feeders matter ecologically far more than any threat they pose -- which is none."
            ]),
            ContentBlock(id: "shark104_b4", type: .realWorld, title: "Odd And Deep", bullets: [
                "Greenland shark: lives in frigid Arctic water and may exceed 250 to 400 years old -- the longest-lived vertebrate known.",
                "Thresher shark: uses its enormous whip-like tail to stun schools of fish.",
                "Goblin shark: a deep-sea oddity with protruding jaws that shoot forward to grab prey.",
                "Cookiecutter shark: small but takes round 'cookie' plugs out of much larger animals."
            ]),
            ContentBlock(id: "shark104_b5", type: .summary, title: "What To Lock In", bullets: [
                "Big predators: great white, tiger, bull, mako, hammerhead.",
                "Gentle giants: whale shark, basking shark, nurse shark -- harmless filter or bottom feeders.",
                "Oddballs: Greenland (longest-lived), thresher (tail-whip), goblin, cookiecutter.",
                "Size and reputation do not predict danger -- the biggest sharks are the safest."
            ])
        ],
        quiz: Quiz(id: "shark104_q", passPercent: 80, questions: [
            Question(id: "shark104_q1", type: .multipleChoice, prompt: "Which of these is a harmless filter feeder?", choices: ["Bull shark", "Whale shark", "Tiger shark", "Shortfin mako"], correctIndex: 1, explanation: "The whale shark is the largest fish alive but eats plankton through filter feeding and poses no threat to humans."),
            Question(id: "shark104_q2", type: .multipleChoice, prompt: "The fastest shark, capable of bursts around 45 mph, is the:", choices: ["Great white", "Shortfin mako", "Nurse shark", "Greenland shark"], correctIndex: 1, explanation: "The shortfin mako is the speed specialist of the shark world, built slim and warm-bodied for explosive bursts."),
            Question(id: "shark104_q3", prompt: "The longest-lived vertebrate known, possibly exceeding 250 to 400 years, is the ____ shark.", acceptedAnswers: ["greenland", "Greenland", "greenland shark"], explanation: "Greenland sharks live in cold deep Arctic water and grow extremely slowly, reaching centuries of age."),
            Question(id: "shark104_q4", prompt: "Match each shark to its signature trait.", matchingPairs: [
                MatchingPair(left: "Great white", right: "Ambush seal hunter"),
                MatchingPair(left: "Bull shark", right: "Tolerates fresh water"),
                MatchingPair(left: "Thresher", right: "Stuns prey with its tail"),
                MatchingPair(left: "Hammerhead", right: "Wing-shaped sensory head")
            ], explanation: "Each headline species has a distinct, recognizable specialty."),
            Question(id: "shark104_q5", type: .multiSelect, prompt: "Which of these sharks are generally harmless to humans?", choices: ["Whale shark", "Basking shark", "Bull shark", "Nurse shark", "Tiger shark"], correctIndices: [0, 1, 3], explanation: "Whale, basking, and nurse sharks are docile filter or bottom feeders. Bull and tiger sharks are among the few that warrant real caution.")
        ]),
        flashcards: [
            Flashcard(id: "shark104_f1", front: "Shortfin mako", back: "The fastest shark (~45 mph bursts), warm-bodied and metallic blue -- the sprinter of the ocean."),
            Flashcard(id: "shark104_f2", front: "Greenland shark", back: "Arctic deep-water shark and the longest-lived vertebrate known, possibly 250 to 400+ years."),
            Flashcard(id: "shark104_f3", front: "Filter feeder", back: "A shark (whale, basking) that strains plankton and small organisms from water rather than hunting -- harmless to people."),
            Flashcard(id: "shark104_f4", front: "Hammerhead", back: "Shark with a flattened, wing-shaped head (cephalofoil) that spreads its sensors for a wider sweep.")
        ],
        tags: ["species", "field guide", "basics"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "shark_t2_01",
        categoryId: .sharks,
        tier: 2,
        lessonNumber: 1,
        title: "Anatomy Of A Hunter",
        subtitle: "Teeth, fins, gills, and skin engineered to kill",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["shark_t1_04"],
        contentBlocks: [
            ContentBlock(id: "shark205_b1", type: .whyMatters, title: "Form Follows Function", bullets: [
                "Every part of a shark's body is shaped by 450 million years of hunting pressure.",
                "Understanding the hardware explains the behavior you will study next.",
                "Once you can read a shark's anatomy, you can predict how it lives and feeds."
            ]),
            ContentBlock(id: "shark205_b2", type: .componentBreakdown, title: "Teeth And Jaws", bullets: [
                "Teeth grow in rows on a conveyor belt -- as front teeth break or fall out, the next row rotates forward.",
                "Tooth shape signals diet: serrated triangles (great white) saw flesh; needle teeth (mako) grip slippery fish; flat plates (some species) crush shellfish.",
                "The upper jaw is not fused to the skull -- it can protrude forward to extend reach when biting.",
                "Bite force in a large great white is estimated near 4,000 psi, among the strongest measured."
            ]),
            ContentBlock(id: "shark205_b3", type: .componentBreakdown, title: "Fins, Tail, And Skin", bullets: [
                "Dorsal fin: stability and anti-roll, the iconic surface triangle.",
                "Pectoral fins: generate lift, like aircraft wings, and aid steering.",
                "Caudal (tail) fin: the engine; a tall upper lobe in fast species, a long whip in threshers.",
                "Dermal denticles align to channel water, cutting drag and turbulence -- the inspiration for high-tech swimsuits.",
                "Counter-shading (dark top, pale belly) hides the shark from both above and below."
            ]),
            ContentBlock(id: "shark205_b4", type: .howItWorks, title: "Breathing And Internal Layout", bullets: [
                "5 to 7 gill slits extract oxygen; spiracles behind the eyes help bottom species pull clean water.",
                "A spiral valve intestine packs huge surface area for absorption into a short gut.",
                "The two-chambered heart drives a relatively low-pressure circulatory system.",
                "Most of the body cavity is taken up by the enormous, oil-filled liver."
            ]),
            ContentBlock(id: "shark205_b5", type: .summary, title: "What To Lock In", bullets: [
                "Conveyor-belt teeth shaped by diet; protrusible jaws; immense bite force.",
                "Fins specialize: dorsal stabilizes, pectorals lift, tail powers.",
                "Denticles cut drag; counter-shading provides camouflage.",
                "Gills + spiracles breathe; spiral valve gut + giant liver fill the body."
            ])
        ],
        quiz: Quiz(id: "shark205_q", passPercent: 80, questions: [
            Question(id: "shark205_q1", type: .multipleChoice, prompt: "Serrated, triangular teeth like a great white's are best suited to:", choices: ["Crushing shellfish", "Sawing through flesh of large prey", "Filtering plankton", "Gripping tiny slippery fish"], correctIndex: 1, explanation: "Serrated triangular teeth saw through the flesh of marine mammals and large fish. Needle teeth grip slippery prey; flat plates crush shellfish."),
            Question(id: "shark205_q2", type: .scenario, prompt: "You examine a shark with long needle-like teeth and a slim, torpedo body. Its likely diet is:", choices: ["Plankton", "Hard-shelled crabs", "Fast, slippery fish like tuna", "Large seals"], correctIndex: 2, explanation: "Needle teeth grip slippery fish, and a slim torpedo body signals a fast pursuit predator -- classic mako traits."),
            Question(id: "shark205_q3", prompt: "Dark on top and pale underneath, a shark's camouflage pattern is called counter-____.", acceptedAnswers: ["shading", "counter-shading", "countershading"], explanation: "Counter-shading hides the shark against the dark depths from above and the bright surface from below."),
            Question(id: "shark205_q4", type: .multiSelect, prompt: "Which statements about shark fins are correct?", choices: ["The dorsal fin provides stability", "Pectoral fins generate lift", "The tail (caudal fin) provides thrust", "The dorsal fin is the main engine", "Pectoral fins are useless for steering"], correctIndices: [0, 1, 2], explanation: "Dorsal stabilizes, pectorals lift and steer, and the tail powers the shark. The tail, not the dorsal, is the engine."),
            Question(id: "shark205_q5", prompt: "Match each anatomy feature to its function.", matchingPairs: [
                MatchingPair(left: "Spiral valve", right: "Maximizes nutrient absorption"),
                MatchingPair(left: "Spiracle", right: "Aids breathing in bottom species"),
                MatchingPair(left: "Dermal denticles", right: "Reduce drag"),
                MatchingPair(left: "Protrusible jaw", right: "Extends bite reach")
            ], explanation: "Each internal and external feature is a specific engineering solution to a hunting problem.")
        ]),
        flashcards: [
            Flashcard(id: "shark205_f1", front: "Tooth conveyor belt", back: "Shark teeth grow in rows and rotate forward to replace lost ones continuously throughout life."),
            Flashcard(id: "shark205_f2", front: "Counter-shading", back: "Dark dorsal and pale ventral coloring that camouflages a shark from both above and below."),
            Flashcard(id: "shark205_f3", front: "Spiracle", back: "A small opening behind the eye that helps bottom-dwelling sharks draw clean water over the gills."),
            Flashcard(id: "shark205_f4", front: "Spiral valve", back: "A corkscrew-shaped intestine that packs large absorptive surface area into a short digestive tract.")
        ],
        tags: ["anatomy", "working knowledge", "biology"]
    )

    static let lesson6 = Lesson(
        id: "shark_t2_02",
        categoryId: .sharks,
        tier: 2,
        lessonNumber: 2,
        title: "The Senses, Including The Sixth",
        subtitle: "Smell, sound, the lateral line, and electroreception",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["shark_t2_01"],
        contentBlocks: [
            ContentBlock(id: "shark206_b1", type: .whyMatters, title: "A Stacked Sensory System", bullets: [
                "Sharks do not rely on one super-sense; they layer five or six, each tuned to a different range.",
                "This sensory stack is the real reason they are such effective hunters.",
                "Electroreception in particular is a genuine sixth sense most animals do not have."
            ]),
            ContentBlock(id: "shark206_b2", type: .howItWorks, title: "Long-Range: Smell And Hearing", bullets: [
                "Smell is the primary long-range sense -- sharks can detect blood and amino acids at roughly one part per million to one part per billion.",
                "Nostrils (nares) are for smelling only, not breathing; water flows in continuously as the shark swims.",
                "Hearing detects low-frequency sounds, especially the irregular thrashing of a wounded animal, from hundreds of meters.",
                "These two senses bring the shark into the general area of potential prey."
            ]),
            ContentBlock(id: "shark206_b3", type: .howItWorks, title: "Mid-Range: Lateral Line And Vision", bullets: [
                "The lateral line is a row of fluid-filled canals that sense vibrations, water movement, and pressure changes.",
                "It lets a shark 'feel' a struggling fish or a swimmer's kicks nearby.",
                "Vision is better than commonly assumed; many sharks see in low light and some perceive color, with a reflective tapetum lucidum boosting night vision.",
                "Sight takes over in the final approach when the shark closes within meters."
            ]),
            ContentBlock(id: "shark206_b4", type: .systemOverview, title: "Close-Range: Electroreception", bullets: [
                "The ampullae of Lorenzini are jelly-filled pores around the snout that detect tiny electrical fields.",
                "Every living animal generates a faint electrical field from muscle and nerve activity, including a hidden heartbeat.",
                "At very close range, even buried or motionless prey gives itself away electrically.",
                "Sharks can also use Earth's magnetic field, likely aiding long-distance navigation."
            ], callouts: ["Electroreception is so sensitive a shark can detect fields of a few billionths of a volt per centimeter."]),
            ContentBlock(id: "shark206_b5", type: .summary, title: "What To Lock In", bullets: [
                "Long range: smell (primary) and low-frequency hearing.",
                "Mid range: lateral line vibration sensing and surprisingly good vision.",
                "Close range: ampullae of Lorenzini electroreception detect hidden prey.",
                "The senses hand off in sequence from far away to the final bite."
            ])
        ],
        quiz: Quiz(id: "shark206_q", passPercent: 80, questions: [
            Question(id: "shark206_q1", type: .multipleChoice, prompt: "The organs sharks use to detect the faint electrical fields of prey are the:", choices: ["Lateral line", "Ampullae of Lorenzini", "Tapetum lucidum", "Spiracles"], correctIndex: 1, explanation: "The ampullae of Lorenzini are jelly-filled electroreceptor pores that detect the tiny electrical fields produced by living animals."),
            Question(id: "shark206_q2", type: .scenario, prompt: "A flounder lies perfectly still, buried in sand, making no sound or movement. How can a shark still find it?", choices: ["It cannot -- the prey is invisible to sharks", "By electroreception detecting the fish's bioelectric field", "Only by smell from a distance", "By echolocation"], correctIndex: 1, explanation: "Even motionless, buried prey emits a faint electrical field from its muscles and nerves, which the ampullae of Lorenzini detect at close range."),
            Question(id: "shark206_q3", prompt: "A shark's primary long-range sense for locating prey is its sense of ____.", acceptedAnswers: ["smell", "olfaction"], explanation: "Smell is the dominant long-range sense, detecting blood and amino acids at extremely low concentrations."),
            Question(id: "shark206_q4", prompt: "Match each sense to its effective range or role.", matchingPairs: [
                MatchingPair(left: "Smell", right: "Long-range detection"),
                MatchingPair(left: "Hearing", right: "Detects distant thrashing"),
                MatchingPair(left: "Lateral line", right: "Mid-range vibration sensing"),
                MatchingPair(left: "Ampullae of Lorenzini", right: "Close-range electroreception")
            ], explanation: "The senses operate as a relay from far away (smell, hearing) to mid-range (lateral line, vision) to the final approach (electroreception)."),
            Question(id: "shark206_q5", type: .multiSelect, prompt: "Which are TRUE about shark senses?", choices: ["Sharks can detect Earth's magnetic field", "Sharks use echolocation like dolphins", "Vision is better than commonly assumed", "A tapetum lucidum boosts low-light vision", "Nostrils are used for breathing"], correctIndices: [0, 2, 3], explanation: "Sharks sense magnetic fields, see well in low light with a tapetum lucidum. They do NOT echolocate, and their nostrils are for smell only, not breathing.")
        ]),
        flashcards: [
            Flashcard(id: "shark206_f1", front: "Ampullae of Lorenzini", back: "Jelly-filled pores around a shark's snout that detect the faint electrical fields of living prey -- the 'sixth sense'."),
            Flashcard(id: "shark206_f2", front: "Lateral line", back: "A canal system along the body that senses vibrations, water movement, and pressure changes."),
            Flashcard(id: "shark206_f3", front: "Tapetum lucidum", back: "A reflective layer behind the retina that boosts a shark's vision in low light."),
            Flashcard(id: "shark206_f4", front: "Electroreception", back: "The ability to detect electrical fields, used by sharks to find hidden or motionless prey at close range.")
        ],
        tags: ["senses", "electroreception", "working knowledge"]
    )

    static let lesson7 = Lesson(
        id: "shark_t2_03",
        categoryId: .sharks,
        tier: 2,
        lessonNumber: 3,
        title: "Behavior And Feeding",
        subtitle: "How sharks hunt, socialize, and reproduce",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["shark_t2_02"],
        contentBlocks: [
            ContentBlock(id: "shark207_b1", type: .whyMatters, title: "Behavior Beats Brawn", bullets: [
                "Sharks are not blunt instruments -- their success comes from disciplined, energy-efficient behavior.",
                "Understanding how they hunt and reproduce kills the 'mindless eating machine' myth for good.",
                "Their feeding strategy is closer to a patient ambush than a frenzy."
            ]),
            ContentBlock(id: "shark207_b2", type: .howItWorks, title: "Hunting Strategy", bullets: [
                "Great whites ambush from below and behind, using counter-shading and a single high-speed strike up to ~25 mph.",
                "Many predators take an exploratory bite, then back off to let large prey weaken before returning -- conserving energy and avoiding injury.",
                "Threshers herd and stun schooling fish with tail whips; makos run prey down in open water.",
                "Predators target the sick, slow, and injured, which keeps prey populations healthy."
            ]),
            ContentBlock(id: "shark207_b3", type: .systemOverview, title: "Feeding Frenzies And Social Life", bullets: [
                "A 'feeding frenzy' is real but situational -- triggered by abundant food and competition, not constant bloodlust.",
                "Many species are more social than assumed: hammerheads form large daytime schools, and some sharks have stable dominance hierarchies.",
                "Sharks communicate through body language -- arched backs, gaping jaws, and exaggerated swimming are warnings.",
                "Some undertake huge migrations, crossing entire ocean basins on seasonal routes."
            ]),
            ContentBlock(id: "shark207_b4", type: .principles, title: "How Sharks Reproduce", bullets: [
                "Internal fertilization: males use claspers to transfer sperm -- unlike most bony fish.",
                "Oviparous species lay egg cases ('mermaid's purses'); ovoviviparous species hatch eggs internally; viviparous species nourish pups through a placenta-like connection.",
                "Sharks are slow breeders -- late to mature, long gestation, few pups -- which makes overfishing devastating.",
                "Some pups practice intrauterine cannibalism, with the strongest embryo eating its siblings before birth."
            ]),
            ContentBlock(id: "shark207_b5", type: .summary, title: "What To Lock In", bullets: [
                "Hunting is efficient ambush, not chaos; exploratory bites conserve energy.",
                "Frenzies are situational; many sharks are surprisingly social and communicative.",
                "Reproduction is internal via claspers, with egg-laying, internal-hatching, or live-bearing modes.",
                "Slow reproduction makes sharks highly vulnerable to overfishing."
            ])
        ],
        quiz: Quiz(id: "shark207_q", passPercent: 80, questions: [
            Question(id: "shark207_q1", type: .scenario, prompt: "A great white takes one bite of a seal, then swims off and waits before returning. This behavior is best explained as:", choices: ["The shark lost interest", "Energy-efficient strategy -- let large prey weaken to avoid injury", "Proof sharks cannot finish a kill", "A sign the seal was poisonous"], correctIndex: 1, explanation: "The 'bite and back off' tactic lets dangerous prey weaken before the shark returns, conserving energy and avoiding injury -- not random or incompetent."),
            Question(id: "shark207_q2", type: .multipleChoice, prompt: "Male sharks transfer sperm during internal fertilization using structures called:", choices: ["Spiracles", "Claspers", "Barbels", "Denticles"], correctIndex: 1, explanation: "Claspers are paired organs on the pelvic fins of male sharks used to deliver sperm during internal fertilization."),
            Question(id: "shark207_q3", prompt: "Egg cases laid by oviparous sharks are nicknamed mermaid's ____.", acceptedAnswers: ["purses", "purse", "mermaid's purses"], explanation: "Mermaid's purses are the tough, protective egg cases of egg-laying shark and skate species."),
            Question(id: "shark207_q4", type: .multiSelect, prompt: "Which reproductive facts about sharks are TRUE?", choices: ["Fertilization is internal", "All sharks lay eggs", "Some species bear live young via a placenta-like connection", "Sharks mature quickly and have many pups", "Some embryos eat their siblings in the womb"], correctIndices: [0, 2, 4], explanation: "Sharks fertilize internally, include live-bearing species, and some practice intrauterine cannibalism. They are slow breeders, and not all lay eggs."),
            Question(id: "shark207_q5", prompt: "Match each species to its hunting style.", matchingPairs: [
                MatchingPair(left: "Great white", right: "Ambush strike from below"),
                MatchingPair(left: "Thresher", right: "Stuns schools with tail"),
                MatchingPair(left: "Mako", right: "High-speed open-water chase"),
                MatchingPair(left: "Hammerhead", right: "Pins rays with its head")
            ], explanation: "Different body plans drive different, specialized hunting techniques.")
        ]),
        flashcards: [
            Flashcard(id: "shark207_f1", front: "Claspers", back: "Paired organs on a male shark's pelvic fins used to transfer sperm during internal fertilization."),
            Flashcard(id: "shark207_f2", front: "Mermaid's purse", back: "The protective egg case laid by oviparous (egg-laying) sharks and skates."),
            Flashcard(id: "shark207_f3", front: "Bite-and-back-off", back: "An energy-efficient tactic where a shark bites large prey once, retreats, and lets it weaken before returning."),
            Flashcard(id: "shark207_f4", front: "Intrauterine cannibalism", back: "When the strongest shark embryos consume their siblings in the womb before birth (e.g., sand tiger sharks).")
        ],
        tags: ["behavior", "feeding", "reproduction"]
    )

    static let lesson8 = Lesson(
        id: "shark_t2_04",
        categoryId: .sharks,
        tier: 2,
        lessonNumber: 4,
        title: "The Biggest Myths Debunked",
        subtitle: "Separating spectacle from science",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["shark_t2_03"],
        contentBlocks: [
            ContentBlock(id: "shark208_b1", type: .whyMatters, title: "Why Myth-Busting Is A Skill", bullets: [
                "Sharks are surrounded by confident-sounding falsehoods that even smart people repeat.",
                "Being the person who knows the real answer is a small but genuine mark of competence.",
                "Each myth here has a clean, factual correction you can actually use."
            ]),
            ContentBlock(id: "shark208_b2", type: .commonMistakes, title: "Body And Biology Myths", bullets: [
                "Myth: all sharks must swim or die. Reality: many breathe by buccal pumping and rest on the bottom.",
                "Myth: sharks cannot get cancer. Reality: they can; this myth fueled a harmful cartilage-supplement market.",
                "Myth: sharks have poor eyesight. Reality: vision is good, often color-capable and strong in low light.",
                "Myth: a shark fin in the water means an attack. Reality: a cruising dorsal fin is usually just a shark passing by."
            ], callouts: ["The 'sharks don't get cancer' myth drove demand for shark cartilage pills, harming both people and shark populations."]),
            ContentBlock(id: "shark208_b3", type: .commonMistakes, title: "Danger And Behavior Myths", bullets: [
                "Myth: sharks hunt humans. Reality: people are not prey; most bites are investigatory and quickly abandoned.",
                "Myth: punch a shark in the nose to escape. Reality: the eyes and gills are far more reliable targets if you must defend yourself.",
                "Myth: blood from any small cut guarantees an attack. Reality: sharks key on thrashing and electrical signals more than trace blood.",
                "Myth: all sharks are huge. Reality: more than half of all species are under 3 feet long."
            ]),
            ContentBlock(id: "shark208_b4", type: .realWorld, title: "The Scale Of The Real Threat", bullets: [
                "Roughly 70 unprovoked bites occur worldwide each year, with single-digit fatalities most years.",
                "Vending machines, cows, dogs, and lightning each kill more people annually than sharks.",
                "Humans kill an estimated 100 million sharks per year, largely for fins.",
                "The honest takeaway: sharks are an ecological treasure facing collapse, not a lurking threat to you."
            ]),
            ContentBlock(id: "shark208_b5", type: .summary, title: "What To Lock In", bullets: [
                "Not all sharks must swim; they can get cancer; their vision is good.",
                "Sharks do not hunt humans; eyes and gills beat the nose if you must defend yourself.",
                "Over half of all shark species are under 3 feet long.",
                "The risk is minuscule; the conservation crisis is real."
            ])
        ],
        quiz: Quiz(id: "shark208_q", passPercent: 80, questions: [
            Question(id: "shark208_q1", type: .multipleChoice, prompt: "Which statement is TRUE, not a myth?", choices: ["Sharks cannot get cancer", "Over half of all shark species are under 3 feet long", "All sharks must swim constantly or die", "Sharks have poor eyesight"], correctIndex: 1, explanation: "More than half of shark species are small, under 3 feet. The other three options are all common myths."),
            Question(id: "shark208_q2", type: .scenario, prompt: "If a shark were genuinely threatening and you had to defend yourself, the most reliable targets are the:", choices: ["Nose only", "Eyes and gills", "Dorsal fin", "Tail"], correctIndex: 1, explanation: "The eyes and gills are sensitive and effective targets. The 'punch the nose' advice is overrated and harder to land."),
            Question(id: "shark208_q3", prompt: "The false belief that sharks cannot get ____ helped drive a harmful cartilage-supplement market.", acceptedAnswers: ["cancer"], explanation: "Sharks can and do get cancer. The myth that they cannot fueled demand for shark cartilage pills, harming both people and sharks."),
            Question(id: "shark208_q4", type: .multiSelect, prompt: "Which of these are MYTHS?", choices: ["All sharks must swim or die", "Sharks deliberately hunt humans", "Sharks can detect electrical fields", "Sharks cannot get cancer", "Most bites are investigatory"], correctIndices: [0, 1, 3], explanation: "The first, second, and fourth are myths. Electroreception and investigatory bites are well-established facts."),
            Question(id: "shark208_q5", prompt: "Match each myth to its correction.", matchingPairs: [
                MatchingPair(left: "Sharks hunt humans", right: "Most bites are investigatory"),
                MatchingPair(left: "All sharks must swim", right: "Many rest via buccal pumping"),
                MatchingPair(left: "Sharks have poor vision", right: "Vision is good, often color-capable"),
                MatchingPair(left: "All sharks are huge", right: "Half are under 3 feet")
            ], explanation: "Each popular myth has a clean factual correction grounded in biology.")
        ]),
        flashcards: [
            Flashcard(id: "shark208_f1", front: "Myth: sharks can't get cancer", back: "False -- sharks do get cancer. This myth fueled a damaging shark-cartilage supplement industry."),
            Flashcard(id: "shark208_f2", front: "Shark self-defense targets", back: "If forced to defend yourself, the eyes and gills are more reliable than the overhyped nose punch."),
            Flashcard(id: "shark208_f3", front: "Most sharks are small", back: "Over half of all shark species are under 3 feet long -- the 'all sharks are giant' image is a myth."),
            Flashcard(id: "shark208_f4", front: "Fin sighting reality", back: "A cruising dorsal fin usually just means a shark is passing by, not that an attack is imminent.")
        ],
        tags: ["myths", "debunking", "working knowledge"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "shark_t3_01",
        categoryId: .sharks,
        tier: 3,
        lessonNumber: 1,
        title: "Sharks And Humans",
        subtitle: "Real statistics and how to stay out of trouble",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["shark_t2_04"],
        contentBlocks: [
            ContentBlock(id: "shark309_b1", type: .safety, title: "Education, Not A Survival Guarantee", bullets: [
                "This lesson is educational. It is not a substitute for local lifeguard guidance, posted warnings, or professional ocean-safety training.",
                "Shark bites are extremely rare; the goal here is to lower already-tiny odds with simple habits.",
                "Always defer to lifeguards, flags, and local advisories over anything in an app."
            ], callouts: ["When in doubt, get out of the water and ask a lifeguard. No app replaces on-the-ground local knowledge."]),
            ContentBlock(id: "shark309_b2", type: .realWorld, title: "What The Numbers Actually Say", bullets: [
                "Around 70 unprovoked bites are recorded worldwide each year; most years see single-digit fatalities.",
                "The U.S. (especially Florida), Australia, and South Africa report the most encounters, simply because more people are in the water.",
                "Surfers and board sports see more bites than swimmers -- silhouette and splashing near the surface play a role.",
                "Most bites are single, exploratory, and non-fatal; the shark usually leaves once it identifies a non-prey object."
            ]),
            ContentBlock(id: "shark309_b3", type: .stepByStep, title: "How To Lower The Odds", bullets: [
                "Avoid dawn, dusk, and night -- prime feeding times with low visibility.",
                "Stay out of murky water, river mouths, and areas with baitfish, diving birds, or active fishing.",
                "Swim in groups; sharks are more likely to investigate a lone, isolated figure.",
                "Skip shiny jewelry and high-contrast gear that can mimic fish scales or flash.",
                "Do not enter the water with open wounds, and leave if fish are behaving erratically or seals are present."
            ]),
            ContentBlock(id: "shark309_b4", type: .principles, title: "Why Bites Happen At All", bullets: [
                "Mistaken identity: a paddling surfer can resemble a seal's silhouette from below.",
                "Curiosity: sharks 'taste-test' unfamiliar objects because they have no hands.",
                "Provocation: cornering, grabbing, or feeding sharks dramatically raises risk -- many bites are provoked.",
                "Defensive reaction: a startled or trapped shark may bite to escape, not to feed."
            ]),
            ContentBlock(id: "shark309_b5", type: .summary, title: "What To Lock In", bullets: [
                "~70 bites a year worldwide; the risk is genuinely tiny.",
                "Lower it further: avoid low light, murky water, isolation, and shiny gear.",
                "Most bites are mistaken identity or curiosity, not predation.",
                "Defer to lifeguards and local warnings -- always."
            ])
        ],
        quiz: Quiz(id: "shark309_q", passPercent: 80, questions: [
            Question(id: "shark309_q1", type: .scenario, prompt: "You want to surf at a beach known for occasional sharks. Which choice best lowers your risk?", choices: ["Paddle out alone at dawn", "Surf midday with a group, avoiding murky water and baitfish", "Wear shiny jewelry to look bigger", "Swim near a fishing pier at dusk"], correctIndex: 1, explanation: "Midday light, staying in a group, and avoiding murky bait-heavy water all reduce risk. Dawn, isolation, shiny gear, and fishing areas all raise it."),
            Question(id: "shark309_q2", type: .multipleChoice, prompt: "Most unprovoked shark bites on humans are best described as:", choices: ["Sustained predatory feeding", "Single, exploratory bites that are quickly abandoned", "Coordinated pack attacks", "Territorial defense of nests"], correctIndex: 1, explanation: "The typical bite is a single investigatory bite; the shark usually leaves once it realizes a human is not its prey."),
            Question(id: "shark309_q3", prompt: "Two high-risk times to avoid swimming, due to feeding activity and low visibility, are dawn and ____.", acceptedAnswers: ["dusk", "dusk and night", "night"], explanation: "Dawn and dusk are peak feeding periods with poor visibility, raising the odds of a mistaken-identity encounter."),
            Question(id: "shark309_q4", type: .multiSelect, prompt: "Which behaviors reduce the already-low risk of a shark bite?", choices: ["Swimming in a group", "Avoiding murky river-mouth water", "Wearing shiny jewelry", "Staying out at dawn and dusk", "Avoiding water with active fishing or baitfish"], correctIndices: [0, 1, 4], explanation: "Groups, clear water, and avoiding bait/fishing areas help. Shiny jewelry and dawn/dusk swimming increase risk."),
            Question(id: "shark309_q5", prompt: "Match each bite cause to its description.", matchingPairs: [
                MatchingPair(left: "Mistaken identity", right: "Surfer resembles a seal from below"),
                MatchingPair(left: "Curiosity", right: "Taste-testing an unknown object"),
                MatchingPair(left: "Provocation", right: "Grabbing or feeding a shark"),
                MatchingPair(left: "Defensive bite", right: "Startled or cornered shark escaping")
            ], explanation: "Understanding why bites happen makes the prevention habits make sense.")
        ]),
        flashcards: [
            Flashcard(id: "shark309_f1", front: "Unprovoked bite (definition)", back: "A bite on a live human in the shark's habitat with no human provocation -- roughly 70 occur worldwide per year."),
            Flashcard(id: "shark309_f2", front: "Mistaken identity", back: "A leading cause of bites: from below, a paddling surfer's silhouette can resemble a seal."),
            Flashcard(id: "shark309_f3", front: "High-risk conditions", back: "Dawn/dusk/night, murky water, river mouths, baitfish or active fishing, and swimming alone."),
            Flashcard(id: "shark309_f4", front: "Provoked bite", back: "A bite triggered by cornering, grabbing, or feeding a shark -- a significant and avoidable share of incidents.")
        ],
        tags: ["safety", "statistics", "advanced"]
    )

    static let lesson10 = Lesson(
        id: "shark_t3_02",
        categoryId: .sharks,
        tier: 3,
        lessonNumber: 2,
        title: "If You Encounter One",
        subtitle: "Calm, controlled responses in the water",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["shark_t3_01"],
        contentBlocks: [
            ContentBlock(id: "shark310_b1", type: .safety, title: "Read This First", bullets: [
                "This is general educational information, not professional dive, surf, or medical training, and not a guarantee of safety.",
                "Real encounters are rare and highly variable; nothing replaces hands-on instruction and local expertise.",
                "If you dive or surf seriously, get trained by certified professionals and learn your specific waters."
            ], callouts: ["This lesson is education only. For real in-water skills, train with certified dive and ocean-safety instructors."]),
            ContentBlock(id: "shark310_b2", type: .stepByStep, title: "If A Shark Approaches", bullets: [
                "Stay calm and do not thrash -- erratic splashing mimics distressed prey and draws interest.",
                "Keep the shark in sight; never turn your back or sprint blindly for shore.",
                "Maintain a vertical posture and slow, deliberate movements; make yourself look big and aware.",
                "If on the surface, slowly and smoothly back toward the boat, reef, or shore while facing the shark.",
                "If diving, position your back to a reef or rock so the shark cannot approach unseen from behind."
            ]),
            ContentBlock(id: "shark310_b3", type: .principles, title: "Read The Body Language", bullets: [
                "Relaxed, steady cruising usually means curiosity, not aggression.",
                "Warning signs include an arched back, lowered pectoral fins, rapid zig-zag swimming, and a gaping jaw.",
                "If you see those signals, the shark feels threatened -- give it space and exit calmly.",
                "Use any object you have -- camera, fins, dive pole -- to maintain distance, not to provoke."
            ], callouts: ["An arched back with lowered pectoral fins is a classic agonistic display -- back off and leave."]),
            ContentBlock(id: "shark310_b4", type: .stepByStep, title: "In The Rare Event Of A Bite", bullets: [
                "Be assertive: target the eyes and gills, the most sensitive areas, with hard, deliberate strikes.",
                "Use whatever is in hand -- a dive knife, camera, or board -- rather than open hands.",
                "Get out of the water as efficiently as possible while keeping the shark in view.",
                "On shore, control bleeding immediately with firm pressure and call emergency services -- blood loss is the real danger.",
                "Treat for shock and get professional medical care fast, even for wounds that look minor."
            ], callouts: ["This is not medical advice. Seek professional emergency care for any bite; bleeding control and 911 come first."]),
            ContentBlock(id: "shark310_b5", type: .summary, title: "What To Lock In", bullets: [
                "Stay calm, stay vertical, keep the shark in sight, exit smoothly.",
                "Read body language: arched back and lowered fins mean back off.",
                "If bitten, strike the eyes and gills and use an object, not bare hands.",
                "On land: stop bleeding, treat for shock, call emergency services."
            ])
        ],
        quiz: Quiz(id: "shark310_q", passPercent: 80, questions: [
            Question(id: "shark310_q1", type: .scenario, prompt: "A shark begins circling you while you are snorkeling. The best immediate response is:", choices: ["Splash loudly and swim hard for shore", "Stay calm, keep it in sight, and back away smoothly while facing it", "Dive deep and hide", "Turn your back and freeze"], correctIndex: 1, explanation: "Calm, deliberate movement while keeping the shark in view and backing toward safety is far safer than thrashing or turning your back."),
            Question(id: "shark310_q2", type: .multipleChoice, prompt: "Which is a recognized warning sign that a shark feels threatened?", choices: ["Slow, steady cruising", "Arched back with lowered pectoral fins", "Resting on the bottom", "Swimming away"], correctIndex: 1, explanation: "An arched back, lowered pectoral fins, and zig-zag swimming form a classic agonistic display signaling the shark feels threatened."),
            Question(id: "shark310_q3", prompt: "If forced to fight back during a bite, the two most effective targets are the gills and the ____.", acceptedAnswers: ["eyes", "eye"], explanation: "The eyes and gills are the most sensitive areas; strike them hard and deliberately if defending yourself."),
            Question(id: "shark310_q4", type: .multiSelect, prompt: "Which are sound responses if a shark approaches you?", choices: ["Keep the shark in sight", "Maintain a vertical, controlled posture", "Thrash and splash to scare it", "Back smoothly toward safety", "Turn your back and sprint"], correctIndices: [0, 1, 3], explanation: "Keep eyes on it, stay vertical and controlled, and back away smoothly. Thrashing and turning your back both increase risk."),
            Question(id: "shark310_q5", prompt: "Match each on-shore first-aid priority to its purpose.", matchingPairs: [
                MatchingPair(left: "Firm direct pressure", right: "Control bleeding"),
                MatchingPair(left: "Keep warm, lie flat", right: "Treat for shock"),
                MatchingPair(left: "Call emergency services", right: "Get professional care fast"),
                MatchingPair(left: "Keep shark in view", right: "Avoid a second strike while exiting")
            ], explanation: "Bleeding control and rapid professional care are the real priorities after any bite; this is education, not a substitute for medical training.")
        ]),
        flashcards: [
            Flashcard(id: "shark310_f1", front: "Agonistic display", back: "A shark's threat posture -- arched back, lowered pectoral fins, zig-zag swimming, gaping jaw -- signaling it feels threatened."),
            Flashcard(id: "shark310_f2", front: "Encounter rule #1", back: "Stay calm, stay vertical, keep the shark in sight, and back away smoothly -- never thrash or turn your back."),
            Flashcard(id: "shark310_f3", front: "Defensive targets", back: "If bitten and forced to fight back, strike the eyes and gills with an object rather than bare hands."),
            Flashcard(id: "shark310_f4", front: "Post-bite priority", back: "Control bleeding with firm pressure, treat for shock, and call emergency services -- blood loss is the main danger.")
        ],
        tags: ["safety", "encounter", "advanced"]
    )

    static let lesson11 = Lesson(
        id: "shark_t3_03",
        categoryId: .sharks,
        tier: 3,
        lessonNumber: 3,
        title: "The Famous Five",
        subtitle: "Great white, tiger, bull, hammerhead, and mako up close",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["shark_t3_02"],
        contentBlocks: [
            ContentBlock(id: "shark311_b1", type: .whyMatters, title: "The Species Everyone Argues About", bullets: [
                "Five species drive nearly every shark headline; mastering their real profiles makes you fluent.",
                "Each is specialized for a different niche, body plan, and hunting style.",
                "This pulls together anatomy, senses, and behavior into concrete, memorable examples."
            ]),
            ContentBlock(id: "shark311_b2", type: .componentBreakdown, title: "Great White And Tiger", bullets: [
                "Great white (Carcharodon carcharias): up to 20 ft, regional endotherm, breaches to ambush seals, serrated teeth for flesh.",
                "Great whites are responsible for the most recorded human bites, yet still rarely interact with people relative to the great white's range.",
                "Tiger shark (Galeocerdo cuvier): up to 14 ft, blunt snout, fading vertical stripes, near-indiscriminate diet earning the 'garbage can of the sea' nickname.",
                "Tiger sharks rank second in recorded bites and roam warm coastal and reef waters worldwide."
            ]),
            ContentBlock(id: "shark311_b3", type: .componentBreakdown, title: "Bull And Hammerhead", bullets: [
                "Bull shark (Carcharhinus leucas): up to 11 ft, stocky and aggressive, uses osmoregulation to enter fresh water -- found in rivers and lakes far inland.",
                "Because bull sharks thrive in the shallow, murky water where people swim, many experts consider them among the most consequential to humans.",
                "Hammerhead (Sphyrna spp.): the cephalofoil head spreads the ampullae of Lorenzini for a wider electroreception sweep, ideal for finding buried stingrays.",
                "Great hammerheads reach ~20 ft; many smaller hammerheads are harmless and form large social schools."
            ]),
            ContentBlock(id: "shark311_b4", type: .realWorld, title: "The Mako, And Putting It Together", bullets: [
                "Shortfin mako (Isurus oxyrinchus): the fastest shark, bursting to ~45 mph, warm-bodied, built like a torpedo for chasing tuna and billfish.",
                "Makos are prized by sport fishers, which, combined with bycatch, has pushed populations into decline.",
                "Across all five: warm-bodied speedsters (mako, great white) vs habitat specialists (bull, tiger, hammerhead).",
                "None of the five 'hunts humans' -- their reputations come from range, size, and proximity to people, not malice."
            ]),
            ContentBlock(id: "shark311_b5", type: .summary, title: "What To Lock In", bullets: [
                "Great white: warm-bodied seal ambusher, most recorded bites.",
                "Tiger: indiscriminate warm-water generalist, second in bites.",
                "Bull: freshwater-tolerant, shallow-water, high human overlap.",
                "Hammerhead: electroreception specialist; mako: the speed champion."
            ])
        ],
        quiz: Quiz(id: "shark311_q", passPercent: 80, questions: [
            Question(id: "shark311_q1", type: .scenario, prompt: "You are swimming in a warm, murky river estuary miles from the open coast. Which of the famous five is most likely present?", choices: ["Great white", "Shortfin mako", "Bull shark", "Hammerhead"], correctIndex: 2, explanation: "Bull sharks use osmoregulation to tolerate fresh water and favor shallow, murky habitat -- exactly a river estuary, where great whites and makos do not go."),
            Question(id: "shark311_q2", type: .multipleChoice, prompt: "The hammerhead's wide cephalofoil head primarily improves its:", choices: ["Swimming speed", "Spread of electroreception for finding buried prey", "Bite force", "Buoyancy"], correctIndex: 1, explanation: "Spacing the ampullae of Lorenzini across the wide head gives hammerheads a broader electroreception sweep, ideal for detecting buried stingrays."),
            Question(id: "shark311_q3", prompt: "The fastest of the famous five, reaching bursts near 45 mph, is the shortfin ____.", acceptedAnswers: ["mako", "mako shark"], explanation: "The shortfin mako is warm-bodied and torpedo-shaped, the speed specialist built to run down fast fish like tuna."),
            Question(id: "shark311_q4", type: .multiSelect, prompt: "Which of the famous five are regional endotherms (warm-bodied)?", choices: ["Great white", "Shortfin mako", "Bull shark", "Tiger shark", "Hammerhead"], correctIndices: [0, 1], explanation: "Great whites and makos are regional endotherms. Bull, tiger, and hammerhead sharks are ectothermic (cold-blooded)."),
            Question(id: "shark311_q5", prompt: "Match each famous shark to its defining trait.", matchingPairs: [
                MatchingPair(left: "Great white", right: "Warm-bodied seal ambusher"),
                MatchingPair(left: "Tiger", right: "Indiscriminate generalist diet"),
                MatchingPair(left: "Bull", right: "Tolerates fresh water"),
                MatchingPair(left: "Hammerhead", right: "Wide electroreception head")
            ], explanation: "Each of the famous five occupies a distinct niche with a recognizable signature trait.")
        ]),
        flashcards: [
            Flashcard(id: "shark311_f1", front: "Carcharodon carcharias", back: "The great white shark -- warm-bodied seal ambusher with serrated teeth; the most recorded human bites."),
            Flashcard(id: "shark311_f2", front: "Bull shark (Carcharhinus leucas)", back: "Stocky, aggressive shark that uses osmoregulation to enter fresh water; high overlap with where people swim."),
            Flashcard(id: "shark311_f3", front: "Cephalofoil", back: "The hammerhead's wing-shaped head, which spreads its electroreceptors for a wider sensory sweep."),
            Flashcard(id: "shark311_f4", front: "Shortfin mako", back: "The fastest shark (~45 mph bursts), warm-bodied and torpedo-shaped; declining from fishing pressure.")
        ],
        tags: ["species", "deep dive", "advanced"]
    )

    static let lesson12 = Lesson(
        id: "shark_t3_04",
        categoryId: .sharks,
        tier: 3,
        lessonNumber: 4,
        title: "Conservation And Ecological Role",
        subtitle: "Why the ocean needs sharks more than we feared them",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["shark_t3_03"],
        contentBlocks: [
            ContentBlock(id: "shark312_b1", type: .whyMatters, title: "The Real Stakes", bullets: [
                "Sharks have survived five mass extinctions; the current human-driven decline is the gravest threat they have faced.",
                "Their loss does not just remove a predator -- it can unravel entire ocean food webs.",
                "Understanding this turns shark knowledge from trivia into something that actually matters."
            ]),
            ContentBlock(id: "shark312_b2", type: .systemOverview, title: "Keystone Of The Ocean", bullets: [
                "As apex and mid-level predators, sharks regulate the populations below them.",
                "They cull the sick and weak, keeping prey populations healthy and genetically fit.",
                "Trophic cascade: remove sharks and mid-level predators explode, collapsing the species beneath them.",
                "Healthy shark populations are linked to healthy coral reefs and productive fisheries."
            ], body: "A keystone species holds the structure together. Pull it out and the arch collapses -- that is exactly the role sharks play in marine ecosystems."),
            ContentBlock(id: "shark312_b3", type: .failureModes, title: "What Is Driving The Decline", bullets: [
                "Overfishing and bycatch: sharks are caught intentionally and accidentally in vast numbers.",
                "Shark finning: fins are sliced off for soup and the animal is often dumped back, still alive, to die.",
                "Slow reproduction: late maturity and few pups mean populations cannot rebound quickly.",
                "Habitat loss and warming oceans add pressure; some populations have fallen 70%+ in 50 years, and many species are now threatened."
            ], callouts: ["Humans kill an estimated 100 million sharks per year -- the central driver of the crisis."]),
            ContentBlock(id: "shark312_b4", type: .ownerActions, title: "What Actually Helps", bullets: [
                "Support sustainable seafood and avoid shark products, including some pet foods and cosmetics that use squalene.",
                "Back marine protected areas and finning bans -- they measurably help populations recover.",
                "Choose ethical, regulated shark ecotourism, which gives living sharks economic value.",
                "Share accurate information; reducing irrational fear directly supports conservation policy."
            ]),
            ContentBlock(id: "shark312_b5", type: .summary, title: "What To Lock In", bullets: [
                "Sharks are keystone predators; their loss triggers trophic cascades.",
                "Finning, overfishing, bycatch, and slow breeding drive the decline.",
                "~100 million killed yearly; many populations down 70%+ in 50 years.",
                "Protected areas, sustainable choices, and accurate information genuinely help."
            ])
        ],
        quiz: Quiz(id: "shark312_q", passPercent: 80, questions: [
            Question(id: "shark312_q1", type: .multipleChoice, prompt: "Removing apex sharks from a reef most often triggers a:", choices: ["Stable, unchanged ecosystem", "Trophic cascade that destabilizes the food web", "Permanent increase in coral", "Rise in shark numbers elsewhere"], correctIndex: 1, explanation: "Losing apex predators lets mid-level predators surge and over-consume the species below them, cascading through and destabilizing the whole food web."),
            Question(id: "shark312_q2", type: .scenario, prompt: "A region bans shark finning and creates a marine protected area. Over time you would most expect:", choices: ["No change at all", "Gradual recovery of shark populations and healthier reefs", "Immediate collapse of fisheries", "Sharks to migrate away permanently"], correctIndex: 1, explanation: "Finning bans and protected areas measurably help shark populations recover, which is linked to healthier reefs and more productive fisheries."),
            Question(id: "shark312_q3", prompt: "The practice of slicing off fins and discarding the shark, often alive, is called shark ____.", acceptedAnswers: ["finning"], explanation: "Shark finning is a major driver of population collapse: fins are taken for soup and the animal is dumped to die."),
            Question(id: "shark312_q4", type: .multiSelect, prompt: "Which factors make sharks especially vulnerable to overfishing?", choices: ["Late maturity", "Few pups per litter", "Long gestation", "Extremely fast reproduction", "Immunity to fishing pressure"], correctIndices: [0, 1, 2], explanation: "Late maturity, small litters, and long gestation mean populations rebound slowly. Sharks reproduce slowly and are highly vulnerable, not immune."),
            Question(id: "shark312_q5", prompt: "Match each conservation action to its benefit.", matchingPairs: [
                MatchingPair(left: "Marine protected areas", right: "Let populations recover"),
                MatchingPair(left: "Finning bans", right: "Cut a major mortality source"),
                MatchingPair(left: "Ethical ecotourism", right: "Gives living sharks value"),
                MatchingPair(left: "Accurate information", right: "Reduces fear and supports policy")
            ], explanation: "Each action attacks a different part of the problem, from direct mortality to the public fear that blocks good policy.")
        ]),
        flashcards: [
            Flashcard(id: "shark312_f1", front: "Trophic cascade", back: "A chain reaction through a food web triggered by adding or removing a top predator, such as losing sharks from a reef."),
            Flashcard(id: "shark312_f2", front: "Shark finning", back: "Slicing off fins for soup and discarding the shark, often alive -- a leading cause of global shark decline."),
            Flashcard(id: "shark312_f3", front: "Why sharks rebound slowly", back: "Late maturity, long gestation, and few pups make shark populations highly vulnerable to overfishing."),
            Flashcard(id: "shark312_f4", front: "Keystone species", back: "A species whose role is so central that its removal collapses the structure of its ecosystem -- sharks in the ocean.")
        ],
        tags: ["conservation", "ecology", "advanced"]
    )
}
