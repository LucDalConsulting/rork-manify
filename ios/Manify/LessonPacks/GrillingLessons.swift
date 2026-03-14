import Foundation

enum GrillingLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3,
        lesson4, lesson5, lesson6,
        lesson7, lesson8
    ]

    // MARK: - Tier 1: Structural Awareness

    static let lesson1 = Lesson(
        id: "grill_t1_01",
        categoryId: .grilling,
        tier: 1,
        lessonNumber: 1,
        title: "Why Grilling Matters",
        subtitle: "Fire, food, timing, confidence",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "grill101_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Grilling is a competence stack: heat management, timing, food safety, and hospitality.",
                "It looks simple until you ruin expensive meat or give someone food poisoning.",
                "A man who can confidently host and feed people commands respect without saying a word."
            ]),
            ContentBlock(id: "grill101_b2", type: .systemOverview, title: "System Overview", bullets: [
                "Grilling is the application of direct or indirect heat to food over a heat source.",
                "The three variables: heat level, time, and the food itself.",
                "Equipment ranges from a $30 charcoal kettle to a $3,000 pellet smoker — the principles are identical."
            ]),
            ContentBlock(id: "grill101_b3", type: .howItWorks, title: "How It Works", bullets: [
                "Direct heat — food sits directly over the heat source. Fast cooking, high sear.",
                "Indirect heat — food sits away from the heat source. Slower, more even cooking.",
                "The Maillard reaction — the chemical process that creates a browned, flavorful crust.",
                "Carryover cooking — food continues to cook after removal. Internal temp can rise 5-15°F."
            ]),
            ContentBlock(id: "grill101_b4", type: .failureModes, title: "Common Mistakes", bullets: [
                "Cooking everything over high direct heat.",
                "Not preheating the grill properly.",
                "Constantly opening the lid — 'if you're looking, you're not cooking.'",
                "No thermometer — guessing doneness by time alone.",
                "Not resting meat before cutting."
            ]),
            ContentBlock(id: "grill101_b5", type: .summary, title: "Summary", bullets: [
                "Grilling is heat management, not guesswork.",
                "Direct vs indirect heat is the most important concept.",
                "A thermometer beats intuition. Resting meat is mandatory.",
                "Competent grilling is a quiet, repeatable signal of capability."
            ])
        ],
        quiz: Quiz(id: "grill101_q", passPercent: 80, questions: [
            Question(id: "grill101_q1", prompt: "The Maillard reaction creates:", choices: ["Moisture", "Smoke", "A browned, flavorful crust", "Internal temperature rise"], correctIndex: 2, explanation: "The Maillard reaction is the chemical process that browns food surfaces and creates complex flavors."),
            Question(id: "grill101_q2", prompt: "Carryover cooking means:", choices: ["Cooking at a lower temperature", "Using leftover coals", "Cooking multiple items simultaneously", "Food continues to cook after removal from heat"], correctIndex: 3, explanation: "Carryover cooking is the continued temperature rise (5-15°F) after food is removed from the heat source."),
            Question(id: "grill101_q3", type: .scenario, prompt: "You're grilling a thick steak and it's browning too fast on the outside but raw inside. You should:", choices: ["Turn up the heat more", "Cut it open to check", "Microwave it to finish", "Move it to indirect heat to finish cooking"], correctIndex: 3, explanation: "Moving to indirect heat allows the interior to cook through without burning the exterior — this is the core principle of two-zone cooking."),
            Question(id: "grill101_q4", type: .fillBlank, prompt: "The most important tool for determining doneness is a _____.", choices: ["Timer", "Fork", "Knife", "Thermometer"], correctIndex: 3, explanation: "A thermometer is the only reliable way to confirm internal temperature. Time is a rough guide; temperature is the truth.")
        ]),
        flashcards: [
            Flashcard(id: "grill101_f1", front: "Direct Heat", back: "Food placed directly over the heat source — for fast cooking and searing"),
            Flashcard(id: "grill101_f2", front: "Indirect Heat", back: "Food placed away from the heat source — for slower, more even cooking of larger cuts"),
            Flashcard(id: "grill101_f3", front: "Maillard Reaction", back: "The chemical browning reaction between amino acids and sugars that creates a flavorful crust on grilled food"),
            Flashcard(id: "grill101_f4", front: "Carryover Cooking", back: "The continued rise in internal temperature (5-15°F) after food is removed from the heat source"),
            Flashcard(id: "grill101_f5", front: "Two-Zone Fire", back: "A grill setup with one area of direct heat and one area of indirect heat for versatile cooking control")
        ],
        tags: ["heat", "basics", "fundamentals"]
    )

    static let lesson2 = Lesson(
        id: "grill_t1_02",
        categoryId: .grilling,
        tier: 1,
        lessonNumber: 2,
        title: "Fire, Heat, Smoke, and Flavor",
        subtitle: "Understanding what's actually happening",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: ["grill_t1_01"],
        contentBlocks: [
            ContentBlock(id: "grill102_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Heat and smoke are tools. Understanding them gives you control over flavor, texture, and outcome.",
                "Most people grill by habit. Understanding the physics lets you adapt and troubleshoot."
            ]),
            ContentBlock(id: "grill102_b2", type: .componentBreakdown, title: "Heat Transfer Methods", bullets: [
                "Conduction — Direct contact. Grate marks come from conduction. A hot cast-iron pan uses conduction.",
                "Convection — Hot air circulating around food. Happens with the lid closed. This is how indirect heat works.",
                "Radiation — Infrared energy from hot coals or burners. Strongest at close range."
            ]),
            ContentBlock(id: "grill102_b3", type: .howItWorks, title: "Smoke and Flavor", bullets: [
                "Clean smoke (thin, blue-white) adds flavor. Dirty smoke (thick, white) adds bitterness.",
                "Smoke flavor is most absorbed in the first 30-60 minutes of cooking.",
                "Wood type matters: hickory is strong, applewood is mild, mesquite is intense.",
                "Chunks smolder longer than chips. Soak chips if you want slower smoke release."
            ]),
            ContentBlock(id: "grill102_b4", type: .summary, title: "Summary", bullets: [
                "Three heat transfer methods: conduction, convection, radiation.",
                "Clean smoke adds flavor; dirty smoke adds bitterness.",
                "Smoke absorption happens early — front-load your smoke.",
                "Match wood intensity to the meat."
            ])
        ],
        quiz: Quiz(id: "grill102_q", passPercent: 80, questions: [
            Question(id: "grill102_q1", prompt: "Grate marks on a steak are created by:", choices: ["Radiation", "Convection", "Smoke", "Conduction"], correctIndex: 3, explanation: "Conduction is heat transfer through direct contact — the hot grate touches the meat surface."),
            Question(id: "grill102_q2", prompt: "Clean smoke looks:", choices: ["Thick and white", "Dark gray", "Thin and blue-white", "Invisible"], correctIndex: 2, explanation: "Clean, flavor-adding smoke is thin and blue-white. Thick white smoke adds bitterness."),
            Question(id: "grill102_q3", prompt: "Smoke flavor is absorbed most during:", choices: ["The last hour", "Evenly throughout", "The first 30-60 minutes", "Only during resting"], correctIndex: 2, explanation: "Most smoke absorption happens in the first 30-60 minutes when the meat surface is still cool and moist.")
        ]),
        flashcards: [
            Flashcard(id: "grill102_f1", front: "Conduction", back: "Heat transfer through direct contact — responsible for grate marks and pan searing"),
            Flashcard(id: "grill102_f2", front: "Convection", back: "Heat transfer through moving hot air — how indirect grilling and oven cooking work"),
            Flashcard(id: "grill102_f3", front: "Clean Smoke", back: "Thin, blue-white smoke that adds desirable flavor — produced by properly burning wood"),
            Flashcard(id: "grill102_f4", front: "Dirty Smoke", back: "Thick, white smoke that adds bitterness — caused by smothered, oxygen-starved wood")
        ],
        tags: ["heat", "smoke", "science"]
    )

    static let lesson3 = Lesson(
        id: "grill_t1_03",
        categoryId: .grilling,
        tier: 1,
        lessonNumber: 3,
        title: "Grill Types Overview",
        subtitle: "Gas, charcoal, pellet, and beyond",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["grill_t1_01"],
        contentBlocks: [
            ContentBlock(id: "grill103_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Different grill types excel at different things. Choosing the wrong one for the job leads to frustration.",
                "There is no universally best grill — there is only the best grill for what you're trying to do."
            ]),
            ContentBlock(id: "grill103_b2", type: .componentBreakdown, title: "The Grill Types", bullets: [
                "Gas — Propane or natural gas. Fast startup, easy temperature control. Less smoke flavor. Best for weeknight convenience.",
                "Charcoal — Briquettes or lump. Higher heat potential, more smoke flavor. Slower startup, more skill required.",
                "Pellet — Compressed wood pellets fed by auger. Automated temperature control. Great for smoking. Lower sear temps.",
                "Kamado — Ceramic egg-shaped. Excellent heat retention and fuel efficiency. Versatile but heavy and expensive.",
                "Offset Smoker — Firebox feeds smoke into cooking chamber. Pure smoking. Requires attention and skill.",
                "Flat Top/Griddle — Steel cooking surface. No flare-ups. Great for breakfast, smash burgers, mixed cooking."
            ]),
            ContentBlock(id: "grill103_b3", type: .summary, title: "Summary", bullets: [
                "Gas for convenience, charcoal for flavor and heat, pellet for set-and-forget smoking.",
                "Kamado for versatility, offset for serious smoking, flat top for griddle cooking.",
                "Start with what matches your cooking style and upgrade from there."
            ])
        ],
        quiz: Quiz(id: "grill103_q", passPercent: 80, questions: [
            Question(id: "grill103_q1", prompt: "Which grill type offers the easiest temperature control?", choices: ["Charcoal", "Offset smoker", "Gas", "Kamado"], correctIndex: 2, explanation: "Gas grills offer the easiest temperature control — turn the knob and adjust."),
            Question(id: "grill103_q2", prompt: "Pellet grills excel at:", choices: ["High-heat searing", "Fast cooking", "Automated smoking", "Portability"], correctIndex: 2, explanation: "Pellet grills automate temperature control and produce consistent smoke, making them ideal for smoking."),
            Question(id: "grill103_q3", prompt: "Charcoal grills compared to gas offer:", choices: ["Easier cleanup", "Higher heat potential and more smoke flavor", "Faster ignition", "Lower cost per cook"], correctIndex: 1, explanation: "Charcoal can reach higher temperatures and produces more smoke flavor, but requires more skill and patience.")
        ]),
        flashcards: [
            Flashcard(id: "grill103_f1", front: "Kamado Grill", back: "A ceramic, egg-shaped grill with excellent heat retention — versatile for grilling, smoking, and baking"),
            Flashcard(id: "grill103_f2", front: "Offset Smoker", back: "A grill with a separate firebox that feeds smoke into the cooking chamber — designed for low-and-slow smoking"),
            Flashcard(id: "grill103_f3", front: "Pellet Grill", back: "An automated grill that feeds compressed wood pellets via an auger for temperature-controlled cooking and smoking"),
            Flashcard(id: "grill103_f4", front: "Lump Charcoal vs Briquettes", back: "Lump is pure carbonized wood (burns hotter, less ash). Briquettes are compressed with additives (consistent heat, longer burn).")
        ],
        tags: ["equipment", "types", "basics"]
    )

    // MARK: - Tier 2: Operational Competence

    static let lesson4 = Lesson(
        id: "grill_t2_01",
        categoryId: .grilling,
        tier: 2,
        lessonNumber: 1,
        title: "Steak Fundamentals",
        subtitle: "The definitive guide to not ruining a steak",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["grill_t1_03"],
        contentBlocks: [
            ContentBlock(id: "grill201_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Steak is the benchmark. If you can cook a steak well, people trust you at the grill.",
                "Most steak failures come from three things: wrong heat, no thermometer, and not resting."
            ]),
            ContentBlock(id: "grill201_b2", type: .componentBreakdown, title: "Cuts to Know", bullets: [
                "Ribeye — Well-marbled, forgiving, great flavor. Best for beginners.",
                "New York Strip — Leaner than ribeye, firm texture, beefy flavor.",
                "Filet Mignon — Extremely tender, mild flavor, low fat. Easy to overcook.",
                "T-Bone/Porterhouse — Strip on one side, filet on the other. Two different doneness zones."
            ]),
            ContentBlock(id: "grill201_b3", type: .howItWorks, title: "The Method", bullets: [
                "Bring steak to room temp (30 min out of fridge). Pat dry with paper towels.",
                "Season generously with kosher salt and pepper. That's all you need.",
                "Preheat grill to high for direct sear. Grill grates should be screaming hot.",
                "Sear 3-4 minutes per side for a 1-inch steak. Use a thermometer.",
                "Target temps: Rare 120°F, Medium-Rare 130°F, Medium 140°F.",
                "Rest for 5-10 minutes. Cutting too early loses juice."
            ]),
            ContentBlock(id: "grill201_b4", type: .failureModes, title: "Common Mistakes", bullets: [
                "Cold steak on the grill — uneven cooking, longer sear time, gray band.",
                "Wet surface — moisture steams instead of searing. Pat dry.",
                "Cutting immediately — juice runs out onto the plate instead of staying in the meat.",
                "Cooking by time alone — thickness, temperature, and grill heat all vary. Use a thermometer."
            ]),
            ContentBlock(id: "grill201_b5", type: .summary, title: "Summary", bullets: [
                "Room temp, dry surface, hot grill, salt and pepper, thermometer, rest.",
                "Ribeye is the most forgiving cut for beginners.",
                "130°F internal for medium-rare. Pull 5°F early for carryover."
            ])
        ],
        quiz: Quiz(id: "grill201_q", passPercent: 80, questions: [
            Question(id: "grill201_q1", prompt: "Before grilling, a steak should be:", choices: ["Frozen solid for firmness", "Cold from the fridge for food safety", "At room temperature and patted dry", "Marinated for 24 hours"], correctIndex: 2, explanation: "A room-temperature, dry steak sears better — moisture steams instead of browning, and cold centers cook unevenly."),
            Question(id: "grill201_q2", prompt: "Medium-rare internal temperature is:", choices: ["120°F", "130°F", "145°F", "160°F"], correctIndex: 1, explanation: "Medium-rare target is 130°F internal temperature. Pull 5°F early to account for carryover cooking."),
            Question(id: "grill201_q3", prompt: "The most forgiving steak cut for beginners is:", choices: ["Filet Mignon", "Flank", "Ribeye", "Skirt"], correctIndex: 2, explanation: "Ribeye's generous marbling keeps it juicy and forgiving even if slightly overcooked."),
            Question(id: "grill201_q4", type: .fillBlank, prompt: "After grilling, steak should rest for _____ minutes before cutting.", choices: ["1-2", "5-10", "20-30", "45-60"], correctIndex: 1, explanation: "Resting 5-10 minutes allows juices to redistribute throughout the meat instead of running out when cut.")
        ]),
        flashcards: [
            Flashcard(id: "grill201_f1", front: "Reverse Sear", back: "Cooking method: low heat first to bring internal temp up evenly, then a hard sear at the end for crust"),
            Flashcard(id: "grill201_f2", front: "Medium-Rare", back: "130°F internal temperature — warm red center, the most common target for quality steaks"),
            Flashcard(id: "grill201_f3", front: "Resting Meat", back: "Allowing cooked meat to sit before cutting — lets juices redistribute for a moister result"),
            Flashcard(id: "grill201_f4", front: "Marbling", back: "Intramuscular fat streaks in beef — more marbling means more flavor and moisture during cooking")
        ],
        tags: ["steak", "technique", "meat"]
    )

    static let lesson5 = Lesson(
        id: "grill_t2_02",
        categoryId: .grilling,
        tier: 2,
        lessonNumber: 2,
        title: "Burger Fundamentals",
        subtitle: "The most grilled food in America, done right",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["grill_t2_01"],
        contentBlocks: [
            ContentBlock(id: "grill202_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Burgers are the most common thing grilled in America. Doing them well is expected competence.",
                "Most burgers are overworked, overseasoned, and overcooked."
            ]),
            ContentBlock(id: "grill202_b2", type: .howItWorks, title: "The Method", bullets: [
                "Start with 80/20 ground beef (80% lean, 20% fat). Leaner = dryer burgers.",
                "Handle the meat as little as possible. Overworking makes it dense and tough.",
                "Form patties slightly larger than the bun (they shrink). Make a thumbprint dimple in the center.",
                "Season the OUTSIDE only with salt and pepper. Right before grilling.",
                "Grill over direct medium-high heat. 3-4 minutes per side for medium.",
                "Add cheese in the last minute with the lid closed to melt.",
                "Toast buns on the grill for 30 seconds."
            ]),
            ContentBlock(id: "grill202_b3", type: .failureModes, title: "Common Mistakes", bullets: [
                "Pressing the patty with a spatula — squeezes out juice and fat. Stop doing this.",
                "Mixing seasoning INTO the meat — creates a sausage texture, not a burger.",
                "Making patties too small — they shrink significantly.",
                "No dimple — the center puffs up into a ball."
            ]),
            ContentBlock(id: "grill202_b4", type: .summary, title: "Summary", bullets: [
                "80/20 beef, minimal handling, dimple, season outside only.",
                "Don't press. Don't mix seasoning in. Don't overcook.",
                "A well-made burger is simple, not complex."
            ])
        ],
        quiz: Quiz(id: "grill202_q", passPercent: 80, questions: [
            Question(id: "grill202_q1", prompt: "The ideal ground beef ratio for burgers is:", choices: ["90/10", "70/30", "80/20", "95/5"], correctIndex: 2, explanation: "80/20 (80% lean, 20% fat) provides the best balance of flavor and moisture."),
            Question(id: "grill202_q2", prompt: "Why do you press a dimple into the center of a burger patty?", choices: ["For decoration", "To cook faster", "To prevent the center from puffing up", "To hold seasoning"], correctIndex: 2, explanation: "The dimple prevents the center from swelling into a ball shape during cooking, keeping the patty flat."),
            Question(id: "grill202_q3", type: .scenario, prompt: "You see someone pressing their burger flat with a spatula on the grill. What's happening?", choices: ["They're making it cook faster", "They're squeezing out juice and fat — making a drier burger", "They're creating better grill marks", "Nothing wrong — this is correct technique"], correctIndex: 1, explanation: "Pressing squeezes out the fat and juice that keep the burger moist and flavorful. Don't do it."),
            Question(id: "grill202_q4", prompt: "Seasoning should be applied:", choices: ["Mixed into the meat before forming patties", "Only on the outside, right before grilling", "After cooking", "Never — let the meat speak"], correctIndex: 1, explanation: "Season the outside only. Mixing salt into the meat changes the protein structure, creating a dense, sausage-like texture.")
        ]),
        flashcards: [
            Flashcard(id: "grill202_f1", front: "80/20 Ground Beef", back: "The ideal fat ratio for burgers — 80% lean, 20% fat for optimal moisture and flavor"),
            Flashcard(id: "grill202_f2", front: "Dimple Technique", back: "Pressing a shallow indent into the center of a burger patty to prevent it from puffing up during cooking"),
            Flashcard(id: "grill202_f3", front: "Overworking Meat", back: "Handling ground meat too much, which activates proteins and creates a dense, sausage-like texture instead of a loose, juicy burger")
        ],
        tags: ["burger", "technique", "fundamentals"]
    )

    static let lesson6 = Lesson(
        id: "grill_t2_03",
        categoryId: .grilling,
        tier: 2,
        lessonNumber: 3,
        title: "Chicken Safety and Technique",
        subtitle: "The one protein that can actually make people sick",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["grill_t2_01"],
        contentBlocks: [
            ContentBlock(id: "grill203_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Chicken is the highest-risk protein on the grill. Undercooking it makes people sick.",
                "But overcooking it makes it dry and terrible. The window is narrow."
            ]),
            ContentBlock(id: "grill203_b2", type: .howItWorks, title: "The Rules", bullets: [
                "Internal temperature must reach 165°F — this is non-negotiable for safety.",
                "Thighs are more forgiving than breasts. Higher fat content keeps them moist even at 180°F.",
                "Breasts dry out fast. Pound to even thickness or butterfly for consistent cooking.",
                "Use indirect heat for bone-in pieces. Direct heat chars the outside before the inside is safe.",
                "Brine or dry-brine adds moisture insurance."
            ]),
            ContentBlock(id: "grill203_b3", type: .failureModes, title: "Common Mistakes", bullets: [
                "All direct heat for bone-in chicken — burned outside, raw inside.",
                "No thermometer — guessing chicken doneness is how people get sick.",
                "Cross-contamination — using the same plate/tongs for raw and cooked chicken.",
                "Sugary sauces too early — sugar burns. Apply BBQ sauce in the last 10 minutes only."
            ]),
            ContentBlock(id: "grill203_b4", type: .summary, title: "Summary", bullets: [
                "165°F internal. No exceptions. Use a thermometer.",
                "Thighs are forgiving. Breasts need care.",
                "Indirect heat for bone-in. Sauce in the last 10 minutes.",
                "Separate everything that touches raw chicken."
            ])
        ],
        quiz: Quiz(id: "grill203_q", passPercent: 80, questions: [
            Question(id: "grill203_q1", prompt: "The minimum safe internal temperature for chicken is:", choices: ["145°F", "155°F", "165°F", "180°F"], correctIndex: 2, explanation: "165°F is the USDA safe minimum for all poultry. This is non-negotiable."),
            Question(id: "grill203_q2", prompt: "Which chicken cut is most forgiving on the grill?", choices: ["Breast", "Wing", "Thigh", "Tenderloin"], correctIndex: 2, explanation: "Thighs have more fat and connective tissue, staying moist even if slightly overcooked."),
            Question(id: "grill203_q3", type: .scenario, prompt: "You're grilling bone-in chicken thighs and the skin is burning but the meat isn't done. You should:", choices: ["Turn up the heat to finish faster", "Move to indirect heat and close the lid", "Cut them open to speed cooking", "Remove them — the skin burning means they're done"], correctIndex: 1, explanation: "Indirect heat cooks bone-in chicken through without burning the exterior. Close the lid for convection cooking."),
            Question(id: "grill203_q4", prompt: "BBQ sauce should be applied:", choices: ["Before grilling starts", "During the first flip", "In the last 10 minutes", "After removing from the grill only"], correctIndex: 2, explanation: "Sugar in BBQ sauce burns easily. Apply in the last 10 minutes to glaze without charring.")
        ]),
        flashcards: [
            Flashcard(id: "grill203_f1", front: "165°F", back: "The minimum safe internal temperature for all poultry — non-negotiable food safety standard"),
            Flashcard(id: "grill203_f2", front: "Cross-Contamination", back: "Transferring harmful bacteria from raw meat to cooked food or surfaces — prevent by using separate tools and plates"),
            Flashcard(id: "grill203_f3", front: "Dry Brine", back: "Salting meat and letting it rest uncovered in the fridge — draws out moisture, then reabsorbs it with salt for seasoning and retention"),
            Flashcard(id: "grill203_f4", front: "Butterfly", back: "Cutting a thick piece of meat (like a breast) in half horizontally to create even thickness for consistent cooking")
        ],
        tags: ["chicken", "safety", "technique"]
    )

    // MARK: - Tier 3: Diagnostic Thinking

    static let lesson7 = Lesson(
        id: "grill_t3_01",
        categoryId: .grilling,
        tier: 3,
        lessonNumber: 1,
        title: "Reverse Searing Mastery",
        subtitle: "The technique that separates beginners from competent grillers",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["grill_t2_03"],
        contentBlocks: [
            ContentBlock(id: "grill301_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Reverse searing gives more control than blasting a cold steak over high heat.",
                "It produces a more even interior and better crust timing.",
                "It teaches heat management instead of lucky guesswork."
            ]),
            ContentBlock(id: "grill301_b2", type: .howItWorks, title: "The Method", bullets: [
                "Set up a two-zone fire: indirect side at 225-250°F, direct side as hot as possible.",
                "Place the steak on the indirect side. Insert a probe thermometer.",
                "Cook slowly until internal temp reaches 10-15°F below your target (e.g., 115°F for medium-rare).",
                "Move to the direct heat zone. Sear hard — 60-90 seconds per side.",
                "The result: edge-to-edge even doneness with a hard, dark crust.",
                "Rest 5 minutes and serve."
            ]),
            ContentBlock(id: "grill301_b3", type: .failureModes, title: "Common Mistakes", bullets: [
                "Indirect side too hot — cooks too fast, creates a gray band.",
                "Skipping the thermometer — the whole point is precision.",
                "Weak sear — the direct zone must be extremely hot. Preheat aggressively.",
                "Wet surface before searing — pat dry again if needed after the low cook."
            ]),
            ContentBlock(id: "grill301_b4", type: .summary, title: "Summary", bullets: [
                "Low first, hot finish. Thermometer beats vibes.",
                "Pull 10-15°F below final target for carryover.",
                "Dry surface improves crust. Preheat the sear zone aggressively.",
                "Reverse sear is control, not magic."
            ])
        ],
        quiz: Quiz(id: "grill301_q", passPercent: 80, questions: [
            Question(id: "grill301_q1", prompt: "In reverse searing, you cook:", choices: ["Hot first, then rest", "All direct heat", "Low heat first, then sear at the end", "Only indirect the entire time"], correctIndex: 2, explanation: "Reverse sear = low indirect heat to bring internal temp up evenly, then a hard direct sear for the crust."),
            Question(id: "grill301_q2", prompt: "For medium-rare reverse sear, pull from indirect heat at approximately:", choices: ["100°F", "115°F", "130°F", "145°F"], correctIndex: 1, explanation: "Pull at 115°F — the hard sear and carryover will bring it to the 130°F medium-rare target."),
            Question(id: "grill301_q3", type: .scenario, prompt: "After the low-cook phase, the steak surface is moist. Before searing, you should:", choices: ["Sear immediately — moisture creates steam for flavor", "Pat the surface dry for a better crust", "Apply oil to the surface", "Wrap it in foil for 10 minutes"], correctIndex: 1, explanation: "Moisture steams instead of browning. Pat the surface dry to maximize the Maillard reaction during the sear."),
            Question(id: "grill301_q4", type: .fillBlank, prompt: "The indirect zone temperature for reverse searing should be approximately _____°F.", choices: ["150-175", "225-250", "350-400", "500+"], correctIndex: 1, explanation: "225-250°F on the indirect side provides a gentle, controlled temperature ramp.")
        ]),
        flashcards: [
            Flashcard(id: "grill301_f1", front: "Reverse Sear", back: "Cooking method: slow indirect heat first to bring internal temp up evenly, then hard direct heat sear for crust"),
            Flashcard(id: "grill301_f2", front: "Gray Band", back: "The overcooked zone between the crust and the pink center — minimized by reverse searing"),
            Flashcard(id: "grill301_f3", front: "Two-Zone Fire", back: "A grill setup with one hot direct-heat zone and one cooler indirect-heat zone — essential for versatile grilling")
        ],
        tags: ["technique", "steak", "advanced"]
    )

    static let lesson8 = Lesson(
        id: "grill_t3_02",
        categoryId: .grilling,
        tier: 3,
        lessonNumber: 2,
        title: "Hosting a Cookout",
        subtitle: "Feeding a crowd with confidence and timing",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["grill_t3_01"],
        contentBlocks: [
            ContentBlock(id: "grill302_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Grilling for yourself is practice. Grilling for a group is the performance.",
                "Hosting combines food timing, guest management, and calm execution under pressure."
            ]),
            ContentBlock(id: "grill302_b2", type: .howItWorks, title: "The Planning Framework", bullets: [
                "Work backwards from serving time. What needs the longest cook? Start that first.",
                "Hot dogs and burgers: 10-15 minutes. Chicken: 25-40 minutes. Ribs: 3-4 hours.",
                "Prep everything before guests arrive: patties formed, chicken seasoned, sides ready.",
                "Keep a cooler with raw meat near the grill. Keep a clean platter for finished food.",
                "Assign someone to manage drinks so you can focus on the grill."
            ]),
            ContentBlock(id: "grill302_b3", type: .componentBreakdown, title: "Timing Multiple Proteins", bullets: [
                "Start long-cook items (ribs, pork shoulder) hours before.",
                "Chicken goes on 30-40 minutes before serving.",
                "Burgers and hot dogs go on 15 minutes before serving.",
                "Steaks are the last thing — they cook fast and shouldn't wait.",
                "Use a sheet pan as a staging area. Cover finished items loosely with foil."
            ]),
            ContentBlock(id: "grill302_b4", type: .failureModes, title: "Hosting Pitfalls", bullets: [
                "Starting everything at the same time — different proteins need different times.",
                "No prep done before guests arrive — you're stressed and behind.",
                "Running out of propane or charcoal mid-cook.",
                "No clean platter for cooked food — cross-contamination risk."
            ]),
            ContentBlock(id: "grill302_b5", type: .summary, title: "Summary", bullets: [
                "Plan backwards from serving time. Longest cook starts first.",
                "Prep everything before guests arrive. Stay ahead.",
                "Steaks last. Chicken early. Burgers in the middle.",
                "Calm execution beats frantic improvisation."
            ])
        ],
        quiz: Quiz(id: "grill302_q", passPercent: 80, questions: [
            Question(id: "grill302_q1", prompt: "When planning a cookout timeline, you should:", choices: ["Start everything at once", "Cook in alphabetical order", "Work backwards from serving time", "Let guests decide the order"], correctIndex: 2, explanation: "Work backwards from when you want to serve. Longest-cooking items go on first."),
            Question(id: "grill302_q2", prompt: "Which protein should go on the grill LAST?", choices: ["Chicken", "Ribs", "Steaks", "Hot dogs"], correctIndex: 2, explanation: "Steaks cook fast and are best served immediately. They should be the last thing on the grill."),
            Question(id: "grill302_q3", type: .scenario, prompt: "Guests are arriving in 30 minutes and you haven't started prep. Your best move is:", choices: ["Cancel the cookout", "Throw everything on the grill at once", "Simplify the menu to what you can prep and cook in time", "Ask guests to help prep raw meat"], correctIndex: 2, explanation: "Simplify. Focus on what you can execute well in the time available. Better to serve great burgers than mediocre everything."),
            Question(id: "grill302_q4", prompt: "The biggest hosting pitfall is:", choices: ["Not having enough chairs", "Starting all proteins at the same time", "Using too much seasoning", "Playing the wrong music"], correctIndex: 1, explanation: "Different proteins need different cook times. Starting everything together means some things are cold while others are still raw.")
        ]),
        flashcards: [
            Flashcard(id: "grill302_f1", front: "Backwards Planning", back: "Starting with the desired serving time and working backwards to determine when each item needs to start cooking"),
            Flashcard(id: "grill302_f2", front: "Staging Area", back: "A clean sheet pan or platter for holding finished items loosely covered with foil while other items finish"),
            Flashcard(id: "grill302_f3", front: "Mise en Place", back: "French for 'everything in its place' — having all ingredients prepped and organized before cooking begins")
        ],
        tags: ["hosting", "timing", "cookout"]
    )
}
