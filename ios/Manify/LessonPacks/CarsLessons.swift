import Foundation

enum CarsLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12,
        lesson13, lesson14, lesson15, lesson16
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "cars_t1_01",
        categoryId: .cars,
        tier: 1,
        lessonNumber: 1,
        title: "How an Engine Works: Air, Fuel, Spark, Compression",
        subtitle: "The four things every engine needs",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "cars101_b1", type: .whyMatters, title: "Why Four Words Explain Every Engine", bullets: [
                "Every internal combustion engine problem traces back to one of four things: air, fuel, spark, or compression.",
                "If you understand these four, you can describe any engine problem intelligently to yourself or to a mechanic.",
                "This single mental model turns a confusing machine into a system you can reason about."
            ]),
            ContentBlock(id: "cars101_b2", type: .systemOverview, title: "The Four Requirements of Combustion", bullets: [
                "Air enters through the intake and is filtered by the air filter. Too little air runs rich; too much runs lean.",
                "Fuel is delivered by injectors in precise amounts and must atomize into a fine mist for efficient burning.",
                "Spark is provided by the spark plugs at exactly the right moment to ignite the air-fuel mixture.",
                "Compression is the piston squeezing the mixture before ignition. No compression means weak or no combustion."
            ], body: "The computer (ECU) balances air and fuel toward the ideal ratio of about 14.7 parts air to 1 part fuel for gasoline."),
            ContentBlock(id: "cars101_b3", type: .howItWorks, title: "The Four-Stroke Cycle", bullets: [
                "Intake: the piston moves down and the air-fuel mixture is drawn into the cylinder.",
                "Compression: the piston moves up, squeezing the mixture into a small, dense charge.",
                "Power: the spark ignites the compressed mixture, and the explosion forces the piston down. This is the only stroke that makes power.",
                "Exhaust: the piston moves up again, pushing the spent gases out toward the tailpipe."
            ], body: "Most cars have four, six, or eight cylinders firing in sequence so the engine produces smooth, continuous power."),
            ContentBlock(id: "cars101_b4", type: .failureModes, title: "When One of the Four Fails", bullets: [
                "Dirty air filter restricts airflow, reducing performance and fuel economy.",
                "Clogged injector causes uneven fuel delivery and misfires.",
                "Worn spark plug gives weak or no spark, causing rough idle and hard starting.",
                "Low compression from worn piston rings or valves means lost power and a struggling engine."
            ]),
            ContentBlock(id: "cars101_b5", type: .summary, title: "The Mental Model to Keep", bullets: [
                "Air, fuel, spark, compression: every running engine needs all four.",
                "The four-stroke cycle is intake, compression, power, exhaust.",
                "Almost every engine symptom can be sorted under one of these four requirements."
            ])
        ],
        quiz: Quiz(id: "cars101_q", passPercent: 80, questions: [
            Question(id: "cars101_q1", prompt: "Match each stroke of the four-stroke cycle to what happens.", matchingPairs: [
                MatchingPair(left: "Intake", right: "Piston moves down, air-fuel enters"),
                MatchingPair(left: "Compression", right: "Piston moves up, mixture is squeezed"),
                MatchingPair(left: "Power", right: "Spark ignites, piston forced down"),
                MatchingPair(left: "Exhaust", right: "Piston moves up, spent gases expelled")
            ], explanation: "The four-stroke cycle is the operating principle of most car engines, and only the power stroke produces force."),
            Question(id: "cars101_q2", type: .scenario, prompt: "Your car runs rough and you smell unburned fuel from the exhaust. Which combustion requirement is most likely failing?", choices: ["Air intake", "Compression", "Spark or fuel delivery", "Exhaust flow"], correctIndex: 2, explanation: "An unburned fuel smell means the mixture is not being ignited properly, pointing to a spark or fuel delivery problem."),
            Question(id: "cars101_q3", type: .multiSelect, prompt: "Which are the four requirements for internal combustion?", choices: ["Air", "Oil", "Fuel", "Spark", "Coolant", "Compression"], correctIndices: [0, 2, 3, 5], explanation: "Air, fuel, spark, and compression are the four requirements. Oil lubricates and coolant cools, but neither participates in combustion."),
            Question(id: "cars101_q4", prompt: "The four strokes in order are: intake, compression, power, ____.", acceptedAnswers: ["exhaust", "the exhaust stroke", "exhaust stroke"], explanation: "The four strokes are intake, compression, power, and exhaust, completing one full engine cycle."),
            Question(id: "cars101_q5", type: .multipleChoice, prompt: "The ideal air-to-fuel ratio for gasoline combustion is approximately:", choices: ["1 to 1", "14.7 to 1", "50 to 1", "100 to 1"], correctIndex: 1, explanation: "About 14.7 parts air to 1 part fuel by weight is the stoichiometric ratio, where fuel burns most completely.")
        ]),
        flashcards: [
            Flashcard(id: "cars101_f1", front: "Four-Stroke Cycle", back: "Intake, Compression, Power, Exhaust: the operating cycle of most car engines"),
            Flashcard(id: "cars101_f2", front: "Rich Running", back: "Too much fuel relative to air, causing poor fuel economy and black exhaust"),
            Flashcard(id: "cars101_f3", front: "Lean Running", back: "Too little fuel relative to air, causing overheating, misfires, and potential engine damage"),
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
            ContentBlock(id: "cars102_b1", type: .whyMatters, title: "Why Oil Is Job One", bullets: [
                "Oil is the single most important maintenance item. Skip it and the engine destroys itself from the inside.",
                "Understanding oil means understanding why maintenance intervals exist at all.",
                "An engine can run for years on neglected paint or upholstery, but only minutes without oil pressure."
            ]),
            ContentBlock(id: "cars102_b2", type: .howItWorks, title: "What Oil Actually Does", bullets: [
                "Lubricates metal-on-metal contact surfaces inside the engine so parts glide instead of grind.",
                "Cools internal components by carrying heat away from bearings and pistons.",
                "Cleans by suspending soot and deposits and carrying them to the filter.",
                "Creates hydraulic pressure for systems like variable valve timing.",
                "The oil pump circulates oil continuously while the engine runs, and the filter removes contaminants."
            ]),
            ContentBlock(id: "cars102_b3", type: .keyTerms, title: "Reading an Oil Label", bullets: [
                "Viscosity grade like 5W-30: the first number with W is cold-weather flow, the second is hot-running thickness.",
                "Lower first number means easier cold starts; many modern engines use thin 0W-20 for efficiency.",
                "Synthetic oil resists breakdown and extends intervals; conventional is cheaper but shorter-lived.",
                "API service rating (a donut symbol on the bottle) shows the oil meets current engine standards."
            ]),
            ContentBlock(id: "cars102_b4", type: .ownerActions, title: "Your Oil Routine", bullets: [
                "Check the oil level monthly using the dipstick with the engine off and parked level.",
                "Change oil at the manufacturer-recommended interval, typically 5,000 to 7,500 miles for synthetic.",
                "Always use the exact oil weight specified in your owner's manual.",
                "Watch for leaks: spots under the car, a burning smell, or a dropping level between changes."
            ], callouts: ["Wipe the dipstick clean, reinsert fully, then pull it again for an accurate reading."]),
            ContentBlock(id: "cars102_b5", type: .summary, title: "The One Habit That Saves Engines", bullets: [
                "Oil lubricates, cools, cleans, and pressurizes.",
                "Check monthly, change on schedule, and use the correct weight.",
                "Neglecting oil is the single fastest way to kill an engine."
            ])
        ],
        quiz: Quiz(id: "cars102_q", passPercent: 80, questions: [
            Question(id: "cars102_q1", type: .multiSelect, prompt: "Which functions does engine oil serve?", choices: ["Lubricates metal-on-metal contact", "Participates in combustion", "Cools engine components", "Cleans internal deposits", "Creates hydraulic pressure"], correctIndices: [0, 2, 3, 4], explanation: "Oil lubricates, cools, cleans, and creates hydraulic pressure. It does not participate in combustion."),
            Question(id: "cars102_q2", type: .scenario, prompt: "A friend says they use whatever oil is cheapest because 'oil is oil.' The best response is:", choices: ["They're right, brand doesn't matter", "Only synthetic matters", "The correct oil weight from the owner's manual matters most", "Thicker oil is always better for protection"], correctIndex: 2, explanation: "Your owner's manual specifies the exact viscosity your engine requires. The wrong weight can starve parts of oil or cause damage."),
            Question(id: "cars102_q3", prompt: "Engine oil level should be checked at least ____.", acceptedAnswers: ["monthly", "once a month", "every month"], explanation: "Checking monthly catches leaks and consumption before they cause engine damage."),
            Question(id: "cars102_q4", type: .multipleChoice, prompt: "In a 5W-30 oil rating, what does the first number (5W) describe?", choices: ["Maximum engine RPM", "Cold-weather flow performance", "Oil capacity in quarts", "Change interval in thousands of miles"], correctIndex: 1, explanation: "The number before the W indicates how easily the oil flows when cold. A lower number flows better at startup in cold weather.")
        ]),
        flashcards: [
            Flashcard(id: "cars102_f1", front: "Viscosity", back: "A measure of oil's thickness and flow resistance, expressed as weight such as 5W-30 or 0W-20"),
            Flashcard(id: "cars102_f2", front: "Oil Pump", back: "Mechanical pump that circulates oil throughout the engine while running"),
            Flashcard(id: "cars102_f3", front: "Dipstick", back: "A measuring rod used to check engine oil level; the reading should sit between the low and full marks"),
            Flashcard(id: "cars102_f4", front: "Synthetic Oil", back: "Lab-engineered oil that resists heat breakdown longer than conventional, allowing extended change intervals")
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
        prerequisites: ["cars_t1_02"],
        contentBlocks: [
            ContentBlock(id: "cars103_b1", type: .whyMatters, title: "Why Heat Is the Enemy", bullets: [
                "Combustion generates extreme heat. Without cooling, the engine warps, seizes, or cracks.",
                "Overheating is one of the most common and most expensive engine failures.",
                "A few dollars of coolant prevents a several-thousand-dollar engine rebuild."
            ]),
            ContentBlock(id: "cars103_b2", type: .componentBreakdown, title: "The Parts That Keep It Cool", bullets: [
                "Radiator: the heat exchanger where hot coolant flows through thin tubes while air passes over fins.",
                "Water pump: circulates coolant through the engine block and radiator in a continuous loop.",
                "Thermostat: a valve that stays closed when cold and opens when warm to regulate flow.",
                "Coolant: a mixture of antifreeze and water that raises the boiling point and lowers the freezing point.",
                "Cooling fans: pull air through the radiator when vehicle speed alone does not provide enough airflow."
            ]),
            ContentBlock(id: "cars103_b3", type: .failureModes, title: "What Causes Overheating", bullets: [
                "Low coolant is the most common cause, usually from a slow leak.",
                "A stuck thermostat overheats the engine if closed, or prevents warm-up if stuck open.",
                "Water pump failure stops circulation and causes rapid overheating.",
                "A clogged radiator loses heat-exchange capacity over time."
            ]),
            ContentBlock(id: "cars103_b4", type: .safety, title: "Safe Coolant Handling", bullets: [
                "Check coolant level only when the engine is COLD. Never open a hot radiator cap.",
                "Look for leaks: green, orange, or pink fluid pooling under the car.",
                "Replace coolant on the manufacturer schedule, typically every 30,000 to 60,000 miles.",
                "If the temperature gauge spikes, pull over immediately. Do not drive an overheating engine."
            ], callouts: ["A hot, pressurized cooling system can spray scalding coolant the instant the cap is loosened. Wait until it is cool to the touch."]),
            ContentBlock(id: "cars103_b5", type: .summary, title: "The Cooling System in One Breath", bullets: [
                "The cooling system prevents catastrophic heat damage.",
                "Radiator, water pump, thermostat, coolant, and fans work as one team.",
                "Check coolant cold, never drive overheating, and pull over immediately if the gauge climbs."
            ])
        ],
        quiz: Quiz(id: "cars103_q", passPercent: 80, questions: [
            Question(id: "cars103_q1", prompt: "Match each cooling component to its role.", matchingPairs: [
                MatchingPair(left: "Radiator", right: "Exchanges heat from coolant to outside air"),
                MatchingPair(left: "Water Pump", right: "Circulates coolant through the system"),
                MatchingPair(left: "Thermostat", right: "Valve regulating coolant flow by temperature"),
                MatchingPair(left: "Cooling Fans", right: "Pull air through radiator at low speeds")
            ], explanation: "Each component plays a critical role in preventing engine overheating."),
            Question(id: "cars103_q2", type: .scenario, prompt: "Your temperature gauge spikes to the red zone while driving. Your immediate action should be:", choices: ["Turn on the heater and keep monitoring", "Pull over immediately, do NOT keep driving", "Add cold water to the radiator while running", "Rev the engine to increase water pump flow"], correctIndex: 1, explanation: "Pull over immediately. Continuing to drive an overheating engine for even a few minutes can cause catastrophic, expensive damage."),
            Question(id: "cars103_q3", prompt: "Coolant should ONLY be checked when the engine is ____.", acceptedAnswers: ["cold", "cool", "cooled down", "not running"], explanation: "Never open a hot radiator cap. The pressurized system can release scalding coolant and cause severe burns."),
            Question(id: "cars103_q4", type: .multipleChoice, prompt: "A stuck-closed thermostat causes:", choices: ["The engine to run too cool", "Increased fuel economy", "Rapid overheating", "Low oil pressure"], correctIndex: 2, explanation: "A stuck-closed thermostat blocks coolant flow to the radiator, causing the engine to overheat rapidly.")
        ]),
        flashcards: [
            Flashcard(id: "cars103_f1", front: "Thermostat", back: "A temperature-controlled valve that regulates coolant flow: closed when cold, open at operating temperature"),
            Flashcard(id: "cars103_f2", front: "Coolant / Antifreeze", back: "A mixture of antifreeze and water that transfers heat, raises the boiling point, and lowers the freezing point"),
            Flashcard(id: "cars103_f3", front: "Water Pump", back: "A mechanical pump that circulates coolant throughout the engine and radiator"),
            Flashcard(id: "cars103_f4", front: "Radiator", back: "A heat exchanger where hot coolant releases heat to outside air through thin tubes and fins")
        ],
        tags: ["cooling", "engine", "maintenance"]
    )

    static let lesson4 = Lesson(
        id: "cars_t1_04",
        categoryId: .cars,
        tier: 1,
        lessonNumber: 4,
        title: "Dashboard Gauges and What They Mean",
        subtitle: "Reading the conversation your car is having with you",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: ["cars_t1_03"],
        contentBlocks: [
            ContentBlock(id: "cars104_b1", type: .whyMatters, title: "Your Dashboard Is a Live Report", bullets: [
                "Gauges show you the engine's vital signs in real time, before a warning light ever appears.",
                "A driver who reads gauges catches problems early; a driver who ignores them gets stranded.",
                "Knowing normal ranges lets you instantly spot abnormal."
            ]),
            ContentBlock(id: "cars104_b2", type: .componentBreakdown, title: "The Core Gauges", bullets: [
                "Speedometer: your current speed. Tachometer: engine RPM in thousands; redline marks the danger zone.",
                "Temperature gauge: coolant temperature. Normal sits near the middle; climbing toward hot means trouble.",
                "Fuel gauge: tank level. The pump icon arrow shows which side the fuel door is on.",
                "Oil pressure gauge (if equipped): healthy pressure when running; near zero means stop now.",
                "Voltmeter (if equipped): charging system health, normally around 14 volts while running."
            ]),
            ContentBlock(id: "cars104_b3", type: .keyTerms, title: "Reading the Tachometer", bullets: [
                "RPM means revolutions per minute, the speed the engine's crankshaft spins.",
                "Idle is usually 600 to 900 RPM; highway cruising is often 1,500 to 2,500 RPM.",
                "The colored redline (often 6,000 to 7,000 RPM) is the safe upper limit; holding the engine there causes damage.",
                "Watching RPM teaches smooth shifting and efficient driving."
            ]),
            ContentBlock(id: "cars104_b4", type: .commonMistakes, title: "Gauge Mistakes to Avoid", bullets: [
                "Ignoring a slowly climbing temperature gauge until the engine is in the red.",
                "Confusing the fuel light (range warning) with a guarantee that the tank is truly empty.",
                "Treating a flickering oil pressure light as harmless; low oil pressure can ruin an engine in seconds.",
                "Assuming a steady voltmeter means the battery is fine when the engine is off."
            ]),
            ContentBlock(id: "cars104_b5", type: .summary, title: "Glance, Interpret, Act", bullets: [
                "Learn the normal position of every gauge in your car.",
                "Temperature middle, oil pressure healthy, voltage near 14, RPM below redline: that is normal.",
                "A gauge drifting out of its normal range is your earliest warning."
            ])
        ],
        quiz: Quiz(id: "cars104_q", passPercent: 80, questions: [
            Question(id: "cars104_q1", prompt: "Match each gauge to what it measures.", matchingPairs: [
                MatchingPair(left: "Tachometer", right: "Engine RPM in thousands"),
                MatchingPair(left: "Temperature gauge", right: "Engine coolant temperature"),
                MatchingPair(left: "Voltmeter", right: "Charging system voltage"),
                MatchingPair(left: "Oil pressure gauge", right: "Lubrication system pressure")
            ], explanation: "Each gauge reports a different vital sign, and knowing what each one tracks lets you spot trouble fast."),
            Question(id: "cars104_q2", type: .scenario, prompt: "While driving, your temperature gauge slowly climbs from the middle toward the hot mark. The smart move is:", choices: ["Keep driving, gauges always wander", "Turn up the radio to relax", "Reduce load, turn on the heater, and find a safe place to stop and check coolant", "Speed up to get home faster"], correctIndex: 2, explanation: "A climbing temperature gauge is an early overheating warning. Turning the heater on pulls heat from the engine while you find a safe place to stop."),
            Question(id: "cars104_q3", prompt: "The tachometer measures engine speed in ____, which stands for revolutions per minute.", acceptedAnswers: ["rpm", "revolutions per minute", "r.p.m."], explanation: "RPM is how fast the crankshaft is spinning. The redline marks the maximum safe RPM."),
            Question(id: "cars104_q4", type: .multipleChoice, prompt: "A healthy voltmeter reading while the engine is running is approximately:", choices: ["6 volts", "9 volts", "14 volts", "24 volts"], correctIndex: 2, explanation: "A charging system in good health reads about 13.5 to 14.5 volts while running. A reading near 12 volts or lower suggests the alternator is not charging."),
            Question(id: "cars104_q5", type: .multiSelect, prompt: "Which gauge readings should prompt you to stop driving as soon as it is safe?", choices: ["Temperature in the red", "Tachometer at idle", "Oil pressure near zero while running", "Fuel near half a tank", "Voltmeter reading well below normal"], correctIndices: [0, 2, 4], explanation: "Red temperature, near-zero oil pressure, and abnormally low voltage all signal failures in progress. Idle RPM and a half tank are normal.")
        ]),
        flashcards: [
            Flashcard(id: "cars104_f1", front: "Tachometer", back: "Gauge showing engine RPM (revolutions per minute); the redline marks the maximum safe engine speed"),
            Flashcard(id: "cars104_f2", front: "Redline", back: "The marked RPM limit above which engine damage can occur"),
            Flashcard(id: "cars104_f3", front: "Temperature Gauge", back: "Shows coolant temperature; normal is mid-range, and climbing toward hot signals overheating"),
            Flashcard(id: "cars104_f4", front: "Idle RPM", back: "The engine speed at rest with no throttle, typically 600 to 900 RPM")
        ],
        tags: ["dashboard", "gauges", "basics"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "cars_t2_01",
        categoryId: .cars,
        tier: 2,
        lessonNumber: 1,
        title: "Brakes and Stopping Power",
        subtitle: "The most critical safety system on your vehicle",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["cars_t1_04"],
        contentBlocks: [
            ContentBlock(id: "cars201_b1", type: .whyMatters, title: "Nothing Matters More Than Stopping", bullets: [
                "Brakes are the single most important safety system on your vehicle.",
                "Understanding how they work lets you recognize warning signs before a failure.",
                "Most brake failures announce themselves for weeks before they become dangerous."
            ]),
            ContentBlock(id: "cars201_b2", type: .componentBreakdown, title: "Disc Brake Components", bullets: [
                "Brake rotor (disc): the spinning metal disc attached to the wheel hub.",
                "Brake pads: friction material that clamps against the rotor to slow the wheel.",
                "Caliper: the hydraulic clamp that squeezes the pads against the rotor.",
                "Brake lines: carry hydraulic fluid from the master cylinder to each caliper.",
                "Master cylinder: converts pedal pressure into hydraulic force distributed to all four wheels."
            ]),
            ContentBlock(id: "cars201_b3", type: .failureModes, title: "What Each Symptom Tells You", bullets: [
                "Squealing: wear indicators are contacting the rotor. Pads need replacement soon.",
                "Grinding: metal-on-metal contact. Pads are gone and rotors are being damaged.",
                "Vibration or pulsing when braking: warped rotors from heat.",
                "Soft or spongy pedal: air in the brake lines or low fluid.",
                "Pulling to one side: uneven pad wear or a stuck caliper."
            ]),
            ContentBlock(id: "cars201_b4", type: .ownerActions, title: "Staying Ahead of Brake Trouble", bullets: [
                "Listen for squealing; it is designed as an early warning.",
                "Check brake fluid level periodically and watch for a dropping level.",
                "Have brakes inspected during every tire rotation.",
                "Never ignore any change in pedal feel or new noise."
            ], callouts: ["A pedal that slowly sinks to the floor under steady pressure can mean a failing master cylinder. Treat it as urgent."]),
            ContentBlock(id: "cars201_b5", type: .summary, title: "Brakes Are Non-Negotiable", bullets: [
                "Disc brakes work by squeezing pads against rotors through hydraulic calipers.",
                "Squealing is a warning, grinding is damage, and a soft pedal is danger.",
                "Address any brake warning sign immediately."
            ])
        ],
        quiz: Quiz(id: "cars201_q", passPercent: 80, questions: [
            Question(id: "cars201_q1", prompt: "Match each brake warning sign to what it means.", matchingPairs: [
                MatchingPair(left: "Squealing", right: "Wear indicators contacting rotor, pads need replacement"),
                MatchingPair(left: "Grinding", right: "Metal-on-metal, pads gone, rotors being damaged"),
                MatchingPair(left: "Soft / spongy pedal", right: "Air in brake lines or low fluid"),
                MatchingPair(left: "Pulling to one side", right: "Uneven pad wear or stuck caliper")
            ], explanation: "Each brake symptom indicates a specific problem. Knowing what to listen and feel for can save your life."),
            Question(id: "cars201_q2", type: .scenario, prompt: "You hear loud grinding every time you press the brake pedal. This is:", choices: ["Normal for new brake pads", "A safety emergency, pads are gone and rotors are being destroyed", "Just a minor noise issue", "Related to tire pressure"], correctIndex: 1, explanation: "Grinding means metal-on-metal contact. The friction material is gone and the rotor is being damaged. Address it immediately."),
            Question(id: "cars201_q3", prompt: "The hydraulic clamp that squeezes brake pads against the rotor is called the ____.", acceptedAnswers: ["caliper", "brake caliper", "the caliper"], explanation: "The caliper is a hydraulic clamp that squeezes the pads against the spinning rotor when you press the pedal."),
            Question(id: "cars201_q4", type: .multiSelect, prompt: "Which brake symptoms require immediate attention?", choices: ["Squealing during braking", "Grinding during braking", "Soft or spongy brake pedal", "Slight noise when cold that goes away", "Vibration or pulsing when braking"], correctIndices: [1, 2, 4], explanation: "Grinding (damage), a spongy pedal (hydraulic problem), and vibration (warped rotors) all require immediate attention. Squealing is a warning, and cold noise that clears is usually normal.")
        ]),
        flashcards: [
            Flashcard(id: "cars201_f1", front: "Brake Rotor", back: "The spinning metal disc attached to the wheel hub; brake pads clamp against it to slow the vehicle"),
            Flashcard(id: "cars201_f2", front: "Caliper", back: "The hydraulic clamp that squeezes brake pads against the rotor when you press the brake pedal"),
            Flashcard(id: "cars201_f3", front: "Master Cylinder", back: "Converts brake pedal pressure into hydraulic force distributed to all four wheel calipers"),
            Flashcard(id: "cars201_f4", front: "Brake Fade", back: "Loss of braking power from overheated pads or fluid, common during extended downhill braking")
        ],
        tags: ["brakes", "safety", "components"]
    )

    static let lesson6 = Lesson(
        id: "cars_t2_02",
        categoryId: .cars,
        tier: 2,
        lessonNumber: 2,
        title: "Tires: Reading the Sidewall and Maintenance",
        subtitle: "The only part of your car touching the road",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["cars_t2_01"],
        contentBlocks: [
            ContentBlock(id: "cars202_b1", type: .whyMatters, title: "Four Patches the Size of Your Hand", bullets: [
                "Tires are the only contact between your vehicle and the road, each patch about the size of your palm.",
                "Wrong tires, wrong pressure, or worn tread directly degrade braking, handling, and safety.",
                "Tire care is one of the cheapest, highest-impact things you can control."
            ]),
            ContentBlock(id: "cars202_b2", type: .howItWorks, title: "Reading a Tire Sidewall", bullets: [
                "P225/65R17 95H is the standard format stamped on the sidewall.",
                "P is Passenger, 225 is the width in millimeters, 65 is the aspect ratio (sidewall height as a percent of width).",
                "R is radial construction and 17 is the wheel diameter in inches.",
                "95 is the load index (max weight) and H is the speed rating.",
                "The DOT code ends in a date: the last 4 digits are week and year (2423 means week 24 of 2023)."
            ]),
            ContentBlock(id: "cars202_b3", type: .stepByStep, title: "The Penny Tread Test", bullets: [
                "Insert a penny into the tread groove with Lincoln's head pointing down.",
                "If the top of Lincoln's head is fully visible, the tread is worn out (below 2/32 inch) and the tire needs replacing.",
                "If part of his head is covered, you still have usable tread.",
                "Check several spots across the tire; uneven wear points to alignment or pressure issues."
            ]),
            ContentBlock(id: "cars202_b4", type: .ownerActions, title: "Tire Maintenance Habits", bullets: [
                "Check tire pressure monthly using the door jamb sticker, not the sidewall maximum.",
                "Inspect tread depth regularly with the penny test.",
                "Rotate tires every 5,000 to 7,500 miles for even wear.",
                "Replace tires in pairs on the same axle, or all four. Never mix tire types across an axle."
            ], callouts: ["The sidewall number is the MAXIMUM pressure, not your target. Use the door jamb sticker value."]),
            ContentBlock(id: "cars202_b5", type: .summary, title: "Tires in One Glance", bullets: [
                "Learn to read sidewall codes; they tell you everything about the tire.",
                "Check pressure monthly, rotate regularly, and replace when tread is worn.",
                "Correct tires and pressure are foundational to vehicle safety."
            ])
        ],
        quiz: Quiz(id: "cars202_q", passPercent: 80, questions: [
            Question(id: "cars202_q1", prompt: "Match each part of 'P225/65R17' to what it means.", matchingPairs: [
                MatchingPair(left: "P", right: "Passenger vehicle tire"),
                MatchingPair(left: "225", right: "Tire width in millimeters"),
                MatchingPair(left: "65", right: "Aspect ratio (sidewall height as percent of width)"),
                MatchingPair(left: "R17", right: "Radial construction, 17-inch wheel")
            ], explanation: "Reading tire sidewall codes tells you everything about a tire's size and construction."),
            Question(id: "cars202_q2", type: .scenario, prompt: "You're checking tire pressure. Where do you find the CORRECT pressure for your car?", choices: ["The number printed on the tire sidewall", "The owner's manual or door jamb sticker", "Whatever the gas station gauge averages", "The tire shop's general recommendation"], correctIndex: 1, explanation: "The sidewall shows the MAXIMUM pressure. Your correct pressure is on the door jamb sticker or in the owner's manual."),
            Question(id: "cars202_q3", prompt: "The last 4 digits of the DOT code indicate the ____ of manufacture.", acceptedAnswers: ["week and year", "date", "manufacture date", "week and year of manufacture"], explanation: "The last 4 digits show the week and year, e.g. 2423 means week 24 of 2023. Important for knowing tire age."),
            Question(id: "cars202_q4", type: .multiSelect, prompt: "Which are proper tire maintenance practices?", choices: ["Check pressure monthly", "Use the sidewall maximum as your target pressure", "Rotate every 5,000 to 7,500 miles", "Replace in pairs on the same axle", "Mix different tire types across an axle"], correctIndices: [0, 2, 3], explanation: "Monthly pressure checks, regular rotation, and replacing in pairs are correct. The sidewall shows max pressure (not target), and you should never mix tire types on the same axle.")
        ]),
        flashcards: [
            Flashcard(id: "cars202_f1", front: "Aspect Ratio", back: "The sidewall height expressed as a percentage of tire width; the second number in the tire size code"),
            Flashcard(id: "cars202_f2", front: "DOT Date Code", back: "The last 4 digits on a tire sidewall giving manufacture week and year (2423 = week 24, 2023)"),
            Flashcard(id: "cars202_f3", front: "Load Index", back: "A number indicating the maximum weight a tire can safely carry at full inflation"),
            Flashcard(id: "cars202_f4", front: "Penny Test", back: "A quick tread check: insert a penny head-down; if you see all of Lincoln's head, the tread is too worn")
        ],
        tags: ["tires", "maintenance", "safety"]
    )

    static let lesson7 = Lesson(
        id: "cars_t2_03",
        categoryId: .cars,
        tier: 2,
        lessonNumber: 3,
        title: "Battery, Charging, Belts and Hoses",
        subtitle: "The electrical and rubber that keep you running",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["cars_t2_02"],
        contentBlocks: [
            ContentBlock(id: "cars203_b1", type: .whyMatters, title: "The Quiet Parts That Strand You", bullets: [
                "Batteries, belts, and hoses rarely get attention until they fail and leave you stuck.",
                "These are cheap, predictable parts with known lifespans, so failures are almost always preventable.",
                "A two-minute under-hood look spots most of these problems early."
            ]),
            ContentBlock(id: "cars203_b2", type: .systemOverview, title: "How Charging Works", bullets: [
                "The battery is a storage device that provides the burst of power to start the engine.",
                "The alternator charges the battery and powers all electronics while the engine runs.",
                "A serpentine belt spins the alternator, water pump, and other accessories off the engine.",
                "A typical car battery lasts 3 to 5 years; heat shortens its life more than cold."
            ]),
            ContentBlock(id: "cars203_b3", type: .componentBreakdown, title: "Belts and Hoses Up Close", bullets: [
                "Serpentine belt: one long ribbed belt driving multiple accessories; look for cracks, glazing, or fraying.",
                "Timing belt or chain: keeps valves and pistons in sync; a snapped timing belt can destroy some engines.",
                "Radiator hoses: carry coolant; squeeze them cold to feel for soft, mushy, or bulging spots.",
                "Heater hoses and clamps: small leaks here cause slow coolant loss and overheating."
            ], callouts: ["A timing belt is usually a scheduled replacement (often 60,000 to 100,000 miles). Check your manual; ignoring it risks major engine damage on interference engines."]),
            ContentBlock(id: "cars203_b4", type: .ownerActions, title: "Quick Under-Hood Checks", bullets: [
                "Inspect the serpentine belt for cracks and check that it is tight, not glazed or shiny.",
                "Squeeze cold radiator hoses; firm and springy is good, mushy or rock-hard is bad.",
                "Look at battery terminals for white or blue corrosion and clean it off if present.",
                "Note your battery's age; replace proactively at 4 to 5 years rather than waiting for a no-start."
            ]),
            ContentBlock(id: "cars203_b5", type: .summary, title: "Prevent, Don't React", bullets: [
                "Battery stores power, alternator charges it, and the belt drives the alternator.",
                "Belts and hoses are wear items with predictable lifespans; replace before they fail.",
                "Two minutes under the hood prevents most roadside breakdowns."
            ])
        ],
        quiz: Quiz(id: "cars203_q", passPercent: 80, questions: [
            Question(id: "cars203_q1", prompt: "Match each part to its job.", matchingPairs: [
                MatchingPair(left: "Battery", right: "Stores power to start the engine"),
                MatchingPair(left: "Alternator", right: "Charges the battery while running"),
                MatchingPair(left: "Serpentine belt", right: "Drives the alternator and accessories"),
                MatchingPair(left: "Timing belt", right: "Keeps valves and pistons in sync")
            ], explanation: "The battery stores, the alternator charges, the serpentine belt drives accessories, and the timing belt synchronizes the engine."),
            Question(id: "cars203_q2", type: .scenario, prompt: "You squeeze a cold radiator hose and it feels mushy and soft, with a slight bulge. The right call is:", choices: ["It's fine, hoses are supposed to be soft", "Replace the hose before it bursts and causes overheating", "Add more coolant and ignore it", "Tighten the clamp and forget about it"], correctIndex: 1, explanation: "A mushy or bulging hose is degrading and can rupture, causing rapid coolant loss and overheating. Replace it proactively."),
            Question(id: "cars203_q3", prompt: "A typical car battery lasts about ____ years before it should be replaced.", acceptedAnswers: ["3 to 5", "3-5", "three to five", "4", "5", "4 to 5"], explanation: "Most batteries last 3 to 5 years. Heat shortens life, so replacing proactively around 4 to 5 years avoids a no-start."),
            Question(id: "cars203_q4", type: .multiSelect, prompt: "Which are signs that a belt or hose needs attention?", choices: ["Cracks or fraying on the serpentine belt", "A shiny, glazed belt surface", "A firm, springy radiator hose", "A mushy or bulging radiator hose", "A squealing belt at startup"], correctIndices: [0, 1, 3, 4], explanation: "Cracks, glazing, bulging hoses, and squealing all signal wear. A firm, springy hose is healthy."),
            Question(id: "cars203_q5", type: .multipleChoice, prompt: "Why is a timing belt failure especially serious on an interference engine?", choices: ["It only causes a squeak", "Valves and pistons can collide, causing major internal damage", "It drains the battery", "It makes the radio stop working"], correctIndex: 1, explanation: "On an interference engine, the valves and pistons occupy the same space at different times. If the timing belt snaps, they can collide and cause severe engine damage.")
        ]),
        flashcards: [
            Flashcard(id: "cars203_f1", front: "Alternator", back: "The engine-driven generator that charges the battery and powers electronics while running"),
            Flashcard(id: "cars203_f2", front: "Serpentine Belt", back: "A single ribbed belt that drives the alternator, water pump, AC compressor, and power steering"),
            Flashcard(id: "cars203_f3", front: "Timing Belt", back: "A belt that synchronizes valves and pistons; a scheduled replacement item that can cause major damage if it fails"),
            Flashcard(id: "cars203_f4", front: "Terminal Corrosion", back: "White or blue powder on battery terminals that disrupts the electrical connection and causes hard starts")
        ],
        tags: ["battery", "belts", "charging"]
    )

    static let lesson8 = Lesson(
        id: "cars_t2_04",
        categoryId: .cars,
        tier: 2,
        lessonNumber: 4,
        title: "Warning Lights, Fluids and OBD-II",
        subtitle: "Your car is talking, learn to listen",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["cars_t2_03"],
        contentBlocks: [
            ContentBlock(id: "cars204_b1", type: .whyMatters, title: "Lights and Fluids Are Your Early Warning", bullets: [
                "Warning lights are your car's diagnostic communication system.",
                "Ignoring them leads to cascading failures, while understanding them saves thousands.",
                "Knowing your key fluids lets you diagnose before a warning light even comes on."
            ]),
            ContentBlock(id: "cars204_b2", type: .componentBreakdown, title: "Critical Warning Lights", bullets: [
                "Check engine (amber): an emissions or engine management issue, from minor (loose gas cap) to serious (misfire).",
                "Oil pressure (red): low oil pressure. Stop driving immediately; engine damage can happen in seconds.",
                "Temperature (red): the engine is overheating. Pull over immediately.",
                "Battery (red): charging system failure from the alternator or belt. Limited driving time remains.",
                "Brake (red): could be the parking brake, low fluid, or an ABS issue. Check immediately."
            ]),
            ContentBlock(id: "cars204_b3", type: .keyTerms, title: "The Fluids Every Driver Should Know", bullets: [
                "Engine oil: amber when fresh, dark brown or black when due for a change.",
                "Coolant: bright green, orange, or pink; sweet smell. A leak shows as colored puddles.",
                "Transmission fluid: usually red or pink, smooth; dark or burnt-smelling means trouble.",
                "Brake fluid: clear to amber; if it is dark, it is overdue for a change.",
                "Power steering and washer fluid round out the under-hood reservoirs."
            ]),
            ContentBlock(id: "cars204_b4", type: .howItWorks, title: "OBD-II Basics", bullets: [
                "OBD-II is a standardized diagnostic port under the dashboard on the driver side.",
                "A scan tool reads Diagnostic Trouble Codes (DTCs) stored by the computer.",
                "Codes like P0300 (random misfire) or P0420 (catalyst efficiency) point to specific systems.",
                "A code tells you WHAT the computer detected, not always the root cause."
            ]),
            ContentBlock(id: "cars204_b5", type: .summary, title: "Listen and Diagnose", bullets: [
                "Red lights mean stop driving; amber lights mean diagnose soon.",
                "Learn the normal color of each fluid so you can spot a leak by sight.",
                "An affordable OBD-II scanner turns a mystery light into a starting point."
            ])
        ],
        quiz: Quiz(id: "cars204_q", passPercent: 80, questions: [
            Question(id: "cars204_q1", prompt: "Match each warning light to the correct response.", matchingPairs: [
                MatchingPair(left: "Red oil pressure", right: "Stop driving immediately"),
                MatchingPair(left: "Red temperature", right: "Pull over immediately"),
                MatchingPair(left: "Amber check engine", right: "Get scanned soon, don't panic"),
                MatchingPair(left: "Amber TPMS", right: "Check tire pressure soon")
            ], explanation: "Red means stop or pull over immediately. Amber means diagnose soon but it is not an emergency."),
            Question(id: "cars204_q2", type: .scenario, prompt: "Your check engine light comes on but the car drives normally. The best response is:", choices: ["Ignore it until something feels wrong", "Disconnect the battery to reset it", "Get it scanned with an OBD-II reader soon", "Stop driving immediately and call a tow"], correctIndex: 2, explanation: "A steady amber check engine light means something needs attention but is not immediately dangerous. Scan for codes to understand the issue."),
            Question(id: "cars204_q3", prompt: "OBD-II codes tell you what the computer ____, not necessarily the root cause.", acceptedAnswers: ["detected", "sensed", "found", "recorded", "observed"], explanation: "A DTC indicates what the sensors detected. The actual root cause may require further diagnosis."),
            Question(id: "cars204_q4", type: .multiSelect, prompt: "Which dashboard lights require you to STOP driving immediately?", choices: ["Red oil pressure light", "Amber check engine light", "Red temperature warning", "Amber TPMS light", "Red brake warning with no fluid"], correctIndices: [0, 2, 4], explanation: "Red oil pressure, red temperature, and a red brake warning with low fluid are stop-immediately conditions. Amber lights mean diagnose soon."),
            Question(id: "cars204_q5", type: .multipleChoice, prompt: "You find a sweet-smelling, bright green puddle under your car. This most likely indicates:", choices: ["A brake fluid leak", "An oil leak", "A coolant leak", "A washer fluid leak"], correctIndex: 2, explanation: "Bright green with a sweet smell is classic coolant. A coolant leak risks overheating and should be addressed quickly.")
        ]),
        flashcards: [
            Flashcard(id: "cars204_f1", front: "OBD-II", back: "On-Board Diagnostics II, a standardized diagnostic system and port in all US cars since 1996"),
            Flashcard(id: "cars204_f2", front: "DTC (Diagnostic Trouble Code)", back: "A code stored by the car's computer indicating a detected issue; format is a letter plus 4 digits (P0300)"),
            Flashcard(id: "cars204_f3", front: "Coolant Color", back: "Usually bright green, orange, or pink with a sweet smell; a colored puddle suggests a cooling system leak"),
            Flashcard(id: "cars204_f4", front: "Transmission Fluid", back: "Typically red or pink and smooth; dark or burnt-smelling fluid signals transmission trouble")
        ],
        tags: ["diagnostics", "warning lights", "fluids"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "cars_t3_01",
        categoryId: .cars,
        tier: 3,
        lessonNumber: 1,
        title: "Diagnosing the Overheating Chain",
        subtitle: "A systematic approach when the temp gauge spikes",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["cars_t2_04"],
        contentBlocks: [
            ContentBlock(id: "cars301_b1", type: .whyMatters, title: "Overheating Destroys Engines Fast", bullets: [
                "Overheating is one of the most damaging things that can happen to an engine.",
                "Head gasket failure, a warped cylinder head, or a cracked block are all consequences of ignoring the gauge.",
                "A systematic check finds the cause without making things worse."
            ]),
            ContentBlock(id: "cars301_b2", type: .stepByStep, title: "The Diagnostic Chain", bullets: [
                "Step 1: Pull over safely. Turn off the AC and turn the heater to max, which draws heat away from the engine.",
                "Step 2: Once stopped and cooled, check the coolant level. Never open a hot radiator cap.",
                "Step 3: Look for visible leaks, puddles under the car, or steam from the hood.",
                "Step 4: Check whether the cooling fan runs when the engine is warm.",
                "Step 5: Carefully feel the upper and lower radiator hoses; both should be warm. A cold lower hose suggests a stuck thermostat.",
                "Step 6: Check the serpentine belt. If it is broken, the water pump is not spinning."
            ], callouts: ["This is education, not a substitute for professional repair. If you are unsure, stop and call for help rather than risk the engine or yourself."]),
            ContentBlock(id: "cars301_b3", type: .failureModes, title: "Common Causes by Likelihood", bullets: [
                "Low coolant from a leak is the most common cause; check puddles and hose connections.",
                "A failed thermostat stuck closed prevents circulation.",
                "A broken serpentine belt disables the water pump and alternator.",
                "A failed water pump stops circulation even with the belt intact.",
                "A clogged radiator loses heat-exchange capacity, often from neglected coolant changes.",
                "A failed cooling fan leaves no airflow at low speed or idle."
            ]),
            ContentBlock(id: "cars301_b4", type: .summary, title: "Cool Head, Clear Steps", bullets: [
                "Pull over, heater on, let it cool, then check coolant, leaks, fan, hoses, and belt.",
                "Most overheating is low coolant or a stuck thermostat.",
                "Driving an overheating car for even a few minutes can cause thousands in damage."
            ])
        ],
        quiz: Quiz(id: "cars301_q", passPercent: 80, questions: [
            Question(id: "cars301_q1", prompt: "Put the overheating diagnostic steps in the correct order.", matchingPairs: [
                MatchingPair(left: "Step 1", right: "Pull over, turn off AC, heater to max"),
                MatchingPair(left: "Step 2", right: "Check coolant level once cooled"),
                MatchingPair(left: "Step 3", right: "Look for visible leaks"),
                MatchingPair(left: "Step 4", right: "Check cooling fan and hoses")
            ], explanation: "Following the chain in order helps you find the cause without making things worse."),
            Question(id: "cars301_q2", type: .scenario, prompt: "The lower radiator hose is cold while the engine is overheating. This tells you:", choices: ["The radiator is clogged", "The water pump has failed", "The thermostat is stuck closed, coolant can't circulate", "The cooling fan isn't working"], correctIndex: 2, explanation: "A cold lower hose means coolant is not flowing through the radiator, which points to a thermostat stuck closed."),
            Question(id: "cars301_q3", prompt: "The most common cause of engine overheating is ____.", acceptedAnswers: ["low coolant", "low coolant from a leak", "a coolant leak", "coolant leak", "low coolant level"], explanation: "Low coolant from a slow leak is the single most common cause of engine overheating."),
            Question(id: "cars301_q4", type: .multiSelect, prompt: "A broken serpentine belt disables which systems?", choices: ["Water pump (cooling)", "Alternator (charging)", "Fuel injectors", "AC compressor", "Spark plugs", "Power steering"], correctIndices: [0, 1, 3, 5], explanation: "The serpentine belt drives the water pump, alternator, AC compressor, and power steering pump. Fuel injectors and spark plugs are electrically controlled.")
        ]),
        flashcards: [
            Flashcard(id: "cars301_f1", front: "Head Gasket", back: "The seal between the engine block and cylinder head; overheating failure causes coolant and oil mixing and lost compression"),
            Flashcard(id: "cars301_f2", front: "Serpentine Belt", back: "A single belt that drives multiple accessories: water pump, alternator, AC compressor, and power steering"),
            Flashcard(id: "cars301_f3", front: "Thermostat Stuck Closed", back: "A failed thermostat that blocks coolant flow, causing rapid overheating because coolant can't reach the radiator")
        ],
        tags: ["diagnostic", "overheating", "cooling"]
    )

    static let lesson10 = Lesson(
        id: "cars_t3_02",
        categoryId: .cars,
        tier: 3,
        lessonNumber: 2,
        title: "Dead Battery vs Bad Alternator",
        subtitle: "When your car won't start or keep running",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["cars_t3_01"],
        contentBlocks: [
            ContentBlock(id: "cars302_b1", type: .whyMatters, title: "Same Symptoms, Different Fixes", bullets: [
                "A dead battery and a bad alternator look similar but need very different repairs.",
                "Replacing a battery when the alternator is failing means the new battery dies too.",
                "Five minutes of testing saves you from buying the wrong part."
            ]),
            ContentBlock(id: "cars302_b2", type: .systemOverview, title: "How the System Works", bullets: [
                "The battery provides the power to START the engine. It is a storage device.",
                "The alternator CHARGES the battery and powers all electronics while the engine runs.",
                "If the alternator fails, the battery drains and the car eventually dies, even while driving."
            ]),
            ContentBlock(id: "cars302_b3", type: .stepByStep, title: "The Diagnostic Chain", bullets: [
                "Step 1: Jump start the car. If it starts, the battery was the problem at that moment.",
                "Step 2: Once running, remove the jump cables. If the engine keeps running, the alternator is likely fine.",
                "Step 3: If the engine dies shortly after removing the cables, the alternator is not charging.",
                "Step 4: Check the battery warning light on the dash; it indicates charging system failure, not just a dead battery.",
                "Step 5: A multimeter reading 13.5 to 14.5 volts at the battery while running means a good alternator. Under 13 volts means it is failing."
            ]),
            ContentBlock(id: "cars302_b4", type: .failureModes, title: "Distinguishing the Symptoms", bullets: [
                "Dead battery: no crank, dim lights, a clicking sound when turning the key. Jump starts and stays running.",
                "Bad alternator: jump starts but dies again, dimming lights while driving, battery light on, electrical systems failing.",
                "Parasitic drain: the battery dies overnight repeatedly because something draws power when the car is off."
            ]),
            ContentBlock(id: "cars302_b5", type: .summary, title: "Test First, Buy Second", bullets: [
                "Battery is storage; alternator is charging.",
                "Jump start and observe: stays running points to the battery, dies again points to the alternator.",
                "Confirm the alternator is charging before you replace a battery."
            ])
        ],
        quiz: Quiz(id: "cars302_q", passPercent: 80, questions: [
            Question(id: "cars302_q1", prompt: "Match each symptom to its most likely cause.", matchingPairs: [
                MatchingPair(left: "No crank, dim lights, clicking", right: "Dead battery"),
                MatchingPair(left: "Jump starts but dies again shortly", right: "Bad alternator"),
                MatchingPair(left: "Battery dies overnight repeatedly", right: "Parasitic electrical drain"),
                MatchingPair(left: "Dimming lights while driving", right: "Failing alternator")
            ], explanation: "Distinguishing dead battery, bad alternator, and parasitic drain symptoms prevents replacing the wrong part."),
            Question(id: "cars302_q2", type: .scenario, prompt: "You jump start your car, it runs for 5 minutes, then all electrical systems fade and the engine dies. This most likely indicates:", choices: ["The battery needs replacement", "The alternator is not charging, so the battery drains without replenishment", "You need more fuel", "The starter motor is failing"], correctIndex: 1, explanation: "If the car dies after a jump start, the alternator is not charging. The battery depletes because nothing is replenishing it."),
            Question(id: "cars302_q3", prompt: "A healthy alternator should produce about ____ volts at the battery while running.", acceptedAnswers: ["13.5-14.5", "13.5 to 14.5", "13.5-14.5 volts", "14", "13.5", "14.5"], explanation: "A properly charging alternator produces 13.5 to 14.5 volts. Below 13 volts indicates a charging problem."),
            Question(id: "cars302_q4", type: .multiSelect, prompt: "Which are signs of a FAILING ALTERNATOR rather than just a dead battery?", choices: ["Battery warning light on the dash", "Dimming headlights while driving", "Car won't crank at all on the first try", "Engine dies shortly after a jump start", "Electrical systems failing while the engine runs"], correctIndices: [0, 1, 3, 4], explanation: "Alternator failure shows as a charging light, dimming while running, dying after a jump, and electrical failures. A car that won't crank at all is more typically a dead battery.")
        ]),
        flashcards: [
            Flashcard(id: "cars302_f1", front: "Alternator", back: "The engine-driven generator that charges the battery and powers electronics while the engine runs"),
            Flashcard(id: "cars302_f2", front: "Parasitic Drain", back: "An electrical draw that depletes the battery when the car is off, from stuck relays, faulty modules, or accessories"),
            Flashcard(id: "cars302_f3", front: "Battery Warning Light", back: "A dash indicator for charging system failure, usually meaning the alternator is not charging, not just a dead battery"),
            Flashcard(id: "cars302_f4", front: "Multimeter Test", back: "Voltage at the battery: about 12.6V fully charged (off), 13.5 to 14.5V charging (running)")
        ],
        tags: ["diagnostic", "electrical", "battery"]
    )

    static let lesson11 = Lesson(
        id: "cars_t3_03",
        categoryId: .cars,
        tier: 3,
        lessonNumber: 3,
        title: "Changing a Tire and Jump-Starting Safely",
        subtitle: "Two roadside skills every driver must own",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["cars_t3_02"],
        contentBlocks: [
            ContentBlock(id: "cars303_b1", type: .whyMatters, title: "Skills That Get You Home", bullets: [
                "A flat tire and a dead battery are the two most common roadside events.",
                "Doing both safely keeps you in control instead of stranded and waiting.",
                "These are hands-on skills; read this, then practice in your driveway before you need them."
            ]),
            ContentBlock(id: "cars303_b2", type: .stepByStep, title: "Changing a Tire", bullets: [
                "Pull fully off the road on firm, level ground, set the parking brake, and turn on hazards.",
                "Loosen the lug nuts a quarter turn BEFORE jacking, while the tire is on the ground.",
                "Place the jack at the manufacturer's reinforced jack point, then raise until the tire clears the ground.",
                "Remove the lug nuts, swap the wheel, and hand-tighten the nuts in a star (crisscross) pattern.",
                "Lower the car, then fully tighten the lug nuts in the star pattern with the wheel on the ground."
            ], callouts: ["Never put any part of your body under a car held up only by a jack. A jack can slip; it is for lifting, not for supporting you."]),
            ContentBlock(id: "cars303_b3", type: .stepByStep, title: "Jump-Starting in the Right Order", bullets: [
                "Park the good car close but not touching, both off, both in park or neutral with brakes set.",
                "Connect RED to the dead battery positive, then RED to the good battery positive.",
                "Connect BLACK to the good battery negative, then the other BLACK to a bare metal ground on the dead car, away from the battery.",
                "Start the good car, wait a minute, then start the dead car.",
                "Remove the clamps in reverse order: black ground first, then the rest."
            ], callouts: ["Education only, not a substitute for your vehicle's manual. The last clamp goes to bare metal, not the dead battery's negative, to keep any spark away from battery gases."]),
            ContentBlock(id: "cars303_b4", type: .safety, title: "The Donut Spare Rules", bullets: [
                "A compact (donut) spare is temporary only: typically max 50 mph and about 50 miles.",
                "Get the real tire repaired or replaced as soon as possible.",
                "Check the spare's pressure when you check your other tires; a flat spare is useless.",
                "Confirm your car even has a spare; many newer cars carry only a sealant kit."
            ]),
            ContentBlock(id: "cars303_b5", type: .summary, title: "Calm, Safe, Done", bullets: [
                "Loosen lugs before jacking, tighten in a star pattern after lowering, never go under a jacked car.",
                "Jump cables: red to dead positive, red to good positive, black to good negative, black to bare metal on the dead car.",
                "A donut spare is a get-to-the-shop tire, not a permanent fix."
            ])
        ],
        quiz: Quiz(id: "cars303_q", passPercent: 80, questions: [
            Question(id: "cars303_q1", prompt: "Put the tire-change steps in the correct order.", matchingPairs: [
                MatchingPair(left: "First", right: "Set parking brake and loosen lug nuts slightly"),
                MatchingPair(left: "Second", right: "Jack up the car at the proper jack point"),
                MatchingPair(left: "Third", right: "Remove nuts and swap the wheel"),
                MatchingPair(left: "Fourth", right: "Lower the car, then fully tighten in a star pattern")
            ], explanation: "Loosening before lifting uses the tire's grip on the ground, and final tightening after lowering keeps the wheel seated evenly."),
            Question(id: "cars303_q2", type: .scenario, prompt: "You're jump-starting a dead car. Where does the final black (negative) clamp go?", choices: ["On the dead battery's negative terminal", "On a bare metal ground on the dead car, away from the battery", "On the dead battery's positive terminal", "On the good car's positive terminal"], correctIndex: 1, explanation: "The final negative clamp goes to bare metal away from the dead battery. This keeps any sparks away from the hydrogen gas a battery can give off."),
            Question(id: "cars303_q3", prompt: "You should never place your body under a vehicle supported only by a ____.", acceptedAnswers: ["jack", "a jack", "car jack", "the jack"], explanation: "A jack lifts but does not safely support a car. Jacks can slip or fail; never get under a car held up only by one."),
            Question(id: "cars303_q4", type: .multipleChoice, prompt: "A compact donut spare tire is generally rated for about:", choices: ["Unlimited miles at highway speed", "Max 50 mph and roughly 50 miles", "Max 80 mph for 500 miles", "Only reverse driving"], correctIndex: 1, explanation: "Donut spares are temporary, typically limited to about 50 mph and 50 miles. Replace or repair the real tire promptly."),
            Question(id: "cars303_q5", type: .multiSelect, prompt: "Which are correct safety practices for roadside tire and battery work?", choices: ["Set the parking brake and turn on hazards", "Loosen lug nuts after fully jacking the car up", "Tighten lug nuts in a star pattern", "Connect jumper cables in the correct positive-then-negative order", "Lie under the car while it's on the jack to inspect"], correctIndices: [0, 2, 3], explanation: "Set the brake and hazards, tighten in a star pattern, and follow the correct cable order. Loosen lugs BEFORE jacking, and never get under a jacked car.")
        ]),
        flashcards: [
            Flashcard(id: "cars303_f1", front: "Star (Crisscross) Pattern", back: "The order for tightening lug nuts, alternating across the wheel to seat it evenly and prevent warping"),
            Flashcard(id: "cars303_f2", front: "Jack Point", back: "A reinforced spot on the frame, marked in the manual, where the jack can safely lift the car"),
            Flashcard(id: "cars303_f3", front: "Donut Spare", back: "A compact temporary spare tire, typically limited to about 50 mph and 50 miles"),
            Flashcard(id: "cars303_f4", front: "Jumper Cable Order", back: "Red to dead positive, red to good positive, black to good negative, black to bare metal on the dead car")
        ],
        tags: ["roadside", "tire", "jump-start"]
    )

    static let lesson12 = Lesson(
        id: "cars_t3_04",
        categoryId: .cars,
        tier: 3,
        lessonNumber: 4,
        title: "Inspecting a Used Car Before You Buy",
        subtitle: "Spotting trouble before money changes hands",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["cars_t3_03"],
        contentBlocks: [
            ContentBlock(id: "cars304_b1", type: .whyMatters, title: "The Inspection That Saves Thousands", bullets: [
                "A used car can hide expensive problems behind a clean wash and a good story.",
                "A 20-minute methodical inspection catches most of the costly issues.",
                "Knowing what to look for shifts the power in the negotiation to you."
            ]),
            ContentBlock(id: "cars304_b2", type: .stepByStep, title: "The Walk-Around and Cold Start", bullets: [
                "Inspect the car COLD; a warmed-up engine can hide hard-start and smoke problems.",
                "Check panel gaps and paint mismatches that hint at past collision repair.",
                "Look under the car and on the ground for fresh oil, coolant, or transmission fluid.",
                "Start it cold and watch the exhaust: blue smoke is burning oil, white is coolant, black is over-fueling.",
                "Listen for knocking, ticking, or rattling that does not settle as the engine warms."
            ]),
            ContentBlock(id: "cars304_b3", type: .componentBreakdown, title: "Fluids, Tires, and the Test Drive", bullets: [
                "Pull the oil dipstick: gritty or milky oil is a red flag; milky means possible head gasket trouble.",
                "Check transmission fluid: dark or burnt-smelling fluid suggests internal wear.",
                "Read tire tread for uneven wear, which points to alignment or suspension problems.",
                "On the test drive, brake firmly, accelerate hard, and turn both ways listening for noise or vibration.",
                "Confirm the transmission shifts smoothly without slipping, jerking, or delay."
            ]),
            ContentBlock(id: "cars304_b4", type: .proTips, title: "Paperwork and the Pro Check", bullets: [
                "Run the VIN through a history report to check for accidents, salvage titles, and odometer rollback.",
                "Ask for service records; a documented maintenance history is worth paying for.",
                "Verify the title is clean and in the seller's name before any money changes hands.",
                "Always pay for an independent pre-purchase inspection by a trusted mechanic."
            ], callouts: ["A seller who refuses an independent inspection is telling you something. Walk away."]),
            ContentBlock(id: "cars304_b5", type: .summary, title: "Inspect Cold, Verify Everything", bullets: [
                "Inspect cold, check fluids and smoke color, and test drive deliberately.",
                "Verify the VIN history, service records, and a clean title.",
                "A pre-purchase inspection by your mechanic is the cheapest insurance you can buy."
            ])
        ],
        quiz: Quiz(id: "cars304_q", passPercent: 80, questions: [
            Question(id: "cars304_q1", prompt: "Match each exhaust smoke color to its likely cause.", matchingPairs: [
                MatchingPair(left: "Blue smoke", right: "Burning engine oil"),
                MatchingPair(left: "White smoke", right: "Coolant entering combustion (possible head gasket)"),
                MatchingPair(left: "Black smoke", right: "Running too rich (over-fueling)"),
                MatchingPair(left: "Thin clear vapor", right: "Normal, especially on a cold morning")
            ], explanation: "Exhaust color is a quick read on engine health: blue is oil, white is coolant, black is fuel, and light vapor is normal."),
            Question(id: "cars304_q2", type: .scenario, prompt: "A private seller insists you cannot take the car to your own mechanic for an inspection. You should:", choices: ["Trust them and buy it to avoid offending them", "Walk away, the refusal is a major red flag", "Pay more since they seem confident", "Only check the paint and buy if it looks clean"], correctIndex: 1, explanation: "Refusing an independent inspection strongly suggests hidden problems. A confident, honest seller welcomes a mechanic's review."),
            Question(id: "cars304_q3", prompt: "Milky or frothy oil on the dipstick can indicate a failing ____ gasket.", acceptedAnswers: ["head", "head gasket", "the head"], explanation: "Milky oil means coolant is mixing with oil, which often points to a blown head gasket, an expensive repair."),
            Question(id: "cars304_q4", type: .multiSelect, prompt: "Which steps belong in a thorough used-car inspection?", choices: ["Inspect the engine cold", "Check fluids on the dipstick", "Run the VIN history report", "Test drive with hard braking and turns", "Skip the mechanic to save money"], correctIndices: [0, 1, 2, 3], explanation: "Cold inspection, fluid checks, VIN history, and a deliberate test drive are all essential. Skipping the mechanic is exactly the wrong move."),
            Question(id: "cars304_q5", type: .multipleChoice, prompt: "Uneven tire tread wear most likely points to a problem with:", choices: ["The radio", "Alignment or suspension", "The fuel injectors", "The air conditioning"], correctIndex: 1, explanation: "Uneven wear usually indicates an alignment or suspension issue, which can mean additional repair costs after purchase.")
        ]),
        flashcards: [
            Flashcard(id: "cars304_f1", front: "Cold Inspection", back: "Examining and starting a used car while the engine is fully cold to reveal hard-start and smoke problems"),
            Flashcard(id: "cars304_f2", front: "Blue Exhaust Smoke", back: "A sign the engine is burning oil, indicating worn rings, valve seals, or other internal wear"),
            Flashcard(id: "cars304_f3", front: "VIN History Report", back: "A record tied to the Vehicle Identification Number showing accidents, title status, and odometer history"),
            Flashcard(id: "cars304_f4", front: "Pre-Purchase Inspection", back: "An independent check by your own trusted mechanic before buying, the cheapest insurance against a bad car")
        ],
        tags: ["buying", "inspection", "used-car"]
    )

    // MARK: - Tier 4: Mastery

    static let lesson13 = Lesson(
        id: "cars_t4_01",
        categoryId: .cars,
        tier: 4,
        lessonNumber: 1,
        title: "Working With a Mechanic Without Getting Ripped Off",
        subtitle: "Speak the language, control the conversation",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["cars_t3_04"],
        contentBlocks: [
            ContentBlock(id: "cars401_b1", type: .whyMatters, title: "Knowledge Is Your Leverage", bullets: [
                "Most overcharging happens when a customer can't tell a real repair from an upsell.",
                "You don't need to be a mechanic; you need to ask the right questions and verify the answers.",
                "A confident, informed customer gets honest pricing and better work."
            ]),
            ContentBlock(id: "cars401_b2", type: .proTips, title: "How to Communicate the Symptom", bullets: [
                "Describe symptoms, not diagnoses: when it happens, what it sounds like, and how often.",
                "Note the conditions: cold or warm, braking or accelerating, at speed or idle.",
                "Bring your own OBD-II codes if you have them, but let the shop confirm the root cause.",
                "Ask them to show you the worn part or the leak before authorizing the repair."
            ]),
            ContentBlock(id: "cars401_b3", type: .commonMistakes, title: "Common Upsell Traps", bullets: [
                "Vague scare language like 'this could fail at any time' without showing you the evidence.",
                "Bundling unnecessary services with a legitimate repair to pad the bill.",
                "Recommending fluid flushes far more often than the manufacturer schedule calls for.",
                "Quoting only a total with no itemized parts-and-labor breakdown."
            ], callouts: ["Always get the diagnosis and a written estimate before authorizing work. Never approve open-ended repairs."]),
            ContentBlock(id: "cars401_b4", type: .ownerActions, title: "Protecting Yourself", bullets: [
                "Get a written, itemized estimate and ask them to call before exceeding it.",
                "For major repairs, get a second opinion; it is normal and expected.",
                "Ask whether parts are OEM, aftermarket, or used, and what the warranty is.",
                "Keep every invoice; a paper trail protects you and raises resale value."
            ]),
            ContentBlock(id: "cars401_b5", type: .summary, title: "Ask, Verify, Document", bullets: [
                "Describe symptoms clearly and let the shop confirm the cause.",
                "Demand an itemized written estimate and authorization before work.",
                "Second opinions and saved invoices are your strongest protections."
            ])
        ],
        quiz: Quiz(id: "cars401_q", passPercent: 80, questions: [
            Question(id: "cars401_q1", type: .scenario, prompt: "A shop says your car 'needs a full brake job' but won't show you the worn pads or explain the measurements. The smart response is:", choices: ["Authorize it immediately, they're the experts", "Ask to see the worn parts and get an itemized estimate, and consider a second opinion", "Refuse all brake work forever", "Pay cash to get a discount"], correctIndex: 1, explanation: "A trustworthy shop will show you the evidence and itemize the work. Asking to see the parts and getting a second opinion protects you from an unnecessary repair."),
            Question(id: "cars401_q2", type: .multiSelect, prompt: "Which are good practices when dealing with a repair shop?", choices: ["Describe symptoms rather than guessing the diagnosis", "Get an itemized written estimate", "Authorize open-ended repairs to save time", "Ask to see the worn or failed part", "Keep all invoices"], correctIndices: [0, 1, 3, 4], explanation: "Describe symptoms, get estimates, see the evidence, and keep records. Never authorize open-ended repairs."),
            Question(id: "cars401_q3", prompt: "Before authorizing any repair, you should always get a written, itemized ____.", acceptedAnswers: ["estimate", "quote", "estimate or quote", "written estimate"], explanation: "An itemized written estimate breaks out parts and labor so you can verify the charges and approve before work begins."),
            Question(id: "cars401_q4", type: .multipleChoice, prompt: "Which is a classic upsell red flag?", choices: ["A clear, itemized parts-and-labor breakdown", "Vague scare language with no evidence shown", "An offer of a second opinion", "Following the manufacturer's maintenance schedule"], correctIndex: 1, explanation: "Vague urgency without evidence is a manipulation tactic. Transparency, evidence, and following the maintenance schedule are signs of an honest shop.")
        ]),
        flashcards: [
            Flashcard(id: "cars401_f1", front: "Itemized Estimate", back: "A written quote that separates parts and labor so you can verify and approve charges before work begins"),
            Flashcard(id: "cars401_f2", front: "OEM vs Aftermarket", back: "OEM parts are made by the original manufacturer; aftermarket parts come from third parties, often cheaper but varied in quality"),
            Flashcard(id: "cars401_f3", front: "Second Opinion", back: "Having another shop confirm a diagnosis before authorizing a major repair, a normal and smart practice"),
            Flashcard(id: "cars401_f4", front: "Authorization", back: "Your explicit approval, ideally in writing, before a shop performs and bills for any work")
        ],
        tags: ["mechanic", "money", "ownership"]
    )

    static let lesson14 = Lesson(
        id: "cars_t4_02",
        categoryId: .cars,
        tier: 4,
        lessonNumber: 2,
        title: "Maintenance Schedules and Records",
        subtitle: "The system that makes a car last 200,000 miles",
        estimatedMinutes: 7,
        difficulty: 3,
        prerequisites: ["cars_t4_01"],
        contentBlocks: [
            ContentBlock(id: "cars402_b1", type: .whyMatters, title: "Maintenance Is a System, Not a Guess", bullets: [
                "Cars do not fail randomly; most failures come from skipped or late maintenance.",
                "A simple schedule and a logbook can double the usable life of a vehicle.",
                "Documented maintenance is also worth real money at resale."
            ]),
            ContentBlock(id: "cars402_b2", type: .systemOverview, title: "The Maintenance Intervals That Matter", bullets: [
                "Oil and filter: roughly every 5,000 to 7,500 miles for synthetic; follow your manual.",
                "Tire rotation: every 5,000 to 7,500 miles for even wear.",
                "Air filter: roughly every 15,000 to 30,000 miles; engine air and cabin air are separate.",
                "Brake fluid and coolant: typically every 30,000 to 60,000 miles.",
                "Timing belt: often 60,000 to 100,000 miles; missing it can destroy some engines.",
                "Spark plugs and transmission fluid: long-interval items, check your specific manual."
            ]),
            ContentBlock(id: "cars402_b3", type: .keyTerms, title: "Severe Service vs Normal Service", bullets: [
                "Manuals list a 'normal' and a 'severe' service schedule.",
                "Severe service applies to short trips, stop-and-go traffic, towing, dust, and extreme temperatures.",
                "Most real-world driving qualifies as severe, meaning shorter intervals.",
                "When in doubt, follow the more frequent severe-service interval."
            ]),
            ContentBlock(id: "cars402_b4", type: .ownerActions, title: "Keeping a Real Record", bullets: [
                "Log every service with date, mileage, work done, and cost.",
                "Use a notebook in the glovebox or a phone app; the format matters less than consistency.",
                "Save receipts; they prove the history to a future buyer.",
                "Review the log before a long trip to catch anything coming due."
            ]),
            ContentBlock(id: "cars402_b5", type: .summary, title: "Schedule, Log, Repeat", bullets: [
                "Follow the interval-based schedule in your manual, leaning toward severe service.",
                "Keep a dated, mileage-stamped maintenance log with receipts.",
                "Consistent maintenance is the single biggest factor in reaching high mileage."
            ])
        ],
        quiz: Quiz(id: "cars402_q", passPercent: 80, questions: [
            Question(id: "cars402_q1", prompt: "Match each maintenance item to a typical interval.", matchingPairs: [
                MatchingPair(left: "Synthetic oil change", right: "About 5,000 to 7,500 miles"),
                MatchingPair(left: "Tire rotation", right: "About 5,000 to 7,500 miles"),
                MatchingPair(left: "Brake fluid / coolant", right: "About 30,000 to 60,000 miles"),
                MatchingPair(left: "Timing belt", right: "About 60,000 to 100,000 miles")
            ], explanation: "Knowing rough intervals lets you plan maintenance instead of reacting to breakdowns. Always confirm with your specific manual."),
            Question(id: "cars402_q2", type: .scenario, prompt: "You mostly drive short trips in stop-and-go city traffic. Which schedule should you follow?", choices: ["The normal-service schedule with longer intervals", "The severe-service schedule with shorter intervals", "No schedule, just wait for a warning light", "Double all the listed intervals"], correctIndex: 1, explanation: "Short trips and stop-and-go traffic are severe service conditions, so you should follow the more frequent severe-service intervals."),
            Question(id: "cars402_q3", prompt: "A maintenance ____ should record the date, mileage, work done, and cost of each service.", acceptedAnswers: ["log", "record", "logbook", "log or record", "journal"], explanation: "A maintenance log documents your service history, helps you plan ahead, and adds value at resale."),
            Question(id: "cars402_q4", type: .multiSelect, prompt: "Why is documented maintenance history valuable?", choices: ["It helps you plan upcoming services", "It proves care to a future buyer", "It can increase resale value", "It eliminates the need for any repairs", "It catches overdue items before a long trip"], correctIndices: [0, 1, 2, 4], explanation: "Records help planning, prove care, raise resale value, and flag overdue items. They do not eliminate the need for repairs entirely.")
        ]),
        flashcards: [
            Flashcard(id: "cars402_f1", front: "Severe Service Schedule", back: "The more frequent maintenance schedule for short trips, stop-and-go, towing, dust, or extreme temperatures"),
            Flashcard(id: "cars402_f2", front: "Maintenance Log", back: "A dated, mileage-stamped record of every service performed, with receipts kept as proof"),
            Flashcard(id: "cars402_f3", front: "Timing Belt Interval", back: "A scheduled replacement, often 60,000 to 100,000 miles, that can prevent catastrophic engine damage"),
            Flashcard(id: "cars402_f4", front: "Cabin Air Filter", back: "A separate filter from the engine air filter that cleans air entering the passenger compartment")
        ],
        tags: ["maintenance", "records", "ownership"]
    )

    static let lesson15 = Lesson(
        id: "cars_t4_03",
        categoryId: .cars,
        tier: 4,
        lessonNumber: 3,
        title: "Seasonal Prep and Road-Trip Readiness",
        subtitle: "Get the car ready before conditions test it",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["cars_t4_02"],
        contentBlocks: [
            ContentBlock(id: "cars403_b1", type: .whyMatters, title: "Prepare Before You Need It", bullets: [
                "Winter and long trips push a car harder; preparation prevents most breakdowns.",
                "Breakdowns in cold or remote conditions are not just inconvenient, they can be dangerous.",
                "A short checklist beforehand beats a roadside emergency."
            ]),
            ContentBlock(id: "cars403_b2", type: .stepByStep, title: "Winter Preparation", bullets: [
                "Test the battery; cold weather can cut available cranking power significantly.",
                "Check that coolant is mixed for the right freeze protection, typically a 50/50 antifreeze blend.",
                "Switch to winter tires or verify good all-season tread for traction.",
                "Replace worn wiper blades and top off winter-rated washer fluid.",
                "Keep the fuel tank above half to reduce condensation and ensure reserve if stranded."
            ]),
            ContentBlock(id: "cars403_b3", type: .stepByStep, title: "Pre-Road-Trip Checklist", bullets: [
                "Check all fluids: oil, coolant, brake, transmission, power steering, and washer.",
                "Inspect tire pressure and tread on all four tires plus the spare.",
                "Test all lights: headlights, brake lights, turn signals, and hazards.",
                "Check belts and hoses, and confirm there are no active warning lights.",
                "Address any due maintenance before departure, not on the road."
            ]),
            ContentBlock(id: "cars403_b4", type: .safety, title: "The Emergency Kit", bullets: [
                "Jumper cables or a portable jump pack, plus a working spare and jack.",
                "Flashlight, first-aid kit, and basic hand tools.",
                "Water, non-perishable snacks, and a blanket for cold weather.",
                "Reflective triangles or flares, gloves, and a phone charger.",
                "An ice scraper, small shovel, and traction aid (sand or cat litter) for winter."
            ], callouts: ["A kit you keep in the car beats the best kit sitting at home. Restock it after any use."]),
            ContentBlock(id: "cars403_b5", type: .summary, title: "Ready for the Conditions", bullets: [
                "Winter: battery, coolant mix, tires, wipers, and a fuel reserve.",
                "Road trip: full fluids, tires, lights, belts, hoses, and no warning lights.",
                "Carry an emergency kit and keep it stocked."
            ])
        ],
        quiz: Quiz(id: "cars403_q", passPercent: 80, questions: [
            Question(id: "cars403_q1", type: .multiSelect, prompt: "Which items belong on a pre-road-trip checklist?", choices: ["Check all fluid levels", "Inspect tires and the spare", "Test all exterior lights", "Ignore any warning lights until you arrive", "Address due maintenance before leaving"], correctIndices: [0, 1, 2, 4], explanation: "Fluids, tires, lights, and addressing due maintenance are all essential. Never ignore warning lights before a long drive."),
            Question(id: "cars403_q2", type: .scenario, prompt: "It's the start of winter and your battery is 5 years old. The smart move is:", choices: ["Wait until it fails on a cold morning", "Test it and replace it proactively before deep cold sets in", "Add water to the engine oil", "Lower the tire pressure to improve grip"], correctIndex: 1, explanation: "Cold weather sharply reduces a battery's cranking power. A 5-year-old battery should be tested and likely replaced before winter to avoid a no-start."),
            Question(id: "cars403_q3", prompt: "A typical engine coolant mixture for freeze protection is about ____ antifreeze and water.", acceptedAnswers: ["50/50", "50 50", "half and half", "50-50", "fifty fifty"], explanation: "A 50/50 mix of antifreeze and water provides a good balance of freeze protection and heat transfer for most climates."),
            Question(id: "cars403_q4", type: .multipleChoice, prompt: "Why keep the fuel tank above half in winter?", choices: ["It makes the engine run cooler", "It reduces condensation and keeps a reserve if you're stranded", "It improves the stereo", "It is required by law everywhere"], correctIndex: 1, explanation: "A fuller tank reduces moisture condensation in the tank and gives you a fuel reserve to run the heater if you get stuck."),
            Question(id: "cars403_q5", type: .multiSelect, prompt: "Which items belong in a winter emergency kit?", choices: ["Ice scraper", "Blanket", "Traction aid like sand or cat litter", "A spare engine block", "Flashlight and first-aid kit"], correctIndices: [0, 1, 2, 4], explanation: "An ice scraper, blanket, traction aid, flashlight, and first-aid kit are practical winter essentials. A spare engine block is not a kit item.")
        ]),
        flashcards: [
            Flashcard(id: "cars403_f1", front: "50/50 Coolant Mix", back: "A half antifreeze, half water blend that balances freeze protection and heat transfer for most climates"),
            Flashcard(id: "cars403_f2", front: "Winter Tires", back: "Tires with rubber compounds and tread designed to stay flexible and grip in cold, snow, and ice"),
            Flashcard(id: "cars403_f3", front: "Emergency Kit", back: "Supplies kept in the car: jumper cables, flashlight, first-aid, water, blanket, tools, and traction aids"),
            Flashcard(id: "cars403_f4", front: "Pre-Trip Inspection", back: "A check of fluids, tires, lights, belts, and warning lights before a long drive to prevent breakdowns")
        ],
        tags: ["seasonal", "winter", "road-trip"]
    )

    static let lesson16 = Lesson(
        id: "cars_t4_04",
        categoryId: .cars,
        tier: 4,
        lessonNumber: 4,
        title: "Simple DIY and Reading a Repair Estimate",
        subtitle: "Do the easy jobs yourself and decode the bill",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["cars_t4_03"],
        contentBlocks: [
            ContentBlock(id: "cars404_b1", type: .whyMatters, title: "Confidence at Both Ends of the Wrench", bullets: [
                "A handful of simple jobs save real money and build genuine confidence.",
                "When a job is beyond DIY, reading the estimate keeps you from overpaying.",
                "Mastery is knowing what to do yourself and how to judge what you pay others for."
            ]),
            ContentBlock(id: "cars404_b2", type: .stepByStep, title: "Beginner-Friendly DIY Jobs", bullets: [
                "Engine air filter: pop the airbox, swap the filter, and close it; usually no tools and under 10 minutes.",
                "Wiper blades: lift the arm, release the clip, and snap on the new blade; match the correct size.",
                "Cabin air filter: usually behind the glovebox; a quick swap that improves airflow and smell.",
                "Exterior bulbs: many headlight and taillight bulbs swap from the back with a quarter turn.",
                "Battery: clean corroded terminals and, on accessible batteries, swap a dead one with basic tools."
            ], callouts: ["Disconnect the negative battery terminal first for electrical work, and know that some modern cars require dealer programming for certain parts. Education only, not a substitute for your vehicle's manual."]),
            ContentBlock(id: "cars404_b3", type: .keyTerms, title: "Anatomy of a Repair Estimate", bullets: [
                "Parts: the components being replaced, ideally listed individually with prices.",
                "Labor: shop time, usually hours multiplied by an hourly labor rate.",
                "Labor guide hours: standardized 'book time' per job, which may differ from actual time.",
                "Shop fees and disposal: small added charges for supplies and fluid disposal.",
                "Taxes and the total: the final amount; verify the math adds up."
            ]),
            ContentBlock(id: "cars404_b4", type: .commonMistakes, title: "Estimate Mistakes to Avoid", bullets: [
                "Approving a total with no parts-and-labor breakdown.",
                "Not asking whether quoted parts are OEM, aftermarket, or used.",
                "Overlooking vague 'shop supplies' charges that should be itemized.",
                "Failing to ask what warranty covers the parts and the labor."
            ]),
            ContentBlock(id: "cars404_b5", type: .summary, title: "Do, Decode, Decide", bullets: [
                "Air filter, wipers, cabin filter, bulbs, and battery are achievable DIY wins.",
                "An estimate breaks into parts, labor, fees, and taxes; verify each line.",
                "Knowing both ends, the wrench and the bill, is what mechanical autonomy looks like."
            ])
        ],
        quiz: Quiz(id: "cars404_q", passPercent: 80, questions: [
            Question(id: "cars404_q1", prompt: "Match each repair-estimate line to what it represents.", matchingPairs: [
                MatchingPair(left: "Parts", right: "The components being replaced"),
                MatchingPair(left: "Labor", right: "Shop time at an hourly rate"),
                MatchingPair(left: "Book time", right: "Standardized labor-guide hours per job"),
                MatchingPair(left: "Shop fees", right: "Charges for supplies and fluid disposal")
            ], explanation: "Understanding each line of an estimate lets you verify the charges and spot padding."),
            Question(id: "cars404_q2", type: .scenario, prompt: "You want to save money and your engine is running a little rough on acceleration. The cheapest, safest first DIY step is:", choices: ["Rebuild the transmission yourself", "Check and replace a dirty engine air filter", "Replace the head gasket in your driveway", "Ignore it and hope it improves"], correctIndex: 1, explanation: "A clogged air filter is a common, cheap cause of poor performance and is one of the easiest DIY swaps. Major internal repairs are not beginner jobs."),
            Question(id: "cars404_q3", prompt: "For electrical DIY work, you should first disconnect the ____ battery terminal.", acceptedAnswers: ["negative", "negative terminal", "ground", "the negative"], explanation: "Disconnecting the negative terminal first cuts the ground path and reduces the risk of shorts and sparks during electrical work."),
            Question(id: "cars404_q4", type: .multiSelect, prompt: "Which are genuinely beginner-friendly DIY jobs?", choices: ["Engine air filter replacement", "Wiper blade replacement", "Cabin air filter replacement", "Engine rebuild", "Exterior bulb replacement"], correctIndices: [0, 1, 2, 4], explanation: "Air filters, wipers, cabin filters, and many bulbs are simple, low-risk swaps. An engine rebuild is advanced professional work."),
            Question(id: "cars404_q5", type: .multipleChoice, prompt: "A trustworthy repair estimate should always include:", choices: ["Only a single grand-total number", "An itemized breakdown of parts and labor", "No mention of warranty", "A verbal quote with nothing in writing"], correctIndex: 1, explanation: "An itemized breakdown of parts and labor lets you verify the charges. A single total with nothing itemized is a warning sign.")
        ]),
        flashcards: [
            Flashcard(id: "cars404_f1", front: "Book Time", back: "Standardized labor-guide hours assigned to a repair job, used to calculate labor charges"),
            Flashcard(id: "cars404_f2", front: "Labor Rate", back: "The hourly amount a shop charges for a technician's time, multiplied by the job's hours"),
            Flashcard(id: "cars404_f3", front: "Engine Air Filter", back: "A cheap, tool-free DIY swap that restores airflow and improves performance and fuel economy"),
            Flashcard(id: "cars404_f4", front: "Disconnect Negative First", back: "The safety step of removing the negative battery terminal before electrical work to prevent shorts and sparks")
        ],
        tags: ["diy", "estimate", "mastery"]
    )
}
