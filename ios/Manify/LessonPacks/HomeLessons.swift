import Foundation

enum HomeLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12,
        lesson13, lesson14, lesson15, lesson16
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "home_t1_01",
        categoryId: .home,
        tier: 1,
        lessonNumber: 1,
        title: "The Electrical Panel & Power Basics",
        subtitle: "The command center of your home's power",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "home101_b1", type: .whyMatters, title: "Why You Need to Know Your Panel", bullets: [
                "The electrical panel (breaker box) is the single most important control point in your home's power system.",
                "Knowing how to read it, kill power, and reset a breaker safely prevents fires and saves expensive service calls.",
                "In a real emergency, fumbling for an unlabeled breaker costs you minutes you may not have."
            ], body: "Every adult who lives in a home should be able to find the panel in the dark and shut off any circuit on demand."),
            ContentBlock(id: "home101_b2", type: .componentBreakdown, title: "What's Inside the Box", bullets: [
                "Main Breaker - the master switch that kills all power. Typically rated 100-200 amps in modern homes.",
                "Branch Breakers - individual circuits. 15A for lighting, 20A for outlets, 30-50A for large appliances like ranges and dryers.",
                "Bus Bars - the metal strips that carry power from the main breaker to every branch breaker.",
                "Neutral Bar - where the white neutral (return) wires land.",
                "Ground Bar - where the bare or green ground (safety) wires land."
            ]),
            ContentBlock(id: "home101_b3", type: .howItWorks, title: "How a Breaker Protects You", bullets: [
                "A breaker is an automatic switch that trips (shuts off) when current exceeds its rating.",
                "Overloads (too many devices on one circuit) and short circuits (hot touching neutral/ground) both trip it.",
                "Tripping is the system doing its job - it stops a wire from overheating and starting a fire.",
                "To reset: push the tripped handle fully to OFF first, then back to ON. Half-resetting does nothing."
            ]),
            ContentBlock(id: "home101_b4", type: .ownerActions, title: "Set Yourself Up Now", bullets: [
                "Label every breaker - map which circuit controls each room and major appliance.",
                "Keep 3 feet of clear space in front of the panel at all times - code requires it for a reason.",
                "Never use a breaker as a routine on/off switch; they wear out from overuse.",
                "If a breaker trips repeatedly, do NOT keep resetting it - find the cause."
            ]),
            ContentBlock(id: "home101_b5", type: .safety, title: "Danger Signs - Stop and Call a Pro", bullets: [
                "Burning smell, scorch marks, or melted plastic at the panel.",
                "A panel that is warm or hot to the touch.",
                "Buzzing, crackling, or sizzling sounds from inside the box.",
                "A Federal Pacific (Stab-Lok) or Zinsco panel - both are documented fire hazards that should be replaced."
            ], callouts: ["This is education, not a license to work inside a live panel. Opening the panel cover exposes lethal voltage. Hire a licensed electrician for anything beyond resetting a breaker."]),
            ContentBlock(id: "home101_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Know your main breaker, your branch circuits, and how to reset one correctly.",
                "Label everything and keep the panel clear.",
                "A repeatedly tripping breaker is a message, not an annoyance - never ignore it."
            ])
        ],
        quiz: Quiz(id: "home101_q", passPercent: 80, questions: [
            Question(id: "home101_q1", type: .scenario, prompt: "You smell burning near your electrical panel. Your immediate action should be:", choices: ["Reset all the breakers to find the bad one", "Open the panel cover and inspect the wiring", "Turn off the main breaker and call a licensed electrician", "Spray the panel with water to cool it"], correctIndex: 2, explanation: "A burning smell at the panel is a fire risk. Kill all power at the main breaker and get a licensed electrician - never open the live panel or apply water."),
            Question(id: "home101_q2", prompt: "Match each panel component to its job.", matchingPairs: [
                MatchingPair(left: "Main Breaker", right: "Master switch that kills all power"),
                MatchingPair(left: "Branch Breaker", right: "Protects one individual circuit"),
                MatchingPair(left: "Bus Bar", right: "Carries power to every breaker"),
                MatchingPair(left: "Ground Bar", right: "Lands the safety ground wires")
            ], explanation: "Each part has a distinct role. Understanding them lets you safely read and manage your panel."),
            Question(id: "home101_q3", prompt: "To reset a tripped breaker, push the handle fully to ____ first, then back to ON.", acceptedAnswers: ["off", "the off position"], explanation: "A tripped breaker rests in a middle position. You must push it all the way to OFF before it will reset to ON."),
            Question(id: "home101_q4", type: .multiSelect, prompt: "Which of these are real warning signs that require a professional?", choices: ["Burning smell from the panel", "Scorch marks on a breaker", "One breaker trips during a lightning storm", "Panel is warm to the touch", "You have a Federal Pacific panel"], correctIndices: [0, 1, 3, 4], explanation: "Burning smell, scorch marks, a warm panel, and a Federal Pacific panel are all serious. A single trip during a storm is usually normal."),
            Question(id: "home101_q5", prompt: "Typical residential main breaker capacity is:", choices: ["50-75 amps", "100-200 amps", "300-400 amps", "500+ amps"], correctIndex: 1, explanation: "Most modern homes have a 100-200 amp main breaker. Older homes may have 60-100A, which can be undersized for today's loads.")
        ]),
        flashcards: [
            Flashcard(id: "home101_f1", front: "Main Breaker", back: "The master switch in the panel that cuts all power to the home - typically rated 100-200 amps"),
            Flashcard(id: "home101_f2", front: "Branch Circuit", back: "An individual circuit protected by its own breaker, serving specific rooms or appliances"),
            Flashcard(id: "home101_f3", front: "Why a Breaker Trips", back: "It automatically shuts off when current exceeds its rating - from an overload or short circuit - to prevent wires from overheating"),
            Flashcard(id: "home101_f4", front: "Federal Pacific Panel", back: "A panel brand (Stab-Lok breakers) known to fail to trip and cause fires - should be replaced if found")
        ],
        tags: ["electrical", "panel", "safety"]
    )

    static let lesson2 = Lesson(
        id: "home_t1_02",
        categoryId: .home,
        tier: 1,
        lessonNumber: 2,
        title: "Water Main & Plumbing Basics",
        subtitle: "Where water comes in and how to stop it",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["home_t1_01"],
        contentBlocks: [
            ContentBlock(id: "home102_b1", type: .whyMatters, title: "The Skill That Prevents a Flood", bullets: [
                "A burst supply line can dump hundreds of gallons an hour into your home.",
                "The difference between a mop-up and a five-figure insurance claim is often 60 seconds at the shutoff valve.",
                "Every adult in the house should know where the main shutoff is and how to close it - tonight."
            ]),
            ContentBlock(id: "home102_b2", type: .systemOverview, title: "Two Systems: Supply and Drain", bullets: [
                "Supply side - water arrives under pressure (typically 40-80 PSI), runs to every fixture, and to the water heater for the hot side.",
                "Drain side - wastewater leaves by gravity through sloped pipes to the sewer or septic tank.",
                "These never mix in a healthy system; cross-contamination is what backflow prevention guards against.",
                "Supply lines are usually smaller diameter (1/2 to 3/4 inch); drain lines are larger (1.5 to 4 inch)."
            ]),
            ContentBlock(id: "home102_b3", type: .stepByStep, title: "Finding and Using the Main Shutoff", bullets: [
                "Locate the main shutoff where the supply line enters the home - basement, crawlspace, garage, or an exterior wall near the meter.",
                "Two valve types: a gate valve (round wheel, turn clockwise many times) or a ball valve (lever, turn a quarter turn).",
                "Ball valve closed = handle is perpendicular (90 degrees) to the pipe.",
                "There is also a street-side curb stop at the meter, usually requiring a special key - this is the utility's valve.",
                "Exercise the valve once a year by closing and reopening it so it does not seize."
            ], callouts: ["If you only learn one thing from this lesson: go find your main shutoff right now and confirm you can turn it."]),
            ContentBlock(id: "home102_b4", type: .keyTerms, title: "Plumbing Vocabulary You Need", bullets: [
                "Fixture shutoff - small valve under each sink/toilet that isolates one fixture without killing the whole house.",
                "P-trap - the curved pipe under a sink that holds water to block sewer gas.",
                "Vent stack - the pipe through your roof that lets air into the drains so they flow properly.",
                "Hose bib (sillcock) - the outdoor faucet; the part most likely to freeze and burst in winter."
            ]),
            ContentBlock(id: "home102_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Supply runs under pressure; drains run by gravity. Know both.",
                "Find your main shutoff and your individual fixture shutoffs before you ever need them.",
                "A quarter-turn ball valve is fastest in an emergency - perpendicular handle means off."
            ])
        ],
        quiz: Quiz(id: "home102_q", passPercent: 80, questions: [
            Question(id: "home102_q1", type: .scenario, prompt: "You walk into the basement and a supply line under the ceiling has burst and is spraying water. Your first move is to:", choices: ["Grab towels and start mopping", "Call a plumber and wait for them to arrive", "Close the main water shutoff valve", "Turn off the water heater"], correctIndex: 2, explanation: "Stop the source first. Closing the main shutoff halts all incoming water immediately - then you call the plumber and clean up."),
            Question(id: "home102_q2", prompt: "A ball valve is in the CLOSED position when the lever is ____ to the pipe.", acceptedAnswers: ["perpendicular", "at 90 degrees", "90 degrees", "crosswise", "across"], explanation: "On a ball valve, a lever parallel to the pipe is open and perpendicular (90 degrees) is closed - a fast, unambiguous quarter-turn."),
            Question(id: "home102_q3", prompt: "Match each plumbing term to its definition.", matchingPairs: [
                MatchingPair(left: "Main Shutoff", right: "Stops all water entering the home"),
                MatchingPair(left: "Fixture Shutoff", right: "Isolates a single sink or toilet"),
                MatchingPair(left: "P-Trap", right: "Holds water to block sewer gas"),
                MatchingPair(left: "Hose Bib", right: "Outdoor faucet prone to freezing")
            ], explanation: "Knowing this vocabulary lets you isolate a problem to one fixture instead of shutting down the whole house."),
            Question(id: "home102_q4", type: .multiSelect, prompt: "Which statements about home plumbing are true?", choices: ["Supply water is under pressure", "Drains move water by gravity", "Drain pipes are smaller than supply pipes", "A vent stack lets air into drains", "Closing a fixture shutoff stops water to that fixture only"], correctIndices: [0, 1, 3, 4], explanation: "Supply is pressurized, drains are gravity-fed and larger than supply lines, vents allow proper flow, and fixture shutoffs isolate one fixture."),
            Question(id: "home102_q5", type: .multipleChoice, prompt: "Typical residential water pressure should fall in the range of:", choices: ["10-30 PSI", "40-80 PSI", "100-150 PSI", "200+ PSI"], correctIndex: 1, explanation: "Healthy residential pressure is 40-80 PSI. Above 80 PSI stresses fixtures and a pressure regulator should bring it down.")
        ]),
        flashcards: [
            Flashcard(id: "home102_f1", front: "Main Water Shutoff", back: "The valve that stops all water entering the home - usually where the supply line enters, near the meter"),
            Flashcard(id: "home102_f2", front: "Ball Valve vs Gate Valve", back: "Ball valve = quarter-turn lever (perpendicular is off). Gate valve = round wheel turned clockwise many times to close"),
            Flashcard(id: "home102_f3", front: "Fixture Shutoff", back: "A small valve under a sink or behind a toilet that isolates one fixture without affecting the rest of the house"),
            Flashcard(id: "home102_f4", front: "Vent Stack", back: "The pipe through the roof that admits air to the drain system, preventing vacuum locks and gurgling drains")
        ],
        tags: ["plumbing", "water main", "shutoff"]
    )

    static let lesson3 = Lesson(
        id: "home_t1_03",
        categoryId: .home,
        tier: 1,
        lessonNumber: 3,
        title: "HVAC Basics",
        subtitle: "Heating and cooling, demystified",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["home_t1_02"],
        contentBlocks: [
            ContentBlock(id: "home103_b1", type: .whyMatters, title: "Why HVAC Knowledge Pays Off", bullets: [
                "HVAC is typically the largest single energy expense in a home.",
                "Knowing the basics lets you maintain it, extend its life, and recognize when a contractor is overselling.",
                "Most HVAC service calls trace back to a problem the owner could have prevented or solved for free."
            ]),
            ContentBlock(id: "home103_b2", type: .systemOverview, title: "The Three Functions", bullets: [
                "Heating - a furnace burns gas (or uses electric heat) and a blower pushes warm air through ducts; a boiler heats water for radiators.",
                "Ventilation - moving and exchanging air, including fresh-air intake and exhaust.",
                "Air Conditioning - moving heat OUT of the house using refrigerant, not creating cold.",
                "A heat pump does both heating and cooling by reversing the refrigerant flow."
            ]),
            ContentBlock(id: "home103_b3", type: .howItWorks, title: "How AC Actually Works", bullets: [
                "AC does not make cold air - it removes heat. Cold is just the absence of heat.",
                "Refrigerant absorbs indoor heat at the evaporator coil (inside), turning from liquid to gas.",
                "The compressor (outdoor unit) pressurizes that gas, and the condenser coil dumps the heat outside.",
                "The same closed loop repeats continuously - this is the refrigeration cycle.",
                "A furnace blower and AC often share the same ductwork and air handler."
            ]),
            ContentBlock(id: "home103_b4", type: .ownerActions, title: "What You Should Be Doing", bullets: [
                "Replace air filters every 1-3 months - a clogged filter starves the system of airflow and is the #1 preventable failure.",
                "Keep the outdoor condenser unit clear - 2 feet of clearance, no leaves, grass clippings, or shrubs against it.",
                "Get professional service twice a year: spring for cooling, fall for heating.",
                "Do not close more than about 20% of your vents - it raises duct pressure and strains the blower."
            ]),
            ContentBlock(id: "home103_b5", type: .commonMistakes, title: "Mistakes That Cost You", bullets: [
                "Cranking the thermostat way down does NOT cool faster - it just runs longer and risks freezing the coil.",
                "Skipping filter changes to save a few dollars, then paying hundreds for a blower or coil repair.",
                "Closing vents in unused rooms thinking it saves money - modern systems are balanced and this backfires.",
                "Ignoring strange smells or sounds until the unit dies in a heat wave."
            ]),
            ContentBlock(id: "home103_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Furnaces heat air, boilers heat water, AC and heat pumps move heat.",
                "Filter replacement is the cheapest, highest-impact thing you can do.",
                "Two professional tune-ups a year buys you years of equipment life."
            ])
        ],
        quiz: Quiz(id: "home103_q", passPercent: 80, questions: [
            Question(id: "home103_q1", prompt: "Match each HVAC component or system to how it works.", matchingPairs: [
                MatchingPair(left: "Furnace", right: "Burns gas or uses electric heat to warm air"),
                MatchingPair(left: "Heat Pump", right: "Moves heat; reverses to both heat and cool"),
                MatchingPair(left: "Evaporator Coil", right: "Absorbs indoor heat into the refrigerant"),
                MatchingPair(left: "Condenser", right: "Releases absorbed heat to the outdoors")
            ], explanation: "Heating creates or moves heat in; cooling moves heat out. Each component has a defined role in that flow."),
            Question(id: "home103_q2", type: .scenario, prompt: "Your AC runs but the air is barely cool. Before calling anyone, the first thing to check is:", choices: ["The refrigerant charge", "The compressor", "Whether the air filter is clogged", "The thermostat wiring"], correctIndex: 2, explanation: "A clogged filter is the most common and cheapest cause of weak cooling. Check it first - it takes 30 seconds and costs nothing."),
            Question(id: "home103_q3", prompt: "An air conditioner does not create cold - it removes ____ from the house.", acceptedAnswers: ["heat"], explanation: "Cold is the absence of heat. AC works by absorbing indoor heat into refrigerant and dumping it outside via the condenser."),
            Question(id: "home103_q4", type: .multiSelect, prompt: "Which of these are genuine owner maintenance tasks (not jobs for a licensed tech)?", choices: ["Replace air filters every 1-3 months", "Recharge the refrigerant yourself", "Keep the outdoor unit clear of debris", "Schedule a tune-up twice a year", "Open or close every vent to fine-tune cooling"], correctIndices: [0, 2, 3], explanation: "Filter changes, clearing the condenser, and scheduling service are owner tasks. Refrigerant requires a licensed tech, and over-restricting vents strains the system."),
            Question(id: "home103_q5", type: .multipleChoice, prompt: "How often should a typical HVAC air filter be replaced?", choices: ["Once a year", "Every 1-3 months", "Only when it tears", "Every 5 years"], correctIndex: 1, explanation: "Every 1-3 months, depending on filter type, pets, and dust. It is the single highest-impact maintenance habit you can build.")
        ]),
        flashcards: [
            Flashcard(id: "home103_f1", front: "Refrigeration Cycle", back: "The closed loop where refrigerant absorbs heat indoors (evaporator), is compressed, then releases it outdoors (condenser)"),
            Flashcard(id: "home103_f2", front: "Heat Pump", back: "An HVAC unit that moves heat rather than generating it, reversing flow to both heat and cool a home efficiently"),
            Flashcard(id: "home103_f3", front: "Evaporator vs Condenser Coil", back: "Evaporator (indoors) absorbs heat from your air; condenser (outdoors) releases that heat to the outside"),
            Flashcard(id: "home103_f4", front: "SEER Rating", back: "Seasonal Energy Efficiency Ratio - a higher number means more efficient cooling and lower running cost")
        ],
        tags: ["hvac", "heating", "cooling"]
    )

    static let lesson4 = Lesson(
        id: "home_t1_04",
        categoryId: .home,
        tier: 1,
        lessonNumber: 4,
        title: "How a House Works as a System",
        subtitle: "The major systems and how they connect",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["home_t1_03"],
        contentBlocks: [
            ContentBlock(id: "home104_b1", type: .whyMatters, title: "Your Home Is a Machine", bullets: [
                "A house is not a static box - it is a set of interconnected mechanical and structural systems working together.",
                "Owners who understand the system diagnose faster, panic less, and spend less on contractors.",
                "A failure in one system can cascade into others - a small roof leak can ruin wiring, insulation, and framing."
            ]),
            ContentBlock(id: "home104_b2", type: .systemOverview, title: "The Six Core Systems", bullets: [
                "Structural - foundation, framing, and roof. Holds everything up and keeps weather out.",
                "Plumbing - supply lines bring water in; drain-waste-vent lines take it out.",
                "Electrical - panel, circuits, outlets, and switches power everything.",
                "HVAC - heating, ventilation, and air conditioning control the climate.",
                "Building Envelope - insulation, windows, doors, and siding keep conditioned air in and weather out.",
                "Appliances & Fixtures - water heater, range, dryer, sump pump, and the rest of the working hardware."
            ]),
            ContentBlock(id: "home104_b3", type: .howItWorks, title: "How the Systems Depend on Each Other", bullets: [
                "Electrical powers HVAC equipment - furnace blowers, AC compressors, and thermostats all need power.",
                "Plumbing and HVAC share infrastructure - the water heater touches both gas/electrical and supply lines.",
                "The building envelope decides how hard HVAC has to work - poor insulation means higher bills.",
                "Structural integrity protects every other system from water intrusion and damage."
            ]),
            ContentBlock(id: "home104_b4", type: .ownerActions, title: "Build Your Mental Map", bullets: [
                "Know the location of: main water shutoff, electrical panel, gas shutoff, and water heater.",
                "Walk your home quarterly - look for leaks, listen for unusual sounds, glance at the roofline.",
                "Keep a simple maintenance calendar: filters, gutters, detectors, and HVAC service.",
                "Build a small homeowner binder - appliance ages, model numbers, and contractor contacts."
            ]),
            ContentBlock(id: "home104_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Six systems: structural, plumbing, electrical, HVAC, envelope, and appliances.",
                "They interact constantly - one failure can cascade into several.",
                "Knowing the system means knowing what to check, when to act, and when to call a pro."
            ])
        ],
        quiz: Quiz(id: "home104_q", passPercent: 80, questions: [
            Question(id: "home104_q1", prompt: "Match each home system to what it does.", matchingPairs: [
                MatchingPair(left: "Structural", right: "Foundation, framing, and roof"),
                MatchingPair(left: "Plumbing", right: "Water supply and drainage"),
                MatchingPair(left: "HVAC", right: "Heating, cooling, and ventilation"),
                MatchingPair(left: "Building Envelope", right: "Insulation, windows, and weatherproofing")
            ], explanation: "Each core system has a clear function. Together they keep the home structurally sound, comfortable, and safe."),
            Question(id: "home104_q2", type: .scenario, prompt: "You hear water running but no faucet is on and no appliance is filling. Your first action is to:", choices: ["Call a plumber and wait", "Ignore it overnight to see if it stops", "Locate and check the main water shutoff and look for a leak", "Shut off the electricity"], correctIndex: 2, explanation: "Running water with everything off suggests a hidden leak. Head to the main shutoff and investigate - this is exactly why you mapped it."),
            Question(id: "home104_q3", prompt: "A failure in one home system can ____ into others.", acceptedAnswers: ["cascade", "spread", "flow", "carry over"], explanation: "Systems are interconnected. A roof leak alone can damage wiring, insulation, drywall, and framing - one failure becomes many."),
            Question(id: "home104_q4", type: .multiSelect, prompt: "Which of these belong to the six core home systems?", choices: ["Structural", "Landscaping", "Electrical", "HVAC", "Decorative artwork", "Building Envelope"], correctIndices: [0, 2, 3, 5], explanation: "Structural, electrical, HVAC, and the building envelope are core systems (along with plumbing and appliances). Landscaping and decor are not."),
            Question(id: "home104_q5", type: .multipleChoice, prompt: "Which is the BEST description of why understanding your home as a system matters?", choices: ["It impresses your neighbors", "It lets you diagnose faster, panic less, and spend less on pros", "It is required by law", "It increases the home's square footage"], correctIndex: 1, explanation: "System literacy is practical: you catch problems early, react calmly, and only pay for the help you actually need.")
        ]),
        flashcards: [
            Flashcard(id: "home104_f1", front: "Building Envelope", back: "The barrier between inside and outside: insulation, windows, doors, siding, and roof - determines energy efficiency"),
            Flashcard(id: "home104_f2", front: "Cascade Failure", back: "When a problem in one home system damages others - e.g., a roof leak ruining wiring, insulation, and framing"),
            Flashcard(id: "home104_f3", front: "Four Things to Locate First", back: "Main water shutoff, electrical panel, gas shutoff, and water heater - know all four before you need them"),
            Flashcard(id: "home104_f4", front: "Drain-Waste-Vent (DWV)", back: "The plumbing subsystem that removes wastewater by gravity and vents sewer gas out through the roof")
        ],
        tags: ["systems", "overview", "basics"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "home_t2_01",
        categoryId: .home,
        tier: 2,
        lessonNumber: 1,
        title: "Fixing a Clogged Drain",
        subtitle: "Clear it yourself without wrecking the pipes",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["home_t1_04"],
        contentBlocks: [
            ContentBlock(id: "home201_b1", type: .whyMatters, title: "The Most Common Plumbing Call", bullets: [
                "A slow or clogged drain is the #1 plumbing problem and most cases are fixable in minutes without a plumber.",
                "Doing it right protects your pipes; doing it wrong can crack them or splash caustic chemicals on you.",
                "Knowing the order of escalation - from plunger to snake - saves money and frustration."
            ]),
            ContentBlock(id: "home201_b2", type: .stepByStep, title: "The Escalation Ladder", bullets: [
                "Step 1: Boiling water (for grease in metal pipes only - never on PVC, which can soften).",
                "Step 2: Plunger - seal the overflow opening first, then plunge with steady force for 20-30 seconds.",
                "Step 3: Remove and clean the P-trap under the sink - put a bucket below it; most clogs hide here.",
                "Step 4: Drain snake (auger) - feed it past the trap into the branch line to break up the clog.",
                "Step 5: Still blocked after all of the above? The clog is deeper - call a plumber with a powered auger or camera."
            ], callouts: ["Use a flange plunger (the kind with the fold-out cup) for toilets and a cup plunger for flat sink/tub drains - they are not interchangeable."]),
            ContentBlock(id: "home201_b3", type: .commonMistakes, title: "What NOT to Do", bullets: [
                "Do not reach for chemical drain cleaner first - it is caustic, can damage older pipes, and makes later snaking dangerous.",
                "Never mix drain chemicals - it can release toxic gas.",
                "Do not plunge a sink right after pouring in chemicals - splashback can burn you.",
                "Do not force a snake hard against a fitting - you can puncture the pipe."
            ]),
            ContentBlock(id: "home201_b4", type: .proTips, title: "Pro Tips", bullets: [
                "Block the overflow hole (sinks/tubs) with a wet rag before plunging - it forces pressure down the drain instead of out the overflow.",
                "For a double sink, plug the second drain so plunger pressure does not escape sideways.",
                "Pull hair out with a plastic zip-strip tool - cheap, disposable, and clears most bathroom clogs.",
                "Run hot water for a minute after clearing to flush loosened debris all the way out."
            ]),
            ContentBlock(id: "home201_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Escalate in order: hot water, plunger, P-trap, snake, then a pro.",
                "Skip the chemicals - mechanical clearing is safer and more effective.",
                "Most clogs are hair and grease sitting right in the P-trap."
            ])
        ],
        quiz: Quiz(id: "home201_q", passPercent: 80, questions: [
            Question(id: "home201_q1", prompt: "Put the drain-clearing escalation in the correct order.", matchingPairs: [
                MatchingPair(left: "First", right: "Try hot water (metal pipes) then a plunger"),
                MatchingPair(left: "Second", right: "Remove and clean the P-trap"),
                MatchingPair(left: "Third", right: "Run a drain snake into the branch line"),
                MatchingPair(left: "Last", right: "Call a plumber with a powered auger")
            ], explanation: "Escalate from gentlest to most aggressive. Most clogs clear at the plunger or P-trap stage."),
            Question(id: "home201_q2", type: .scenario, prompt: "Your bathroom sink drains slowly. You want to plunge it. What should you do first for the plunger to work?", choices: ["Pour in chemical drain cleaner", "Block the overflow opening with a wet rag", "Remove the faucet handle", "Turn off the water main"], correctIndex: 1, explanation: "Blocking the overflow hole forces the plunger's pressure down the drain instead of escaping out the overflow - dramatically more effective."),
            Question(id: "home201_q3", prompt: "Most sink clogs are found in the ____ directly under the basin.", acceptedAnswers: ["p-trap", "ptrap", "p trap", "trap"], explanation: "The P-trap's curve catches hair, grease, and debris. Removing and cleaning it solves a large share of sink clogs."),
            Question(id: "home201_q4", type: .multiSelect, prompt: "Which are genuine mistakes when clearing a drain?", choices: ["Reaching for chemical cleaner first", "Mixing two drain chemicals together", "Plunging right after adding chemicals", "Cleaning the P-trap into a bucket", "Forcing a snake hard against a fitting"], correctIndices: [0, 1, 2, 4], explanation: "Chemicals first, mixing chemicals, plunging over chemicals, and forcing a snake are all mistakes. Cleaning the P-trap into a bucket is correct technique."),
            Question(id: "home201_q5", type: .multipleChoice, prompt: "Why should you avoid pouring boiling water down a PVC drain line?", choices: ["It is too expensive", "Boiling water can soften or deform PVC", "It will not dissolve grease", "It freezes the trap"], correctIndex: 1, explanation: "PVC can soften near boiling temperatures. Use very hot tap water on plastic pipes; reserve boiling water for metal lines.")
        ]),
        flashcards: [
            Flashcard(id: "home201_f1", front: "Overflow Opening", back: "The small hole near the top of a sink/tub - block it with a wet rag before plunging so pressure goes down the drain"),
            Flashcard(id: "home201_f2", front: "Drain Snake (Auger)", back: "A flexible coil fed into a drain to physically break up or pull out a clog past the P-trap"),
            Flashcard(id: "home201_f3", front: "Why Skip Chemical Cleaners", back: "They are caustic, can damage older pipes, and make later mechanical snaking hazardous from splashback"),
            Flashcard(id: "home201_f4", front: "Flange vs Cup Plunger", back: "Flange (fold-out cup) seals a toilet; cup (flat) seals a sink or tub - using the wrong one breaks the seal")
        ],
        tags: ["plumbing", "drain", "repair"]
    )

    static let lesson6 = Lesson(
        id: "home_t2_02",
        categoryId: .home,
        tier: 2,
        lessonNumber: 2,
        title: "The Running Toilet & Tripped Breaker",
        subtitle: "Two five-minute fixes every owner should know",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["home_t2_01"],
        contentBlocks: [
            ContentBlock(id: "home202_b1", type: .whyMatters, title: "Two Problems, Two Easy Wins", bullets: [
                "A running toilet can waste 200+ gallons a day - a silent money leak you pay for monthly.",
                "A tripped breaker is the most common electrical 'failure' and almost always an easy reset once you find the cause.",
                "Both fixes are cheap, fast, and build real confidence with the two systems you use most."
            ]),
            ContentBlock(id: "home202_b2", type: .componentBreakdown, title: "Inside the Toilet Tank", bullets: [
                "Flapper - the rubber seal at the bottom; when worn, water leaks from tank to bowl continuously. The #1 cause of a running toilet.",
                "Fill valve - refills the tank after a flush and shuts off at the set level.",
                "Float - tells the fill valve when to stop; a misadjusted float overfills into the overflow tube.",
                "Overflow tube - the open pipe in the middle; if water runs into it constantly, the float is set too high.",
                "Flush valve & chain - the chain lifts the flapper; too tight and the flapper never seats."
            ]),
            ContentBlock(id: "home202_b3", type: .stepByStep, title: "Diagnosing a Running Toilet", bullets: [
                "Add a few drops of food coloring to the TANK and wait 15 minutes without flushing.",
                "Color appears in the BOWL = the flapper is leaking. Replace it (a $5 part, 10-minute job).",
                "Water trickling into the overflow tube = float set too high. Lower the float.",
                "Hissing that never stops = fill valve not sealing. Replace the fill valve.",
                "Check the chain - too tight prevents sealing, too loose can tangle under the flapper."
            ], callouts: ["Always close the fixture shutoff behind the toilet and flush to empty the tank before swapping parts."]),
            ContentBlock(id: "home202_b4", type: .stepByStep, title: "Resetting a Tripped Breaker the Right Way", bullets: [
                "First, REDUCE the load: unplug whatever was running when it tripped (space heater, hair dryer, microwave).",
                "At the panel, find the breaker sitting in the middle position (not fully ON or OFF).",
                "Push it firmly all the way to OFF, then back to ON - a half-push will not reset it.",
                "If it holds, you had a simple overload - spread high-draw devices across different circuits.",
                "If it trips again immediately with nothing plugged in, you have a short - stop and call an electrician."
            ]),
            ContentBlock(id: "home202_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Running toilet: dye test the tank; a leaking flapper is the usual culprit and a cheap fix.",
                "Tripped breaker: reduce the load, then push fully OFF then ON.",
                "A breaker that trips again with nothing plugged in is a short circuit - that is a pro's job."
            ])
        ],
        quiz: Quiz(id: "home202_q", passPercent: 80, questions: [
            Question(id: "home202_q1", type: .scenario, prompt: "Your toilet keeps running long after a flush. You add food coloring to the tank and 15 minutes later the bowl water is tinted. This tells you:", choices: ["The fill valve is broken", "The flapper is leaking and should be replaced", "The bowl is cracked", "Water pressure is too high"], correctIndex: 1, explanation: "Dye migrating from tank to bowl with no flush means the flapper is not sealing. Replacing it is a cheap, quick fix."),
            Question(id: "home202_q2", prompt: "The single most common cause of a continuously running toilet is a worn ____.", acceptedAnswers: ["flapper", "flapper valve", "rubber flapper"], explanation: "The flapper is the rubber seal at the tank bottom. When it degrades, water leaks into the bowl nonstop - the classic running-toilet cause."),
            Question(id: "home202_q3", type: .scenario, prompt: "A breaker tripped while you ran a space heater and the microwave on the same circuit. You unplug both and the breaker resets and holds. The cause was:", choices: ["A short circuit needing an electrician", "A simple overload from too much load on one circuit", "A failed main breaker", "A ground fault"], correctIndex: 1, explanation: "A breaker that holds after you reduce the load was simply overloaded. Spread high-draw appliances across different circuits to prevent it."),
            Question(id: "home202_q4", prompt: "Match each toilet tank part to its job.", matchingPairs: [
                MatchingPair(left: "Flapper", right: "Seals water in the tank between flushes"),
                MatchingPair(left: "Fill Valve", right: "Refills the tank and shuts off"),
                MatchingPair(left: "Float", right: "Signals when to stop filling"),
                MatchingPair(left: "Overflow Tube", right: "Drains excess water to the bowl")
            ], explanation: "Understanding these parts lets you pinpoint a running toilet quickly instead of replacing everything."),
            Question(id: "home202_q5", type: .multiSelect, prompt: "Which steps are correct when resetting a tripped breaker?", choices: ["Unplug the high-draw device that tripped it", "Push the handle fully to OFF, then ON", "Keep resetting it repeatedly if it keeps tripping", "Spread heavy appliances across different circuits", "Call an electrician if it trips again with nothing plugged in"], correctIndices: [0, 1, 3, 4], explanation: "Reduce load, reset fully OFF then ON, balance circuits, and escalate to a pro for repeated trips. Repeatedly resetting a tripping breaker is dangerous.")
        ]),
        flashcards: [
            Flashcard(id: "home202_f1", front: "Toilet Flapper", back: "The rubber seal at the bottom of the tank; when worn it leaks water into the bowl, the #1 cause of a running toilet"),
            Flashcard(id: "home202_f2", front: "Dye Test", back: "Add food coloring to the toilet TANK; if color appears in the bowl without flushing, the flapper is leaking"),
            Flashcard(id: "home202_f3", front: "Overload vs Short", back: "Overload = too many devices on one circuit (resets and holds). Short = hot touching neutral/ground (trips instantly, needs a pro)"),
            Flashcard(id: "home202_f4", front: "Resetting a Breaker", back: "Reduce the load first, then push the handle fully to OFF before pushing it back to ON")
        ],
        tags: ["plumbing", "electrical", "repair"]
    )

    static let lesson7 = Lesson(
        id: "home_t2_03",
        categoryId: .home,
        tier: 2,
        lessonNumber: 3,
        title: "The Essential Homeowner Toolkit",
        subtitle: "The tools that solve 90% of home jobs",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["home_t2_02"],
        contentBlocks: [
            ContentBlock(id: "home203_b1", type: .whyMatters, title: "The Right Tool Changes Everything", bullets: [
                "A small, well-chosen toolkit turns a half-day frustration into a 15-minute fix.",
                "You do not need a full workshop - a couple dozen tools handle the vast majority of home tasks.",
                "Buying decent tools once is cheaper than repeated emergency service calls or cheap tools that fail mid-job."
            ]),
            ContentBlock(id: "home203_b2", type: .componentBreakdown, title: "The Core Hand Tools", bullets: [
                "Claw hammer (16 oz) and a quality tape measure (25 ft).",
                "Screwdrivers - at minimum #1 and #2 Phillips plus small and medium flathead; a 4-in-1 covers most.",
                "Adjustable wrench, channel-lock (tongue-and-groove) pliers, and needle-nose pliers.",
                "Utility knife with spare blades and a torpedo level.",
                "Cordless drill/driver with a basic drill bit and driver bit set."
            ]),
            ContentBlock(id: "home203_b3", type: .componentBreakdown, title: "The Safety & Diagnostic Kit", bullets: [
                "Non-contact voltage tester - proves a wire is dead before you touch it. Non-negotiable.",
                "Safety glasses and work gloves.",
                "A reliable flashlight or headlamp.",
                "Stud finder for hanging anything heavy into framing.",
                "A fire extinguisher rated ABC, kept in the kitchen and near the garage."
            ], callouts: ["A non-contact voltage tester costs about the price of lunch and can save your life. Always verify power is off, then verify again."]),
            ContentBlock(id: "home203_b4", type: .proTips, title: "Consumables & Smart Buys", bullets: [
                "Keep a stock of: assorted screws/anchors, painter's tape, Teflon (PTFE) thread tape, and a tube of silicone caulk.",
                "Duct tape is for ducts almost never - keep electrical tape and Gorilla/Flex tape for the right jobs.",
                "Buy a battery platform once (one brand) so batteries swap across drill, driver, and saw.",
                "A simple plunger, a 6-foot ladder, and a shop vac round out the most-used non-toolbox items."
            ]),
            ContentBlock(id: "home203_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Core hand tools plus a cordless drill handle most jobs.",
                "A non-contact voltage tester and an ABC fire extinguisher are safety must-haves.",
                "Buy quality once and standardize on one battery platform."
            ])
        ],
        quiz: Quiz(id: "home203_q", passPercent: 80, questions: [
            Question(id: "home203_q1", prompt: "Match each tool to its primary use.", matchingPairs: [
                MatchingPair(left: "Non-contact voltage tester", right: "Confirm a wire is dead before touching it"),
                MatchingPair(left: "Stud finder", right: "Locate framing behind drywall"),
                MatchingPair(left: "Channel-lock pliers", right: "Grip and turn pipes and large nuts"),
                MatchingPair(left: "Torpedo level", right: "Check that something is level or plumb")
            ], explanation: "Knowing what each core tool is for lets you pick the right one and work safely and efficiently."),
            Question(id: "home203_q2", type: .scenario, prompt: "Before replacing a light switch, the most important safety step is to:", choices: ["Wear gloves and start unscrewing it", "Turn off the breaker AND verify with a non-contact voltage tester", "Work fast so you are not exposed long", "Turn off the light switch itself"], correctIndex: 1, explanation: "Kill the breaker, then confirm the wire is dead with a voltage tester. Switching off the switch alone does not de-energize all wires in the box."),
            Question(id: "home203_q3", prompt: "The thin white tape wrapped on threaded pipe fittings to seal them is called ____ tape.", acceptedAnswers: ["teflon", "ptfe", "thread", "plumber's", "plumbers", "teflon (ptfe)"], explanation: "Teflon (PTFE) thread tape, also called plumber's tape, seals threaded pipe joints against leaks."),
            Question(id: "home203_q4", type: .multiSelect, prompt: "Which items belong in an essential homeowner toolkit?", choices: ["Non-contact voltage tester", "Cordless drill/driver", "Industrial table saw", "Channel-lock pliers", "ABC fire extinguisher", "Welding rig"], correctIndices: [0, 1, 3, 4], explanation: "A voltage tester, cordless drill, channel-locks, and a fire extinguisher are essentials. A table saw and welding rig are specialty equipment, not core kit."),
            Question(id: "home203_q5", type: .multipleChoice, prompt: "What is the main advantage of standardizing on one cordless battery platform?", choices: ["The tools are always cheaper", "Batteries swap across all your tools from that brand", "It is required by warranty", "It makes the tools more powerful"], correctIndex: 1, explanation: "One battery platform means a single charged battery powers your drill, driver, saw, and more - fewer chargers, fewer dead-battery moments.")
        ]),
        flashcards: [
            Flashcard(id: "home203_f1", front: "Non-Contact Voltage Tester", back: "A pen-shaped tool that detects live voltage without touching bare wire - use it to confirm power is off before any electrical work"),
            Flashcard(id: "home203_f2", front: "Channel-Lock Pliers", back: "Adjustable tongue-and-groove pliers for gripping pipes, large nuts, and fittings"),
            Flashcard(id: "home203_f3", front: "ABC Fire Extinguisher", back: "Rated for ordinary combustibles (A), flammable liquids (B), and electrical fires (C) - the all-purpose home extinguisher"),
            Flashcard(id: "home203_f4", front: "Teflon (PTFE) Tape", back: "Thin tape wrapped on threaded pipe joints to create a watertight or gastight seal")
        ],
        tags: ["tools", "toolkit", "diy"]
    )

    static let lesson8 = Lesson(
        id: "home_t2_04",
        categoryId: .home,
        tier: 2,
        lessonNumber: 4,
        title: "Smoke & CO Detectors and Home Safety",
        subtitle: "The systems that protect lives, not property",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["home_t2_03"],
        contentBlocks: [
            ContentBlock(id: "home204_b1", type: .whyMatters, title: "These Devices Save Lives", bullets: [
                "Working smoke alarms roughly halve the risk of dying in a home fire.",
                "Carbon monoxide is odorless, colorless, and deadly - a CO alarm is the only way to detect it.",
                "Most fire deaths happen in homes with no alarm or a dead/missing battery."
            ], callouts: ["This is educational guidance. Always follow local fire code and the manufacturer's instructions, which take precedence."]),
            ContentBlock(id: "home204_b2", type: .systemOverview, title: "Where Alarms Go", bullets: [
                "Smoke alarms: inside every bedroom, outside each sleeping area, and on every level including the basement.",
                "CO alarms: on every level and near sleeping areas; place per the manufacturer (often not right next to fuel appliances).",
                "Interconnected alarms are best - when one sounds, they all sound, giving everyone more warning.",
                "Keep smoke alarms at least 10 feet from cooking appliances to reduce nuisance trips."
            ]),
            ContentBlock(id: "home204_b3", type: .ownerActions, title: "The Maintenance Rules", bullets: [
                "Test every alarm monthly with the test button.",
                "Replace batteries at least yearly (a chirp every minute or so means low battery).",
                "Replace smoke alarms every 10 years and CO alarms every 5-7 years - they have a sensor lifespan.",
                "Vacuum alarm vents periodically; dust causes false alarms and missed detection.",
                "Write the install date on the unit with a marker so you know when it expires."
            ]),
            ContentBlock(id: "home204_b4", type: .safety, title: "Beyond Alarms: Whole-Home Safety", bullets: [
                "Plan and practice two escape routes from every room; agree on an outside meeting spot.",
                "Keep ABC fire extinguishers in the kitchen, garage, and near heat sources - learn the PASS method.",
                "Know your gas shutoff and how to use it; if you smell gas, leave first and call from outside.",
                "Never run a generator, grill, or car in an attached garage - the leading cause of CO poisoning."
            ], callouts: ["PASS: Pull the pin, Aim at the base of the fire, Squeeze the handle, Sweep side to side. If a fire is larger than a trash can, get out and call 911."]),
            ContentBlock(id: "home204_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Alarms in the right places, tested monthly, with fresh batteries and within their lifespan.",
                "Smoke alarms expire at 10 years; CO alarms at 5-7 years.",
                "A practiced escape plan and a CO-safe garage habit are as important as the hardware."
            ])
        ],
        quiz: Quiz(id: "home204_q", passPercent: 80, questions: [
            Question(id: "home204_q1", type: .scenario, prompt: "A smoke alarm chirps once every minute or so but there is no smoke. The most likely cause is:", choices: ["A real fire somewhere in the walls", "A low or dead battery", "Carbon monoxide is present", "The alarm is too new"], correctIndex: 1, explanation: "A periodic chirp is the universal low-battery signal. Replace the battery; if it continues, the unit may be at end of life."),
            Question(id: "home204_q2", prompt: "Carbon monoxide is dangerous because it is ____ and cannot be detected by human senses.", acceptedAnswers: ["odorless", "colorless", "odorless and colorless", "invisible"], explanation: "CO has no odor or color, so a CO alarm is the only reliable way to detect it before it causes harm."),
            Question(id: "home204_q3", prompt: "Match each device or rule to the correct interval.", matchingPairs: [
                MatchingPair(left: "Test alarms", right: "Monthly"),
                MatchingPair(left: "Replace batteries", right: "At least yearly"),
                MatchingPair(left: "Replace smoke alarm unit", right: "Every 10 years"),
                MatchingPair(left: "Replace CO alarm unit", right: "Every 5-7 years")
            ], explanation: "Alarms have a sensor lifespan. Testing and battery changes keep them working; full replacement keeps the sensor reliable."),
            Question(id: "home204_q4", type: .multiSelect, prompt: "Which are correct home safety practices?", choices: ["Smoke alarms in every bedroom and on every level", "Run a generator in an attached garage for convenience", "Practice two escape routes from every room", "Keep an ABC extinguisher in the kitchen", "Place smoke alarms right next to the stove"], correctIndices: [0, 2, 3], explanation: "Proper alarm placement, escape planning, and an accessible extinguisher are correct. Never run a generator in a garage, and keep smoke alarms away from the stove."),
            Question(id: "home204_q5", type: .multipleChoice, prompt: "The PASS method for using a fire extinguisher stands for:", choices: ["Push, Aim, Spray, Stop", "Pull, Aim, Squeeze, Sweep", "Point, Activate, Shoot, Step back", "Prime, Aim, Set, Spray"], correctIndex: 1, explanation: "PASS: Pull the pin, Aim at the base of the flames, Squeeze the handle, Sweep side to side. Aim at the base, not the top, of the fire.")
        ]),
        flashcards: [
            Flashcard(id: "home204_f1", front: "Smoke Alarm Lifespan", back: "Replace the entire unit every 10 years - the sensor degrades even if the device still powers on"),
            Flashcard(id: "home204_f2", front: "CO Alarm Lifespan", back: "Replace every 5-7 years; CO is odorless and colorless, so the alarm is the only way to detect it"),
            Flashcard(id: "home204_f3", front: "PASS Method", back: "Pull, Aim (at the base), Squeeze, Sweep - the technique for operating a fire extinguisher"),
            Flashcard(id: "home204_f4", front: "Interconnected Alarms", back: "Linked alarms where one sounding triggers them all, giving everyone in the home maximum warning time")
        ],
        tags: ["safety", "detectors", "fire"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "home_t3_01",
        categoryId: .home,
        tier: 3,
        lessonNumber: 1,
        title: "The Seasonal Maintenance Calendar",
        subtitle: "Stay ahead of problems all year long",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["home_t2_04"],
        contentBlocks: [
            ContentBlock(id: "home301_b1", type: .whyMatters, title: "Prevention Beats Emergency 10 to 1", bullets: [
                "Preventive maintenance routinely costs a fraction of the emergency repair it prevents.",
                "A calendar turns vague intentions into specific, scheduled actions you actually do.",
                "Catching a worn part in a tune-up is cheap; replacing the failed system in a heat wave is not."
            ]),
            ContentBlock(id: "home301_b2", type: .stepByStep, title: "Spring Checklist", bullets: [
                "Inspect the roof for winter damage - lifted or missing shingles, damaged flashing.",
                "Clean gutters and downspouts; confirm they drain away from the foundation.",
                "Service the AC before summer - replace the filter, clear the condenser, schedule a tune-up.",
                "Check exterior caulk and weatherstripping around windows and doors.",
                "Test the sump pump by pouring water into the pit and confirming it cycles."
            ]),
            ContentBlock(id: "home301_b3", type: .stepByStep, title: "Fall Checklist", bullets: [
                "Schedule furnace/heating maintenance before the first cold snap.",
                "Clean gutters again after the leaves drop.",
                "Disconnect and drain garden hoses; shut off and drain exterior hose bibs to prevent freeze-bursts.",
                "Reverse ceiling fans to clockwise (low speed) to push warm air down.",
                "Replace smoke/CO batteries and check attic insulation and ventilation."
            ], callouts: ["A garden hose left attached in a freeze can cause the hose bib and the indoor supply line to burst - one of the most common winter disasters."]),
            ContentBlock(id: "home301_b4", type: .ownerActions, title: "The Recurring Cadence", bullets: [
                "Monthly: replace HVAC filter, test smoke/CO alarms, glance under sinks for leaks.",
                "Quarterly: flush the water heater, clear dryer-vent lint, inspect tub/shower caulk.",
                "Annually: test the water heater T&P valve, inspect the anode rod, clean the full dryer duct, professional HVAC service.",
                "Every few years: reseal driveway, recaulk exterior, check the anode rod for replacement."
            ]),
            ContentBlock(id: "home301_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Spring is roof, gutters, and AC prep; fall is heating, winterization, and detectors.",
                "Monthly filter changes are the highest-impact recurring habit.",
                "A drained hose bib in fall prevents one of winter's most expensive failures."
            ])
        ],
        quiz: Quiz(id: "home301_q", passPercent: 80, questions: [
            Question(id: "home301_q1", prompt: "Match each interval to its primary maintenance focus.", matchingPairs: [
                MatchingPair(left: "Spring", right: "Roof, gutters, and AC prep"),
                MatchingPair(left: "Fall", right: "Furnace service and winterization"),
                MatchingPair(left: "Monthly", right: "Replace HVAC filter, test alarms"),
                MatchingPair(left: "Annually", right: "Test T&P valve, inspect anode rod")
            ], explanation: "A seasonal cadence keeps you ahead of failures instead of reacting to them after damage is done."),
            Question(id: "home301_q2", type: .scenario, prompt: "It is late October and an overnight freeze is forecast. Which task is most urgent?", choices: ["Reseal the driveway", "Disconnect and drain garden hoses before pipes freeze", "Service the AC unit", "Paint the exterior trim"], correctIndex: 1, explanation: "A connected hose in a freeze can burst the hose bib and the indoor supply line. Draining hoses before the first freeze is urgent."),
            Question(id: "home301_q3", prompt: "The highest-impact monthly habit is replacing the HVAC ____.", acceptedAnswers: ["filter", "air filter", "filters", "hvac filter"], explanation: "A clean filter protects the blower and coil, improves air quality, and prevents the single most common HVAC failure."),
            Question(id: "home301_q4", type: .multiSelect, prompt: "Which of these are fall (winterization) tasks?", choices: ["Schedule furnace maintenance", "Service the AC for summer", "Disconnect garden hoses", "Replace smoke/CO batteries", "Reverse ceiling fans to clockwise", "Test the sump pump for spring rains"], correctIndices: [0, 2, 3, 4], explanation: "Furnace service, hose disconnection, battery replacement, and fan reversal are fall tasks. AC service and sump-pump testing belong to spring."),
            Question(id: "home301_q5", type: .multipleChoice, prompt: "Which task belongs on the QUARTERLY list?", choices: ["Test the T&P valve", "Flush the water heater and clear dryer-vent lint", "Replace the HVAC filter", "Reseal the driveway"], correctIndex: 1, explanation: "Flushing the water heater and clearing dryer-vent lint are quarterly tasks. T&P testing is annual; filter changes are monthly; driveway sealing is multi-year.")
        ]),
        flashcards: [
            Flashcard(id: "home301_f1", front: "Hose Bib Winterization", back: "Disconnect hoses and shut off/drain exterior faucets before freezing weather to prevent burst pipes"),
            Flashcard(id: "home301_f2", front: "Ceiling Fan Direction", back: "Counterclockwise in summer (downdraft cooling); clockwise on low in winter (pushes warm air down)"),
            Flashcard(id: "home301_f3", front: "Sump Pump Test", back: "Pour water into the pit and confirm the pump kicks on and drains - do this in spring before heavy rains"),
            Flashcard(id: "home301_f4", front: "Maintenance Cadence", back: "Monthly: filters and alarms. Quarterly: water heater flush, dryer lint. Annually: T&P valve, anode rod, HVAC service")
        ],
        tags: ["maintenance", "seasonal", "calendar"]
    )

    static let lesson10 = Lesson(
        id: "home_t3_02",
        categoryId: .home,
        tier: 3,
        lessonNumber: 2,
        title: "Diagnostic: No Hot Water",
        subtitle: "Systematic troubleshooting when the shower goes cold",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["home_t3_01"],
        contentBlocks: [
            ContentBlock(id: "home302_b1", type: .whyMatters, title: "A Common Emergency With Simple Causes", bullets: [
                "No hot water is one of the most common homeowner emergencies and most causes are simple.",
                "A clear diagnostic chain keeps you from panicking and overpaying for a basic service call.",
                "Knowing your unit type - gas vs electric, tank vs tankless - cuts your troubleshooting time in half."
            ]),
            ContentBlock(id: "home302_b2", type: .stepByStep, title: "The Diagnostic Chain", bullets: [
                "Step 1: Is ANY faucet hot? If some are hot and others cold, the problem is at a fixture, not the heater.",
                "Step 2 (Gas): Is the pilot lit or the electronic igniter working? Relight per the label if you know how.",
                "Step 2 (Electric): Check the dedicated 30A or 40A breaker - electric heaters trip their own circuit.",
                "Step 3: Check the thermostat setting - someone may have lowered it. Factory default is around 120F.",
                "Step 4: Did you just use a lot of hot water? Wait 30-60 minutes for the tank to recover.",
                "Step 5: Listen - popping/rumbling means sediment; total silence may mean no heating at all.",
                "Step 6: Look for water pooling at the base - a leaking tank means replacement, not repair."
            ]),
            ContentBlock(id: "home302_b3", type: .keyTerms, title: "Terms That Speed Diagnosis", bullets: [
                "Thermocouple - a safety sensor that keeps the gas valve open only while the pilot is lit; a failing one drops the flame.",
                "Recovery time - how long the heater takes to reheat a full tank, usually 30-60 minutes.",
                "Heating element (electric) - the rod that heats the water; a burned-out element gives lukewarm or no hot water.",
                "Sediment - mineral buildup at the tank bottom that insulates the burner and causes rumbling."
            ]),
            ContentBlock(id: "home302_b4", type: .safety, title: "When to Stop and Call a Pro", bullets: [
                "Gas smell - leave the house immediately and call the gas company from outside. Do not flip switches.",
                "Leaking tank base - the tank has failed and must be replaced; no repair will save it.",
                "Pilot will not stay lit after a few tries - likely a failed thermocouple.",
                "Electric breaker trips every time it is reset - an element or wiring fault."
            ], callouts: ["This is educational guidance, not a substitute for a licensed plumber or your gas utility. Never relight a pilot if you smell gas."]),
            ContentBlock(id: "home302_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Follow the chain: faucets, then pilot/breaker, thermostat, recovery time, sounds, leaks.",
                "Most no-hot-water situations have cheap, simple causes.",
                "Gas smell means evacuate; a leaking tank means replace."
            ])
        ],
        quiz: Quiz(id: "home302_q", passPercent: 80, questions: [
            Question(id: "home302_q1", prompt: "Put the no-hot-water diagnostic steps in priority order.", matchingPairs: [
                MatchingPair(left: "Step 1", right: "Check if ANY faucet has hot water"),
                MatchingPair(left: "Step 2", right: "Check pilot (gas) or breaker (electric)"),
                MatchingPair(left: "Step 3", right: "Verify the thermostat setting"),
                MatchingPair(left: "Step 4", right: "Look for leaks at the base")
            ], explanation: "Working the chain in order isolates the cause fast and prevents an unnecessary service call."),
            Question(id: "home302_q2", type: .scenario, prompt: "You smell gas near your gas water heater. Your immediate action is to:", choices: ["Relight the pilot light", "Check the thermostat setting", "Open a window and keep troubleshooting", "Leave the house and call the gas company from outside"], correctIndex: 3, explanation: "A gas smell is an explosion risk. Evacuate without operating switches or flames, then call the gas company from outside."),
            Question(id: "home302_q3", prompt: "A water heater leaking from its base needs ____ - it cannot be repaired.", acceptedAnswers: ["replacement", "to be replaced", "replacing", "a replacement"], explanation: "A leaking tank has failed structurally. Once the steel tank leaks, replacement is the only fix."),
            Question(id: "home302_q4", type: .multiSelect, prompt: "Which situations call for a professional rather than DIY?", choices: ["Gas smell near the unit", "Thermostat accidentally turned down", "Leaking tank base", "Pilot will not stay lit after several tries", "Tank ran out of hot water after long use"], correctIndices: [0, 2, 3], explanation: "Gas smell (evacuate first), a leaking tank, and a pilot that will not stay lit all need a pro. A lowered thermostat and a temporarily empty tank are owner-level."),
            Question(id: "home302_q5", type: .multipleChoice, prompt: "On a gas water heater, the safety device that keeps the gas valve open only while the pilot is lit is the:", choices: ["Anode rod", "Thermocouple", "Dip tube", "T&P valve"], correctIndex: 1, explanation: "The thermocouple senses the pilot flame and holds the gas valve open. If it fails, the valve closes and the burner will not stay lit.")
        ]),
        flashcards: [
            Flashcard(id: "home302_f1", front: "Thermocouple", back: "A sensor that keeps the gas valve open only while the pilot flame is detected - a common cause of a pilot that will not stay lit"),
            Flashcard(id: "home302_f2", front: "Recovery Time", back: "How long a water heater takes to reheat a full tank - typically 30-60 minutes depending on type and size"),
            Flashcard(id: "home302_f3", front: "Leaking Tank = Replace", back: "A water heater leaking from the base has failed structurally and must be replaced, not repaired"),
            Flashcard(id: "home302_f4", front: "Diagnostic Chain", back: "Faucets, then pilot/breaker, thermostat, recovery time, sounds, and leaks - work it in order before calling a pro")
        ],
        tags: ["diagnostic", "water heater", "troubleshooting"]
    )

    static let lesson11 = Lesson(
        id: "home_t3_03",
        categoryId: .home,
        tier: 3,
        lessonNumber: 3,
        title: "Diagnostic: AC Won't Cool & Low Water Pressure",
        subtitle: "Two systematic troubleshooting playbooks",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["home_t3_02"],
        contentBlocks: [
            ContentBlock(id: "home303_b1", type: .whyMatters, title: "Two Failures, One Method", bullets: [
                "AC failures peak in the hottest weather; low water pressure shows up at the worst times too.",
                "Both follow the same logic: check the cheap, common causes before assuming the expensive one.",
                "A frozen evaporator coil and a clogged aerator are owner-fixable problems mistaken for major repairs every day."
            ]),
            ContentBlock(id: "home303_b2", type: .howItWorks, title: "Why an AC Coil Freezes", bullets: [
                "The evaporator coil needs a steady flow of warm indoor air to absorb heat and stay above freezing.",
                "Restricted airflow - usually a clogged filter or closed vents - lets the coil get too cold and ice over.",
                "Low refrigerant also makes the coil run too cold, freezing it from the inside out.",
                "Once iced, the coil blocks all airflow and the system blows warm air or nothing at all."
            ]),
            ContentBlock(id: "home303_b3", type: .stepByStep, title: "AC Not Cooling: The Playbook", bullets: [
                "Step 1: Replace the air filter - the #1 cause of weak cooling and frozen coils.",
                "Step 2: Open closed supply vents and clear the outdoor condenser of leaves and debris.",
                "Step 3: If iced, turn cooling OFF but leave the FAN ON to thaw the coil (2-4 hours). Never scrape the ice.",
                "Step 4: Confirm the thermostat is set to COOL and below room temperature; check/replace its batteries.",
                "Step 5: If it refreezes or never reaches setpoint after all this, suspect low refrigerant - call a licensed tech."
            ], callouts: ["Only licensed HVAC technicians may handle refrigerant. If the coil refreezes after you fix the airflow, that is the refrigerant talking."]),
            ContentBlock(id: "home303_b4", type: .stepByStep, title: "Low Water Pressure: The Playbook", bullets: [
                "Step 1: Is it one fixture or the whole house? One fixture points to a clogged aerator or fixture valve.",
                "Step 2: Unscrew and clean the faucet aerator - mineral debris collects in the screen.",
                "Step 3: Confirm the main shutoff and the fixture shutoffs are FULLY open.",
                "Step 4: Whole-house low pressure? Check the pressure regulator (PRV) - they fail over time and can be adjusted or replaced.",
                "Step 5: Hot-side only low pressure can mean sediment in the water heater or a failing supply line."
            ]),
            ContentBlock(id: "home303_b5", type: .summary, title: "The Bottom Line", bullets: [
                "AC: filter first, then vents/condenser, then thaw, then suspect refrigerant.",
                "Pressure: one fixture is local (aerator); whole house is the regulator or main valve.",
                "If the AC refreezes after airflow fixes, it is refrigerant - that is a pro's job."
            ])
        ],
        quiz: Quiz(id: "home303_q", passPercent: 80, questions: [
            Question(id: "home303_q1", type: .scenario, prompt: "Your AC blows warm air and you find ice on the indoor unit. Before calling anyone you should:", choices: ["Scrape the ice off and restart immediately", "Pour warm water on the coil", "Turn cooling off, run the fan to thaw it, and replace the air filter", "Set the thermostat to maximum cooling"], correctIndex: 2, explanation: "Turn off cooling, thaw the coil with the fan running (2-4 hours), and replace the filter - the #1 cause of a frozen coil. Never scrape the ice."),
            Question(id: "home303_q2", prompt: "If only ONE faucet has weak flow, the most likely cause is a clogged ____.", acceptedAnswers: ["aerator", "faucet aerator", "screen", "aerator screen"], explanation: "A single low-flow fixture usually has a clogged aerator - the screen at the faucet tip catches mineral debris. Clean or replace it."),
            Question(id: "home303_q3", type: .scenario, prompt: "You replaced the filter and thawed the coil, but it froze again within a day. This strongly suggests:", choices: ["The filter was installed backward", "Too many vents are open", "Low refrigerant from a leak - call a professional", "The thermostat needs new batteries"], correctIndex: 2, explanation: "If the coil refreezes after airflow is restored, low refrigerant is the likely cause. Refrigerant work requires a licensed HVAC technician."),
            Question(id: "home303_q4", prompt: "Match each pressure symptom to its likely cause.", matchingPairs: [
                MatchingPair(left: "One faucet low", right: "Clogged aerator"),
                MatchingPair(left: "Whole house low", right: "Failing pressure regulator"),
                MatchingPair(left: "Hot side only low", right: "Water heater sediment"),
                MatchingPair(left: "Suddenly no flow at a fixture", right: "Partially closed fixture shutoff")
            ], explanation: "Isolating whether the problem is one fixture, the whole house, or hot-only points you straight to the cause."),
            Question(id: "home303_q5", type: .multiSelect, prompt: "Which are correct owner-level steps before calling a pro for a non-cooling AC?", choices: ["Replace or clean the air filter", "Run the fan to thaw a frozen coil", "Add refrigerant yourself", "Clear debris from the outdoor condenser", "Scrape ice off the coil with a screwdriver"], correctIndices: [0, 1, 3], explanation: "Filter, thawing with the fan, and clearing the condenser are owner steps. Refrigerant needs a licensed tech, and scraping the coil can puncture it.")
        ]),
        flashcards: [
            Flashcard(id: "home303_f1", front: "Frozen Evaporator Coil", back: "Ice on the indoor coil from restricted airflow or low refrigerant; thaw with the fan running and check the filter first"),
            Flashcard(id: "home303_f2", front: "Faucet Aerator", back: "The screened tip of a faucet; mineral debris clogs it and causes low flow at a single fixture - unscrew and clean it"),
            Flashcard(id: "home303_f3", front: "Pressure Regulator (PRV)", back: "A valve that drops incoming pressure to a safe level; when it fails it can cause whole-house low (or high) pressure"),
            Flashcard(id: "home303_f4", front: "Refrigerant = Pro Only", back: "If a coil refreezes after airflow is fixed, the cause is likely low refrigerant - only licensed technicians may handle it")
        ],
        tags: ["diagnostic", "hvac", "plumbing"]
    )

    static let lesson12 = Lesson(
        id: "home_t3_04",
        categoryId: .home,
        tier: 3,
        lessonNumber: 4,
        title: "Preventing Water Damage & Mold",
        subtitle: "The slow disaster that wrecks homes",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["home_t3_03"],
        contentBlocks: [
            ContentBlock(id: "home304_b1", type: .whyMatters, title: "Water Is the Silent Destroyer", bullets: [
                "Water damage is one of the most common and most expensive home insurance claims.",
                "Mold can begin growing in 24-48 hours on a wet surface - speed matters more than perfection.",
                "Most water damage is preventable; it usually starts as a small, ignored issue."
            ]),
            ContentBlock(id: "home304_b2", type: .systemOverview, title: "Where Water Gets In", bullets: [
                "From above - roof leaks, failed flashing, ice dams, and clogged gutters overflowing onto walls.",
                "From the sides - poor grading sending rain toward the foundation; cracked caulk around windows.",
                "From below - hydrostatic pressure pushing groundwater through foundation cracks; a failed sump pump.",
                "From inside - burst supply lines, leaking appliances, overflowing tanks, and slow drips under sinks."
            ]),
            ContentBlock(id: "home304_b3", type: .ownerActions, title: "The Prevention Playbook", bullets: [
                "Keep gutters clean and extend downspouts at least 4-6 feet from the foundation.",
                "Grade soil to slope AWAY from the house - aim for 6 inches of drop over the first 10 feet.",
                "Maintain the sump pump and add a battery backup; a power outage during a storm is when you need it most.",
                "Install supply-line braided hoses on washers and consider water sensors or an automatic shutoff for the main.",
                "Keep indoor humidity at 30-50% with ventilation or a dehumidifier to starve mold of moisture."
            ], callouts: ["A $20 water-leak sensor under a water heater or washer can alert you before a slow leak becomes a flooded floor."]),
            ContentBlock(id: "home304_b4", type: .stepByStep, title: "If Water Gets In: First 48 Hours", bullets: [
                "Stop the source - shut off the relevant valve or the main; kill power to affected areas if safe.",
                "Remove standing water fast with a shop vac, mop, and towels.",
                "Dry aggressively - fans, open windows, and a dehumidifier running continuously.",
                "Pull up soaked carpet pad and move wet contents out; trapped moisture breeds mold.",
                "Document everything with photos before cleanup for your insurance claim."
            ]),
            ContentBlock(id: "home304_b5", type: .safety, title: "Mold: Know Your Limits", bullets: [
                "Small surface mold (under ~10 sq ft) on hard surfaces can often be cleaned by an owner with proper protection.",
                "Wear an N95 or better, gloves, and eye protection; ventilate the area.",
                "Large infestations, mold in HVAC, or contaminated drywall/insulation need professional remediation.",
                "Never just paint over mold - you must fix the moisture source first or it returns."
            ], callouts: ["This is general education, not medical or remediation advice. If anyone has respiratory issues or the affected area is large, hire a certified remediation professional."]),
            ContentBlock(id: "home304_b5b", type: .summary, title: "The Bottom Line", bullets: [
                "Manage water from above, the sides, below, and inside - gutters, grading, sump, and supply lines.",
                "Mold can start in 24-48 hours, so dry fast and document for insurance.",
                "Fix the moisture source first; large or HVAC mold is a job for professionals."
            ])
        ],
        quiz: Quiz(id: "home304_q", passPercent: 80, questions: [
            Question(id: "home304_q1", type: .scenario, prompt: "You discover a washing machine hose burst and water across the laundry floor. Your FIRST action is to:", choices: ["Start photographing for insurance", "Shut off the water to the washer or the main, then kill power if safe", "Run a fan to dry it", "Call a mold remediation company"], correctIndex: 1, explanation: "Always stop the source first. Shut off the valve, then address electrical safety, then dry and document. Stopping inflow prevents the damage from spreading."),
            Question(id: "home304_q2", prompt: "Mold can begin growing on a wet surface within ____ hours, so drying speed is critical.", acceptedAnswers: ["24-48", "24 to 48", "24", "48", "twenty-four to forty-eight"], explanation: "Mold can start within 24-48 hours. That is why fast, aggressive drying matters more than a slow, perfect cleanup."),
            Question(id: "home304_q3", prompt: "Match each water source to a prevention measure.", matchingPairs: [
                MatchingPair(left: "Roof/gutters", right: "Clean gutters, extend downspouts"),
                MatchingPair(left: "Foundation", right: "Grade soil to slope away from the house"),
                MatchingPair(left: "Basement groundwater", right: "Maintain sump pump with battery backup"),
                MatchingPair(left: "Indoor appliances", right: "Braided supply hoses and leak sensors")
            ], explanation: "Water attacks from above, the sides, below, and inside - each path has a specific, affordable prevention measure."),
            Question(id: "home304_q4", type: .multiSelect, prompt: "Which are correct mold-handling practices?", choices: ["Fix the moisture source first", "Paint over mold to seal it", "Wear N95, gloves, and eye protection for small cleanups", "Hire a pro for large or HVAC mold", "Ignore it if it is hidden behind drywall"], correctIndices: [0, 2, 3], explanation: "Fix the source, protect yourself for small jobs, and call a pro for large or HVAC mold. Painting over mold or ignoring hidden mold lets it spread."),
            Question(id: "home304_q5", type: .multipleChoice, prompt: "To keep groundwater away from the foundation, soil should slope:", choices: ["Toward the house for drainage", "Perfectly flat all around", "Away from the house, about 6 inches of drop over 10 feet", "Into a basement window well"], correctIndex: 2, explanation: "Grading should carry water AWAY from the foundation - roughly 6 inches of drop over the first 10 feet keeps rain from pooling against the house.")
        ]),
        flashcards: [
            Flashcard(id: "home304_f1", front: "Mold Growth Window", back: "Mold can start growing on a wet surface within 24-48 hours - dry aggressively and fast after any water intrusion"),
            Flashcard(id: "home304_f2", front: "Proper Grading", back: "Soil should slope away from the foundation, about 6 inches of drop over the first 10 feet, to shed rainwater"),
            Flashcard(id: "home304_f3", front: "Sump Pump Backup", back: "A battery backup keeps the sump pump running during a storm-time power outage - exactly when you need it most"),
            Flashcard(id: "home304_f4", front: "First Step After a Leak", back: "Stop the source - shut the valve or main and address power safety before drying or documenting")
        ],
        tags: ["water damage", "mold", "prevention"]
    )

    // MARK: - Tier 4: Mastery

    static let lesson13 = Lesson(
        id: "home_t4_01",
        categoryId: .home,
        tier: 4,
        lessonNumber: 1,
        title: "Hiring & Managing Contractors",
        subtitle: "Get great work without getting fleeced",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["home_t3_04"],
        contentBlocks: [
            ContentBlock(id: "home401_b1", type: .whyMatters, title: "The Skill That Saves Thousands", bullets: [
                "On big jobs, how you hire and manage a contractor matters as much as the work itself.",
                "Most disputes, overruns, and shoddy jobs trace back to a vague scope and a weak contract.",
                "A confident, informed homeowner gets better pricing, better work, and fewer surprises."
            ]),
            ContentBlock(id: "home401_b2", type: .stepByStep, title: "Vetting Before You Hire", bullets: [
                "Verify license and insurance - active state license plus liability and workers' comp coverage. Ask for certificates.",
                "Get at least three written bids on the SAME defined scope so you can compare apples to apples.",
                "Check references and recent reviews; ask to see a comparable completed job if possible.",
                "Confirm who actually does the work - the bidder, employees, or subcontractors.",
                "Be wary of the lowest bid by far, demands for large cash deposits, and high-pressure 'today only' pricing."
            ], callouts: ["No license, no insurance, no contract - no deal. If they balk at any of the three, walk away."]),
            ContentBlock(id: "home401_b3", type: .componentBreakdown, title: "What a Real Contract Includes", bullets: [
                "Detailed scope of work - exactly what will and will not be done, and the materials/brands specified.",
                "Total price and a milestone-based payment schedule (never pay in full up front).",
                "Start and substantial-completion dates, plus how change orders are priced and approved in writing.",
                "Who pulls permits and schedules inspections (the contractor should, for licensed trades).",
                "Warranty terms, lien-waiver language, and a final-payment hold until the punch list is done."
            ]),
            ContentBlock(id: "home401_b4", type: .proTips, title: "Managing the Job Well", bullets: [
                "Tie payments to completed milestones you have inspected - not to the calendar or the contractor's cash flow.",
                "Put every change in writing as a signed change order before the work happens.",
                "Get lien waivers as you pay so subs and suppliers cannot later lien your home for the contractor's nonpayment.",
                "Keep a clear, respectful paper trail - texts and emails confirming verbal agreements.",
                "Do a written punch-list walkthrough and hold final payment (often 10%) until every item is fixed."
            ]),
            ContentBlock(id: "home401_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Vet hard: license, insurance, three bids, references.",
                "A detailed contract with a milestone payment schedule prevents most disputes.",
                "Never pay in full up front; hold final payment until the punch list is complete."
            ])
        ],
        quiz: Quiz(id: "home401_q", passPercent: 80, questions: [
            Question(id: "home401_q1", type: .scenario, prompt: "A contractor offers a price far below the others but wants 60% in cash up front 'to lock it in today.' You should:", choices: ["Accept - it is the best deal available", "Pay half now and half on completion", "Decline; a far-low bid plus a large up-front cash demand are major red flags", "Pay it all to secure the discount"], correctIndex: 2, explanation: "A bid far below the rest, a large cash deposit, and high-pressure 'today only' tactics are classic warning signs. Reputable contractors use written contracts and milestone payments."),
            Question(id: "home401_q2", type: .multiSelect, prompt: "Which should you verify or require BEFORE hiring a contractor?", choices: ["Active state license", "Liability and workers' comp insurance", "Three written bids on the same scope", "Full payment up front", "Checkable references"], correctIndices: [0, 1, 2, 4], explanation: "License, insurance, comparable bids, and references are essential vetting steps. Paying in full up front removes all your leverage and is never advised."),
            Question(id: "home401_q3", prompt: "A signed document that prices and approves a mid-project change to the scope is called a ____ ____.", acceptedAnswers: ["change order", "change-order"], explanation: "A change order documents and prices any deviation from the original scope, in writing, before the work is done - preventing surprise charges."),
            Question(id: "home401_q4", prompt: "Match each contract element to why it matters.", matchingPairs: [
                MatchingPair(left: "Detailed scope", right: "Defines exactly what is and isn't included"),
                MatchingPair(left: "Milestone payments", right: "Ties money to inspected, completed work"),
                MatchingPair(left: "Lien waiver", right: "Protects you from subcontractor liens"),
                MatchingPair(left: "Final-payment hold", right: "Ensures the punch list gets finished")
            ], explanation: "Each element shifts a specific risk away from you and toward proper completion of the job."),
            Question(id: "home401_q5", type: .multipleChoice, prompt: "Why should you collect lien waivers as you make payments?", choices: ["They reduce the total price", "They prevent subs and suppliers from placing a lien on your home", "They are required to pull permits", "They extend the warranty"], correctIndex: 1, explanation: "A lien waiver confirms a sub or supplier was paid. Without them, an unpaid sub can lien your home even if you paid the general contractor.")
        ]),
        flashcards: [
            Flashcard(id: "home401_f1", front: "Change Order", back: "A written, signed document that prices and approves any change to the agreed scope before that work is performed"),
            Flashcard(id: "home401_f2", front: "Lien Waiver", back: "A document confirming a sub or supplier has been paid, protecting you from a mechanic's lien on your home"),
            Flashcard(id: "home401_f3", front: "Milestone Payments", back: "Paying in stages tied to inspected, completed work - never pay the full amount before the job is done"),
            Flashcard(id: "home401_f4", front: "Three-Bid Rule", back: "Get at least three written bids on the SAME defined scope so you can compare them fairly")
        ],
        tags: ["contractors", "hiring", "management"]
    )

    static let lesson14 = Lesson(
        id: "home_t4_02",
        categoryId: .home,
        tier: 4,
        lessonNumber: 2,
        title: "Reading a Home Inspection Report",
        subtitle: "Separate dealbreakers from cosmetic noise",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["home_t4_01"],
        contentBlocks: [
            ContentBlock(id: "home402_b1", type: .whyMatters, title: "The Report That Shapes a Six-Figure Decision", bullets: [
                "A home inspection report can run 30-60 pages and intimidate buyers into bad decisions in both directions.",
                "The skill is triage: telling a five-figure structural problem from a $10 cosmetic note.",
                "Reading it well gives you negotiating leverage and protects you from inheriting someone else's disaster."
            ]),
            ContentBlock(id: "home402_b2", type: .howItWorks, title: "What the Report Is - and Isn't", bullets: [
                "It is a visual, non-invasive snapshot of accessible systems on inspection day.",
                "It does NOT open walls, test inside pipes, or guarantee future performance.",
                "Inspectors flag conditions and recommend specialists; they rarely give exact repair costs.",
                "Read the summary, but always read the FULL detail sections - summaries omit nuance."
            ]),
            ContentBlock(id: "home402_b3", type: .componentBreakdown, title: "Triage: The Big Four vs the Noise", bullets: [
                "Major (negotiate or walk): foundation/structural movement, roof at end of life, major electrical hazards (e.g., Federal Pacific panel), failing HVAC or sewer line.",
                "Safety: missing GFCI/AFCI protection, no smoke/CO alarms, gas leaks, trip hazards, double-tapped breakers.",
                "Moderate: aging water heater, minor active leaks, poor grading, worn but functional components.",
                "Cosmetic/Maintenance: caulking, paint, a few missing outlet covers, sticky doors - cheap and expected.",
                "Watch for words like 'recommend evaluation by a licensed specialist' - that signals an unknown that may be costly."
            ], callouts: ["A long report is normal. The number of items matters far less than the severity of the worst few."]),
            ContentBlock(id: "home402_b4", type: .ownerActions, title: "Acting on the Report", bullets: [
                "Get specialist quotes for any 'evaluate further' item before your inspection contingency expires.",
                "Negotiate the major and safety items - a price credit is often cleaner than asking the seller to repair.",
                "Use the report to build your post-purchase maintenance and budget plan, not just to negotiate.",
                "Keep the report; it documents the home's condition at purchase for future reference and resale."
            ]),
            ContentBlock(id: "home402_b5", type: .summary, title: "The Bottom Line", bullets: [
                "The report is a visual snapshot, not a warranty - read the full detail, not just the summary.",
                "Triage to the Big Four (structure, roof, electrical, HVAC/sewer) and safety items.",
                "Get specialist quotes on unknowns before your contingency expires, then negotiate."
            ])
        ],
        quiz: Quiz(id: "home402_q", passPercent: 80, questions: [
            Question(id: "home402_q1", type: .scenario, prompt: "Your 45-page inspection report lists 60 items. Most are caulking, paint, and a couple missing outlet covers, but one notes 'foundation shows signs of significant settlement, recommend structural engineer.' Your priority is to:", choices: ["Panic at the 60 items and walk away", "Ignore the foundation note since it is just one item", "Get a structural engineer's evaluation on the foundation before your contingency expires", "Ask the seller to fix all 60 items"], correctIndex: 2, explanation: "Triage by severity, not count. The foundation note is potentially major and uncertain - get a specialist's evaluation before the contingency deadline so you can negotiate or walk informed."),
            Question(id: "home402_q2", type: .multiSelect, prompt: "Which findings are typically MAJOR or SAFETY items worth serious negotiation?", choices: ["Foundation/structural movement", "A few missing outlet covers", "Roof at the end of its life", "Federal Pacific electrical panel", "Sticky interior doors"], correctIndices: [0, 2, 3], explanation: "Structure, an end-of-life roof, and a Federal Pacific panel are major/safety concerns. Missing covers and sticky doors are cheap cosmetic/maintenance items."),
            Question(id: "home402_q3", prompt: "A home inspection is a ____, non-invasive snapshot - it does not open walls or guarantee future performance.", acceptedAnswers: ["visual", "visual inspection"], explanation: "Inspectors assess accessible, visible conditions on the day of inspection. They do not open walls or warrant the home's future."),
            Question(id: "home402_q4", prompt: "Match each finding to its severity tier.", matchingPairs: [
                MatchingPair(left: "Foundation settlement", right: "Major - negotiate or walk"),
                MatchingPair(left: "Missing GFCI protection", right: "Safety - should be corrected"),
                MatchingPair(left: "Aging water heater", right: "Moderate - plan to budget"),
                MatchingPair(left: "Peeling caulk", right: "Cosmetic - cheap maintenance")
            ], explanation: "Sorting findings into major, safety, moderate, and cosmetic tiers is the core skill of reading a report well."),
            Question(id: "home402_q5", type: .multipleChoice, prompt: "When a report says 'recommend evaluation by a licensed specialist,' it usually means:", choices: ["The item is purely cosmetic", "There is an unknown that could be minor or costly - get a quote before deciding", "The inspector made an error", "The seller must pay regardless"], correctIndex: 1, explanation: "That phrase flags an uncertainty beyond the inspector's scope. Get a specialist quote before your contingency expires so you can decide with real numbers.")
        ]),
        flashcards: [
            Flashcard(id: "home402_f1", front: "What an Inspection Is", back: "A visual, non-invasive snapshot of accessible systems on inspection day - not a warranty and not wall-opening"),
            Flashcard(id: "home402_f2", front: "The Big Four", back: "Foundation/structure, roof, major electrical, and HVAC/sewer - the high-cost areas to scrutinize first"),
            Flashcard(id: "home402_f3", front: "'Recommend Specialist Evaluation'", back: "A flag for an unknown beyond the inspector's scope - get a quote before your contingency expires"),
            Flashcard(id: "home402_f4", front: "Severity Over Count", back: "A long list of items is normal; the severity of the worst few matters far more than the total number")
        ],
        tags: ["inspection", "buying", "report"]
    )

    static let lesson15 = Lesson(
        id: "home_t4_03",
        categoryId: .home,
        tier: 4,
        lessonNumber: 3,
        title: "Budgeting for Big-Ticket Repairs",
        subtitle: "Be ready before the roof or HVAC dies",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["home_t4_02"],
        contentBlocks: [
            ContentBlock(id: "home403_b1", type: .whyMatters, title: "Big Repairs Are When, Not If", bullets: [
                "Every major system has a finite lifespan - the roof, HVAC, and water heater WILL need replacement.",
                "Owners who plan for it pay from savings; owners who don't pay with high-interest debt under pressure.",
                "Knowing typical lifespans and costs turns a crisis into a scheduled, negotiated purchase."
            ]),
            ContentBlock(id: "home403_b2", type: .componentBreakdown, title: "Typical Lifespans to Plan Around", bullets: [
                "Asphalt shingle roof: roughly 20-25 years; architectural shingles longer.",
                "HVAC system (furnace/AC): about 15-20 years; heat pumps often shorter.",
                "Water heater (tank): about 8-12 years; tankless can exceed 20.",
                "Exterior paint: 7-10 years; driveway sealing every few years.",
                "Major appliances (range, dishwasher, washer/dryer): roughly 10-15 years."
            ], body: "Write down the install year of each major system - when you know the age, you know roughly how long you have."),
            ContentBlock(id: "home403_b3", type: .principles, title: "Funding Rules of Thumb", bullets: [
                "Set aside roughly 1-3% of the home's value per year for maintenance and repairs.",
                "Alternatively, the '$1 per square foot per year' rule gives a quick reserve estimate.",
                "Keep a separate home reserve fund so a failure doesn't wreck your monthly budget.",
                "Replace planned big-ticket items in the off-season when possible for better pricing.",
                "Build a sinking fund: divide each system's replacement cost by its remaining years and save that yearly."
            ]),
            ContentBlock(id: "home403_b4", type: .commonMistakes, title: "Budgeting Mistakes to Avoid", bullets: [
                "Assuming nothing will break because it hasn't yet - age catches up all at once.",
                "Treating an emergency replacement as a surprise when you knew the unit's age.",
                "Choosing the cheapest bid on a 20-year system to save a little today.",
                "Ignoring efficiency: a higher-efficiency unit can pay back its premium in lower bills.",
                "Financing big repairs on credit cards instead of building a reserve."
            ]),
            ContentBlock(id: "home403_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Know each system's age and lifespan, then save toward its replacement.",
                "Reserve roughly 1-3% of home value (or $1/sq ft) per year.",
                "Plan and shop big-ticket items ahead of failure to get better prices and avoid debt."
            ])
        ],
        quiz: Quiz(id: "home403_q", passPercent: 80, questions: [
            Question(id: "home403_q1", prompt: "Match each major system to its typical lifespan.", matchingPairs: [
                MatchingPair(left: "Asphalt shingle roof", right: "About 20-25 years"),
                MatchingPair(left: "HVAC system", right: "About 15-20 years"),
                MatchingPair(left: "Tank water heater", right: "About 8-12 years"),
                MatchingPair(left: "Exterior paint", right: "About 7-10 years")
            ], explanation: "Knowing typical lifespans lets you forecast replacements years in advance and save accordingly."),
            Question(id: "home403_q2", type: .scenario, prompt: "Your AC is 17 years old and still working. The smartest financial move is to:", choices: ["Do nothing and replace it only when it dies", "Start budgeting and get quotes now so you can replace it on your terms", "Replace it immediately even though it works", "Finance the eventual replacement on a credit card"], correctIndex: 1, explanation: "At 17 years it is near end of life. Budgeting and getting quotes now lets you replace it in the off-season at a better price, on your schedule, paid from savings."),
            Question(id: "home403_q3", prompt: "A common rule of thumb is to reserve roughly ____ of the home's value per year for maintenance and repairs.", acceptedAnswers: ["1-3%", "1 to 3%", "1-3 percent", "1%", "2%", "3%", "one to three percent"], explanation: "Setting aside about 1-3% of the home's value yearly builds a reserve that absorbs big-ticket repairs without wrecking your budget."),
            Question(id: "home403_q4", type: .multiSelect, prompt: "Which are sound big-ticket budgeting practices?", choices: ["Track the install year of each major system", "Keep a separate home reserve fund", "Wait for failure, then put it on a credit card", "Shop replacements in the off-season", "Build a sinking fund based on remaining lifespan"], correctIndices: [0, 1, 3, 4], explanation: "Tracking ages, keeping a reserve, off-season shopping, and sinking funds are all sound. Waiting for failure and financing on credit cards is the trap to avoid."),
            Question(id: "home403_q5", type: .multipleChoice, prompt: "A 'sinking fund' for a roof works by:", choices: ["Borrowing the full cost when it fails", "Dividing the replacement cost by remaining years and saving that amount yearly", "Paying a contractor a yearly retainer", "Insuring against normal wear and tear"], correctIndex: 1, explanation: "A sinking fund spreads a known future cost across the years you have left - divide the replacement cost by remaining lifespan and save that each year.")
        ]),
        flashcards: [
            Flashcard(id: "home403_f1", front: "1-3% Rule", back: "Reserve roughly 1-3% of the home's value each year (or about $1 per square foot) for maintenance and repairs"),
            Flashcard(id: "home403_f2", front: "Sinking Fund", back: "Divide a system's replacement cost by its remaining years and save that amount yearly to be ready when it fails"),
            Flashcard(id: "home403_f3", front: "Roof & HVAC Lifespans", back: "Asphalt roof ~20-25 years; HVAC ~15-20 years; tank water heater ~8-12 years - plan replacements around these"),
            Flashcard(id: "home403_f4", front: "Off-Season Pricing", back: "Buy big-ticket items ahead of failure and in the off-season for better prices and less pressure")
        ],
        tags: ["budgeting", "repairs", "finance"]
    )

    static let lesson16 = Lesson(
        id: "home_t4_04",
        categoryId: .home,
        tier: 4,
        lessonNumber: 4,
        title: "Confident Small DIY Repairs",
        subtitle: "Do the jobs worth doing yourself - safely",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["home_t4_03"],
        contentBlocks: [
            ContentBlock(id: "home404_b1", type: .whyMatters, title: "Know What to Do and What to Hand Off", bullets: [
                "A capable owner handles small repairs in minutes that would otherwise mean a $150 minimum service call.",
                "Equally important is judgment - knowing which jobs are safe DIY and which need a licensed pro or a permit.",
                "Confidence comes from method and respect for the risks, not from bravado."
            ]),
            ContentBlock(id: "home404_b2", type: .stepByStep, title: "High-Value DIY Wins", bullets: [
                "Replace a worn toilet flapper or fill valve - stop a running toilet for a few dollars.",
                "Swap a faucet aerator or showerhead to restore flow and stop drips.",
                "Replace a standard light switch or outlet - AFTER killing the breaker and verifying with a voltage tester.",
                "Recaulk a tub, shower, or sink to stop water intrusion.",
                "Patch small drywall holes with a patch kit, joint compound, sand, and paint."
            ], callouts: ["For any electrical work: turn off the breaker, verify the circuit is dead with a non-contact voltage tester, then verify again. When in doubt, hire an electrician."]),
            ContentBlock(id: "home404_b3", type: .principles, title: "The DIY Decision Framework", bullets: [
                "Reversibility - can a mistake be easily undone? Caulk yes; a gas line no.",
                "Consequence of failure - cosmetic flop vs. fire, flood, or injury. Higher stakes mean call a pro.",
                "Permit and code - structural, gas, major electrical, and main plumbing changes often legally require licensed work.",
                "Your real skill and tools - honesty here prevents a small job from becoming an expensive rescue.",
                "Time and access - a quick reachable fix vs. a multi-day job on a roof or in a crawlspace."
            ]),
            ContentBlock(id: "home404_b4", type: .safety, title: "Hard 'Call a Pro' Lines", bullets: [
                "Gas lines and gas appliance connections - leaks are deadly; this is licensed work.",
                "Main electrical panel work and adding circuits - lethal voltage and code/permit requirements.",
                "Structural changes - removing or altering load-bearing walls.",
                "Main water/sewer lines and anything requiring a permit or inspection.",
                "Roof work at height - falls are among the most common serious home-repair injuries."
            ], callouts: ["This is educational guidance, not a substitute for licensed trades, local code, or required permits. If a mistake could cause fire, flood, gas leak, structural failure, or injury - hire it out."]),
            ContentBlock(id: "home404_b5", type: .summary, title: "The Bottom Line", bullets: [
                "DIY the small, reversible, low-stakes jobs - flappers, aerators, caulk, switches (power off, verified).",
                "Use the framework: reversibility, consequence, permits, your skill, and access.",
                "Gas, panel work, structure, and main lines are pro territory - know your lines and respect them."
            ])
        ],
        quiz: Quiz(id: "home404_q", passPercent: 80, questions: [
            Question(id: "home404_q1", type: .scenario, prompt: "You want to replace a light switch yourself. The correct safety sequence is:", choices: ["Flip the switch off and start unscrewing it", "Turn off the breaker, verify the wires are dead with a voltage tester, then work", "Work quickly so you are exposed for less time", "Wear rubber gloves and leave the power on"], correctIndex: 1, explanation: "Kill the breaker, confirm the wires are de-energized with a non-contact voltage tester (then verify again), and only then work. Switching off the switch alone does not de-energize the box."),
            Question(id: "home404_q2", type: .multiSelect, prompt: "Which jobs are appropriate, low-risk DIY for a confident homeowner?", choices: ["Replacing a toilet flapper", "Connecting a new gas appliance line", "Recaulking a shower", "Swapping a faucet aerator", "Removing a load-bearing wall"], correctIndices: [0, 2, 3], explanation: "Flappers, caulk, and aerators are safe, reversible DIY. Gas connections and load-bearing wall removal are licensed/professional work."),
            Question(id: "home404_q3", prompt: "Before any DIY electrical work, kill the breaker and confirm the circuit is dead using a ____ ____ ____.", acceptedAnswers: ["non-contact voltage tester", "noncontact voltage tester", "voltage tester", "non contact voltage tester"], explanation: "A non-contact voltage tester proves the wires are de-energized before you touch them. Verify, then verify again."),
            Question(id: "home404_q4", prompt: "Match each DIY decision factor to its question.", matchingPairs: [
                MatchingPair(left: "Reversibility", right: "Can a mistake be easily undone?"),
                MatchingPair(left: "Consequence", right: "Could failure cause fire, flood, or injury?"),
                MatchingPair(left: "Permit/Code", right: "Does the law require licensed work?"),
                MatchingPair(left: "Skill & Tools", right: "Do I honestly have what this job needs?")
            ], explanation: "Running a job through this framework tells you quickly whether to DIY it or hire a professional."),
            Question(id: "home404_q5", type: .multipleChoice, prompt: "Which job clearly belongs to a licensed professional rather than DIY?", choices: ["Patching a small drywall hole", "Replacing a faucet aerator", "Connecting a gas appliance line", "Recaulking a sink"], correctIndex: 2, explanation: "Gas appliance connections carry deadly leak and explosion risk and are licensed work. The other three are safe, reversible DIY tasks.")
        ]),
        flashcards: [
            Flashcard(id: "home404_f1", front: "Electrical Safety Sequence", back: "Turn off the breaker, verify the circuit is dead with a non-contact voltage tester, then verify again before working"),
            Flashcard(id: "home404_f2", front: "DIY Decision Framework", back: "Weigh reversibility, consequence of failure, permit/code requirements, your real skill/tools, and access"),
            Flashcard(id: "home404_f3", front: "Always-Pro Jobs", back: "Gas lines, main panel work and new circuits, structural changes, main water/sewer lines, and risky roof work"),
            Flashcard(id: "home404_f4", front: "High-Value DIY Wins", back: "Toilet flapper, faucet aerator, switch/outlet (power off and verified), recaulking, and small drywall patches")
        ],
        tags: ["diy", "repairs", "safety"]
    )
}
