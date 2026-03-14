import Foundation

enum SharksLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3,
        lesson4, lesson5, lesson6
    ]

    // MARK: - Tier 1: Basics and Legend

    static let lesson1 = Lesson(
        id: "shark_t1_01",
        categoryId: .sharks,
        tier: 1,
        lessonNumber: 1,
        title: "Why Sharks Made the App",
        subtitle: "Every academy needs an apex predator",
        estimatedMinutes: 5,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "shark101_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Sharks are 450 million years old. They predate trees, dinosaurs, and every government in human history.",
                "They are the most efficient apex predators on Earth. They don't overthink, overreact, or second-guess.",
                "This category exists partly because it's genuinely fascinating and partly because every serious training system needs one thing that's just absurdly memorable."
            ]),
            ContentBlock(id: "shark101_b2", type: .systemOverview, title: "System Overview", bullets: [
                "There are over 500 species of sharks, from the 8-inch dwarf lanternshark to the 40-foot whale shark.",
                "They occupy every ocean and many river systems.",
                "Most species are harmless to humans. Only about a dozen pose any real risk.",
                "They are keystone predators — remove them and entire marine ecosystems collapse."
            ]),
            ContentBlock(id: "shark101_b3", type: .howItWorks, title: "Why They're Here", bullets: [
                "Sharks represent something specific in this app: quiet, structural dominance.",
                "No posturing. No wasted energy. Millions of years of refinement.",
                "If the Constitution teaches you structure and firearms teach responsibility, sharks remind you that real power doesn't announce itself.",
                "Also, they're just cool. And you should know more about them."
            ]),
            ContentBlock(id: "shark101_b4", type: .summary, title: "Summary", bullets: [
                "450 million years of evolution. 500+ species. Apex predators.",
                "Keystone species critical to ocean health.",
                "In this app: a symbol of refined, quiet competence.",
                "And yes, this category is partly for fun. That's allowed."
            ])
        ],
        quiz: Quiz(id: "shark101_q", passPercent: 80, questions: [
            Question(id: "shark101_q1", prompt: "Sharks are approximately how old as a species group?", choices: ["50 million years", "450 million years", "200 million years", "1 billion years"], correctIndex: 1, explanation: "Sharks have been around for approximately 450 million years — predating dinosaurs and trees."),
            Question(id: "shark101_q2", prompt: "How many shark species exist?", choices: ["About 50", "About 150", "About 2,000", "About 500+"], correctIndex: 3, explanation: "There are over 500 known species of sharks, ranging wildly in size and habitat."),
            Question(id: "shark101_q3", prompt: "Sharks are considered keystone predators because:", choices: ["They're the largest fish", "They eat the most", "Removing them collapses ecosystems", "They have no predators"], correctIndex: 2, explanation: "As keystone predators, sharks regulate populations below them in the food chain. Remove them and the whole system destabilizes.")
        ]),
        flashcards: [
            Flashcard(id: "shark101_f1", front: "Keystone Predator", back: "A predator whose removal would fundamentally alter the structure of its ecosystem"),
            Flashcard(id: "shark101_f2", front: "Apex Predator", back: "A predator at the top of the food chain with no natural predators of its own"),
            Flashcard(id: "shark101_f3", front: "Dwarf Lanternshark", back: "The smallest known shark species at about 8 inches — bioluminescent, deep-water"),
            Flashcard(id: "shark101_f4", front: "Whale Shark", back: "The largest fish in the ocean at up to 40+ feet — filter feeder, harmless to humans")
        ],
        tags: ["intro", "basics", "philosophy"]
    )

    static let lesson2 = Lesson(
        id: "shark_t1_02",
        categoryId: .sharks,
        tier: 1,
        lessonNumber: 2,
        title: "Shark Basics",
        subtitle: "Cartilage, rows of teeth, and electroreception",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: ["shark_t1_01"],
        contentBlocks: [
            ContentBlock(id: "shark102_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Before you learn individual species, you need to understand what makes a shark a shark.",
                "Sharks are fundamentally different from bony fish in ways that explain their success."
            ]),
            ContentBlock(id: "shark102_b2", type: .componentBreakdown, title: "What Makes a Shark", bullets: [
                "Skeleton made of cartilage, not bone — lighter, more flexible.",
                "Multiple rows of teeth that replace continuously throughout life.",
                "Skin covered in dermal denticles (tiny tooth-like scales) — reduces drag.",
                "No swim bladder — must keep moving or use oil-rich livers for buoyancy.",
                "Electroreception — ampullae of Lorenzini detect electrical fields from prey muscle movement."
            ]),
            ContentBlock(id: "shark102_b3", type: .howItWorks, title: "How They Hunt", bullets: [
                "Smell — Can detect one part per million of blood in water. Their primary long-range sense.",
                "Lateral line — Detects vibrations and pressure changes in water.",
                "Electroreception — Short-range, final approach. Detects heartbeats and muscle contractions.",
                "Vision — Better than most people assume, especially in low light. Some species see in color."
            ]),
            ContentBlock(id: "shark102_b4", type: .summary, title: "Summary", bullets: [
                "Cartilage skeleton, replaceable teeth, dermal denticles, electroreception.",
                "Multiple sensory systems layered for hunting efficiency.",
                "450 million years of optimization — these are not primitive animals."
            ])
        ],
        quiz: Quiz(id: "shark102_q", passPercent: 80, questions: [
            Question(id: "shark102_q1", prompt: "Shark skeletons are made of:", choices: ["Bone", "Calcium", "Cartilage", "Chitin"], correctIndex: 2, explanation: "Shark skeletons are made of cartilage, which is lighter and more flexible than bone."),
            Question(id: "shark102_q2", prompt: "Ampullae of Lorenzini detect:", choices: ["Sound waves", "Temperature changes", "Light", "Electrical fields"], correctIndex: 3, explanation: "The ampullae of Lorenzini are electroreceptors that detect the faint electrical fields produced by prey muscle movement."),
            Question(id: "shark102_q3", prompt: "Dermal denticles are:", choices: ["A type of shark tooth", "Sensory organs", "Tiny scales that reduce drag", "Reproductive structures"], correctIndex: 2, explanation: "Dermal denticles are tiny tooth-like scales covering shark skin that reduce hydrodynamic drag.")
        ]),
        flashcards: [
            Flashcard(id: "shark102_f1", front: "Ampullae of Lorenzini", back: "Electroreceptor organs that detect faint electrical fields — used for prey detection at close range"),
            Flashcard(id: "shark102_f2", front: "Dermal Denticles", back: "Tiny tooth-like scales covering shark skin that reduce drag and protect against parasites"),
            Flashcard(id: "shark102_f3", front: "Lateral Line", back: "A sensory system detecting vibrations and pressure changes in surrounding water"),
            Flashcard(id: "shark102_f4", front: "Cartilaginous Skeleton", back: "A skeleton made of cartilage rather than bone — lighter, more flexible, and characteristic of all sharks and rays")
        ],
        tags: ["anatomy", "basics", "biology"]
    )

    static let lesson3 = Lesson(
        id: "shark_t1_03",
        categoryId: .sharks,
        tier: 1,
        lessonNumber: 3,
        title: "The Great White",
        subtitle: "The one everyone thinks they know",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: ["shark_t1_02"],
        contentBlocks: [
            ContentBlock(id: "shark103_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The great white shark is the most famous predator on Earth, yet most people only know the Jaws version.",
                "Separating fact from fiction here is a good exercise in media literacy."
            ]),
            ContentBlock(id: "shark103_b2", type: .systemOverview, title: "System Overview", bullets: [
                "Carcharodon carcharias. Up to 20 feet and 4,000+ pounds.",
                "Found in cool to temperate coastal waters worldwide.",
                "Not the largest shark (whale shark) or the fastest (mako). But a generalist apex predator.",
                "Can regulate body temperature above surrounding water — endothermic capabilities."
            ]),
            ContentBlock(id: "shark103_b3", type: .howItWorks, title: "Hunting Strategy", bullets: [
                "Ambush predator. Attacks from below with speed bursts up to 25 mph.",
                "Primary diet: marine mammals (seals, sea lions), fish, and other sharks.",
                "Investigatory bites — many attacks on humans are 'test bites.' The shark isn't trying to eat you.",
                "They can breach completely out of the water when attacking surface prey."
            ]),
            ContentBlock(id: "shark103_b4", type: .failureModes, title: "Myths vs Reality", bullets: [
                "Myth: They are mindless killing machines. Reality: They're cautious, selective predators.",
                "Myth: They target humans. Reality: Humans are not part of their diet. Most interactions are investigatory.",
                "Myth: Jaws is accurate. Reality: Peter Benchley spent his later life advocating for shark conservation.",
                "Fact: Populations are declining due to fishing pressure and habitat loss."
            ]),
            ContentBlock(id: "shark103_b5", type: .summary, title: "Summary", bullets: [
                "The great white is an ambush predator with endothermic capabilities.",
                "Most human encounters are investigatory, not predatory.",
                "Media portrayal wildly overstates the threat.",
                "They're conservation-dependent — declining populations are a real concern."
            ])
        ],
        quiz: Quiz(id: "shark103_q", passPercent: 80, questions: [
            Question(id: "shark103_q1", prompt: "Great white sharks are:", choices: ["Cold-blooded like all fish", "Temperature-neutral", "Partially endothermic — can regulate body temperature", "Warm-blooded mammals"], correctIndex: 2, explanation: "Great whites have endothermic capabilities — they can maintain body temperature above surrounding water temperature."),
            Question(id: "shark103_q2", prompt: "Most great white attacks on humans are:", choices: ["Feeding attacks", "Territorial defense", "Random aggression", "Investigatory bites"], correctIndex: 3, explanation: "Most interactions with humans are investigatory — the shark is testing what you are, not trying to eat you."),
            Question(id: "shark103_q3", prompt: "The author of Jaws later:", choices: ["Wrote a sequel celebrating sharks", "Started a shark hunting company", "Denied sharks were dangerous", "Became a shark conservation advocate"], correctIndex: 3, explanation: "Peter Benchley spent his later career advocating for shark conservation, regretting the fear his novel created.")
        ]),
        flashcards: [
            Flashcard(id: "shark103_f1", front: "Carcharodon carcharias", back: "The scientific name for the great white shark"),
            Flashcard(id: "shark103_f2", front: "Investigatory Bite", back: "A 'test bite' where a shark bites to determine if something is prey — most human attacks are this type"),
            Flashcard(id: "shark103_f3", front: "Endothermic", back: "The ability to maintain body temperature above surrounding water — a rare trait among sharks, present in great whites"),
            Flashcard(id: "shark103_f4", front: "Breaching", back: "When a shark launches completely out of the water while attacking surface prey — a signature great white behavior")
        ],
        tags: ["species", "great white", "predator"]
    )

    // MARK: - Tier 2: Anatomy, Species, and Myth

    static let lesson4 = Lesson(
        id: "shark_t2_01",
        categoryId: .sharks,
        tier: 2,
        lessonNumber: 1,
        title: "Bull Shark and Tiger Shark",
        subtitle: "The two you actually need to worry about",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["shark_t1_03"],
        contentBlocks: [
            ContentBlock(id: "shark201_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "While great whites get the headlines, bull sharks and tiger sharks are responsible for the majority of serious incidents.",
                "Bull sharks are uniquely dangerous because they thrive in shallow, warm water — where humans swim."
            ]),
            ContentBlock(id: "shark201_b2", type: .componentBreakdown, title: "Bull Shark", bullets: [
                "Carcharhinus leucas. Up to 11 feet, 500 pounds.",
                "Unique ability: tolerates fresh water. Found in rivers, estuaries, and lakes.",
                "Aggressive and territorial. Prefers murky, shallow coastal waters.",
                "Most dangerous to humans by proximity — they're in the same water we swim in.",
                "Higher testosterone levels than any other tested shark species."
            ]),
            ContentBlock(id: "shark201_b3", type: .componentBreakdown, title: "Tiger Shark", bullets: [
                "Galeocerdo cuvier. Up to 14 feet, 1,400 pounds.",
                "Called the 'garbage can of the sea' — eats almost anything, including non-food items.",
                "Distinctive vertical stripes that fade with age.",
                "Found in warm coastal waters worldwide. Often near reefs.",
                "Second most recorded bites on humans after great whites."
            ]),
            ContentBlock(id: "shark201_b4", type: .summary, title: "Summary", bullets: [
                "Bull sharks: freshwater tolerance, shallow water aggression, territorial.",
                "Tiger sharks: indiscriminate feeders, warm water generalists.",
                "Both are more likely to encounter humans than great whites.",
                "Respect the water. Know what's in it."
            ])
        ],
        quiz: Quiz(id: "shark201_q", passPercent: 80, questions: [
            Question(id: "shark201_q1", prompt: "What makes bull sharks uniquely dangerous?", choices: ["They're the largest sharks", "They can live in fresh water and prefer shallow areas", "They're the fastest swimmers", "They hunt in packs"], correctIndex: 1, explanation: "Bull sharks tolerate fresh water and prefer murky, shallow coastal waters — putting them in direct contact with humans."),
            Question(id: "shark201_q2", prompt: "Tiger sharks are called 'garbage cans of the sea' because:", choices: ["They're dirty", "They live near trash dumps", "They eat almost anything, including non-food items", "They only eat dead things"], correctIndex: 2, explanation: "Tiger sharks are famously indiscriminate feeders — license plates, tires, and other objects have been found in their stomachs."),
            Question(id: "shark201_q3", prompt: "Which shark has been found in rivers and lakes?", choices: ["Great white", "Hammerhead", "Tiger shark", "Bull shark"], correctIndex: 3, explanation: "Bull sharks have a unique ability to regulate salt in their bodies, allowing them to thrive in fresh water."),
            Question(id: "shark201_q4", type: .fillBlank, prompt: "Tiger sharks are named for their distinctive vertical _____ that fade with age.", choices: ["Spots", "Stripes", "Rings", "Patches"], correctIndex: 1, explanation: "Tiger sharks have dark vertical stripes on their sides that are most prominent in juveniles and fade as they mature.")
        ]),
        flashcards: [
            Flashcard(id: "shark201_f1", front: "Bull Shark", back: "Carcharhinus leucas — aggressive, territorial shark that can tolerate fresh water. Found in shallow coastal waters, rivers, and estuaries."),
            Flashcard(id: "shark201_f2", front: "Tiger Shark", back: "Galeocerdo cuvier — large, indiscriminate feeder with fading vertical stripes. Second most bites on humans after great whites."),
            Flashcard(id: "shark201_f3", front: "Osmoregulation", back: "The ability to regulate internal salt levels — bull sharks can shift between salt and fresh water using this adaptation")
        ],
        tags: ["species", "bull shark", "tiger shark"]
    )

    static let lesson5 = Lesson(
        id: "shark_t2_02",
        categoryId: .sharks,
        tier: 2,
        lessonNumber: 2,
        title: "Myths vs Reality",
        subtitle: "What media got wrong and statistics got right",
        estimatedMinutes: 6,
        difficulty: 2,
        prerequisites: ["shark_t2_01"],
        contentBlocks: [
            ContentBlock(id: "shark202_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Fear of sharks is wildly disproportionate to the actual risk.",
                "Separating media mythology from biological reality is a useful exercise in critical thinking."
            ]),
            ContentBlock(id: "shark202_b2", type: .failureModes, title: "The Myths", bullets: [
                "Myth: Sharks are mindless killing machines. Reality: They're selective predators with complex behaviors.",
                "Myth: Sharks hunt humans. Reality: We're not on the menu. Most bites are investigatory.",
                "Myth: You're likely to be attacked. Reality: ~70 unprovoked bites per year worldwide. ~5 fatal.",
                "Myth: Sharks must keep swimming or die. Reality: Many species can rest on the bottom and pump water over their gills.",
                "Myth: Sharks are invulnerable. Reality: Populations are declining 70%+ in the last 50 years."
            ]),
            ContentBlock(id: "shark202_b3", type: .howItWorks, title: "The Statistics", bullets: [
                "You're more likely to be killed by a vending machine, a cow, or a coconut than a shark.",
                "Humans kill ~100 million sharks per year. Sharks kill ~5 humans per year.",
                "The risk ratio is absurdly lopsided — we are the apex threat, not them.",
                "Shark fin soup drives massive commercial fishing. Fins are cut and the shark is thrown back alive."
            ]),
            ContentBlock(id: "shark202_b4", type: .summary, title: "Summary", bullets: [
                "The fear is real but the risk is almost nonexistent.",
                "~70 bites, ~5 deaths per year globally. We kill 100 million of them.",
                "Sharks are declining, not proliferating.",
                "Symbols travel faster than facts. Now you have the facts."
            ])
        ],
        quiz: Quiz(id: "shark202_q", passPercent: 80, questions: [
            Question(id: "shark202_q1", prompt: "Approximately how many unprovoked shark bites occur worldwide per year?", choices: ["About 70", "About 500", "About 5,000", "About 50,000"], correctIndex: 0, explanation: "There are approximately 70 unprovoked shark bites per year worldwide, with about 5 fatalities."),
            Question(id: "shark202_q2", prompt: "Humans kill approximately how many sharks per year?", choices: ["1,000", "10,000", "1 million", "100 million"], correctIndex: 3, explanation: "Humans kill approximately 100 million sharks per year through fishing, finning, and bycatch."),
            Question(id: "shark202_q3", prompt: "The claim that 'sharks must constantly swim or die' is:", choices: ["True for all sharks", "A myth — many species can rest on the bottom", "True only for great whites", "True only in cold water"], correctIndex: 1, explanation: "While some species like great whites do need to swim for oxygen, many shark species can rest on the bottom and actively pump water over their gills."),
            Question(id: "shark202_q4", type: .scenario, prompt: "Someone tells you sharks are 'taking over the oceans.' Based on data, this is:", choices: ["Correct — populations are exploding", "Backwards — shark populations have declined 70%+ in 50 years", "Partly true — some species are increasing", "Unknown — we don't have data"], correctIndex: 1, explanation: "Global shark populations have declined dramatically — over 70% in the last half century due to fishing, finning, and habitat loss.")
        ]),
        flashcards: [
            Flashcard(id: "shark202_f1", front: "Shark Finning", back: "The practice of cutting shark fins for soup and discarding the body — drives massive population decline"),
            Flashcard(id: "shark202_f2", front: "Unprovoked Bite Statistics", back: "~70 unprovoked shark bites per year worldwide, ~5 fatal. Compared to 100 million sharks killed by humans annually."),
            Flashcard(id: "shark202_f3", front: "Obligate Ram Ventilator", back: "A shark that must swim to breathe — water flows over gills through forward motion. Not all sharks require this.")
        ],
        tags: ["myths", "statistics", "conservation"]
    )

    static let lesson6 = Lesson(
        id: "shark_t2_03",
        categoryId: .sharks,
        tier: 2,
        lessonNumber: 3,
        title: "Shark Week and American Media",
        subtitle: "Capstone: how fear became fascination became ritual",
        estimatedMinutes: 6,
        difficulty: 2,
        prerequisites: ["shark_t2_02"],
        contentBlocks: [
            ContentBlock(id: "shark203_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Sharks became symbolic long before most people knew much about them.",
                "Media turned them into a mix of fear object, fascination object, and summer ritual.",
                "Understanding this is as much media literacy as marine biology."
            ]),
            ContentBlock(id: "shark203_b2", type: .systemOverview, title: "System Overview", bullets: [
                "Shark Week (Discovery Channel, since 1988) popularized sharks as entertainment.",
                "It boosted awareness but also sometimes exaggerated danger for ratings.",
                "The result is a strange American mix of education, hype, and mythology.",
                "Jaws (1975) created the modern fear of sharks. Shark Week turned that fear into an annual festival."
            ]),
            ContentBlock(id: "shark203_b3", type: .howItWorks, title: "The Media Cycle", bullets: [
                "Take a real apex predator with genuine danger (but tiny statistical risk).",
                "Add ocean mystery, dramatic music, and summer timing.",
                "Repeat annually until it becomes a national ritual.",
                "The animal becomes symbol before it remains animal.",
                "Sensationalism can distort actual risk while simultaneously funding conservation awareness."
            ]),
            ContentBlock(id: "shark203_b4", type: .summary, title: "Summary", bullets: [
                "Shark Week is part education, part spectacle.",
                "Fear sells. Symbols travel faster than facts.",
                "Sharks are real animals, not just archetypes.",
                "This category exists partly because it is funny and memorable — and now you actually know something."
            ])
        ],
        quiz: Quiz(id: "shark203_q", passPercent: 80, questions: [
            Question(id: "shark203_q1", prompt: "Shark Week has been running since:", choices: ["1975", "1988", "2001", "2010"], correctIndex: 1, explanation: "Shark Week premiered on the Discovery Channel in 1988 and has aired annually since."),
            Question(id: "shark203_q2", prompt: "The movie that created the modern fear of sharks was:", choices: ["Finding Nemo", "The Meg", "Deep Blue Sea", "Jaws"], correctIndex: 3, explanation: "Steven Spielberg's Jaws (1975) fundamentally changed public perception of sharks and created a cultural fear that persists today."),
            Question(id: "shark203_q3", type: .scenario, prompt: "A dramatic TV special implies sharks are an ever-present coastal threat. Based on what you know, this is:", choices: ["Accurate — sharks are everywhere", "Media sensationalism for ratings", "True but understated", "Only accurate in Australia"], correctIndex: 1, explanation: "Dramatic framing sells. The actual risk is minuscule — ~70 bites, ~5 deaths per year globally. Media exaggerates for engagement."),
            Question(id: "shark203_q4", type: .fillBlank, prompt: "Symbols travel faster than _____.", choices: ["Sharks", "Water", "Facts", "Media"], correctIndex: 2, explanation: "The cultural symbol of the shark as a monster spread far faster than the actual biological and statistical facts about shark behavior.")
        ]),
        flashcards: [
            Flashcard(id: "shark203_f1", front: "Shark Week", back: "Annual Discovery Channel programming event since 1988 — a mix of education and sensationalism that made sharks a cultural phenomenon"),
            Flashcard(id: "shark203_f2", front: "Jaws (1975)", back: "The Steven Spielberg film that created the modern cultural fear of sharks — author Peter Benchley later became a conservation advocate"),
            Flashcard(id: "shark203_f3", front: "Sensationalism", back: "The use of exciting or shocking stories to provoke public interest — often at the expense of accuracy")
        ],
        tags: ["media", "shark week", "capstone"]
    )
}
