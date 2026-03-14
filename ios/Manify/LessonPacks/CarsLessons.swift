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
            Question(id: "cars101_q1", prompt: "The four requirements for combustion are:", choices: ["Air, fuel, spark, compression", "Oil, coolant, spark, air", "Fuel, oil, water, spark", "Air, electricity, fuel, exhaust"], correctIndex: 0, explanation: "Air, fuel, spark, and compression are the four requirements for internal combustion."),
            Question(id: "cars101_q2", prompt: "During the compression stroke:", choices: ["Air-fuel enters the cylinder", "Exhaust gases exit", "Spark ignites the mixture", "The mixture is compressed by the piston"], correctIndex: 3, explanation: "The compression stroke is when the piston moves upward to compress the air-fuel mixture before ignition."),
            Question(id: "cars101_q3", type: .scenario, prompt: "Your car is running rough and you smell unburned fuel. The likely issue category is:", choices: ["Air", "Compression", "Exhaust", "Fuel delivery or spark"], correctIndex: 3, explanation: "Unburned fuel smell suggests fuel isn't being properly ignited — likely a spark or fuel delivery issue."),
            Question(id: "cars101_q4", type: .fillBlank, prompt: "The four strokes in order are: intake, compression, power, _____.", choices: ["Ignition", "Injection", "Exhaust", "Vacuum"], correctIndex: 2, explanation: "The four strokes are intake, compression, power, exhaust.")
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
            Question(id: "cars102_q1", prompt: "Oil serves all of these functions EXCEPT:", choices: ["Lubrication", "Cooling", "Cleaning", "Combustion"], correctIndex: 3, explanation: "Oil lubricates, cools, cleans, and creates hydraulic pressure — but it does not participate in combustion."),
            Question(id: "cars102_q2", prompt: "The correct oil weight for your car is found in:", choices: ["The oil filter box", "The gas station attendant's recommendation", "Your owner's manual", "The oil cap only"], correctIndex: 2, explanation: "Your owner's manual specifies the exact oil weight your engine requires."),
            Question(id: "cars102_q3", prompt: "How often should you check your oil level?", choices: ["Daily", "Only at oil changes", "Monthly", "Annually"], correctIndex: 2, explanation: "Checking monthly catches leaks and consumption issues before they cause damage.")
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
            Question(id: "cars103_q1", prompt: "You should check coolant level when the engine is:", choices: ["Hot", "Running", "Under load", "Cold"], correctIndex: 3, explanation: "Always check coolant when the engine is cold. Opening a hot radiator cap can cause severe burns."),
            Question(id: "cars103_q2", prompt: "A stuck-closed thermostat causes:", choices: ["The engine to run too cool", "Low oil pressure", "Overheating", "Increased fuel economy"], correctIndex: 2, explanation: "A stuck-closed thermostat blocks coolant flow, causing the engine to overheat rapidly."),
            Question(id: "cars103_q3", type: .scenario, prompt: "Your temperature gauge spikes while driving. You should:", choices: ["Turn on the heater and monitor", "Add cold water to the radiator immediately", "Keep driving to the nearest mechanic", "Pull over immediately and shut off the engine"], correctIndex: 3, explanation: "Pull over immediately. Continuing to drive an overheating engine can cause catastrophic damage.")
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
            Question(id: "cars201_q1", prompt: "A squealing sound when braking indicates:", choices: ["Normal operation", "The engine is overheating", "Brake pads are wearing thin", "Low tire pressure"], correctIndex: 2, explanation: "Squealing is caused by built-in wear indicators contacting the rotor — it's a designed warning that pads need replacement."),
            Question(id: "cars201_q2", prompt: "A soft or spongy brake pedal suggests:", choices: ["New brake pads", "Normal pad break-in", "Excellent braking power", "Air in the brake lines or low fluid"], correctIndex: 3, explanation: "A spongy pedal means the hydraulic system is compromised — likely air in the lines or low brake fluid."),
            Question(id: "cars201_q3", prompt: "The caliper's job is to:", choices: ["Spin the rotor", "Store brake fluid", "Squeeze brake pads against the rotor", "Connect the wheel to the axle"], correctIndex: 2, explanation: "The caliper is a hydraulic clamp that forces the brake pads against the spinning rotor to create friction and slow the wheel."),
            Question(id: "cars201_q4", type: .scenario, prompt: "You hear grinding when you brake. This means:", choices: ["Your brakes are working perfectly", "Brake pads are completely worn — rotors are being damaged", "Your tires need alignment", "The engine needs oil"], correctIndex: 1, explanation: "Grinding means the friction material is gone and metal is contacting metal — this damages rotors and is a safety emergency.")
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
            Question(id: "cars202_q1", prompt: "The correct tire pressure for your car is found:", choices: ["On the tire sidewall", "In the owner's manual or door jamb sticker", "At the gas station", "On the wheel rim"], correctIndex: 1, explanation: "The sidewall shows the maximum pressure. Your correct pressure is on the door jamb sticker or in the owner's manual."),
            Question(id: "cars202_q2", prompt: "In 'P225/65R17', the '65' represents:", choices: ["Tire width in mm", "Wheel diameter", "Aspect ratio (sidewall height as % of width)", "Speed rating"], correctIndex: 2, explanation: "The aspect ratio is the sidewall height expressed as a percentage of the tire width."),
            Question(id: "cars202_q3", prompt: "How often should tires be rotated?", choices: ["Every 1,000 miles", "Every 5,000-7,500 miles", "Once a year", "Never — they're designed to wear evenly"], correctIndex: 1, explanation: "Tire rotation every 5,000-7,500 miles ensures even wear across all four tires."),
            Question(id: "cars202_q4", type: .fillBlank, prompt: "The last 4 digits of the DOT code indicate the _____ of manufacture.", choices: ["Country", "Factory", "Week and year", "Material type"], correctIndex: 2, explanation: "The last 4 digits show the week and year of manufacture — e.g., 2423 means week 24 of 2023.")
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
            Question(id: "cars203_q1", prompt: "A red oil pressure warning light means:", choices: ["Time for an oil change", "Oil is at normal temperature", "Stop driving immediately — engine damage in seconds", "The oil filter needs replacement"], correctIndex: 2, explanation: "Red oil pressure light means critically low oil pressure. Continuing to drive will destroy the engine within seconds to minutes."),
            Question(id: "cars203_q2", prompt: "OBD-II diagnostic codes tell you:", choices: ["Exactly what part to replace", "What the computer detected, not necessarily the root cause", "How much the repair will cost", "When the car was last serviced"], correctIndex: 1, explanation: "A DTC indicates what the computer's sensors detected — the actual root cause may require further diagnosis."),
            Question(id: "cars203_q3", type: .scenario, prompt: "Your check engine light comes on but the car seems to drive normally. You should:", choices: ["Ignore it — it's probably nothing", "Get it scanned soon but don't panic", "Stop driving immediately", "Disconnect the battery to reset it"], correctIndex: 1, explanation: "An amber check engine light means something needs attention but isn't immediately dangerous. Get it scanned soon."),
            Question(id: "cars203_q4", prompt: "The OBD-II port is located:", choices: ["Under the hood", "In the trunk", "Under the dashboard on the driver side", "Behind the glove box"], correctIndex: 2, explanation: "The OBD-II port is standardized under the dashboard on the driver's side, typically near the steering column.")
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
            Question(id: "cars301_q1", prompt: "The first action when your temperature gauge spikes is:", choices: ["Open the radiator cap to check coolant", "Pull over, turn off AC, turn heater to max", "Keep driving to a mechanic", "Add water immediately"], correctIndex: 1, explanation: "Pull over safely, turn off AC (reduces engine load), and turn the heater on max (acts as a secondary radiator to draw heat away from the engine)."),
            Question(id: "cars301_q2", prompt: "If the lower radiator hose is cold while the engine is hot, the likely cause is:", choices: ["Normal operation", "A clogged radiator", "A stuck-closed thermostat", "A broken fan"], correctIndex: 2, explanation: "A cold lower hose means coolant isn't circulating through the radiator — the thermostat is likely stuck closed."),
            Question(id: "cars301_q3", type: .fillBlank, prompt: "The most common cause of overheating is _____.", choices: ["A broken fan", "A cracked block", "Low coolant from a leak", "Bad spark plugs"], correctIndex: 2, explanation: "Low coolant — usually from a slow leak — is the single most common cause of engine overheating."),
            Question(id: "cars301_q4", type: .scenario, prompt: "You find a broken serpentine belt under the hood. This affects:", choices: ["Only the stereo", "Only the power steering", "The water pump, alternator, and possibly other accessories", "Nothing critical"], correctIndex: 2, explanation: "The serpentine belt drives multiple components including the water pump (cooling) and alternator (charging). A broken belt is a breakdown.")
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
            Question(id: "cars302_q1", prompt: "The alternator's primary job is to:", choices: ["Start the engine", "Charge the battery and power electronics while running", "Regulate engine temperature", "Control the transmission"], correctIndex: 1, explanation: "The alternator charges the battery and powers all electrical systems while the engine is running."),
            Question(id: "cars302_q2", prompt: "You jump start the car and it runs for 5 minutes then dies. This suggests:", choices: ["A dead battery", "A bad alternator", "Low fuel", "A failed starter"], correctIndex: 1, explanation: "If the car dies shortly after jump starting, the alternator is not charging the battery — the battery is draining without being replenished."),
            Question(id: "cars302_q3", type: .scenario, prompt: "Your battery dies overnight but charges fine and the alternator tests good. The likely issue is:", choices: ["The battery is too old", "A parasitic electrical drain", "The starter is failing", "Low coolant"], correctIndex: 1, explanation: "A parasitic drain means something is drawing power when the car is off — a stuck relay, aftermarket accessory, or faulty module."),
            Question(id: "cars302_q4", type: .fillBlank, prompt: "A healthy alternator should read _____ volts at the battery while the engine is running.", choices: ["10-11", "12-12.5", "13.5-14.5", "16-18"], correctIndex: 2, explanation: "A properly charging alternator produces 13.5-14.5 volts. Below 13V indicates a charging problem.")
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
