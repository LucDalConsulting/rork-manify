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
            Question(id: "home101_q1", prompt: "The five core home systems include all EXCEPT:", choices: ["Plumbing", "Landscaping", "Electrical", "HVAC"], correctIndex: 1, explanation: "The five core systems are structural, plumbing, electrical, HVAC, and building envelope."),
            Question(id: "home101_q2", prompt: "Poor insulation primarily affects:", choices: ["Plumbing pressure", "Roof strength", "HVAC efficiency and energy bills", "Electrical capacity"], correctIndex: 2, explanation: "The building envelope (insulation) determines how hard HVAC has to work to maintain temperature."),
            Question(id: "home101_q3", type: .scenario, prompt: "You hear running water but no faucets are on. Your first action should be:", choices: ["Call a plumber immediately", "Turn off the electricity", "Wait and listen again tomorrow", "Locate and check the main water shutoff"], correctIndex: 3, explanation: "Knowing your main water shutoff location is critical — it's the first thing to check if you suspect a leak."),
            Question(id: "home101_q4", type: .fillBlank, prompt: "A failure in one home system can _____ into others.", choices: ["Cascade", "Stabilize", "Neutralize", "Bypass"], correctIndex: 0, explanation: "Home systems are interconnected. A roof leak can damage electrical wiring and cause mold.")
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
            Question(id: "home102_q1", prompt: "The anode rod's purpose is to:", choices: ["Heat the water", "Filter sediment", "Corrode instead of the tank", "Control water pressure"], correctIndex: 2, explanation: "The anode rod is a sacrificial component that corrodes to protect the tank interior."),
            Question(id: "home102_q2", prompt: "The T&P relief valve prevents:", choices: ["Tank explosion from excess temperature/pressure", "Freezing", "Low pressure", "Sediment buildup"], correctIndex: 0, explanation: "The Temperature & Pressure relief valve is a critical safety device that prevents dangerous pressure buildup."),
            Question(id: "home102_q3", prompt: "How often should you flush a tank water heater?", choices: ["Monthly", "Every 5 years", "Annually", "Never"], correctIndex: 2, explanation: "Annual flushing removes sediment that reduces efficiency and causes noise.")
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
            Question(id: "home103_q1", prompt: "A breaker that trips repeatedly indicates:", choices: ["Normal operation", "A potential wiring problem", "The breaker is too large", "A power surge from the utility"], correctIndex: 1, explanation: "A repeatedly tripping breaker is a warning sign — it means there's an overcurrent condition that needs to be diagnosed."),
            Question(id: "home103_q2", prompt: "Typical residential main breaker capacity is:", choices: ["50-75 amps", "300-400 amps", "100-200 amps", "500+ amps"], correctIndex: 2, explanation: "Most residential electrical panels have 100-200 amp main breakers."),
            Question(id: "home103_q3", type: .scenario, prompt: "You smell burning near your electrical panel. You should:", choices: ["Reset all breakers", "Open the panel to look inside", "Ignore it if nothing is visibly wrong", "Turn off the main breaker and call an electrician"], correctIndex: 3, explanation: "A burning smell at the panel is a potential fire hazard. Kill the main breaker and call a licensed electrician immediately.")
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
            Question(id: "home201_q1", prompt: "A heat pump works by:", choices: ["Burning gas to generate heat", "Moving heat from one place to another", "Creating heat through electrical resistance", "Using solar energy"], correctIndex: 1, explanation: "A heat pump moves heat rather than generating it — extracting heat from outside air (even cold air) and moving it inside."),
            Question(id: "home201_q2", prompt: "How often should you replace HVAC air filters?", choices: ["Once a year", "Every 1-3 months", "Only when the system fails", "Every 5 years"], correctIndex: 1, explanation: "Filters should be replaced every 1-3 months depending on type, pets, and usage."),
            Question(id: "home201_q3", prompt: "Leaky ductwork can waste up to:", choices: ["5% of conditioned air", "10% of conditioned air", "20-30% of conditioned air", "50% of conditioned air"], correctIndex: 2, explanation: "Leaky ducts can waste 20-30% of your conditioned air, significantly increasing energy costs."),
            Question(id: "home201_q4", type: .scenario, prompt: "Your AC is running but blowing warm air. A likely first check is:", choices: ["Replace the compressor", "Check if the air filter is clogged", "Replace the thermostat", "Call for duct cleaning"], correctIndex: 1, explanation: "A clogged air filter is the most common cause of reduced cooling — always check it first before calling a technician.")
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
            Question(id: "home202_q1", prompt: "Drain lines move water using:", choices: ["Pressure from the supply", "Electric pumps", "Gravity", "Suction from the sewer"], correctIndex: 2, explanation: "Drain lines rely on gravity — they slope downward toward the sewer or septic system."),
            Question(id: "home202_q2", prompt: "A P-trap's purpose is to:", choices: ["Increase water pressure", "Filter debris", "Regulate temperature", "Hold water to block sewer gas"], correctIndex: 3, explanation: "The P-trap holds a small amount of water that creates a seal preventing sewer gas from entering your home."),
            Question(id: "home202_q3", type: .fillBlank, prompt: "A running toilet is most commonly caused by a worn _____.", choices: ["Supply line", "Wax ring", "Flapper valve", "Drain pipe"], correctIndex: 2, explanation: "The flapper valve seals the tank. When it wears out, water continuously leaks from the tank into the bowl."),
            Question(id: "home202_q4", prompt: "Safe residential water pressure is typically:", choices: ["10-20 PSI", "40-80 PSI", "100-150 PSI", "200+ PSI"], correctIndex: 1, explanation: "Normal residential water pressure is 40-80 PSI. Higher pressure can damage pipes and fixtures.")
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
            Question(id: "home203_q1", prompt: "The most impactful monthly maintenance task is:", choices: ["Cleaning the garage", "Replacing HVAC filters", "Painting walls", "Mowing the lawn"], correctIndex: 1, explanation: "Replacing HVAC filters monthly is the single highest-impact maintenance habit for home systems."),
            Question(id: "home203_q2", prompt: "Before winter, you should:", choices: ["Turn off the furnace", "Disconnect and drain garden hoses", "Open all windows", "Remove insulation"], correctIndex: 1, explanation: "Garden hoses left connected can cause the hose bib and supply line to freeze and burst."),
            Question(id: "home203_q3", type: .scenario, prompt: "It's spring and you notice a few missing shingles after winter storms. You should:", choices: ["Wait until they fall off completely", "Paint over the exposed area", "Ignore it — roofs are self-healing", "Have the roof inspected and repaired promptly"], correctIndex: 3, explanation: "Missing shingles expose the roof deck to water intrusion. Address it promptly before the next rain."),
            Question(id: "home203_q4", prompt: "How often should smoke detector batteries be checked?", choices: ["Every 5 years", "Monthly", "Annually", "Only when they beep"], correctIndex: 1, explanation: "Test smoke and CO detectors monthly. Replace batteries at least annually or when they chirp.")
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
            Question(id: "home301_q1", prompt: "The first diagnostic step for no hot water is:", choices: ["Replace the water heater", "Check if ANY faucet has hot water", "Call a plumber", "Turn up the thermostat"], correctIndex: 1, explanation: "First determine if the problem is whole-house or localized — check multiple faucets for hot water."),
            Question(id: "home301_q2", prompt: "For an electric water heater with no hot water, you should check:", choices: ["The gas line", "The pilot light", "The dedicated circuit breaker", "The water meter"], correctIndex: 2, explanation: "Electric water heaters run on dedicated breakers. A tripped breaker means no heating."),
            Question(id: "home301_q3", type: .scenario, prompt: "You smell gas near your water heater. You should:", choices: ["Relight the pilot", "Check the thermostat", "Leave immediately and call the gas company from outside", "Open a window and wait"], correctIndex: 2, explanation: "Gas smell is a potential explosion risk. Evacuate and call the gas company. Do not operate any switches or flames."),
            Question(id: "home301_q4", type: .fillBlank, prompt: "A water heater leaking from the base means it needs _____.", choices: ["Repair", "Flushing", "Replacement", "Insulation"], correctIndex: 2, explanation: "A leaking tank has failed structurally and cannot be repaired — it must be replaced.")
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
            Question(id: "home302_q1", prompt: "The #1 cause of a frozen evaporator coil is:", choices: ["Low refrigerant", "A clogged air filter", "Outdoor temperature", "A broken thermostat"], correctIndex: 1, explanation: "A clogged air filter restricts airflow over the evaporator coil, causing it to freeze — this is the most common cause."),
            Question(id: "home302_q2", prompt: "When you find a frozen coil, you should:", choices: ["Scrape the ice off immediately", "Turn off the system and run only the fan to thaw", "Pour hot water on it", "Turn the heat on to maximum"], correctIndex: 1, explanation: "Turn the cooling off but leave the fan running. Let the coil thaw naturally over 2-4 hours."),
            Question(id: "home302_q3", type: .scenario, prompt: "You replaced the filter and thawed the coil, but it froze again within a day. The likely cause is:", choices: ["The filter was the wrong size", "Low refrigerant from a leak", "Too many windows open", "The thermostat is broken"], correctIndex: 1, explanation: "If the coil refreezes after correcting airflow, low refrigerant (usually from a leak) is the likely cause — requires a professional."),
            Question(id: "home302_q4", prompt: "Who can legally handle refrigerant?", choices: ["Any homeowner", "Only licensed HVAC technicians", "Any handyman", "Hardware store employees"], correctIndex: 1, explanation: "Refrigerant handling requires EPA certification. Only licensed HVAC technicians can legally add or recover refrigerant.")
        ]),
        flashcards: [
            Flashcard(id: "home302_f1", front: "Frozen Evaporator Coil", back: "Ice buildup on the indoor coil caused by restricted airflow or low refrigerant — blocks cooling and must be thawed"),
            Flashcard(id: "home302_f2", front: "Refrigerant Leak", back: "A loss of refrigerant in the AC system — causes the coil to run too cold and freeze. Requires professional repair."),
            Flashcard(id: "home302_f3", front: "Evaporator Coil", back: "The indoor coil where refrigerant absorbs heat from your home's air — requires constant airflow to function properly")
        ],
        tags: ["diagnostic", "hvac", "troubleshooting"]
    )
}
