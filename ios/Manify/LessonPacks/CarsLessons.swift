import Foundation

enum CarsLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3,
        lesson4, lesson5, lesson6,
        lesson7, lesson8
    ]

    // MARK: - Tier 1: Structural Awareness

    static let lesson1 = Lesson(
        id: "cars_t1_01",
        categoryId: .cars,
        tier: 1,
        lessonNumber: 1,
        title: "Engine Job: Air, Fuel, Spark, Compression",
        subtitle: "The four things every engine needs",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "cars101_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Every internal combustion engine problem traces back to one of four things: air, fuel, spark, or compression.",
                "If you understand these four, you can describe any engine problem intelligently — to yourself or to a mechanic."
            ]),
            ContentBlock(id: "cars101_b2", type: .systemOverview, title: "System Overview", bullets: [
                "Air — Enters through the intake, filtered by the air filter. Too little air = rich running. Too much = lean.",
                "Fuel — Delivered by injectors in precise amounts. Must atomize properly for efficient combustion.",
                "Spark — Provided by spark plugs at exactly the right moment. Ignites the air-fuel mixture.",
                "Compression — The piston compresses the mixture before ignition. Without proper compression, combustion is weak or absent."
            ]),
            ContentBlock(id: "cars101_b3", type: .howItWorks, title: "The Four-Stroke Cycle", bullets: [
                "Intake — Piston moves down, air-fuel mixture enters the cylinder.",
                "Compression — Piston moves up, compressing the mixture.",
                "Power — Spark ignites the compressed mixture, forcing the piston down.",
                "Exhaust — Piston moves up again, pushing spent gases out."
            ]),
            ContentBlock(id: "cars101_b4", type: .failureModes, title: "Failure Modes", bullets: [
                "Dirty air filter — restricts airflow, reduces performance and fuel economy.",
                "Clogged injector — uneven fuel delivery, misfire.",
                "Worn spark plug — weak or no spark, rough idle, poor starting.",
                "Low compression — worn piston rings or valves, loss of power."
            ]),
            ContentBlock(id: "cars101_b5", type: .summary, title: "Summary", bullets: [
                "Air, fuel, spark, compression — every engine needs all four.",
                "The four-stroke cycle: intake, compression, power, exhaust.",
                "Most engine problems can be categorized under one of these four requirements."
            ])
        ],
        quiz: Quiz(id: "cars101_q", passPercent: 80, questions: [
            Question(id: "cars101_q1", prompt: "Match each stroke of the four-stroke cycle to what happens.", matchingPairs: [
                MatchingPair(left: "Intake", right: "Piston moves down, air-fuel enters"),
                MatchingPair(left: "Compression", right: "Piston moves up, mixture is squeezed"),
                MatchingPair(left: "Power", right: "Spark ignites, piston forced down"),
                MatchingPair(left: "Exhaust", right: "Piston moves up, spent gases expelled")
            ], explanation: "The four-stroke cycle is the operating principle of most car engines."),
            Question(id: "cars101_q2", type: .scenario, prompt: "Your car is running rough and you smell unburned fuel from the exhaust. Which combustion requirement is most likely failing?", choices: ["Air intake", "Compression", "Spark or fuel delivery", "Exhaust flow"], correctIndex: 2, explanation: "Unburned fuel smell means the mixture isn't being properly ignited — pointing to a spark or fuel delivery issue."),
            Question(id: "cars101_q3", type: .multiSelect, prompt: "Which are the four requirements for internal combustion?", choices: ["Air", "Oil", "Fuel", "Spark", "Coolant", "Compression"], correctIndices: [0, 2, 3, 5], explanation: "Air, fuel, spark, and compression are the four requirements. Oil lubricates and coolant cools, but neither is part of the combustion process."),
            Question(id: "cars101_q4", prompt: "The four strokes in order are: intake, compression, power, _____.", acceptedAnswers: ["exhaust", "the exhaust stroke", "exhaust stroke"], explanation: "The four strokes are intake, compression, power, exhaust — completing one full engine cycle.")
        ]),
        flashcards: [
            Flashcard(id: "cars101_f1", front: "Four-Stroke Cycle", back: "Intake, Compression, Power, Exhaust — the operating cycle of most car engines"),
            Flashcard(id: "cars101_f2", front: "Rich Running", back: "Too much fuel relative to air — causes poor fuel economy and black exhaust"),
            Flashcard(id: "cars101_f3", front: "Lean Running", back: "Too little fuel relative to air — causes overheating, misfires, and potential engine damage"),
            Flashcard(id: "cars101_f4", front: "Compression", back: "The mechanical squeezing of the air-fuel mixture by the piston, essential for efficient combustion")
        ],
        tags: ["engine", "basics", "fundamentals"]
    )

    static let lesson2 = Lesson(
        id: "cars_t1_02",
        categoryId: .cars,
        tier: 1,
        lessonNumber: 2,
        title: "Oil and Lubrication Basics",
        subtitle: "The blood of your engine",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: ["cars_t1_01"],
        contentBlocks: [
            ContentBlock(id: "cars102_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Oil is the single most important maintenance item. Skip it and the engine destroys itself.",
                "Understanding oil means understanding why maintenance intervals exist."
            ]),
            ContentBlock(id: "cars102_b2", type: .howItWorks, title: "How It Works", bullets: [
                "Oil lubricates metal-on-metal contact surfaces inside the engine.",
                "It also cools components, cleans deposits, and creates hydraulic pressure for systems like variable valve timing.",
                "The oil pump circulates oil continuously while the engine runs.",
                "The oil filter removes contaminants."
            ]),
            ContentBlock(id: "cars102_b3", type: .failureModes, title: "Failure Modes", bullets: [
                "Low oil level — metal-on-metal contact, rapid wear, potential seizure.",
                "Old, degraded oil — loses viscosity and cleaning ability.",
                "Clogged oil filter — reduced flow, bypass valve opens (unfiltered oil circulates).",
                "Oil leak — drops on driveway, burning smell, low level between changes."
            ]),
            ContentBlock(id: "cars102_b4", type: .ownerActions, title: "Owner Actions", bullets: [
                "Check oil level monthly using the dipstick.",
                "Change oil at manufacturer-recommended intervals (typically 5,000-7,500 miles for synthetic).",
                "Use the correct oil weight specified in your owner's manual.",
                "Monitor for leaks — spots under the car or burning smell."
            ]),
            ContentBlock(id: "cars102_b5", type: .summary, title: "Summary", bullets: [
                "Oil lubricates, cools, cleans, and pressurizes.",
                "Check monthly, change on schedule, use the correct weight.",
                "Neglecting oil is the fastest way to kill an engine."
            ])
        ],
        quiz: Quiz(id: "cars102_q", passPercent: 80, questions: [
            Question(id: "cars102_q1", type: .multiSelect, prompt: "Which functions does engine oil serve?", choices: ["Lubricates metal-on-metal contact", "Participates in combustion", "Cools engine components", "Cleans internal deposits", "Creates hydraulic pressure"], correctIndices: [0, 2, 3, 4], explanation: "Oil lubricates, cools, cleans, and creates hydraulic pressure. It does NOT participate in combustion."),
            Question(id: "cars102_q2", type: .scenario, prompt: "A friend says they use whatever oil is cheapest because 'oil is oil.' The correct response is:", choices: ["They're right — brand doesn't matter", "Only synthetic matters", "The correct oil weight from the owner's manual is what matters most", "Thicker oil is always better for protection"], correctIndex: 2, explanation: "Your owner's manual specifies the exact oil weight (viscosity) your engine requires. Using the wrong weight can cause damage."),
            Question(id: "cars102_q3", prompt: "Engine oil level should be checked at least _____.", acceptedAnswers: ["monthly", "once a month", "every month"], explanation: "Checking monthly catches leaks and consumption issues before they cause engine damage.")
        ]),
        flashcards: [
            Flashcard(id: "cars102_f1", front: "Viscosity", back: "A measure of oil's thickness and flow resistance — expressed as weight (5W-30, 0W-20, etc.)"),
            Flashcard(id: "cars102_f2", front: "Oil Pump", back: "Mechanical pump that circulates oil throughout the engine while running"),
            Flashcard(id: "cars102_f3", front: "Dipstick", back: "A measuring rod used to check engine oil level — should be between the low and full marks")
        ],
        tags: ["oil", "maintenance", "engine"]
    )

    static let lesson3 = Lesson(
        id: "cars_t1_03",
        categoryId: .cars,
        tier: 1,
        lessonNumber: 3,
        title: "Cooling System Basics",
        subtitle: "How your engine doesn't melt",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["cars_t1_01"],
        contentBlocks: [
            ContentBlock(id: "cars103_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Combustion generates extreme heat. Without cooling, the engine warps, seizes, or cracks.",
                "Overheating is one of the most common and most damaging engine failures."
            ]),
            ContentBlock(id: "cars103_b2", type: .componentBreakdown, title: "Component Breakdown", bullets: [
                "Radiator — Heat exchanger. Hot coolant flows through thin tubes while air passes over fins.",
                "Water Pump — Circulates coolant through the engine and radiator.",
                "Thermostat — Valve that regulates coolant flow. Stays closed when cold, opens when warm.",
                "Coolant — Mixture of antifreeze and water. Raises boiling point, lowers freezing point.",
                "Cooling Fans — Pull air through the radiator when vehicle speed doesn't provide enough airflow."
            ]),
            ContentBlock(id: "cars103_b3", type: .failureModes, title: "Failure Modes", bullets: [
                "Low coolant — most common cause of overheating. Often from a slow leak.",
                "Stuck thermostat — if closed, engine overheats. If open, engine runs too cool.",
                "Water pump failure — no circulation, rapid overheating.",
                "Clogged radiator — reduced heat exchange capacity."
            ]),
            ContentBlock(id: "cars103_b4", type: .ownerActions, title: "Owner Actions", bullets: [
                "Check coolant level when engine is COLD — never open a hot radiator cap.",
                "Look for leaks — green, orange, or pink fluid under the car.",
                "Replace coolant per manufacturer schedule (typically every 30,000-60,000 miles).",
                "If temperature gauge spikes, pull over immediately. Do not drive an overheating engine."
            ]),
            ContentBlock(id: "cars103_b5", type: .summary, title: "Summary", bullets: [
                "The cooling system prevents catastrophic heat damage.",
                "Radiator, water pump, thermostat, coolant, and fans work together.",
                "Check coolant cold. Never drive overheating. Pull over immediately."
            ])
        ],
        quiz: Quiz(id: "cars103_q", passPercent: 80, questions: [
            Question(id: "cars103_q1", prompt: "Match each cooling component to its role.", matchingPairs: [
                MatchingPair(left: "Radiator", right: "Exchanges heat from coolant to outside air"),
                MatchingPair(left: "Water Pump", right: "Circulates coolant through the system"),
                MatchingPair(left: "Thermostat", right: "Valve regulating coolant flow by temperature"),
                MatchingPair(left: "Cooling Fans", right: "Pull air through radiator at low speeds")
            ], explanation: "Each component plays a critical role in preventing engine overheating."),
            Question(id: "cars103_q2", type: .scenario, prompt: "Your temperature gauge spikes to the red zone while driving. Your immediate action should be:", choices: ["Turn on the heater and keep monitoring", "Pull over immediately — do NOT keep driving", "Add cold water to the radiator", "Rev the engine to increase water pump flow"], correctIndex: 1, explanation: "Pull over immediately. Continuing to drive an overheating engine for even a few minutes can cause catastrophic and expensive damage."),
            Question(id: "cars103_q3", prompt: "Coolant should ONLY be checked when the engine is _____.", acceptedAnswers: ["cold", "cool", "cooled down", "not running"], explanation: "Never open a hot radiator cap. The pressurized system can release scalding coolant and cause severe burns."),
            Question(id: "cars103_q4", prompt: "A stuck-closed thermostat causes:", choices: ["The engine to run too cool", "Increased fuel economy", "Rapid overheating", "Low oil pressure"], correctIndex: 2, explanation: "A stuck-closed thermostat blocks coolant flow to the radiator, causing the engine to overheat rapidly.")
        ]),
        flashcards: [
            Flashcard(id: "cars103_f1", front: "Thermostat", back: "A temperature-controlled valve that regulates coolant flow — closed when cold, opens when the engine reaches operating temperature"),
            Flashcard(id: "cars103_f2", front: "Coolant/Antifreeze", back: "A mixture of antifreeze and water that transfers heat away from the engine, raises boiling point, and lowers freezing point"),
            Flashcard(id: "cars103_f3", front: "Water Pump", back: "A mechanical pump that circulates coolant throughout the engine and radiator"),
            Flashcard(id: "cars103_f4", front: "Radiator", back: "A heat exchanger where hot coolant releases heat to the outside air through thin tubes and fins")
        ],
        tags: ["cooling", "engine", "maintenance"]
    )

    // MARK: - Tier 2: Operational Competence

    static let lesson4 = Lesson(
        id: "cars_t2_01",
        categoryId: .cars,
        tier: 2,
        lessonNumber: 1,
        title: "Brakes and Stopping Power",
        subtitle: "The most critical safety system on your vehicle",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["cars_t1_03"],
        contentBlocks: [
            ContentBlock(id: "cars201_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Brakes are the single most important safety system on your vehicle.",
                "Understanding how they work lets you recognize warning signs before failure."
            ]),
            ContentBlock(id: "cars201_b2", type: .componentBreakdown, title: "Disc Brake Components", bullets: [
                "Brake Rotor (Disc) — The spinning metal disc attached to the wheel hub.",
                "Brake Pads — Friction material that clamps against the rotor to slow the wheel.",
                "Caliper — The hydraulic clamp that squeezes the pads against the rotor.",
                "Brake Lines — Carry hydraulic fluid from the master cylinder to each caliper.",
                "Master Cylinder — Converts pedal pressure into hydraulic force."
            ]),
            ContentBlock(id: "cars201_b3", type: .failureModes, title: "Warning Signs", bullets: [
                "Squealing — Wear indicators are contacting the rotor. Pads need replacement soon.",
                "Grinding — Metal-on-metal contact. Pads are gone. Rotors are being damaged.",
                "Vibration/pulsing when braking — Warped rotors from heat.",
                "Soft or spongy pedal — Air in the brake lines or low fluid.",
                "Pulling to one side — Uneven pad wear or stuck caliper."
            ]),
            ContentBlock(id: "cars201_b4", type: .ownerActions, title: "Owner Actions", bullets: [
                "Listen for squealing — it's designed as an early warning.",
                "Check brake fluid level periodically.",
                "Have brakes inspected during tire rotations.",
                "Don't ignore any change in pedal feel."
            ]),
            ContentBlock(id: "cars201_b5", type: .summary, title: "Summary", bullets: [
                "Disc brakes: pads squeeze rotors through hydraulic calipers.",
                "Squealing = warning. Grinding = damage. Soft pedal = danger.",
                "Brakes are non-negotiable. Address warning signs immediately."
            ])
        ],
        quiz: Quiz(id: "cars201_q", passPercent: 80, questions: [
            Question(id: "cars201_q1", prompt: "Match each brake warning sign to what it means.", matchingPairs: [
                MatchingPair(left: "Squealing", right: "Wear indicators contacting rotor — pads need replacement"),
                MatchingPair(left: "Grinding", right: "Metal-on-metal — pads gone, rotors being damaged"),
                MatchingPair(left: "Soft/spongy pedal", right: "Air in brake lines or low fluid"),
                MatchingPair(left: "Pulling to one side", right: "Uneven pad wear or stuck caliper")
            ], explanation: "Each brake symptom indicates a specific problem. Knowing what to listen and feel for can save your life."),
            Question(id: "cars201_q2", type: .scenario, prompt: "You hear loud grinding every time you press the brake pedal. This is:", choices: ["Normal for new brake pads", "A safety emergency — pads are gone, rotors are being destroyed", "Just a minor noise issue", "Related to tire pressure"], correctIndex: 1, explanation: "Grinding means metal-on-metal contact. The friction material is gone and the rotor is being damaged. Address immediately."),
            Question(id: "cars201_q3", prompt: "The hydraulic clamp that squeezes brake pads against the rotor is called the _____.", acceptedAnswers: ["caliper", "brake caliper", "the caliper"], explanation: "The caliper is a hydraulic clamp that squeezes the pads against the spinning rotor when you press the brake pedal."),
            Question(id: "cars201_q4", type: .multiSelect, prompt: "Which brake symptoms require immediate attention?", choices: ["Squealing during braking", "Grinding during braking", "Soft or spongy brake pedal", "Slight noise when cold that goes away", "Vibration/pulsing when braking"], correctIndices: [1, 2, 4], explanation: "Grinding (metal-on-metal damage), spongy pedal (hydraulic failure), and vibration (warped rotors) all require immediate attention. Squealing is a warning but not an emergency. Cold noise that clears is normal.")
        ]),
        flashcards: [
            Flashcard(id: "cars201_f1", front: "Brake Rotor", back: "The spinning metal disc attached to the wheel hub — brake pads clamp against it to slow the vehicle"),
            Flashcard(id: "cars201_f2", front: "Caliper", back: "The hydraulic clamp that squeezes brake pads against the rotor when you press the brake pedal"),
            Flashcard(id: "cars201_f3", front: "Master Cylinder", back: "Converts brake pedal pressure into hydraulic force distributed to all four wheel calipers"),
            Flashcard(id: "cars201_f4", front: "Brake Fade", back: "Loss of braking power caused by overheated pads or fluid — common during extended downhill braking")
        ],
        tags: ["brakes", "safety", "components"]
    )

    static let lesson5 = Lesson(
        id: "cars_t2_02",
        categoryId: .cars,
        tier: 2,
        lessonNumber: 2,
        title: "Tires: Selection, Reading, and Maintenance",
        subtitle: "The only part of your car touching the road",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["cars_t2_01"],
        contentBlocks: [
            ContentBlock(id: "cars202_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Tires are the only contact patch between your vehicle and the road.",
                "Wrong tires, wrong pressure, or worn tread directly impacts braking, handling, and safety."
            ]),
            ContentBlock(id: "cars202_b2", type: .howItWorks, title: "Reading a Tire Sidewall", bullets: [
                "P225/65R17 95H — this is the standard format.",
                "P = Passenger. 225 = Width in mm. 65 = Aspect ratio (sidewall height as % of width).",
                "R = Radial construction. 17 = Wheel diameter in inches.",
                "95 = Load index. H = Speed rating.",
                "DOT code includes manufacture date — last 4 digits (e.g., 2423 = week 24 of 2023)."
            ]),
            ContentBlock(id: "cars202_b3", type: .ownerActions, title: "Owner Actions", bullets: [
                "Check tire pressure monthly — use the door jamb sticker, not the sidewall maximum.",
                "Inspect tread depth — use the penny test (Lincoln's head should be partially covered).",
                "Rotate tires every 5,000-7,500 miles for even wear.",
                "Replace tires in pairs (same axle) or all four. Never mix tire types across an axle."
            ]),
            ContentBlock(id: "cars202_b4", type: .summary, title: "Summary", bullets: [
                "Learn to read sidewall codes — it tells you everything about the tire.",
                "Check pressure monthly. Rotate regularly. Replace when tread is worn.",
                "Correct tires and pressure are foundational to vehicle safety."
            ])
        ],
        quiz: Quiz(id: "cars202_q", passPercent: 80, questions: [
            Question(id: "cars202_q1", prompt: "Match each part of 'P225/65R17' to what it means.", matchingPairs: [
                MatchingPair(left: "P", right: "Passenger vehicle tire"),
                MatchingPair(left: "225", right: "Tire width in millimeters"),
                MatchingPair(left: "65", right: "Aspect ratio (sidewall height as % of width)"),
                MatchingPair(left: "R17", right: "Radial construction, 17-inch wheel")
            ], explanation: "Reading tire sidewall codes tells you everything about a tire's size and construction."),
            Question(id: "cars202_q2", type: .scenario, prompt: "You're checking tire pressure. Where do you find the CORRECT pressure for your car?", choices: ["The number printed on the tire sidewall", "The owner's manual or door jamb sticker", "Whatever the gas station gauge says is average", "The tire shop's recommendation"], correctIndex: 1, explanation: "The sidewall shows the MAXIMUM pressure. Your correct pressure is on the door jamb sticker or in the owner's manual."),
            Question(id: "cars202_q3", prompt: "The last 4 digits of the DOT code indicate the _____ of manufacture.", acceptedAnswers: ["week and year", "date", "manufacture date", "week and year of manufacture"], explanation: "The last 4 digits show the week and year — e.g., 2423 means week 24 of 2023. Important for knowing tire age."),
            Question(id: "cars202_q4", type: .multiSelect, prompt: "Which are proper tire maintenance practices?", choices: ["Check pressure monthly", "Use the sidewall maximum as your target pressure", "Rotate every 5,000-7,500 miles", "Replace in pairs on the same axle", "Mix different tire types across an axle"], correctIndices: [0, 2, 3], explanation: "Monthly pressure checks, regular rotation, and replacing in pairs are correct. The sidewall shows max pressure (not target), and you should never mix tire types on the same axle.")
        ]),
        flashcards: [
            Flashcard(id: "cars202_f1", front: "Aspect Ratio", back: "The sidewall height expressed as a percentage of tire width — the second number in the tire size code"),
            Flashcard(id: "cars202_f2", front: "DOT Date Code", back: "The last 4 digits on a tire sidewall indicating manufacture week and year (e.g., 2423 = week 24, 2023)"),
            Flashcard(id: "cars202_f3", front: "Load Index", back: "A number indicating the maximum weight a tire can safely carry at its maximum inflation pressure"),
            Flashcard(id: "cars202_f4", front: "Penny Test", back: "A quick tread depth check — insert a penny with Lincoln's head down; if you see his entire head, tread is too worn")
        ],
        tags: ["tires", "maintenance", "safety"]
    )

    static let lesson6 = Lesson(
        id: "cars_t2_03",
        categoryId: .cars,
        tier: 2,
        lessonNumber: 3,
        title: "Warning Lights and OBD-II",
        subtitle: "Your car is talking — learn to listen",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["cars_t2_01"],
        contentBlocks: [
            ContentBlock(id: "cars203_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Warning lights are your car's diagnostic communication system.",
                "Ignoring them leads to cascading failures. Understanding them saves thousands."
            ]),
            ContentBlock(id: "cars203_b2", type: .componentBreakdown, title: "Critical Warning Lights", bullets: [
                "Check Engine (amber) — Emissions or engine management issue. Could be minor (gas cap) or serious (misfire).",
                "Oil Pressure (red) — LOW OIL PRESSURE. Stop driving immediately. Engine damage in seconds.",
                "Temperature (red) — Engine overheating. Pull over immediately.",
                "Battery (red) — Charging system failure. Alternator or belt issue. Limited driving time remaining.",
                "Brake (red) — Could be parking brake on, low fluid, or ABS failure. Check immediately.",
                "TPMS (amber) — Tire pressure monitoring. A tire is significantly low."
            ]),
            ContentBlock(id: "cars203_b3", type: .howItWorks, title: "OBD-II Basics", bullets: [
                "OBD-II is a standardized diagnostic port (under the dashboard, driver side).",
                "A scan tool reads Diagnostic Trouble Codes (DTCs) stored by the computer.",
                "Codes like P0300 (random misfire) or P0420 (catalyst efficiency) point to specific systems.",
                "A code tells you WHAT the computer detected, not necessarily the root cause."
            ]),
            ContentBlock(id: "cars203_b4", type: .summary, title: "Summary", bullets: [
                "Red lights = stop driving. Amber lights = diagnose soon.",
                "OBD-II scan tools are affordable and worth owning.",
                "A code tells you what was detected, not always why."
            ])
        ],
        quiz: Quiz(id: "cars203_q", passPercent: 80, questions: [
            Question(id: "cars203_q1", prompt: "Match each warning light color/type to the correct response.", matchingPairs: [
                MatchingPair(left: "Red oil pressure", right: "Stop driving immediately"),
                MatchingPair(left: "Red temperature", right: "Pull over immediately"),
                MatchingPair(left: "Amber check engine", right: "Get scanned soon, don't panic"),
                MatchingPair(left: "Amber TPMS", right: "Check tire pressure soon")
            ], explanation: "Red = stop or pull over immediately. Amber = diagnose soon but not an emergency."),
            Question(id: "cars203_q2", type: .scenario, prompt: "Your check engine light comes on but the car drives normally. The correct response is:", choices: ["Ignore it until something feels wrong", "Disconnect the battery to reset it", "Get it scanned with an OBD-II reader soon", "Stop driving immediately"], correctIndex: 2, explanation: "An amber check engine light means something needs attention but isn't immediately dangerous. Scan for codes to understand the issue."),
            Question(id: "cars203_q3", prompt: "OBD-II codes tell you what the computer _____, not necessarily the root cause.", acceptedAnswers: ["detected", "sensed", "found", "recorded", "observed"], explanation: "A DTC indicates what the computer's sensors detected — the actual root cause may require further professional diagnosis."),
            Question(id: "cars203_q4", type: .multiSelect, prompt: "Which dashboard warning lights require you to STOP driving immediately?", choices: ["Red oil pressure light", "Amber check engine light", "Red temperature gauge", "Amber TPMS light", "Red battery/charging light"], correctIndices: [0, 2], explanation: "Red oil pressure and red temperature are stop-immediately warnings. Battery is urgent but you have limited time. Amber lights mean diagnose soon.")
        ]),
        flashcards: [
            Flashcard(id: "cars203_f1", front: "OBD-II", back: "On-Board Diagnostics II — a standardized diagnostic system and port in all cars since 1996"),
            Flashcard(id: "cars203_f2", front: "DTC (Diagnostic Trouble Code)", back: "A code stored by the car's computer indicating a detected issue — format is letter + 4 digits (e.g., P0300)"),
            Flashcard(id: "cars203_f3", front: "Check Engine Light", back: "An amber warning indicating an emissions or engine management issue — ranges from minor to serious"),
            Flashcard(id: "cars203_f4", front: "TPMS", back: "Tire Pressure Monitoring System — alerts when a tire is significantly below recommended pressure")
        ],
        tags: ["diagnostics", "warning lights", "obd"]
    )

    // MARK: - Tier 3: Diagnostic Thinking

    static let lesson7 = Lesson(
        id: "cars_t3_01",
        categoryId: .cars,
        tier: 3,
        lessonNumber: 1,
        title: "Diagnostic: Overheating Chain",
        subtitle: "Systematic approach when the temp gauge spikes",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["cars_t2_03"],
        contentBlocks: [
            ContentBlock(id: "cars301_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Overheating is one of the most damaging things that can happen to an engine.",
                "Head gasket failure, warped cylinder head, or cracked block — all consequences of ignoring the temperature gauge."
            ]),
            ContentBlock(id: "cars301_b2", type: .howItWorks, title: "Diagnostic Chain", bullets: [
                "Step 1: Pull over safely. Turn off AC, turn on heater to max (draws heat from engine).",
                "Step 2: Once stopped, check coolant level (ONLY when cooled down). Never open a hot radiator cap.",
                "Step 3: Look for visible leaks — puddles under the car, steam from the hood.",
                "Step 4: Check if the cooling fan is running when the engine is warm.",
                "Step 5: Feel the upper and lower radiator hoses (carefully). Both should be warm. If the lower is cold, the thermostat may be stuck closed.",
                "Step 6: Check the serpentine belt — if it's broken, the water pump isn't spinning."
            ]),
            ContentBlock(id: "cars301_b3", type: .failureModes, title: "Common Causes by Likelihood", bullets: [
                "Low coolant (leak) — most common. Check for puddles and hose connections.",
                "Failed thermostat — stuck closed prevents circulation.",
                "Broken serpentine belt — disables water pump and alternator.",
                "Failed water pump — no circulation despite belt being intact.",
                "Clogged radiator — reduced heat exchange. Often from neglected coolant changes.",
                "Failed cooling fan — no airflow at low speeds or idle."
            ]),
            ContentBlock(id: "cars301_b4", type: .summary, title: "Summary", bullets: [
                "Pull over immediately. Heater on. Let it cool. Check coolant, leaks, fan, hoses, belt.",
                "Most overheating is caused by low coolant or a stuck thermostat.",
                "Driving an overheating car for even a few minutes can cause thousands in damage."
            ])
        ],
        quiz: Quiz(id: "cars301_q", passPercent: 80, questions: [
            Question(id: "cars301_q1", prompt: "Put the overheating diagnostic steps in the correct order.", matchingPairs: [
                MatchingPair(left: "Step 1", right: "Pull over, turn off AC, heater to max"),
                MatchingPair(left: "Step 2", right: "Check coolant level (when cooled)"),
                MatchingPair(left: "Step 3", right: "Look for visible leaks"),
                MatchingPair(left: "Step 4", right: "Check cooling fan and hoses")
            ], explanation: "Following the diagnostic chain in order helps you identify the cause without making things worse."),
            Question(id: "cars301_q2", type: .scenario, prompt: "The lower radiator hose is cold while the engine is overheating. This tells you:", choices: ["The radiator is clogged", "The water pump has failed", "The thermostat is stuck closed — coolant can't circulate", "The cooling fan isn't working"], correctIndex: 2, explanation: "A cold lower hose means coolant isn't flowing through the radiator — the thermostat is stuck in the closed position."),
            Question(id: "cars301_q3", prompt: "The most common cause of engine overheating is _____.", acceptedAnswers: ["low coolant", "low coolant from a leak", "a coolant leak", "coolant leak", "low coolant level"], explanation: "Low coolant from a slow leak is the single most common cause of engine overheating."),
            Question(id: "cars301_q4", type: .multiSelect, prompt: "A broken serpentine belt disables which systems?", choices: ["Water pump (cooling)", "Alternator (charging)", "Fuel injectors", "AC compressor", "Spark plugs", "Power steering"], correctIndices: [0, 1, 3, 5], explanation: "The serpentine belt drives the water pump, alternator, AC compressor, and power steering pump. Fuel injectors and spark plugs are electrically controlled.")
        ]),
        flashcards: [
            Flashcard(id: "cars301_f1", front: "Head Gasket", back: "The seal between the engine block and cylinder head — failure from overheating causes coolant/oil mixing and compression loss"),
            Flashcard(id: "cars301_f2", front: "Serpentine Belt", back: "A single belt that drives multiple accessories: water pump, alternator, AC compressor, and power steering"),
            Flashcard(id: "cars301_f3", front: "Thermostat Stuck Closed", back: "A failed thermostat that blocks coolant flow — causes rapid overheating because coolant can't reach the radiator")
        ],
        tags: ["diagnostic", "overheating", "cooling"]
    )

    static let lesson8 = Lesson(
        id: "cars_t3_02",
        categoryId: .cars,
        tier: 3,
        lessonNumber: 2,
        title: "Diagnostic: Dead Battery vs Bad Alternator",
        subtitle: "When your car won't start or keep running",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["cars_t3_01"],
        contentBlocks: [
            ContentBlock(id: "cars302_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "A dead battery and a bad alternator present similar symptoms but have very different fixes.",
                "Replacing a battery when the alternator is failing means the new battery dies too."
            ]),
            ContentBlock(id: "cars302_b2", type: .howItWorks, title: "How the System Works", bullets: [
                "The battery provides power to START the engine. It's a storage device.",
                "The alternator CHARGES the battery and powers all electronics while the engine runs.",
                "If the alternator fails, the battery drains and the car dies — even while driving."
            ]),
            ContentBlock(id: "cars302_b3", type: .howItWorks, title: "Diagnostic Chain", bullets: [
                "Step 1: Jump start the car. If it starts, the battery was dead.",
                "Step 2: Once running, remove the jump cables. If the engine stays running, the alternator is likely fine.",
                "Step 3: If the engine dies shortly after removing cables, the alternator is not charging.",
                "Step 4: Check the battery warning light on the dash — it indicates charging system failure, not just battery.",
                "Step 5: A multimeter reads 13.5-14.5V at the battery while running = good alternator. Under 13V = failing."
            ]),
            ContentBlock(id: "cars302_b4", type: .failureModes, title: "Distinguishing Symptoms", bullets: [
                "Dead Battery: No crank, dim lights, clicking sound when turning key. Jump starts and stays running.",
                "Bad Alternator: Jump starts but dies again. Dimming lights while driving. Battery light on dash. Electrical systems failing.",
                "Parasitic Drain: Battery dies overnight repeatedly. Something is drawing power when the car is off."
            ]),
            ContentBlock(id: "cars302_b5", type: .summary, title: "Summary", bullets: [
                "Battery = storage. Alternator = charging.",
                "Jump start and observe: stays running = battery. Dies again = alternator.",
                "Don't replace a battery until you've confirmed the alternator is charging."
            ])
        ],
        quiz: Quiz(id: "cars302_q", passPercent: 80, questions: [
            Question(id: "cars302_q1", prompt: "Match each symptom to its most likely cause.", matchingPairs: [
                MatchingPair(left: "No crank, dim lights, clicking", right: "Dead battery"),
                MatchingPair(left: "Jump starts but dies again shortly", right: "Bad alternator"),
                MatchingPair(left: "Battery dies overnight repeatedly", right: "Parasitic electrical drain"),
                MatchingPair(left: "Dimming lights while driving", right: "Failing alternator")
            ], explanation: "Distinguishing dead battery, bad alternator, and parasitic drain symptoms prevents replacing the wrong part."),
            Question(id: "cars302_q2", type: .scenario, prompt: "You jump start your car and it runs for 5 minutes, then all electrical systems fade and the engine dies. This most likely indicates:", choices: ["The battery needs replacement", "The alternator is not charging — battery draining without replenishment", "You need more fuel", "The starter motor is failing"], correctIndex: 1, explanation: "If the car dies after jump starting, the alternator isn't charging. The battery depletes without being replenished."),
            Question(id: "cars302_q3", prompt: "A healthy alternator should produce _____ volts at the battery while running.", acceptedAnswers: ["13.5-14.5", "13.5 to 14.5", "13.5-14.5 volts", "14", "13.5", "14.5"], explanation: "A properly charging alternator produces 13.5-14.5 volts. Below 13V indicates a charging system problem."),
            Question(id: "cars302_q4", type: .multiSelect, prompt: "Which are signs of a failing alternator (not just a dead battery)?", choices: ["Battery warning light on the dashboard", "Dimming headlights while driving", "Car won't crank at all", "Engine dies shortly after jump start", "Electrical systems failing while engine runs"], correctIndices: [0, 1, 3, 4], explanation: "Alternator failure shows as charging light, dimming while running, dying after jump start, and electrical failures. A car that won't crank at all is typically a dead battery.")
        ]),
        flashcards: [
            Flashcard(id: "cars302_f1", front: "Alternator", back: "The engine-driven generator that charges the battery and powers all electronics while the engine runs"),
            Flashcard(id: "cars302_f2", front: "Parasitic Drain", back: "An electrical draw that depletes the battery when the car is off — caused by stuck relays, faulty modules, or aftermarket accessories"),
            Flashcard(id: "cars302_f3", front: "Battery Warning Light", back: "Dashboard indicator for charging system failure — usually means the alternator is not charging, not just a dead battery"),
            Flashcard(id: "cars302_f4", front: "Multimeter Test", back: "Measuring voltage at the battery: 12.6V = fully charged (off), 13.5-14.5V = alternator charging (running)")
        ],
        tags: ["diagnostic", "electrical", "battery"]
    )
}
