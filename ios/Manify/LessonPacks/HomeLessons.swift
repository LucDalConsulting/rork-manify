import Foundation

enum HomeLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3,
        lesson4, lesson5, lesson6,
        lesson7, lesson8
    ]

    // MARK: - Tier 1: Structural Awareness

    static let lesson1 = Lesson(
        id: "home_t1_01",
        categoryId: .home,
        tier: 1,
        lessonNumber: 1,
        title: "How a House Works as a System",
        subtitle: "Your home is an engineered machine",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "home101_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "A house is not a static box — it's a collection of interconnected mechanical and structural systems.",
                "Homeowners who understand the system diagnose problems faster, avoid unnecessary panic, and spend less on contractors.",
                "Ignorance of how your home works is expensive."
            ]),
            ContentBlock(id: "home101_b2", type: .systemOverview, title: "System Overview", bullets: [
                "Structural System — Foundation, framing, roof. Holds everything up.",
                "Plumbing System — Supply lines bring water in, drain-waste-vent lines take it out.",
                "Electrical System — Panel, circuits, outlets, switches. Powers everything.",
                "HVAC System — Heating, ventilation, air conditioning. Climate control.",
                "Building Envelope — Insulation, windows, doors, siding. Keeps weather out and conditioned air in."
            ]),
            ContentBlock(id: "home101_b3", type: .howItWorks, title: "How They Interact", bullets: [
                "Plumbing and HVAC share infrastructure — water heaters connect to both.",
                "Electrical powers HVAC equipment — furnace blowers, AC compressors, thermostats.",
                "The building envelope determines how hard HVAC works — poor insulation means higher bills.",
                "Structural integrity protects all other systems from water intrusion and damage."
            ]),
            ContentBlock(id: "home101_b4", type: .ownerActions, title: "Owner Actions", bullets: [
                "Know where your main water shutoff is. Know where your electrical panel is.",
                "Walk your home quarterly: check for leaks, listen for unusual sounds, look at the roof.",
                "Keep a maintenance calendar — filters, gutters, HVAC service."
            ]),
            ContentBlock(id: "home101_b5", type: .summary, title: "Summary", bullets: [
                "Five core systems: structural, plumbing, electrical, HVAC, envelope.",
                "They interact constantly — a failure in one can cascade.",
                "Knowing the system means knowing what to check, when to act, and when to call a pro."
            ])
        ],
        quiz: Quiz(id: "home101_q", passPercent: 80, questions: [
            Question(id: "home101_q1", prompt: "Match each home system to what it controls.", matchingPairs: [
                MatchingPair(left: "Structural", right: "Foundation, framing, and roof"),
                MatchingPair(left: "Plumbing", right: "Water supply and drainage"),
                MatchingPair(left: "HVAC", right: "Heating, cooling, and ventilation"),
                MatchingPair(left: "Building Envelope", right: "Insulation, windows, and weatherproofing")
            ], explanation: "The five core systems (including electrical) are all interconnected and depend on each other."),
            Question(id: "home101_q2", type: .scenario, prompt: "You hear running water but no faucets are on. Your first action should be:", choices: ["Call a plumber immediately", "Wait until tomorrow to see if it stops", "Locate and check the main water shutoff", "Turn off the electricity"], correctIndex: 2, explanation: "Knowing your main water shutoff location is critical — it's the first thing to check if you suspect a hidden leak."),
            Question(id: "home101_q3", prompt: "A failure in one home system can _____ into others.", acceptedAnswers: ["cascade", "spread", "transfer", "flow"], explanation: "Home systems are interconnected. A roof leak can damage electrical wiring, cause mold, and compromise structural integrity."),
            Question(id: "home101_q4", type: .multiSelect, prompt: "Which are among the five core home systems?", choices: ["Structural", "Landscaping", "Electrical", "HVAC", "Security cameras", "Building Envelope"], correctIndices: [0, 2, 3, 5], explanation: "The five core systems are structural, plumbing, electrical, HVAC, and building envelope. Landscaping and security are not core systems.")
        ]),
        flashcards: [
            Flashcard(id: "home101_f1", front: "Building Envelope", back: "The physical barrier between the interior and exterior: insulation, windows, doors, siding, and roof"),
            Flashcard(id: "home101_f2", front: "Main Water Shutoff", back: "The valve that stops all water flow into the house — typically near where the main line enters the building"),
            Flashcard(id: "home101_f3", front: "HVAC", back: "Heating, Ventilation, and Air Conditioning — the climate control system of a home"),
            Flashcard(id: "home101_f4", front: "Drain-Waste-Vent (DWV)", back: "The plumbing subsystem that removes wastewater and vents sewer gases out of the building")
        ],
        tags: ["systems", "basics", "overview"]
    )

    static let lesson2 = Lesson(
        id: "home_t1_02",
        categoryId: .home,
        tier: 1,
        lessonNumber: 2,
        title: "Water Heater Basics",
        subtitle: "How your hot water actually works",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["home_t1_01"],
        contentBlocks: [
            ContentBlock(id: "home102_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The water heater is one of the most expensive appliances to replace.",
                "Understanding how it works lets you extend its life, diagnose failures, and avoid emergency calls."
            ]),
            ContentBlock(id: "home102_b2", type: .componentBreakdown, title: "Component Breakdown", bullets: [
                "Tank — Insulated storage vessel. Typical residential: 40-50 gallons.",
                "Heating Element — Gas burner (bottom) or electric elements (upper and lower).",
                "Thermostat — Controls temperature. Factory default usually 120°F.",
                "Anode Rod — Sacrificial metal rod that corrodes instead of the tank. Key maintenance item.",
                "T&P Relief Valve — Temperature and pressure safety valve. Prevents explosion.",
                "Dip Tube — Directs cold water to the bottom of the tank for even heating."
            ]),
            ContentBlock(id: "home102_b3", type: .failureModes, title: "Failure Modes", bullets: [
                "Anode rod depletion — tank starts corroding from inside. No warning until leaks appear.",
                "Sediment buildup — reduces efficiency, causes popping/rumbling sounds.",
                "T&P valve failure — rare but dangerous. Never cap or plug this valve.",
                "Thermostat failure — water too hot or not hot enough."
            ]),
            ContentBlock(id: "home102_b4", type: .ownerActions, title: "Owner Actions", bullets: [
                "Flush the tank annually to remove sediment.",
                "Check or replace the anode rod every 3-5 years.",
                "Test the T&P relief valve annually — lift the lever, water should flow.",
                "Know the age of your unit — most tanks last 8-12 years."
            ]),
            ContentBlock(id: "home102_b5", type: .callPro, title: "When to Call a Pro", bullets: [
                "Water pooling around the base — likely tank failure.",
                "Gas smell near a gas water heater — leave immediately and call the gas company.",
                "No hot water after checking thermostat and breaker/pilot light."
            ]),
            ContentBlock(id: "home102_b6", type: .summary, title: "Summary", bullets: [
                "Know your water heater's age, type, and maintenance schedule.",
                "The anode rod is the single most important maintenance item.",
                "Annual flushing prevents sediment buildup and extends tank life."
            ])
        ],
        quiz: Quiz(id: "home102_q", passPercent: 80, questions: [
            Question(id: "home102_q1", prompt: "Match each water heater component to its function.", matchingPairs: [
                MatchingPair(left: "Anode Rod", right: "Sacrificial rod that corrodes instead of the tank"),
                MatchingPair(left: "T&P Relief Valve", right: "Safety valve preventing explosion from excess pressure"),
                MatchingPair(left: "Dip Tube", right: "Directs cold water to bottom for even heating"),
                MatchingPair(left: "Thermostat", right: "Controls water temperature")
            ], explanation: "Each component serves a specific function in the water heater system."),
            Question(id: "home102_q2", type: .scenario, prompt: "You notice popping and rumbling sounds from your water heater. The most likely cause is:", choices: ["A failing thermostat", "Normal operation", "Sediment buildup at the bottom of the tank", "A broken dip tube"], correctIndex: 2, explanation: "Popping and rumbling sounds indicate sediment buildup. Annual flushing prevents this issue."),
            Question(id: "home102_q3", prompt: "The anode rod should be checked or replaced every _____ years.", acceptedAnswers: ["3-5", "3 to 5", "three to five", "3", "4", "5"], explanation: "The anode rod is a sacrificial component that should be inspected every 3-5 years. Once depleted, the tank starts corroding."),
            Question(id: "home102_q4", type: .multiSelect, prompt: "Which are critical owner maintenance tasks for a water heater?", choices: ["Flush the tank annually", "Replace the anode rod every 3-5 years", "Test the T&P relief valve annually", "Repaint the tank exterior yearly", "Know the age of your unit"], correctIndices: [0, 1, 2, 4], explanation: "Annual flushing, anode rod replacement, T&P testing, and knowing the unit's age are all critical maintenance tasks.")
        ]),
        flashcards: [
            Flashcard(id: "home102_f1", front: "Anode Rod", back: "A sacrificial metal rod inside the water heater tank that corrodes to protect the tank — replace every 3-5 years"),
            Flashcard(id: "home102_f2", front: "T&P Relief Valve", back: "Temperature and Pressure relief valve — a critical safety device that releases water if pressure or temperature gets too high"),
            Flashcard(id: "home102_f3", front: "Dip Tube", back: "A tube that directs cold incoming water to the bottom of the tank for efficient heating"),
            Flashcard(id: "home102_f4", front: "Sediment Buildup", back: "Mineral deposits that accumulate at the bottom of the tank, reducing efficiency and causing rumbling sounds")
        ],
        tags: ["plumbing", "water heater", "maintenance"]
    )

    static let lesson3 = Lesson(
        id: "home_t1_03",
        categoryId: .home,
        tier: 1,
        lessonNumber: 3,
        title: "Electrical Panel Basics",
        subtitle: "The command center of your home's power",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["home_t1_01"],
        contentBlocks: [
            ContentBlock(id: "home103_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The electrical panel is the single most important piece of your home's electrical system.",
                "Knowing how to read it, reset a breaker, and recognize danger signs can prevent fires and save money."
            ]),
            ContentBlock(id: "home103_b2", type: .componentBreakdown, title: "Component Breakdown", bullets: [
                "Main Breaker — Master switch that kills all power. Typically 100-200 amps for residential.",
                "Branch Breakers — Individual circuits. 15A for lighting, 20A for outlets, 30-50A for large appliances.",
                "Bus Bars — Metal strips that distribute power from the main breaker to branch circuits.",
                "Neutral Bar — Connection point for neutral (return) wires.",
                "Ground Bar — Connection point for ground (safety) wires."
            ]),
            ContentBlock(id: "home103_b3", type: .ownerActions, title: "Owner Actions", bullets: [
                "Label every breaker — know which circuits control which rooms and appliances.",
                "Never use a breaker as a regular on/off switch — they're designed for overcurrent protection.",
                "If a breaker trips repeatedly, do not keep resetting it. Find the cause.",
                "Keep the panel area clear — minimum 3 feet of clearance in front."
            ]),
            ContentBlock(id: "home103_b4", type: .callPro, title: "When to Call an Electrician", bullets: [
                "Burning smell from the panel.",
                "Scorch marks or melted plastic on breakers.",
                "Breaker trips repeatedly without obvious overload.",
                "Panel is warm to the touch.",
                "You have a Federal Pacific or Zinsco panel — known fire hazards."
            ]),
            ContentBlock(id: "home103_b5", type: .summary, title: "Summary", bullets: [
                "Know your main breaker, branch circuits, and how to reset safely.",
                "Label everything. Never ignore a repeatedly tripping breaker.",
                "The panel is the command center — treat it with respect."
            ])
        ],
        quiz: Quiz(id: "home103_q", passPercent: 80, questions: [
            Question(id: "home103_q1", type: .scenario, prompt: "You smell burning near your electrical panel. Your immediate action should be:", choices: ["Reset all breakers to find the problem", "Open the panel cover to inspect inside", "Turn off the main breaker and call an electrician immediately", "Spray water on the panel to cool it"], correctIndex: 2, explanation: "A burning smell at the panel is a potential fire hazard. Kill the main breaker and call a licensed electrician immediately."),
            Question(id: "home103_q2", prompt: "Match each panel component to its function.", matchingPairs: [
                MatchingPair(left: "Main Breaker", right: "Master switch controlling all power"),
                MatchingPair(left: "Branch Breakers", right: "Individual circuits for rooms/appliances"),
                MatchingPair(left: "Bus Bars", right: "Metal strips distributing power"),
                MatchingPair(left: "Ground Bar", right: "Connection point for safety ground wires")
            ], explanation: "Understanding panel components helps you safely manage your home's electrical system."),
            Question(id: "home103_q3", type: .multiSelect, prompt: "Which are warning signs that require calling an electrician?", choices: ["Burning smell from the panel", "Scorch marks on breakers", "A breaker tripping once during a storm", "Panel is warm to the touch", "You have a Federal Pacific panel"], correctIndices: [0, 1, 3, 4], explanation: "Burning smell, scorch marks, warm panels, and Federal Pacific panels are all serious warning signs. A single trip during a storm is usually normal."),
            Question(id: "home103_q4", prompt: "Typical residential main breaker capacity is:", choices: ["50-75 amps", "100-200 amps", "300-400 amps", "500+ amps"], correctIndex: 1, explanation: "Most residential electrical panels have 100-200 amp main breakers.")
        ]),
        flashcards: [
            Flashcard(id: "home103_f1", front: "Main Breaker", back: "The master switch that controls all power to the home — typically 100-200 amps residential"),
            Flashcard(id: "home103_f2", front: "Branch Circuit", back: "An individual circuit controlled by its own breaker, serving specific rooms or appliances"),
            Flashcard(id: "home103_f3", front: "Bus Bar", back: "Metal strips inside the panel that distribute electricity from the main breaker to individual circuits"),
            Flashcard(id: "home103_f4", front: "Federal Pacific Panel", back: "A brand of electrical panel known for breaker failure and fire risk — should be replaced if found")
        ],
        tags: ["electrical", "panel", "safety"]
    )

    // MARK: - Tier 2: Operational Competence

    static let lesson4 = Lesson(
        id: "home_t2_01",
        categoryId: .home,
        tier: 2,
        lessonNumber: 1,
        title: "HVAC System Fundamentals",
        subtitle: "Heating and cooling — the biggest energy consumer",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["home_t1_03"],
        contentBlocks: [
            ContentBlock(id: "home201_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "HVAC is typically the largest energy expense in your home.",
                "Understanding the basics means you can maintain it properly, extend its life, and avoid being upsold by contractors."
            ]),
            ContentBlock(id: "home201_b2", type: .componentBreakdown, title: "Heating Systems", bullets: [
                "Furnace — Burns gas or uses electric elements to heat air. A blower pushes heated air through ductwork.",
                "Heat Pump — Moves heat instead of generating it. Works like an AC in reverse. Very efficient in moderate climates.",
                "Boiler — Heats water and distributes it through radiators or radiant floor systems."
            ]),
            ContentBlock(id: "home201_b3", type: .componentBreakdown, title: "Cooling Systems", bullets: [
                "Central AC — Compressor (outside) and evaporator coil (inside). Refrigerant absorbs indoor heat and releases it outside.",
                "Heat Pump — Same unit does both heating and cooling by reversing the refrigerant cycle.",
                "Ductwork — The distribution system. Leaky ducts can waste 20-30% of conditioned air."
            ]),
            ContentBlock(id: "home201_b4", type: .ownerActions, title: "Owner Actions", bullets: [
                "Replace air filters every 1-3 months. A clogged filter restricts airflow and damages the system.",
                "Keep outdoor units clear of debris — 2 feet of clearance minimum.",
                "Schedule professional maintenance twice a year: spring for AC, fall for heat.",
                "Don't close more than 20% of vents — it increases duct pressure and strains the system."
            ]),
            ContentBlock(id: "home201_b5", type: .summary, title: "Summary", bullets: [
                "Furnaces heat air, heat pumps move heat, AC removes heat.",
                "Filter replacement is the single most impactful maintenance task.",
                "Professional maintenance twice a year extends equipment life by years."
            ])
        ],
        quiz: Quiz(id: "home201_q", passPercent: 80, questions: [
            Question(id: "home201_q1", prompt: "Match each HVAC system to how it works.", matchingPairs: [
                MatchingPair(left: "Furnace", right: "Burns gas or uses electric elements to heat air"),
                MatchingPair(left: "Heat Pump", right: "Moves heat instead of generating it"),
                MatchingPair(left: "Central AC", right: "Refrigerant absorbs indoor heat, releases it outside"),
                MatchingPair(left: "Boiler", right: "Heats water for radiators or radiant floors")
            ], explanation: "Different HVAC systems use fundamentally different methods to condition your home."),
            Question(id: "home201_q2", type: .scenario, prompt: "Your AC is running but blowing warm air. Before calling a technician, you should first check:", choices: ["The compressor", "The refrigerant level", "Whether the air filter is clogged", "The ductwork for leaks"], correctIndex: 2, explanation: "A clogged air filter is the most common cause of reduced cooling. Always check it first — it's free and takes 30 seconds."),
            Question(id: "home201_q3", prompt: "HVAC air filters should be replaced every _____.", acceptedAnswers: ["1-3 months", "1 to 3 months", "one to three months", "monthly", "every month", "every 1-3 months"], explanation: "Filters should be replaced every 1-3 months depending on type, pets, and usage. This is the single highest-impact maintenance habit."),
            Question(id: "home201_q4", type: .multiSelect, prompt: "Which are proper HVAC owner maintenance tasks?", choices: ["Replace air filters every 1-3 months", "Recharge refrigerant yourself", "Keep outdoor unit clear of debris", "Schedule professional maintenance twice yearly", "Close most vents to save energy"], correctIndices: [0, 2, 3], explanation: "Filter replacement, outdoor unit clearance, and professional maintenance are owner tasks. Refrigerant requires a licensed tech, and closing too many vents strains the system.")
        ]),
        flashcards: [
            Flashcard(id: "home201_f1", front: "Heat Pump", back: "A system that moves heat rather than generating it — can both heat and cool by reversing the refrigerant cycle"),
            Flashcard(id: "home201_f2", front: "Evaporator Coil", back: "The indoor component where refrigerant absorbs heat from your home's air"),
            Flashcard(id: "home201_f3", front: "Condenser", back: "The outdoor unit where refrigerant releases absorbed heat to the outside air"),
            Flashcard(id: "home201_f4", front: "SEER Rating", back: "Seasonal Energy Efficiency Ratio — higher numbers mean more efficient cooling")
        ],
        tags: ["hvac", "heating", "cooling"]
    )

    static let lesson5 = Lesson(
        id: "home_t2_02",
        categoryId: .home,
        tier: 2,
        lessonNumber: 2,
        title: "Plumbing Supply and Drain Systems",
        subtitle: "Water in, water out — the complete picture",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["home_t2_01"],
        contentBlocks: [
            ContentBlock(id: "home202_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Plumbing problems are the most common homeowner emergency.",
                "Understanding supply vs drain systems lets you isolate problems and act before damage spreads."
            ]),
            ContentBlock(id: "home202_b2", type: .componentBreakdown, title: "Supply Side", bullets: [
                "Main water line enters from the street. Passes through the meter and main shutoff.",
                "Pressure regulator reduces incoming pressure to safe levels (typically 40-80 PSI).",
                "Supply lines branch to fixtures, appliances, and the water heater.",
                "Hot and cold lines run in parallel to each fixture.",
                "Individual shutoff valves at each fixture allow targeted isolation."
            ]),
            ContentBlock(id: "home202_b3", type: .componentBreakdown, title: "Drain Side", bullets: [
                "Drain lines use gravity — they slope downward toward the sewer or septic.",
                "Vent pipes allow air into the system to prevent vacuum locks and siphoning of traps.",
                "P-traps under every fixture hold water to block sewer gas from entering the home.",
                "Cleanout access points allow clearing blockages without disassembly."
            ]),
            ContentBlock(id: "home202_b4", type: .failureModes, title: "Common Problems", bullets: [
                "Slow drains — usually hair, grease, or mineral buildup. Not always a main line issue.",
                "Low water pressure — could be a supply issue, clogged aerator, or partially closed valve.",
                "Running toilet — worn flapper valve is the most common cause.",
                "Water hammer — banging pipes when valves close quickly. Can damage connections over time."
            ]),
            ContentBlock(id: "home202_b5", type: .summary, title: "Summary", bullets: [
                "Supply runs under pressure; drains run by gravity.",
                "Know your shutoffs — main and individual fixtures.",
                "P-traps block sewer gas. Vents prevent vacuum locks.",
                "Most drain problems start minor — address them early."
            ])
        ],
        quiz: Quiz(id: "home202_q", passPercent: 80, questions: [
            Question(id: "home202_q1", prompt: "Match each plumbing component to its function.", matchingPairs: [
                MatchingPair(left: "P-Trap", right: "Holds water to block sewer gas"),
                MatchingPair(left: "Vent Pipe", right: "Allows air in to prevent vacuum locks"),
                MatchingPair(left: "Pressure Regulator", right: "Reduces incoming water pressure to safe levels"),
                MatchingPair(left: "Cleanout", right: "Access point for clearing drain blockages")
            ], explanation: "Each plumbing component serves a specific purpose in the supply or drain system."),
            Question(id: "home202_q2", type: .scenario, prompt: "Your toilet keeps running continuously. The most common cause is:", choices: ["A broken supply line", "A cracked bowl", "A worn flapper valve in the tank", "High water pressure"], correctIndex: 2, explanation: "The flapper valve seals the tank. When it wears out, water continuously leaks from the tank into the bowl — a cheap and easy fix."),
            Question(id: "home202_q3", prompt: "Drain lines move water using _____, not pressure.", acceptedAnswers: ["gravity", "gravitational force", "slope"], explanation: "Drain lines rely on gravity — they slope downward toward the sewer or septic system."),
            Question(id: "home202_q4", type: .multiSelect, prompt: "Which are common plumbing problems a homeowner can often diagnose?", choices: ["Slow drains from hair or grease buildup", "Low pressure from a partially closed valve", "Main sewer line collapse", "Running toilet from worn flapper", "Water hammer from quick-closing valves"], correctIndices: [0, 1, 3, 4], explanation: "Most of these are diagnosable by homeowners. A main sewer line collapse requires professional inspection with a camera.")
        ]),
        flashcards: [
            Flashcard(id: "home202_f1", front: "P-Trap", back: "A curved pipe fitting that holds water to create a seal blocking sewer gas from entering the home"),
            Flashcard(id: "home202_f2", front: "Vent Pipe", back: "Pipes that allow air into the drain system to prevent vacuum locks and ensure proper drainage"),
            Flashcard(id: "home202_f3", front: "Water Hammer", back: "A banging sound in pipes caused by water suddenly stopping or changing direction when a valve closes quickly"),
            Flashcard(id: "home202_f4", front: "Pressure Regulator", back: "A valve that reduces incoming water pressure from the main line to safe residential levels (40-80 PSI)")
        ],
        tags: ["plumbing", "supply", "drain"]
    )

    static let lesson6 = Lesson(
        id: "home_t2_03",
        categoryId: .home,
        tier: 2,
        lessonNumber: 3,
        title: "Seasonal Maintenance Calendar",
        subtitle: "What to do and when to do it",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["home_t2_01"],
        contentBlocks: [
            ContentBlock(id: "home203_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Preventive maintenance is dramatically cheaper than emergency repairs.",
                "A seasonal checklist keeps you ahead of problems instead of reacting to them."
            ]),
            ContentBlock(id: "home203_b2", type: .componentBreakdown, title: "Spring", bullets: [
                "Inspect roof for winter damage — missing shingles, flashing issues.",
                "Clean gutters and downspouts.",
                "Service AC before summer — filter, outdoor unit clearance, professional tune-up.",
                "Check exterior caulking and weather stripping.",
                "Test sump pump operation."
            ]),
            ContentBlock(id: "home203_b3", type: .componentBreakdown, title: "Fall", bullets: [
                "Schedule furnace/heating maintenance.",
                "Clean gutters again after leaves fall.",
                "Disconnect and drain garden hoses. Winterize exterior hose bibs.",
                "Reverse ceiling fan direction (clockwise for winter).",
                "Check smoke and CO detector batteries.",
                "Inspect attic insulation and ventilation."
            ]),
            ContentBlock(id: "home203_b4", type: .ownerActions, title: "Monthly/Quarterly Tasks", bullets: [
                "Monthly: Replace HVAC filters. Test smoke/CO detectors. Check for leaks under sinks.",
                "Quarterly: Flush water heater. Clean dryer vent lint buildup. Inspect caulking around tubs/showers.",
                "Annually: Test T&P valve. Inspect anode rod. Clean dryer vent duct. Professional HVAC service."
            ]),
            ContentBlock(id: "home203_b5", type: .summary, title: "Summary", bullets: [
                "Spring: roof, gutters, AC prep. Fall: furnace, winterization, detectors.",
                "Monthly filter changes are the single highest-impact habit.",
                "Prevention beats emergency repair by a factor of 10x in cost."
            ])
        ],
        quiz: Quiz(id: "home203_q", passPercent: 80, questions: [
            Question(id: "home203_q1", prompt: "Match each season to its primary maintenance focus.", matchingPairs: [
                MatchingPair(left: "Spring", right: "Inspect roof, clean gutters, service AC"),
                MatchingPair(left: "Fall", right: "Service furnace, winterize hose bibs, check detectors"),
                MatchingPair(left: "Monthly", right: "Replace HVAC filters, test smoke detectors"),
                MatchingPair(left: "Annually", right: "Test T&P valve, inspect anode rod, clean dryer vent")
            ], explanation: "A seasonal maintenance calendar keeps you ahead of problems instead of reacting to them."),
            Question(id: "home203_q2", type: .scenario, prompt: "It's late October and temperatures are about to drop below freezing. Which task is most urgent?", choices: ["Clean the gutters", "Disconnect and drain garden hoses before pipes freeze", "Service the AC unit", "Paint the exterior trim"], correctIndex: 1, explanation: "Garden hoses left connected can cause the hose bib and indoor supply line to freeze and burst — causing serious water damage."),
            Question(id: "home203_q3", prompt: "The single most impactful monthly maintenance habit is replacing _____.", acceptedAnswers: ["HVAC filters", "air filters", "hvac filter", "air filter", "the HVAC filter", "filters"], explanation: "Replacing HVAC filters monthly is the highest-impact maintenance habit — it protects the system and improves air quality."),
            Question(id: "home203_q4", type: .multiSelect, prompt: "Which are fall winterization tasks?", choices: ["Schedule furnace maintenance", "Service the AC", "Disconnect garden hoses", "Check smoke and CO detector batteries", "Reverse ceiling fans clockwise", "Clean pool filter"], correctIndices: [0, 2, 3, 4], explanation: "Fall tasks focus on heating prep and freeze prevention. AC service is a spring task.")
        ]),
        flashcards: [
            Flashcard(id: "home203_f1", front: "Hose Bib Winterization", back: "Disconnecting garden hoses and shutting off interior supply valves before freezing weather to prevent burst pipes"),
            Flashcard(id: "home203_f2", front: "HVAC Tune-Up", back: "Professional maintenance twice yearly — spring for AC, fall for heating — extends equipment life and prevents breakdowns"),
            Flashcard(id: "home203_f3", front: "Ceiling Fan Direction", back: "Counterclockwise in summer (downdraft cooling), clockwise in winter (updraft to circulate warm air)")
        ],
        tags: ["maintenance", "seasonal", "checklist"]
    )

    // MARK: - Tier 3: Diagnostic Thinking

    static let lesson7 = Lesson(
        id: "home_t3_01",
        categoryId: .home,
        tier: 3,
        lessonNumber: 1,
        title: "Diagnostic: No Hot Water",
        subtitle: "Systematic troubleshooting when the shower goes cold",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["home_t2_03"],
        contentBlocks: [
            ContentBlock(id: "home301_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "No hot water is one of the most common homeowner emergencies.",
                "Knowing the diagnostic chain saves you from panicking and overpaying for a service call."
            ]),
            ContentBlock(id: "home301_b2", type: .howItWorks, title: "Diagnostic Chain", bullets: [
                "Step 1: Is ANY hot water coming from ANY faucet? If some are hot and others aren't, the problem is localized.",
                "Step 2 (Gas): Is the pilot light on? Many gas water heaters have a standing pilot or electronic ignition.",
                "Step 2 (Electric): Check the breaker. Electric water heaters use a dedicated 30A or 40A breaker.",
                "Step 3: Check the thermostat setting. Someone may have accidentally turned it down.",
                "Step 4: Has the unit run out of hot water? Wait 30-60 minutes for recovery.",
                "Step 5: Listen for unusual sounds. Popping/rumbling = sediment. No sound at all = no heating.",
                "Step 6: Check for leaks around the base. A leaking tank means replacement, not repair."
            ]),
            ContentBlock(id: "home301_b3", type: .callPro, title: "When to Call a Pro", bullets: [
                "Gas smell — leave the house immediately, call gas company from outside.",
                "Leaking tank — not repairable. Needs replacement.",
                "Pilot light won't stay lit after multiple attempts — thermocouple failure.",
                "Breaker keeps tripping — element or wiring fault."
            ]),
            ContentBlock(id: "home301_b4", type: .summary, title: "Summary", bullets: [
                "Follow the chain: faucets → pilot/breaker → thermostat → recovery time → sounds → leaks.",
                "Most no-hot-water situations have simple causes.",
                "Gas smell = evacuate. Leaking tank = replace."
            ])
        ],
        quiz: Quiz(id: "home301_q", passPercent: 80, questions: [
            Question(id: "home301_q1", prompt: "Put the no-hot-water diagnostic steps in the correct priority order.", matchingPairs: [
                MatchingPair(left: "Step 1", right: "Check if ANY faucet has hot water"),
                MatchingPair(left: "Step 2", right: "Check pilot light (gas) or breaker (electric)"),
                MatchingPair(left: "Step 3", right: "Verify thermostat setting"),
                MatchingPair(left: "Step 4", right: "Check for leaks around the base")
            ], explanation: "Following the diagnostic chain in order prevents unnecessary panic and service calls."),
            Question(id: "home301_q2", type: .scenario, prompt: "You smell gas near your water heater. Your immediate action should be:", choices: ["Relight the pilot light", "Check the thermostat", "Open a window and wait", "Leave immediately and call the gas company from outside"], correctIndex: 3, explanation: "Gas smell is a potential explosion risk. Evacuate without operating any switches or flames. Call the gas company from outside."),
            Question(id: "home301_q3", prompt: "A water heater leaking from the base means it needs _____.", acceptedAnswers: ["replacement", "to be replaced", "a replacement", "replacing"], explanation: "A leaking tank has failed structurally and cannot be repaired — it must be replaced."),
            Question(id: "home301_q4", type: .multiSelect, prompt: "Which situations require calling a professional rather than DIY troubleshooting?", choices: ["Gas smell near the water heater", "Thermostat accidentally turned down", "Leaking tank base", "Pilot light won't stay lit after multiple attempts", "Running out of hot water temporarily"], correctIndices: [0, 2, 3], explanation: "Gas smell (evacuate first), leaking tanks, and persistent pilot failure all require professional attention. Thermostat and recovery time are owner-level checks.")
        ]),
        flashcards: [
            Flashcard(id: "home301_f1", front: "Thermocouple", back: "A safety device that detects whether the pilot light is lit — if it fails, the gas valve stays closed"),
            Flashcard(id: "home301_f2", front: "Recovery Time", back: "The time it takes a water heater to reheat a full tank — typically 30-60 minutes depending on type and size"),
            Flashcard(id: "home301_f3", front: "Pilot Light", back: "A small standing flame that ignites the main burner on a gas water heater — some modern units use electronic ignition instead")
        ],
        tags: ["diagnostic", "water heater", "troubleshooting"]
    )

    static let lesson8 = Lesson(
        id: "home_t3_02",
        categoryId: .home,
        tier: 3,
        lessonNumber: 2,
        title: "Diagnostic: Overheating & Frozen Coils",
        subtitle: "When your HVAC fails in summer",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["home_t3_01"],
        contentBlocks: [
            ContentBlock(id: "home302_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "AC failures peak in the hottest weather when you need it most.",
                "Frozen evaporator coils are the most common AC issue and often have owner-fixable causes."
            ]),
            ContentBlock(id: "home302_b2", type: .howItWorks, title: "Why Coils Freeze", bullets: [
                "The evaporator coil needs warm air flowing over it to absorb heat.",
                "If airflow is restricted, the coil gets too cold and moisture freezes on it.",
                "Low refrigerant also causes the coil to run too cold — the remaining refrigerant expands too much.",
                "Once frozen, the coil blocks all airflow. The system blows warm air or nothing."
            ]),
            ContentBlock(id: "home302_b3", type: .howItWorks, title: "Diagnostic Chain", bullets: [
                "Step 1: Check the air filter. A clogged filter is the #1 cause of frozen coils.",
                "Step 2: Check all supply vents. Are too many closed? Open them.",
                "Step 3: Turn the system OFF but leave the fan ON. Let the coil thaw (2-4 hours).",
                "Step 4: Once thawed, replace the filter and restart. If it freezes again, call a technician.",
                "Step 5: If the system runs but never reaches setpoint, the issue may be low refrigerant — pro required."
            ]),
            ContentBlock(id: "home302_b4", type: .callPro, title: "When to Call a Pro", bullets: [
                "Coil refreezes after filter replacement and vent check — likely low refrigerant (leak).",
                "Compressor makes unusual clicking or grinding sounds.",
                "Refrigerant leak — only licensed HVAC technicians can handle refrigerant.",
                "Outdoor unit fan not spinning despite the system running."
            ]),
            ContentBlock(id: "home302_b5", type: .summary, title: "Summary", bullets: [
                "Frozen coil? Check filter first. Then vents. Then thaw.",
                "If it refreezes after filter change, it's likely a refrigerant issue.",
                "Never scrape ice off the coil — let it thaw naturally with the fan."
            ])
        ],
        quiz: Quiz(id: "home302_q", passPercent: 80, questions: [
            Question(id: "home302_q1", type: .scenario, prompt: "Your AC is blowing warm air and you notice ice on the indoor unit. Before calling a technician, you should:", choices: ["Scrape the ice off and restart", "Pour warm water on the coil", "Turn off cooling, run fan only to thaw, and check/replace the air filter", "Turn the system to maximum cooling"], correctIndex: 2, explanation: "Turn off cooling, let the coil thaw with the fan running (2-4 hours), and check the air filter — it's the #1 cause of frozen coils."),
            Question(id: "home302_q2", prompt: "The #1 cause of a frozen evaporator coil is a _____.", acceptedAnswers: ["clogged air filter", "dirty air filter", "clogged filter", "dirty filter", "blocked filter", "air filter"], explanation: "A clogged air filter restricts airflow over the evaporator coil, causing it to freeze. Always check the filter first."),
            Question(id: "home302_q3", type: .scenario, prompt: "You replaced the filter and thawed the coil, but it froze again within a day. This strongly suggests:", choices: ["The filter was installed backwards", "Too many vents are open", "Low refrigerant from a leak — requires a professional", "The outdoor unit needs cleaning"], correctIndex: 2, explanation: "If the coil refreezes after correcting airflow, low refrigerant from a leak is the likely cause. Only licensed HVAC technicians can handle refrigerant."),
            Question(id: "home302_q4", type: .multiSelect, prompt: "Which are owner-level steps for a frozen coil before calling a pro?", choices: ["Turn off cooling, run fan to thaw", "Replace or clean the air filter", "Add refrigerant yourself", "Check that supply vents are open", "Scrape ice off the coil with a tool"], correctIndices: [0, 1, 3], explanation: "Owners can turn off cooling, run the fan to thaw, replace the filter, and check vents. Refrigerant requires a licensed tech, and scraping can damage the coil.")
        ]),
        flashcards: [
            Flashcard(id: "home302_f1", front: "Frozen Evaporator Coil", back: "Ice buildup on the indoor coil caused by restricted airflow or low refrigerant — blocks cooling and must be thawed"),
            Flashcard(id: "home302_f2", front: "Refrigerant Leak", back: "A loss of refrigerant in the AC system — causes the coil to run too cold and freeze. Requires professional repair."),
            Flashcard(id: "home302_f3", front: "Evaporator Coil", back: "The indoor coil where refrigerant absorbs heat from your home's air — requires constant airflow to function properly")
        ],
        tags: ["diagnostic", "hvac", "troubleshooting"]
    )
}
