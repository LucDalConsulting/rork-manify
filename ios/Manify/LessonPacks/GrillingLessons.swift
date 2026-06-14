import Foundation

enum GrillingLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "grill_t1_01",
        categoryId: .grilling,
        tier: 1,
        lessonNumber: 1,
        title: "Fire and Heat: The Core of Grilling",
        subtitle: "Master heat and you master the grill",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "grill101_b1", type: .whyMatters, title: "Heat Is the Whole Game", bullets: [
                "Grilling is heat management, not guesswork. Control the fire and you control the food.",
                "A man who can confidently feed people commands quiet respect without saying a word.",
                "It looks simple right up until you ruin expensive meat or make a guest sick.",
                "Every cut, every protein, every technique comes back to one question: how much heat, where, and for how long."
            ]),
            ContentBlock(id: "grill101_b2", type: .systemOverview, title: "Direct vs Indirect Heat", bullets: [
                "Direct heat: food sits right over the flame or coals. Fast and hot, used for searing thin cuts.",
                "Indirect heat: food sits off to the side, away from the source. Slower and gentler, used for thick cuts and big proteins.",
                "Most great grilling uses BOTH in one cook: sear hot, then finish gentle (or the reverse).",
                "Equipment ranges from a $30 charcoal kettle to a $3,000 pellet smoker, but the physics never change."
            ], body: "If you only learn one thing from this category, learn that direct and indirect heat are two different tools, and knowing when to use each is what separates a cook from a guy holding tongs."),
            ContentBlock(id: "grill101_b3", type: .howItWorks, title: "What Heat Actually Does to Food", bullets: [
                "The Maillard reaction: amino acids and sugars brown above roughly 300F, creating the savory crust and aroma you want.",
                "Searing does NOT seal in juices, that is a myth. It builds flavor and color through browning.",
                "Carryover cooking: meat keeps cooking after you pull it. Internal temp can rise 5-15F off the grill.",
                "Render: fat melts and bastes the meat as it cooks. This is why fattier cuts are more forgiving."
            ]),
            ContentBlock(id: "grill101_b4", type: .commonMistakes, title: "Beginner Heat Mistakes", bullets: [
                "Cooking everything over high direct heat. Big cuts burn outside and stay raw inside.",
                "Not preheating. A cold grate steams food and sticks; a hot grate sears and releases.",
                "Lid lifting. If you are looking, you are not cooking. Every peek dumps heat.",
                "Guessing doneness by time alone instead of temperature.",
                "Cutting meat the second it comes off the grill, losing the juice."
            ], callouts: ["Buy an instant-read thermometer before anything else. It is the single highest-value grilling purchase you will make."]),
            ContentBlock(id: "grill101_b5", type: .summary, title: "Lock It In", bullets: [
                "Direct heat for fast searing, indirect heat for slow even cooking.",
                "Browning above 300F builds flavor; searing does not seal juice.",
                "Pull meat early to account for 5-15F of carryover, then rest it.",
                "Temperature is the truth. Time is only a rough guide."
            ])
        ],
        quiz: Quiz(id: "grill101_q", passPercent: 80, questions: [
            Question(id: "grill101_q1", prompt: "Match each grilling concept to its definition.", matchingPairs: [
                MatchingPair(left: "Direct heat", right: "Food directly over the heat source"),
                MatchingPair(left: "Indirect heat", right: "Food off to the side, away from the source"),
                MatchingPair(left: "Maillard reaction", right: "Browning above 300F that builds flavor and crust"),
                MatchingPair(left: "Carryover cooking", right: "Internal temp rises 5-15F after removal")
            ], explanation: "These four concepts are the foundation everything else in grilling builds on."),
            Question(id: "grill101_q2", type: .scenario, prompt: "You are grilling a thick steak. The outside is browning beautifully but the center is still raw. What is your best move?", choices: ["Turn the heat all the way up to cook the inside faster", "Cut it open to check progress", "Move it to indirect heat to let the interior finish without burning", "Take it off and microwave it"], correctIndex: 2, explanation: "Moving to indirect heat lets the interior come up to temperature without scorching the exterior. This is the core idea behind two-zone cooking."),
            Question(id: "grill101_q3", prompt: "Browning that creates a savory crust on grilled food is called the ____ reaction.", acceptedAnswers: ["maillard", "the maillard"], explanation: "The Maillard reaction is the chemistry between amino acids and sugars above about 300F. It produces the brown crust and roasted aroma you want on a steak or burger."),
            Question(id: "grill101_q4", type: .multiSelect, prompt: "Which of these are genuine grilling mistakes?", choices: ["Constantly lifting the lid", "Preheating the grate before cooking", "Guessing doneness by time alone", "Cutting meat the instant it comes off", "Cooking every cut over high direct heat"], correctIndices: [0, 2, 3, 4], explanation: "Lid lifting, time-only guessing, no rest, and high-heat-everything are all mistakes. Preheating is correct technique."),
            Question(id: "grill101_q5", type: .multipleChoice, prompt: "True or false: searing meat seals in the juices.", choices: ["True, that is the whole point of a sear", "False, searing builds flavor and color but does not seal juice", "True, but only on charcoal", "False, searing actually adds moisture"], correctIndex: 1, explanation: "Searing is about the Maillard reaction, flavor, and crust. It does not create a watertight seal. Resting is what keeps meat juicy.")
        ]),
        flashcards: [
            Flashcard(id: "grill101_f1", front: "Direct heat", back: "Food placed directly over the heat source for fast cooking and searing."),
            Flashcard(id: "grill101_f2", front: "Indirect heat", back: "Food placed away from the heat source for slower, more even cooking of larger cuts."),
            Flashcard(id: "grill101_f3", front: "Maillard reaction", back: "Browning of amino acids and sugars above ~300F that creates a savory crust and aroma."),
            Flashcard(id: "grill101_f4", front: "Carryover cooking", back: "The 5-15F rise in internal temperature after meat is removed from the heat.")
        ],
        tags: ["heat", "basics", "fundamentals"]
    )

    static let lesson2 = Lesson(
        id: "grill_t1_02",
        categoryId: .grilling,
        tier: 1,
        lessonNumber: 2,
        title: "Charcoal vs Gas and the Two-Zone Fire",
        subtitle: "Choose your fuel and build the setup that does everything",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["grill_t1_01"],
        contentBlocks: [
            ContentBlock(id: "grill102_b1", type: .whyMatters, title: "Why Fuel and Setup Decide the Cook", bullets: [
                "Your fuel choice sets your ceiling on heat, flavor, and convenience.",
                "The two-zone fire is the single most useful setup you can learn. It turns one grill into two.",
                "Most weeknight failures come from a one-temperature grill: everything either burns or never finishes."
            ]),
            ContentBlock(id: "grill102_b2", type: .componentBreakdown, title: "Charcoal vs Gas, Honestly", bullets: [
                "Gas: propane or natural gas. Push-button start, dialed temperature, ready in 10-15 minutes. Less smoke flavor.",
                "Charcoal: hotter ceiling (700F+ sears), real smoke flavor, cheaper fuel. Slower start, more skill.",
                "Lump charcoal: pure carbonized wood. Lights fast, burns hot, less ash, less consistent.",
                "Briquettes: compressed charcoal with binders. Steady, predictable, longer burn, more ash.",
                "Use a chimney starter, not lighter fluid. Fluid leaves a chemical taste; a chimney lights coals evenly in 15 minutes."
            ], body: "There is no universally best fuel. Gas wins on Tuesday after work. Charcoal wins on Saturday when flavor and a hard sear matter."),
            ContentBlock(id: "grill102_b3", type: .stepByStep, title: "Building a Two-Zone Fire", bullets: [
                "Charcoal: dump the lit coals onto one half of the grill. Leave the other half empty.",
                "Gas: light only the burners on one side. Leave the other side off.",
                "Hot zone (direct): for searing, marks, and crust.",
                "Cool zone (indirect): for finishing thick cuts, cooking through, and holding food.",
                "Keep the lid vents over the cool side so heat and smoke draw across the food."
            ], callouts: ["A two-zone fire means you always have an escape hatch. Flare-up or overbrowning? Slide the food to the cool side."]),
            ContentBlock(id: "grill102_b4", type: .keyTerms, title: "Airflow and Vents", bullets: [
                "Fire needs oxygen. On charcoal, the bottom and top vents are your throttle.",
                "More air open = hotter fire. Choke the vents = cooler fire, eventually out.",
                "Top vent mostly open during cooking keeps smoke moving and prevents soot.",
                "Never fully smother a fire and walk away; reopen vents to recover heat, do not add fluid."
            ]),
            ContentBlock(id: "grill102_b5", type: .summary, title: "Lock It In", bullets: [
                "Gas for speed and control, charcoal for heat and flavor.",
                "Light charcoal with a chimney, never lighter fluid.",
                "Build a two-zone fire so you have both a hot and a cool side.",
                "Vents are your throttle: open for hotter, choke for cooler."
            ])
        ],
        quiz: Quiz(id: "grill102_q", passPercent: 80, questions: [
            Question(id: "grill102_q1", type: .multipleChoice, prompt: "What is the correct way to light charcoal?", choices: ["Douse it in lighter fluid and toss a match", "Use a chimney starter with newspaper underneath", "Set it on the stove burner", "Add gasoline for a faster start"], correctIndex: 1, explanation: "A chimney starter lights coals evenly in about 15 minutes with no chemical taste. Lighter fluid leaves a petroleum flavor in your food."),
            Question(id: "grill102_q2", type: .scenario, prompt: "It is a busy Tuesday, you want dinner in 20 minutes, and smoke flavor is not the priority. Which fuel makes the most sense?", choices: ["Charcoal, always", "Gas, for fast startup and easy temperature control", "An offset smoker", "Open campfire"], correctIndex: 1, explanation: "Gas shines for convenience: it is ready in 10-15 minutes and holds temperature with a knob. Charcoal is worth the extra time when flavor and a hard sear matter."),
            Question(id: "grill102_q3", prompt: "A grill set up with one hot side and one cool side is called a ____ fire.", acceptedAnswers: ["two-zone", "two zone", "2-zone", "2 zone"], explanation: "The two-zone fire gives you direct heat for searing and indirect heat for finishing, all on one grill. It is the most useful setup in grilling."),
            Question(id: "grill102_q4", type: .multiSelect, prompt: "Which statements about charcoal are accurate?", choices: ["Lump charcoal burns hotter and lights faster than briquettes", "Briquettes burn longer and more consistently", "Opening the vents makes the fire cooler", "Lighter fluid is the recommended way to start coals", "A chimney starter lights coals in about 15 minutes"], correctIndices: [0, 1, 4], explanation: "Lump is hot and fast, briquettes are steady and long-burning, and a chimney lights coals in about 15 minutes. Opening vents makes a fire HOTTER, and lighter fluid taints flavor."),
            Question(id: "grill102_q5", prompt: "Match each grill component to its role.", matchingPairs: [
                MatchingPair(left: "Chimney starter", right: "Lights charcoal evenly without fluid"),
                MatchingPair(left: "Hot zone", right: "Direct heat for searing"),
                MatchingPair(left: "Cool zone", right: "Indirect heat for finishing through"),
                MatchingPair(left: "Vents", right: "Throttle airflow to control temperature")
            ], explanation: "Each piece of the setup has a job. Together they give you full control over the fire.")
        ]),
        flashcards: [
            Flashcard(id: "grill102_f1", front: "Two-zone fire", back: "A grill setup with a hot direct-heat side and a cool indirect-heat side, giving you control over thick and thin cuts alike."),
            Flashcard(id: "grill102_f2", front: "Chimney starter", back: "A metal cylinder that lights charcoal evenly in ~15 minutes using newspaper, with no chemical taste."),
            Flashcard(id: "grill102_f3", front: "Lump vs briquettes", back: "Lump is pure carbonized wood: hotter, faster, less ash. Briquettes are compressed with binders: steadier and longer-burning."),
            Flashcard(id: "grill102_f4", front: "Grill vents", back: "The airflow throttle on a charcoal grill. Open vents = hotter fire; choked vents = cooler fire.")
        ],
        tags: ["charcoal", "gas", "two-zone", "setup"]
    )

    static let lesson3 = Lesson(
        id: "grill_t1_03",
        categoryId: .grilling,
        tier: 1,
        lessonNumber: 3,
        title: "Essential Tools and Grill Types",
        subtitle: "The short list of gear that actually matters",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["grill_t1_02"],
        contentBlocks: [
            ContentBlock(id: "grill103_b1", type: .whyMatters, title: "Good Tools, Not Many Tools", bullets: [
                "You need maybe six tools to grill anything. The rest of the gift-shop aisle is noise.",
                "The right grill type for the job removes frustration before you ever light it.",
                "Quality tongs and a thermometer will outlast three cheap grills."
            ]),
            ContentBlock(id: "grill103_b2", type: .componentBreakdown, title: "The Essential Toolkit", bullets: [
                "Instant-read thermometer: the most important tool you own. Confirms doneness in 2-3 seconds.",
                "Long-handled tongs: your hands at the grill. Spring-loaded, 12-16 inches to keep arms off the heat.",
                "Sturdy metal spatula: wide and thin enough to slide under burgers and fish without tearing.",
                "Grill brush or scraper: clean the hot grate before and after every cook.",
                "Chimney starter (charcoal) and a heat-resistant glove.",
                "Heavy-duty foil and a sheet pan for staging raw and finished food separately."
            ], callouts: ["Skip the wire-bristle brush if you can; bristles break off and end up in food. A coil-style brush or wood scraper is safer."]),
            ContentBlock(id: "grill103_b3", type: .context, title: "The Grill Types at a Glance", bullets: [
                "Gas: fast startup, easy control, less smoke. Best for weeknight convenience.",
                "Charcoal kettle: high heat, real flavor, cheap. The classic all-rounder.",
                "Pellet grill: auger-fed wood pellets, thermostat-controlled. Set-and-forget smoking, weaker sear.",
                "Kamado: ceramic egg, superb heat retention and fuel efficiency. Versatile but heavy and pricey.",
                "Offset smoker: separate firebox feeds smoke into the chamber. Pure low-and-slow, demands attention.",
                "Flat-top griddle: solid steel surface, no flare-ups. Smash burgers, breakfast, fried rice."
            ]),
            ContentBlock(id: "grill103_b4", type: .proTips, title: "Buying and Caring for Gear", bullets: [
                "Start with what matches how you actually cook, then upgrade deliberately.",
                "Season cast-iron grates and a flat-top with a thin oil layer to prevent rust and sticking.",
                "Clean the grate while it is hot. Carbon scrapes off easily; cold grease cements.",
                "Store the grill covered and dry. Water in the firebox rusts it from the inside out."
            ]),
            ContentBlock(id: "grill103_b5", type: .summary, title: "Lock It In", bullets: [
                "Thermometer, tongs, spatula, scraper, chimney, glove. That is the core kit.",
                "Match the grill type to your cooking style, not to the showroom.",
                "Clean the grate hot; store the grill dry and covered.",
                "Avoid wire-bristle brushes; bristles in food are a real hazard."
            ])
        ],
        quiz: Quiz(id: "grill103_q", passPercent: 80, questions: [
            Question(id: "grill103_q1", prompt: "Match each grill type to its primary strength.", matchingPairs: [
                MatchingPair(left: "Gas", right: "Fast startup and easy temperature control"),
                MatchingPair(left: "Charcoal kettle", right: "High heat and real smoke flavor"),
                MatchingPair(left: "Pellet grill", right: "Automated, set-and-forget smoking"),
                MatchingPair(left: "Offset smoker", right: "Pure low-and-slow with a separate firebox")
            ], explanation: "There is no best grill, only the best grill for the job in front of you."),
            Question(id: "grill103_q2", type: .scenario, prompt: "You want to smoke a pork shoulder for 8 hours with minimal babysitting. Which grill is the easiest path?", choices: ["Gas grill", "Charcoal kettle", "Pellet grill", "Flat-top griddle"], correctIndex: 2, explanation: "A pellet grill feeds pellets via an auger and holds temperature with a thermostat, making long, hands-off smokes far easier than tending a fire."),
            Question(id: "grill103_q3", prompt: "The single most important tool for confirming doneness is an instant-read ____.", acceptedAnswers: ["thermometer", "thermometer probe", "meat thermometer"], explanation: "An instant-read thermometer takes the guesswork out of doneness and food safety. It is the highest-value purchase a new griller can make."),
            Question(id: "grill103_q4", type: .multiSelect, prompt: "Which belong in a core grilling toolkit?", choices: ["Instant-read thermometer", "Long-handled tongs", "A second refrigerator", "Sturdy metal spatula", "Grill scraper or brush", "Heat-resistant glove"], correctIndices: [0, 1, 3, 4, 5], explanation: "Thermometer, tongs, spatula, scraper, and a glove are the essentials. A second fridge is nice but not part of the core kit."),
            Question(id: "grill103_q5", type: .multipleChoice, prompt: "Why is a wire-bristle grill brush considered a hazard?", choices: ["It scratches the grate", "Bristles can break off and end up in food", "It rusts quickly", "It is too expensive"], correctIndex: 1, explanation: "Wire bristles can detach, stick to the grate, and be swallowed with food. A coil-style brush or wood scraper avoids the risk.")
        ]),
        flashcards: [
            Flashcard(id: "grill103_f1", front: "Instant-read thermometer", back: "A probe that reads internal temperature in 2-3 seconds. The most important and highest-value grilling tool."),
            Flashcard(id: "grill103_f2", front: "Pellet grill", back: "An automated grill that feeds wood pellets via an auger and holds temperature with a thermostat. Ideal for hands-off smoking."),
            Flashcard(id: "grill103_f3", front: "Kamado grill", back: "A ceramic, egg-shaped grill with excellent heat retention and fuel efficiency. Versatile but heavy and expensive."),
            Flashcard(id: "grill103_f4", front: "Offset smoker", back: "A grill with a separate firebox that feeds smoke into the cooking chamber. Built for pure low-and-slow cooking.")
        ],
        tags: ["tools", "equipment", "types", "basics"]
    )

    static let lesson4 = Lesson(
        id: "grill_t1_04",
        categoryId: .grilling,
        tier: 1,
        lessonNumber: 4,
        title: "Food Safety and Internal Temperatures",
        subtitle: "Feed people without making anyone sick",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["grill_t1_03"],
        contentBlocks: [
            ContentBlock(id: "grill104_b1", type: .whyMatters, title: "This Is Not Optional Knowledge", bullets: [
                "Bad grilling tastes bad. Unsafe grilling sends people to the hospital.",
                "Food safety is the difference between a memorable cookout and a regretful one.",
                "Knowing safe temperatures lets you cook confidently instead of overcooking out of fear."
            ], callouts: ["This is general food-safety education, not a substitute for local health guidance. When in doubt, cook to the safe temperature."]),
            ContentBlock(id: "grill104_b2", type: .keyTerms, title: "Safe Internal Temperatures", bullets: [
                "Poultry (chicken, turkey): 165F. Non-negotiable.",
                "Ground beef and burgers: 160F. Grinding spreads surface bacteria throughout, so well-done rules apply.",
                "Pork (chops, roasts): 145F plus a 3-minute rest.",
                "Whole-muscle beef steak: cook to your preferred doneness; 145F is the USDA recommendation for medium, but whole-muscle beef is safe at lower temps because bacteria live on the surface, which the sear kills.",
                "Fish: 145F, or until it flakes and turns opaque."
            ], body: "The key insight: whole-muscle steak can be rare because bacteria are only on the surface. Ground meat must be cooked through because grinding mixes the surface in."),
            ContentBlock(id: "grill104_b3", type: .safety, title: "The Danger Zone and Cross-Contamination", bullets: [
                "The danger zone is 40F to 140F. Bacteria multiply fast here. Do not leave raw or cooked food out more than 2 hours (1 hour above 90F).",
                "Cross-contamination: raw juices spreading to cooked food or clean surfaces. The number-one cookout illness cause.",
                "Use one plate and tongs for raw, a separate clean plate and tongs for cooked. Never reuse the raw platter.",
                "Wash hands, boards, and tools after handling raw meat, especially chicken.",
                "Thaw frozen meat in the fridge, not on the counter."
            ], callouts: ["The classic mistake: carrying raw burgers out on a plate, then putting the cooked burgers back on the same unwashed plate. That is how people get sick."]),
            ContentBlock(id: "grill104_b4", type: .stepByStep, title: "How to Check Temperature Correctly", bullets: [
                "Insert the probe into the thickest part of the meat, away from bone, fat, and the grate.",
                "For thin cuts, insert from the side to reach the center.",
                "Wait for the reading to stabilize, about 2-3 seconds on a quality instant-read.",
                "Check multiple spots on large or irregular cuts; the thickest reading is the one that counts.",
                "Pull meat 5F early for carryover, then verify after resting."
            ]),
            ContentBlock(id: "grill104_b5", type: .summary, title: "Lock It In", bullets: [
                "Poultry 165F, ground meat 160F, pork 145F, fish 145F. Steak to preference.",
                "Whole-muscle steak can be rare; ground meat cannot. The reason is where the bacteria live.",
                "Keep food out of the 40-140F danger zone; 2-hour limit (1 hour over 90F).",
                "Separate raw and cooked. Never reuse the raw platter."
            ])
        ],
        quiz: Quiz(id: "grill104_q", passPercent: 80, questions: [
            Question(id: "grill104_q1", prompt: "Match each food to its safe minimum internal temperature.", matchingPairs: [
                MatchingPair(left: "Chicken", right: "165F"),
                MatchingPair(left: "Ground beef / burgers", right: "160F"),
                MatchingPair(left: "Pork chops", right: "145F plus rest"),
                MatchingPair(left: "Fish", right: "145F or flakes opaque")
            ], explanation: "Memorizing these targets lets you cook confidently to safe, not overcooked, results."),
            Question(id: "grill104_q2", type: .scenario, prompt: "A friend asks why a steak can be served medium-rare but a burger must be cooked through. The best explanation is:", choices: ["Beef quality differs between cuts and ground", "Bacteria live on the surface of whole muscle, which the sear kills, but grinding mixes the surface throughout the burger", "Burgers contain more fat", "There is no real difference; both are fine rare"], correctIndex: 1, explanation: "On a whole steak, bacteria are only on the surface and are killed by searing. Grinding distributes that surface throughout the meat, so a burger must reach 160F internally."),
            Question(id: "grill104_q3", prompt: "The temperature range where bacteria multiply fastest, 40F to 140F, is called the ____ zone.", acceptedAnswers: ["danger", "the danger"], explanation: "The danger zone is 40-140F. Do not leave perishable food in this range for more than 2 hours (1 hour above 90F)."),
            Question(id: "grill104_q4", type: .multiSelect, prompt: "Which practices prevent cross-contamination at a cookout?", choices: ["Use separate plates for raw and cooked meat", "Reuse the raw-meat platter for finished food", "Use separate tongs for raw and cooked", "Wash hands and boards after handling raw chicken", "Thaw meat on the counter all afternoon"], correctIndices: [0, 2, 3], explanation: "Separate plates and tongs and washing up prevent cross-contamination. Reusing the raw platter and counter-thawing both create illness risk."),
            Question(id: "grill104_q5", type: .multipleChoice, prompt: "Where should you insert a thermometer probe for an accurate reading?", choices: ["Near the bone for the highest reading", "Into the thickest part, away from bone and fat", "Just under the surface crust", "Wherever it slides in easiest"], correctIndex: 1, explanation: "The thickest part, away from bone and fat, is the slowest to heat and the true measure of doneness. Bone conducts heat and gives a false high reading.")
        ]),
        flashcards: [
            Flashcard(id: "grill104_f1", front: "Poultry safe temp", back: "165F internal, non-negotiable for all chicken and turkey."),
            Flashcard(id: "grill104_f2", front: "Ground beef safe temp", back: "160F. Grinding spreads surface bacteria throughout, so burgers must be cooked through."),
            Flashcard(id: "grill104_f3", front: "Danger zone", back: "40F to 140F, where bacteria multiply fastest. Limit perishable food to 2 hours in this range (1 hour above 90F)."),
            Flashcard(id: "grill104_f4", front: "Cross-contamination", back: "Spreading bacteria from raw meat to cooked food or clean surfaces. Prevent with separate plates, tongs, and washing.")
        ],
        tags: ["safety", "temperature", "food-safety", "fundamentals"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "grill_t2_01",
        categoryId: .grilling,
        tier: 2,
        lessonNumber: 1,
        title: "Steak Fundamentals",
        subtitle: "The definitive guide to not ruining a steak",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["grill_t1_04"],
        contentBlocks: [
            ContentBlock(id: "grill201_b1", type: .whyMatters, title: "Steak Is the Benchmark", bullets: [
                "If you can cook a steak well, people trust you at the grill.",
                "Most steak failures come from three things: wrong heat, no thermometer, and no rest.",
                "A great steak needs almost nothing: heat, salt, and patience."
            ]),
            ContentBlock(id: "grill201_b2", type: .componentBreakdown, title: "Cuts to Know", bullets: [
                "Ribeye: well-marbled, forgiving, big flavor. Best cut for beginners.",
                "New York strip: leaner than ribeye, firm texture, clean beefy flavor.",
                "Filet mignon: extremely tender, mild, low fat. Easy to overcook, so watch it closely.",
                "T-bone / porterhouse: strip on one side, tenderloin on the other. Two doneness zones in one steak.",
                "Look for marbling, the fine fat streaks inside the muscle. More marbling means more flavor and forgiveness."
            ]),
            ContentBlock(id: "grill201_b3", type: .stepByStep, title: "The Method", bullets: [
                "Take the steak out 30-45 minutes early to take the chill off. Pat it bone-dry with paper towels.",
                "Season generously with kosher salt and coarse pepper. A 1-inch steak can take more salt than you think.",
                "Preheat the direct zone screaming hot. The grate should make you flinch.",
                "Sear 3-4 minutes per side for a 1-inch steak, rotating 45 degrees halfway for crosshatch marks.",
                "Target internal temps: rare 120-125F, medium-rare 130-135F, medium 140-145F.",
                "Rest 5-10 minutes before cutting. Slice against the grain."
            ], callouts: ["Pull the steak about 5F below your target. Carryover finishes the job during the rest."]),
            ContentBlock(id: "grill201_b4", type: .commonMistakes, title: "Where Steaks Go Wrong", bullets: [
                "Cold steak straight from the fridge: uneven cooking and a thick gray band.",
                "Wet surface: moisture steams instead of searing. Always pat dry.",
                "Cutting immediately: juice runs onto the board instead of staying in the meat.",
                "Cooking by time only: thickness, starting temp, and grill heat all vary. Use the thermometer.",
                "Slicing with the grain: makes even a tender steak chewy."
            ]),
            ContentBlock(id: "grill201_b5", type: .summary, title: "Lock It In", bullets: [
                "Room temp, dry surface, hot grate, salt and pepper, thermometer, rest.",
                "Ribeye is the most forgiving cut to learn on.",
                "130-135F internal for medium-rare; pull 5F early for carryover.",
                "Rest 5-10 minutes, then slice against the grain."
            ])
        ],
        quiz: Quiz(id: "grill201_q", passPercent: 80, questions: [
            Question(id: "grill201_q1", prompt: "Match each doneness level to its target internal temperature.", matchingPairs: [
                MatchingPair(left: "Rare", right: "120-125F"),
                MatchingPair(left: "Medium-rare", right: "130-135F"),
                MatchingPair(left: "Medium", right: "140-145F")
            ], explanation: "Knowing target temperatures eliminates guesswork. Pull about 5F early for carryover."),
            Question(id: "grill201_q2", type: .scenario, prompt: "You cut into your steak the instant it comes off the grill and juice floods the cutting board. What went wrong?", choices: ["The steak was overcooked", "You did not rest it, so the juices had not redistributed", "The cut was too lean", "The grill was not hot enough"], correctIndex: 1, explanation: "Resting 5-10 minutes lets the juices redistribute through the meat instead of pouring out the moment you cut. Cutting hot wastes the moisture you worked to keep."),
            Question(id: "grill201_q3", type: .multiSelect, prompt: "Which are correct steak-prep steps before grilling?", choices: ["Take it out 30-45 minutes early to lose the chill", "Pat the surface completely dry", "Marinate in a sugary sauce for high-heat searing", "Season generously with kosher salt and pepper", "Keep it ice-cold until the second it hits the grate"], correctIndices: [0, 1, 3], explanation: "Tempering, drying, and salt/pepper are correct. Sugary marinades scorch over high heat, and an ice-cold steak cooks unevenly with a wide gray band."),
            Question(id: "grill201_q4", prompt: "For tenderness, you should slice a finished steak ____ the grain.", acceptedAnswers: ["against", "across", "perpendicular to"], explanation: "Slicing against the grain cuts the muscle fibers short, making each bite more tender. Slicing with the grain leaves long fibers that chew tough."),
            Question(id: "grill201_q5", type: .multipleChoice, prompt: "Which cut is the most forgiving for a beginner to learn on?", choices: ["Filet mignon", "Ribeye", "Flank steak", "Skirt steak"], correctIndex: 1, explanation: "Ribeye is heavily marbled, so the fat keeps it juicy and forgiving even if your timing is slightly off. Filet is lean and overcooks easily.")
        ]),
        flashcards: [
            Flashcard(id: "grill201_f1", front: "Medium-rare", back: "130-135F internal, warm red center. The most common target for a quality steak."),
            Flashcard(id: "grill201_f2", front: "Marbling", back: "Fine intramuscular fat streaks. More marbling means more flavor, moisture, and forgiveness."),
            Flashcard(id: "grill201_f3", front: "Resting meat", back: "Letting cooked meat sit 5-10 minutes so juices redistribute instead of running out when cut."),
            Flashcard(id: "grill201_f4", front: "Slice against the grain", back: "Cutting perpendicular to the muscle fibers to shorten them, making each bite more tender.")
        ],
        tags: ["steak", "technique", "meat"]
    )

    static let lesson6 = Lesson(
        id: "grill_t2_02",
        categoryId: .grilling,
        tier: 2,
        lessonNumber: 2,
        title: "Burgers, Chicken, and Ribs by Technique",
        subtitle: "Three proteins, three methods, no guesswork",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["grill_t2_01"],
        contentBlocks: [
            ContentBlock(id: "grill202_b1", type: .whyMatters, title: "Different Foods, Different Heat", bullets: [
                "The mark of competence is matching technique to the food, not cooking everything the same way.",
                "Burgers want fast direct heat. Bone-in chicken wants indirect. Ribs want low and slow.",
                "Get these three right and you can feed almost any crowd."
            ]),
            ContentBlock(id: "grill202_b2", type: .stepByStep, title: "Burgers: Hot and Fast", bullets: [
                "Use 80/20 ground beef. Leaner means drier; the fat is the flavor.",
                "Handle the meat as little as possible. Overworking makes it dense and tough.",
                "Form patties slightly wider than the bun (they shrink) and press a thumbprint dimple in the center.",
                "Salt and pepper the OUTSIDE only, right before cooking. Salt mixed in turns it into sausage.",
                "Direct medium-high heat, 3-4 minutes per side. Never press with the spatula.",
                "Cook ground beef to 160F. Add cheese in the last minute under a closed lid; toast buns 30 seconds."
            ], callouts: ["Pressing the patty squeezes out the fat and juice that keep it moist. The sizzle you hear is your dinner leaving."]),
            ContentBlock(id: "grill202_b3", type: .stepByStep, title: "Chicken: Indirect and Patient", bullets: [
                "Poultry must reach 165F internal. This is the food-safety line.",
                "Thighs are forgiving and stay juicy even past 175F. Breasts dry out fast; pound to even thickness.",
                "Bone-in pieces need indirect heat; direct heat chars the skin before the inside is safe.",
                "Start skin-side down to render fat and crisp, then move to indirect to finish through.",
                "Sugary BBQ sauce burns. Brush it on only in the last 10 minutes."
            ]),
            ContentBlock(id: "grill202_b4", type: .stepByStep, title: "Ribs: Low and Slow", bullets: [
                "Remove the thin membrane on the bone side; it blocks flavor and turns rubbery.",
                "Cook at 225-275F indirect. Baby backs run ~3-4 hours, spare ribs ~4-5 hours.",
                "Ribs are not about a single safe temp; they are done at ~195-203F when collagen melts into tenderness.",
                "The bend test: lift a rack with tongs; it should crack on the surface and nearly break.",
                "Sauce in the final 20-30 minutes so the sugars set without burning."
            ], callouts: ["Ribs are done by feel and high internal temp (195-203F), not by the 165F safety line. Pull them too early and they are tough."]),
            ContentBlock(id: "grill202_b5", type: .summary, title: "Lock It In", bullets: [
                "Burgers: 80/20, dimple, no press, season outside, 160F.",
                "Chicken: indirect for bone-in, 165F, sauce in the last 10 minutes.",
                "Ribs: pull the membrane, 225-275F indirect, done at 195-203F by feel.",
                "Match the heat to the food, every time."
            ])
        ],
        quiz: Quiz(id: "grill202_q", passPercent: 80, questions: [
            Question(id: "grill202_q1", type: .scenario, prompt: "Someone is pressing the burgers flat with a spatula, and the grill hisses with each press. What is actually happening?", choices: ["They are making better grill marks", "They are speeding up the cooking", "They are squeezing out the fat and juice that keep the burger moist", "Nothing wrong, this is correct technique"], correctIndex: 2, explanation: "Pressing forces out the fat and juice, leaving a dry, dense burger. That hiss is moisture hitting the coals, not flavor developing."),
            Question(id: "grill202_q2", prompt: "Match each protein to its correct cooking approach.", matchingPairs: [
                MatchingPair(left: "Burgers", right: "Direct medium-high, fast"),
                MatchingPair(left: "Bone-in chicken", right: "Indirect heat to cook through safely"),
                MatchingPair(left: "Ribs", right: "Low and slow at 225-275F indirect"),
                MatchingPair(left: "BBQ sauce", right: "Applied only in the final minutes")
            ], explanation: "Each food has a method. Matching heat to the food is what separates competence from luck."),
            Question(id: "grill202_q3", type: .multiSelect, prompt: "Which are correct technique points across these three proteins?", choices: ["Use 80/20 beef for burgers", "Mix the seasoning into the burger meat", "Cook bone-in chicken over indirect heat", "Remove the membrane from ribs", "Apply sugary BBQ sauce at the very start"], correctIndices: [0, 2, 3], explanation: "80/20 beef, indirect chicken, and pulling the rib membrane are correct. Mixing salt into burger meat makes it sausage-textured, and early sugary sauce burns."),
            Question(id: "grill202_q4", prompt: "Ribs are tender and done when collagen melts, roughly at ____ F internal (well above the safety minimum).", acceptedAnswers: ["195-203", "195 to 203", "200", "195", "203"], explanation: "Ribs eat tough at 165F. They become tender around 195-203F as collagen and connective tissue render. Done is about feel and high temp, not the safety line."),
            Question(id: "grill202_q5", type: .multipleChoice, prompt: "Why should you cook bone-in chicken thighs over indirect heat?", choices: ["Direct heat is unsafe for any meat", "Direct heat chars the skin before the inside reaches 165F", "Indirect heat adds smoke flavor only", "It does not matter; both work the same"], correctIndex: 1, explanation: "Bone-in pieces are thick. Direct heat scorches the exterior long before the interior is safe. Indirect heat cooks them through evenly, and you can crisp the skin to finish.")
        ]),
        flashcards: [
            Flashcard(id: "grill202_f1", front: "80/20 ground beef", back: "80% lean, 20% fat. The ideal ratio for juicy, flavorful burgers; cook to 160F."),
            Flashcard(id: "grill202_f2", front: "Dimple technique", back: "A shallow thumbprint in the center of a patty that keeps it from puffing into a ball as it cooks."),
            Flashcard(id: "grill202_f3", front: "Rib membrane", back: "The thin silverskin on the bone side of ribs. Remove it so flavor penetrates and it does not turn rubbery."),
            Flashcard(id: "grill202_f4", front: "Ribs done temp", back: "195-203F internal, where collagen renders and the meat turns tender. Confirmed by the bend test.")
        ],
        tags: ["burger", "chicken", "ribs", "technique"]
    )

    static let lesson7 = Lesson(
        id: "grill_t2_03",
        categoryId: .grilling,
        tier: 2,
        lessonNumber: 3,
        title: "The Reverse Sear and Resting Meat",
        subtitle: "Two techniques that instantly level up your results",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["grill_t2_02"],
        contentBlocks: [
            ContentBlock(id: "grill203_b1", type: .whyMatters, title: "Control Beats Luck", bullets: [
                "The reverse sear gives you precision on thick cuts that blasting cold meat over high heat never will.",
                "Resting is the cheapest, easiest upgrade in all of grilling and most people skip it.",
                "Together these two techniques fix the most common steak complaints: gray bands and dry meat."
            ]),
            ContentBlock(id: "grill203_b2", type: .howItWorks, title: "Why the Reverse Sear Works", bullets: [
                "Gentle indirect heat first brings the whole interior up evenly, edge to edge.",
                "A hard, fast sear at the end builds crust without overcooking the inside.",
                "The result is a thin gray band and a perfectly even pink interior, not a bullseye of overcooked meat.",
                "Best for thick cuts (1.5 inches plus). For thin steaks, a straight hot sear is fine."
            ]),
            ContentBlock(id: "grill203_b3", type: .stepByStep, title: "Reverse Sear, Step by Step", bullets: [
                "Build a two-zone fire: indirect side at 225-275F, direct side as hot as you can get it.",
                "Place the steak on the indirect side with a probe in the thickest part.",
                "Cook slowly until internal temp hits 10-15F below target (about 115F for medium-rare).",
                "Pat the surface dry, then sear hard on the direct zone, 60-90 seconds per side.",
                "Rest 5-10 minutes and slice against the grain."
            ], callouts: ["Aggressively preheat the sear zone. A weak final sear is the most common reverse-sear failure."]),
            ContentBlock(id: "grill203_b4", type: .principles, title: "The Science of Resting", bullets: [
                "Heat drives moisture toward the cooler center during cooking. Cutting immediately lets it pour out.",
                "Resting lets the muscle fibers relax and reabsorb that moisture, so it stays in the meat.",
                "Rule of thumb: rest steaks and chops 5-10 minutes; rest big roasts and brisket 30-60 minutes.",
                "Tent loosely with foil to keep warm without steaming the crust soft.",
                "Carryover keeps cooking during the rest, so factor it into when you pull."
            ]),
            ContentBlock(id: "grill203_b5", type: .summary, title: "Lock It In", bullets: [
                "Reverse sear: low and slow first, hard sear last, for thick cuts.",
                "Pull 10-15F below target on the low phase to leave room for the sear and carryover.",
                "Rest steaks 5-10 minutes, big roasts 30-60 minutes.",
                "Resting keeps juice in the meat. It is free and it works."
            ])
        ],
        quiz: Quiz(id: "grill203_q", passPercent: 80, questions: [
            Question(id: "grill203_q1", prompt: "Match each reverse-sear detail to its correct value.", matchingPairs: [
                MatchingPair(left: "Indirect zone temp", right: "225-275F"),
                MatchingPair(left: "Pull temp for medium-rare", right: "~115F before the sear"),
                MatchingPair(left: "Sear duration", right: "60-90 seconds per side"),
                MatchingPair(left: "Final target", right: "130-135F medium-rare")
            ], explanation: "The reverse sear is about precision. These numbers are what make it repeatable."),
            Question(id: "grill203_q2", type: .scenario, prompt: "After the low-heat phase, your steak surface is a little damp. Right before the sear you should:", choices: ["Sear immediately; moisture adds flavor", "Pat the surface completely dry", "Brush it with sugary sauce", "Wrap it in foil for 10 minutes"], correctIndex: 1, explanation: "A damp surface steams instead of browning. Patting it dry maximizes the Maillard reaction during the final hard sear."),
            Question(id: "grill203_q3", prompt: "Letting cooked meat sit before cutting so juices redistribute is called ____.", acceptedAnswers: ["resting", "resting the meat", "resting meat"], explanation: "Resting lets muscle fibers relax and reabsorb moisture. Cutting immediately dumps that juice onto the board."),
            Question(id: "grill203_q4", type: .multiSelect, prompt: "Which statements about resting meat are true?", choices: ["Rest steaks about 5-10 minutes", "Rest large roasts and brisket 30-60 minutes", "Resting makes meat drier", "Tent loosely with foil to keep warm", "Carryover cooking continues during the rest"], correctIndices: [0, 1, 3, 4], explanation: "Resting keeps meat moister, not drier. The timing scales with size, foil-tenting holds heat, and carryover continues during the rest."),
            Question(id: "grill203_q5", type: .multipleChoice, prompt: "The reverse sear is most worth using on:", choices: ["Thin quarter-inch steaks", "Thick cuts of 1.5 inches or more", "Hot dogs", "Vegetables only"], correctIndex: 1, explanation: "Thick cuts benefit most because the gentle phase brings the large interior up evenly. Thin steaks cook through almost instantly, so a straight hot sear is simpler.")
        ]),
        flashcards: [
            Flashcard(id: "grill203_f1", front: "Reverse sear", back: "Cook gently on indirect heat first to bring internal temp up evenly, then hard-sear on direct heat for crust."),
            Flashcard(id: "grill203_f2", front: "Gray band", back: "The overcooked ring between the crust and the pink center. Minimized by the reverse sear."),
            Flashcard(id: "grill203_f3", front: "Resting meat", back: "Letting meat sit 5-10 min (steaks) or 30-60 min (roasts) so juices redistribute and stay in the meat."),
            Flashcard(id: "grill203_f4", front: "Pull temp", back: "The internal temp at which you remove meat, set below the final target so carryover finishes the job.")
        ],
        tags: ["reverse-sear", "resting", "technique", "steak"]
    )

    static let lesson8 = Lesson(
        id: "grill_t2_04",
        categoryId: .grilling,
        tier: 2,
        lessonNumber: 4,
        title: "Seasoning, Rubs, and Marinades",
        subtitle: "How to actually make food taste like something",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["grill_t2_03"],
        contentBlocks: [
            ContentBlock(id: "grill204_b1", type: .whyMatters, title: "Flavor Is a Skill, Not Luck", bullets: [
                "Great heat control with no seasoning still produces bland food.",
                "Salt is the most important ingredient on the grill, full stop.",
                "Knowing when to use a rub versus a marinade saves time and prevents disappointment."
            ]),
            ContentBlock(id: "grill204_b2", type: .principles, title: "Salt: Timing and Type", bullets: [
                "Salt early (40+ minutes ahead) or right before cooking, but avoid the 3-30 minute dead zone where salt pulls moisture to the surface without reabsorbing.",
                "Dry brining means salting and resting uncovered in the fridge hours ahead; it seasons deeply and dries the surface for a better sear.",
                "Kosher salt is the grilling standard: large flakes are easy to pinch and distribute evenly.",
                "Season from a height so the salt spreads evenly over the surface."
            ], callouts: ["When in doubt, salt more than feels comfortable on the surface of a thick cut. Most undersalt."]),
            ContentBlock(id: "grill204_b3", type: .componentBreakdown, title: "Rubs vs Marinades", bullets: [
                "Rub: a dry mix of salt, pepper, sugar, and spices. Builds a flavorful bark and crust. Best on big cuts and BBQ.",
                "Marinade: a liquid of acid (vinegar, citrus), oil, salt, and aromatics. Adds surface flavor and helps thin/tough cuts.",
                "Marinades penetrate only a few millimeters; they flavor the surface, they do not deeply tenderize.",
                "Acid-heavy marinades over many hours can turn the surface mushy. 30 minutes to 8 hours is the safe range for most cuts.",
                "Sugar in a rub or marinade burns over high direct heat, so use it for lower-heat and indirect cooks, or add late."
            ]),
            ContentBlock(id: "grill204_b4", type: .realWorld, title: "Practical Starting Points", bullets: [
                "Steak: kosher salt and coarse black pepper. That is the classic and it is hard to beat.",
                "All-purpose BBQ rub: equal parts salt, brown sugar, paprika, plus garlic powder, onion powder, and black pepper.",
                "Quick chicken marinade: olive oil, lemon juice, garlic, salt, oregano. 1-4 hours.",
                "Never reuse marinade that touched raw meat as a sauce unless you boil it first; it carries raw juices.",
                "Pat marinated meat dry before grilling so it sears instead of steams."
            ], callouts: ["Marinade that touched raw meat must be boiled before it can be used as a sauce. Otherwise discard it."]),
            ContentBlock(id: "grill204_b5", type: .summary, title: "Lock It In", bullets: [
                "Salt early or right before; avoid the soggy 3-30 minute window.",
                "Rubs build bark on big cuts; marinades flavor the surface of thinner cuts.",
                "Marinades do not deeply tenderize and can mush the surface if too acidic or too long.",
                "Sugar burns on high heat; never reuse raw-meat marinade without boiling it."
            ])
        ],
        quiz: Quiz(id: "grill204_q", passPercent: 80, questions: [
            Question(id: "grill204_q1", type: .multipleChoice, prompt: "Which salting timing should you AVOID for a steak?", choices: ["40 minutes or more before cooking", "The 3-30 minute window before cooking", "Right before it hits the grill", "Dry brining overnight"], correctIndex: 1, explanation: "In the 3-30 minute window, salt has pulled moisture to the surface but the meat has not reabsorbed it, leaving a wet, hard-to-sear surface. Salt early or at the last second."),
            Question(id: "grill204_q2", type: .scenario, prompt: "You marinated chicken in a citrus-heavy marinade for 24 hours and the surface turned mushy and pale. What happened?", choices: ["The chicken was bad", "The acid broke down the surface over too long a soak", "You used too much salt", "The fridge was too cold"], correctIndex: 1, explanation: "Acid-heavy marinades left on too long denature and mush the surface proteins. Keep most marinades to 30 minutes to 8 hours and go lighter on acid for long soaks."),
            Question(id: "grill204_q3", prompt: "Salting and resting meat uncovered in the fridge hours ahead to season it deeply is called a ____ brine.", acceptedAnswers: ["dry", "dry-brine", "drybrine"], explanation: "A dry brine seasons the meat throughout and dries the surface for a better sear. It is one of the highest-impact, lowest-effort steps you can take."),
            Question(id: "grill204_q4", prompt: "Match each flavoring approach to its best use.", matchingPairs: [
                MatchingPair(left: "Dry rub", right: "Builds bark on big BBQ cuts"),
                MatchingPair(left: "Marinade", right: "Surface flavor for thinner cuts"),
                MatchingPair(left: "Dry brine", right: "Deep seasoning plus a drier surface"),
                MatchingPair(left: "Sugar in a rub", right: "Use for low-heat or add late to avoid burning")
            ], explanation: "Each tool has a best application. Matching the method to the cut is what makes food taste intentional."),
            Question(id: "grill204_q5", type: .multiSelect, prompt: "Which statements about marinades are true?", choices: ["They penetrate only a few millimeters", "They deeply tenderize the entire cut", "Too much acid or time can mush the surface", "Raw-meat marinade must be boiled to reuse as sauce", "Pat meat dry after marinating for a better sear"], correctIndices: [0, 2, 3, 4], explanation: "Marinades flavor the surface, not the core, and do not deeply tenderize. Excess acid mushes, raw-meat marinade must be boiled to reuse, and drying before grilling improves the sear.")
        ]),
        flashcards: [
            Flashcard(id: "grill204_f1", front: "Dry brine", back: "Salting meat and resting it uncovered in the fridge hours ahead. Seasons deeply and dries the surface for a better sear."),
            Flashcard(id: "grill204_f2", front: "Dry rub", back: "A blend of salt, sugar, and spices applied to the surface. Builds a flavorful bark on big cuts."),
            Flashcard(id: "grill204_f3", front: "Marinade", back: "A liquid of acid, oil, salt, and aromatics. Flavors the surface of thinner cuts; does not deeply tenderize."),
            Flashcard(id: "grill204_f4", front: "Salting dead zone", back: "The 3-30 minute window after salting where the surface is wet and hard to sear. Salt earlier or right before cooking.")
        ],
        tags: ["seasoning", "rubs", "marinades", "flavor"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "grill_t3_01",
        categoryId: .grilling,
        tier: 3,
        lessonNumber: 1,
        title: "Smoking Low and Slow",
        subtitle: "Temperature control, smoke, and the long game",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["grill_t2_04"],
        contentBlocks: [
            ContentBlock(id: "grill301_b1", type: .whyMatters, title: "Where Patience Becomes Flavor", bullets: [
                "Smoking transforms tough, cheap cuts into the best food off any grill.",
                "It is the deep end of grilling: hours of steady temperature, smoke management, and trust in the process.",
                "Master this and you can cook anything; it is heat control taken to its limit."
            ]),
            ContentBlock(id: "grill301_b2", type: .principles, title: "The Low-and-Slow Principle", bullets: [
                "Smoking runs at 225-275F for hours, far below grilling temps.",
                "Tough cuts are full of collagen and connective tissue that only melt into gelatin with long, gentle heat.",
                "The goal is not just safe temperature but texture; collagen renders around 195-205F internal.",
                "Indirect heat only. The meat never sits over the fire.",
                "Time is measured in hours per pound, not minutes per side."
            ]),
            ContentBlock(id: "grill301_b3", type: .howItWorks, title: "Smoke and Wood", bullets: [
                "Clean smoke is thin and blue. Thick white smoke is dirty and turns food bitter and acrid.",
                "Smoke absorbs most in the first few hours while the surface is cool and moist.",
                "Wood intensity: mesquite is strong, hickory and oak are medium-bold, fruit woods (apple, cherry) are mild and sweet.",
                "Match wood to meat: bold woods for beef, milder woods for poultry and pork.",
                "Use chunks for long smokes; they smolder steadily. Soaking chips mostly just delays ignition."
            ], callouts: ["More smoke is not better. Oversmoked food tastes like an ashtray. Aim for thin blue smoke, not a billowing white cloud."]),
            ContentBlock(id: "grill301_b4", type: .stepByStep, title: "Managing a Long Cook", bullets: [
                "Stabilize the smoker at your target temp before the meat goes on; control airflow with the vents.",
                "Use a leave-in probe thermometer so you are not opening the lid to check.",
                "Keep a water pan in the chamber to stabilize temperature and add humidity.",
                "Expect the stall: evaporative cooling parks the internal temp around 150-170F for hours. This is normal.",
                "Push through the stall, or wrap in foil/butcher paper (the Texas crutch) to power through it faster."
            ]),
            ContentBlock(id: "grill301_b5", type: .summary, title: "Lock It In", bullets: [
                "225-275F, indirect, for hours. Collagen melts around 195-205F internal.",
                "Thin blue smoke is good; thick white smoke is bitter.",
                "Match wood intensity to the meat; use chunks for steady smolder.",
                "Expect the stall around 150-170F and either ride it out or wrap to push through."
            ])
        ],
        quiz: Quiz(id: "grill301_q", passPercent: 80, questions: [
            Question(id: "grill301_q1", type: .scenario, prompt: "Three hours into smoking a brisket, the internal temperature stops climbing and sits around 160F for over an hour. What is happening?", choices: ["The smoker has failed", "You hit the stall, where evaporative cooling pauses the temp rise", "The meat is done", "Your thermometer is broken"], correctIndex: 1, explanation: "The stall is normal: moisture evaporating off the surface cools the meat as fast as the smoker heats it. Ride it out or wrap in foil or butcher paper to push through."),
            Question(id: "grill301_q2", prompt: "Tough cuts become tender when their ____ renders into gelatin around 195-205F.", acceptedAnswers: ["collagen", "connective tissue"], explanation: "Collagen and connective tissue only break down with long, gentle heat. That is why a brisket eats tough at 165F but melts at 200F."),
            Question(id: "grill301_q3", type: .multiSelect, prompt: "Which are sound low-and-slow smoking practices?", choices: ["Run the smoker at 225-275F", "Aim for thin blue smoke, not thick white", "Open the lid often to check the meat", "Use a leave-in probe thermometer", "Match wood intensity to the meat"], correctIndices: [0, 1, 3, 4], explanation: "Steady low temps, clean smoke, a leave-in probe, and matched wood are all correct. Opening the lid constantly dumps heat and stretches the cook for no benefit."),
            Question(id: "grill301_q4", prompt: "Match each wood to its smoke character.", matchingPairs: [
                MatchingPair(left: "Mesquite", right: "Strong and intense"),
                MatchingPair(left: "Hickory / oak", right: "Medium-bold, classic BBQ"),
                MatchingPair(left: "Apple / cherry", right: "Mild and sweet"),
                MatchingPair(left: "Thick white smoke", right: "Dirty smoke that tastes bitter")
            ], explanation: "Matching wood intensity to the meat, and keeping smoke clean, are core to good barbecue flavor."),
            Question(id: "grill301_q5", type: .multipleChoice, prompt: "Wrapping meat in foil or butcher paper to push through the stall is known as:", choices: ["The reverse sear", "The Texas crutch", "Dry brining", "The bend test"], correctIndex: 1, explanation: "The Texas crutch traps moisture and stops the evaporative cooling that causes the stall, finishing the cook faster while keeping the meat moist.")
        ]),
        flashcards: [
            Flashcard(id: "grill301_f1", front: "Low and slow", back: "Cooking at 225-275F over indirect heat for hours to render collagen in tough cuts into tender gelatin."),
            Flashcard(id: "grill301_f2", front: "The stall", back: "A long pause in internal temp around 150-170F caused by evaporative cooling. Ride it out or wrap to push through."),
            Flashcard(id: "grill301_f3", front: "Texas crutch", back: "Wrapping meat in foil or butcher paper to beat the stall and finish faster while retaining moisture."),
            Flashcard(id: "grill301_f4", front: "Thin blue smoke", back: "Clean, properly burning smoke that adds flavor. Thick white smoke is dirty and turns food bitter.")
        ],
        tags: ["smoking", "low-and-slow", "bbq", "advanced"]
    )

    static let lesson10 = Lesson(
        id: "grill_t3_02",
        categoryId: .grilling,
        tier: 3,
        lessonNumber: 2,
        title: "Brisket and Pork Shoulder",
        subtitle: "The two cuts that define a pitmaster",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["grill_t3_01"],
        contentBlocks: [
            ContentBlock(id: "grill302_b1", type: .whyMatters, title: "The Trophy Cuts", bullets: [
                "Brisket and pork shoulder are the proving ground of barbecue. Nail them and you have arrived.",
                "Both are large, cheap, tough cuts that reward patience and punish shortcuts.",
                "These are long-game cooks; learning to read them by feel matters more than any recipe."
            ]),
            ContentBlock(id: "grill302_b2", type: .componentBreakdown, title: "Know the Cuts", bullets: [
                "Brisket has two muscles: the lean flat and the fatty point, separated by a fat seam.",
                "A whole packer brisket runs 12-16 lbs and takes roughly 1-1.5 hours per pound at 225-250F.",
                "Pork shoulder (Boston butt) is forgiving and fatty, the best cut for your first long smoke.",
                "An 8-lb pork butt takes roughly 1.5 hours per pound; it shreds into pulled pork.",
                "Both have lots of collagen, which is exactly why low-and-slow makes them tender."
            ]),
            ContentBlock(id: "grill302_b3", type: .stepByStep, title: "The Cook, Start to Finish", bullets: [
                "Trim excess hard fat; leave about a quarter-inch fat cap for protection and basting.",
                "Apply a simple rub: salt and coarse pepper for brisket (the Texas standard), salt/pepper/paprika/brown sugar for pork.",
                "Smoke at 225-250F, fat side up or down by preference, with a leave-in probe.",
                "Wrap in butcher paper or foil after the bark sets (around 165-170F internal) to beat the stall.",
                "Pull brisket at 200-205F when a probe slides in like warm butter.",
                "Pull pork at 200-205F when the blade bone wiggles free; then shred."
            ], callouts: ["Doneness is by feel, not the clock. Probe-tender beats any target time. A brisket is done when it feels done."]),
            ContentBlock(id: "grill302_b4", type: .proTips, title: "The Details That Separate Good from Great", bullets: [
                "Rest brisket at least 30-60 minutes (longer is fine in a warm cooler); it is non-negotiable for moisture.",
                "Slice brisket against the grain, and remember the flat and point grains run in different directions.",
                "Save and skim the rendered juices to drizzle back over sliced meat.",
                "For pulled pork, mix the bark back through the shredded meat so every bite has flavor.",
                "A faux Cambro (wrapped meat in a towel-lined cooler) holds it hot and resting for hours."
            ]),
            ContentBlock(id: "grill302_b5", type: .summary, title: "Lock It In", bullets: [
                "Brisket: ~1-1.5 hr/lb at 225-250F, pull at 200-205F probe-tender, rest 30-60 min, slice against the grain.",
                "Pork shoulder: forgiving and fatty, pull at 200-205F when the bone wiggles free, then shred.",
                "Wrap after the bark sets to beat the stall.",
                "Doneness is by feel. Probe-tender beats any clock."
            ])
        ],
        quiz: Quiz(id: "grill302_q", passPercent: 80, questions: [
            Question(id: "grill302_q1", type: .scenario, prompt: "Your brisket hits 195F but a probe still meets resistance going in. What should you do?", choices: ["Pull it immediately; 195F is done", "Keep cooking until it probes tender like warm butter, around 200-205F", "Crank the heat to 350F", "Slice it now before it dries out"], correctIndex: 1, explanation: "Brisket is done by feel, not a fixed number. If the probe still resists at 195F, the collagen has not fully rendered. Wait until it slides in like warm butter, usually around 200-205F."),
            Question(id: "grill302_q2", type: .multipleChoice, prompt: "Which cut is the most forgiving choice for your first long smoke?", choices: ["Brisket flat", "Pork shoulder (Boston butt)", "Beef tenderloin", "Filet mignon"], correctIndex: 1, explanation: "Pork shoulder is fatty and full of collagen, so it stays moist and forgives timing errors. Brisket, especially the lean flat, is far less forgiving."),
            Question(id: "grill302_q3", prompt: "Brisket and pork shoulder are both done when probe-tender, roughly at ____ F internal.", acceptedAnswers: ["200-205", "200 to 205", "200", "205", "203"], explanation: "Around 200-205F the collagen has fully rendered and the meat probes tender. This is well above the safety minimum because the goal is texture, not just safety."),
            Question(id: "grill302_q4", type: .multiSelect, prompt: "Which are correct brisket and pork shoulder practices?", choices: ["Leave about a quarter-inch fat cap", "Wrap after the bark sets to beat the stall", "Pull at 165F to keep it safe and tender", "Rest brisket 30-60 minutes before slicing", "Slice brisket against the grain"], correctIndices: [0, 1, 3, 4], explanation: "A fat cap, wrapping after bark sets, a long rest, and slicing against the grain are all correct. Pulling at 165F leaves these cuts tough; they need ~200-205F for tenderness."),
            Question(id: "grill302_q5", prompt: "Holding wrapped, finished meat in a towel-lined cooler to rest and stay hot for hours is called a faux ____.", acceptedAnswers: ["cambro", "cambro hold"], explanation: "A faux Cambro (a towel-lined cooler) insulates the wrapped meat so it can rest and hold hot for hours without overcooking, a pro move for timing a cook."),
        ]),
        flashcards: [
            Flashcard(id: "grill302_f1", front: "Brisket flat vs point", back: "The flat is the lean muscle; the point is the fattier one. They are separated by a fat seam and their grains run differently."),
            Flashcard(id: "grill302_f2", front: "Pork shoulder (Boston butt)", back: "A fatty, forgiving, collagen-rich cut. The best choice for a first long smoke; shreds into pulled pork at ~200-205F."),
            Flashcard(id: "grill302_f3", front: "Probe-tender", back: "Doneness judged by feel: a probe slides in with almost no resistance, around 200-205F. The true test for brisket and pork shoulder."),
            Flashcard(id: "grill302_f4", front: "Faux Cambro", back: "A towel-lined cooler used to hold wrapped, finished meat hot and resting for hours without overcooking.")
        ],
        tags: ["brisket", "pork-shoulder", "bbq", "advanced"]
    )

    static let lesson11 = Lesson(
        id: "grill_t3_03",
        categoryId: .grilling,
        tier: 3,
        lessonNumber: 3,
        title: "Sauces, Sides, and the Full Plate",
        subtitle: "Round out the meal like you mean it",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["grill_t3_02"],
        contentBlocks: [
            ContentBlock(id: "grill303_b1", type: .whyMatters, title: "Meat Is Half the Meal", bullets: [
                "Perfect brisket next to a sad bag of chips still reads as an incomplete meal.",
                "Classic sauces and sides are what make a cookout feel generous and finished.",
                "These are quick wins that punch well above the effort they take."
            ]),
            ContentBlock(id: "grill303_b2", type: .componentBreakdown, title: "The Regional BBQ Sauces", bullets: [
                "Kansas City: thick, sweet, tomato-and-molasses based. The familiar bottled style.",
                "Carolina vinegar: thin, tangy, peppery vinegar sauce. Cuts through fatty pulled pork.",
                "South Carolina mustard (Carolina gold): yellow mustard, vinegar, sugar. Great on pork.",
                "Alabama white: mayo, vinegar, black pepper. The classic for smoked chicken.",
                "Texas often skips sauce entirely; good brisket needs only salt, pepper, and smoke."
            ], body: "Knowing the regional styles lets you match a sauce to the meat instead of dumping the same bottle on everything."),
            ContentBlock(id: "grill303_b3", type: .stepByStep, title: "Three Sides That Always Deliver", bullets: [
                "Grilled corn: husk on or off, direct heat, char lightly, then butter, salt, and lime or chili powder.",
                "Coleslaw: shredded cabbage and carrot in a tangy dressing; the acid balances rich, smoky meat.",
                "Baked beans: doctor canned beans with bacon, onion, brown sugar, and a splash of your BBQ sauce.",
                "Grill vegetables (peppers, onions, zucchini) tossed in oil and salt over direct heat for easy color.",
                "Make sides ahead so the grill stays free for the main event."
            ]),
            ContentBlock(id: "grill303_b4", type: .proTips, title: "Sauce Like a Pro", bullets: [
                "Sugary sauces burn over direct heat. Brush them on only in the last 10-20 minutes, or serve on the side.",
                "Warm sauce clings better than cold sauce straight from the fridge.",
                "Build a little acid (vinegar, citrus) into rich meals; it resets the palate between bites.",
                "Serve sauce on the side at least sometimes; let great meat speak for itself.",
                "Balance the plate: something rich, something acidic, something fresh, something starchy."
            ]),
            ContentBlock(id: "grill303_b5", type: .summary, title: "Lock It In", bullets: [
                "Match the sauce to the meat: KC sweet, Carolina vinegar for pork, Alabama white for chicken.",
                "Sugary sauce goes on late or on the side to avoid burning.",
                "Three reliable sides: grilled corn, slaw, baked beans.",
                "Balance the plate with rich, acidic, fresh, and starchy elements."
            ])
        ],
        quiz: Quiz(id: "grill303_q", passPercent: 80, questions: [
            Question(id: "grill303_q1", prompt: "Match each BBQ sauce style to its profile.", matchingPairs: [
                MatchingPair(left: "Kansas City", right: "Thick, sweet, tomato-molasses"),
                MatchingPair(left: "Carolina vinegar", right: "Thin, tangy, peppery"),
                MatchingPair(left: "Alabama white", right: "Mayo, vinegar, black pepper"),
                MatchingPair(left: "Carolina gold", right: "Mustard, vinegar, sugar")
            ], explanation: "Knowing the regional styles lets you pair a sauce to the meat instead of using one bottle for everything."),
            Question(id: "grill303_q2", type: .scenario, prompt: "You brush sweet BBQ sauce on chicken at the start of a direct-heat cook and it turns black and bitter. What is the fix?", choices: ["Use more sauce next time", "Apply the sugary sauce only in the last 10-20 minutes", "Cook hotter to burn it off faster", "Switch to a thicker sauce"], correctIndex: 1, explanation: "Sugar burns over direct heat. Apply sweet sauces near the end so they set and glaze instead of scorching, or serve them on the side."),
            Question(id: "grill303_q3", type: .multipleChoice, prompt: "Which sauce is the classic pairing for smoked chicken?", choices: ["Kansas City", "Carolina vinegar", "Alabama white", "Carolina gold mustard"], correctIndex: 2, explanation: "Alabama white sauce, made from mayo, vinegar, and black pepper, is the traditional partner for smoked chicken."),
            Question(id: "grill303_q4", prompt: "Adding an acidic element like ____ to a rich, smoky meal resets the palate between bites.", acceptedAnswers: ["vinegar", "acid", "citrus", "lemon", "lime"], explanation: "Acid cuts richness. That is why vinegary slaw and tangy sauces pair so well with fatty smoked meat."),
            Question(id: "grill303_q5", type: .multiSelect, prompt: "Which are smart cookout side and sauce practices?", choices: ["Make sides ahead so the grill stays free", "Brush sugary sauce on at the very start of a hot cook", "Pair acidic slaw with rich smoked meat", "Warm sauce so it clings better", "Balance the plate with rich, acidic, fresh, and starchy items"], correctIndices: [0, 2, 3, 4], explanation: "Prepping ahead, pairing acid with rich meat, warming sauce, and balancing the plate are all sound. Sugary sauce at the start of a hot cook just burns."),
        ]),
        flashcards: [
            Flashcard(id: "grill303_f1", front: "Kansas City sauce", back: "Thick, sweet, tomato-and-molasses BBQ sauce. The familiar bottled style."),
            Flashcard(id: "grill303_f2", front: "Carolina vinegar sauce", back: "Thin, tangy, peppery vinegar sauce that cuts through fatty pulled pork."),
            Flashcard(id: "grill303_f3", front: "Alabama white sauce", back: "A mayo, vinegar, and black pepper sauce; the classic pairing for smoked chicken."),
            Flashcard(id: "grill303_f4", front: "Balancing the plate", back: "Combining rich, acidic, fresh, and starchy elements so the meal feels complete and the palate stays engaged.")
        ],
        tags: ["sauces", "sides", "bbq", "hosting"]
    )

    static let lesson12 = Lesson(
        id: "grill_t3_04",
        categoryId: .grilling,
        tier: 3,
        lessonNumber: 4,
        title: "Troubleshooting and Hosting a Cookout",
        subtitle: "Fix problems on the fly and feed a crowd like a pro",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["grill_t3_03"],
        contentBlocks: [
            ContentBlock(id: "grill304_b1", type: .whyMatters, title: "Composure Is the Final Skill", bullets: [
                "Grilling for yourself is practice. Grilling for a crowd is the performance.",
                "The expert is not the one who never has problems; it is the one who fixes them calmly.",
                "Hosting blends fire management, timing, food safety, and quiet leadership under pressure."
            ]),
            ContentBlock(id: "grill304_b2", type: .failureModes, title: "Troubleshooting on the Fly", bullets: [
                "Flare-ups: caused by fat dripping onto flames. Move food to the cool zone and close the lid to starve the fire of oxygen. Never use water on a grease fire.",
                "Dry meat: usually overcooked or under-rested. Next time pull earlier, rest longer, and consider a brine.",
                "Uneven cook: hot spots, crowded grate, or one-zone fire. Rotate food and build a true two-zone setup.",
                "Stuck food: grate was not hot, not oiled, or you moved it too soon. Let it release on its own; it will free when seared.",
                "Fire too cool: open the vents and give it air. Fire too hot: choke the vents and spread the coals."
            ], callouts: ["For a grease fire, close the lid and vents to smother it, or use baking soda. Water spreads burning grease and makes it worse."]),
            ContentBlock(id: "grill304_b3", type: .stepByStep, title: "Planning a Cookout Backwards", bullets: [
                "Start from serving time and work backwards. The longest cook starts first.",
                "Rough timing: ribs/shoulder hours ahead, chicken 30-40 minutes before, burgers/dogs 15 minutes before, steaks last.",
                "Prep everything before guests arrive: patties formed, meat seasoned, sides made, grill cleaned and lit.",
                "Keep raw meat in a cooler by the grill and a separate clean platter for finished food.",
                "Delegate drinks and setup so you can stay on the fire."
            ]),
            ContentBlock(id: "grill304_b4", type: .realWorld, title: "Hosting Under Pressure", bullets: [
                "Guests arrive and nothing is prepped? Simplify the menu to what you can execute well in the time you have.",
                "Hold finished food hot and safe: a low indirect zone, a warm oven, or a foil-tented sheet pan.",
                "Buy or borrow more fuel than you think you need; running out mid-cook kills the meal.",
                "Cook a little extra; second helpings are a compliment and leftovers are a gift.",
                "Stay calm and visible. A relaxed host makes relaxed guests."
            ], callouts: ["This is general guidance, not a guarantee. When food has sat out too long or you are unsure if something is safe, throw it out. Nobody remembers the burger they did not eat; everybody remembers getting sick."]),
            ContentBlock(id: "grill304_b5", type: .summary, title: "Lock It In", bullets: [
                "Flare-up: move food off, close the lid, never use water on grease.",
                "Dry meat means overcooked or under-rested; pull earlier and rest longer.",
                "Plan backwards from serving time; longest cook first, steaks last.",
                "Prep ahead, separate raw and cooked, keep extra fuel, and stay calm."
            ])
        ],
        quiz: Quiz(id: "grill304_q", passPercent: 80, questions: [
            Question(id: "grill304_q1", type: .scenario, prompt: "Fat dripping from your chicken triggers a flare-up and flames are licking the food. What is the correct response?", choices: ["Pour water on the flames", "Move the food to the cool zone and close the lid to starve the fire of oxygen", "Spray it with lighter fluid to control it", "Crank all the burners to high"], correctIndex: 1, explanation: "Move the food off the flames and close the lid to cut off oxygen. Water on a grease fire spreads burning fat and makes it dangerous."),
            Question(id: "grill304_q2", type: .multipleChoice, prompt: "Your guests say the chicken is dry. The most likely causes are:", choices: ["Too much smoke", "Overcooked or not rested long enough", "The grate was too clean", "Too much salt"], correctIndex: 1, explanation: "Dry meat is almost always overcooked, under-rested, or both. Pull earlier using a thermometer, rest it properly, and consider a brine for lean cuts."),
            Question(id: "grill304_q3", prompt: "Match each cookout problem to its fix.", matchingPairs: [
                MatchingPair(left: "Flare-up", right: "Move food to the cool zone, close the lid"),
                MatchingPair(left: "Uneven cook", right: "Build a two-zone fire and rotate food"),
                MatchingPair(left: "Stuck food", right: "Preheat and oil the grate; let it release"),
                MatchingPair(left: "Fire too cool", right: "Open the vents for more airflow")
            ], explanation: "Most grill problems have a calm, specific fix. Knowing them keeps a small issue from becoming a ruined meal."),
            Question(id: "grill304_q4", type: .multiSelect, prompt: "Which are essential cookout hosting practices?", choices: ["Prep everything before guests arrive", "Start every protein at the same time", "Keep a clean platter for finished food", "Work backwards from serving time", "Have extra fuel on hand"], correctIndices: [0, 2, 3, 4], explanation: "Advance prep, separate platters, backwards planning, and extra fuel are all essential. Starting every protein together is the biggest hosting mistake; they need different cook times."),
            Question(id: "grill304_q5", prompt: "Of all the proteins at a cookout, ____ should go on the grill last because they cook fast and should not wait.", acceptedAnswers: ["steaks", "steak", "the steaks"], explanation: "Steaks cook quickly and are best served right off the grill. Long-cook items like ribs go on first; steaks are the finale."),
        ]),
        flashcards: [
            Flashcard(id: "grill304_f1", front: "Flare-up fix", back: "Move food to the cool zone and close the lid to starve the flames of oxygen. Never use water on a grease fire."),
            Flashcard(id: "grill304_f2", front: "Dry meat causes", back: "Overcooked or under-rested. Pull earlier with a thermometer, rest longer, and brine lean cuts."),
            Flashcard(id: "grill304_f3", front: "Backwards planning", back: "Start from serving time and work backwards so the longest cook starts first and everything finishes together."),
            Flashcard(id: "grill304_f4", front: "Cookout protein order", back: "Long cooks (ribs, shoulder) first, chicken next, burgers and dogs near the end, steaks last.")
        ],
        tags: ["troubleshooting", "hosting", "cookout", "advanced"]
    )
}
