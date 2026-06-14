import Foundation

enum NegotiationLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "nego_t1_01",
        categoryId: .negotiation,
        tier: 1,
        lessonNumber: 1,
        title: "Preparation and Research",
        subtitle: "The deal is won before you sit down",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "nego101_b1", type: .whyMatters, title: "Why Preparation Wins Deals", bullets: [
                "Negotiation is decided by who did the homework, not who talks the most.",
                "The unprepared person accepts the first number because they have nothing to compare it to.",
                "Studies of professional buyers show prepared negotiators capture far more value with the same conversation.",
                "Confidence is just preparation wearing a calm face."
            ], body: "Most people lose money in negotiations they never even realized were negotiations. The fix is not charisma. It is doing the work most people skip."),
            ContentBlock(id: "nego101_b2", type: .stepByStep, title: "The Pre-Negotiation Checklist", bullets: [
                "Define your target (the realistic good outcome) and your reservation point (the worst you will accept).",
                "Research the market price: comparable sales, salary bands, list-versus-sold data.",
                "Learn the other side's likely interests, pressures, and deadlines.",
                "Decide your opening number and the order you will concede.",
                "Rehearse out loud so the words are smooth when it counts."
            ], callouts: ["Walk in with three numbers written down: your target, your walk-away, and your opening offer."]),
            ContentBlock(id: "nego101_b3", type: .keyTerms, title: "The Vocabulary of Leverage", bullets: [
                "Target point: the specific outcome you are genuinely aiming for.",
                "Reservation point: the line past which you walk away.",
                "ZOPA (Zone of Possible Agreement): the overlap between your range and theirs.",
                "Anchor: the first number that shapes the rest of the conversation.",
                "Interests: the underlying needs behind a stated position."
            ]),
            ContentBlock(id: "nego101_b4", type: .commonMistakes, title: "Where People Go Wrong", bullets: [
                "Showing up with a wish instead of a number.",
                "Researching only what they want, never the other side's situation.",
                "Confusing the asking price with the real market value.",
                "Skipping rehearsal, then freezing when the question comes."
            ]),
            ContentBlock(id: "nego101_b5", type: .summary, title: "The Takeaway", bullets: [
                "Preparation, not personality, is the foundation of every strong negotiation.",
                "Know your target, your walk-away, and the market before you speak.",
                "Research both sides. The other person's pressures are your leverage.",
                "Write your numbers down. Rehearse until the words are automatic."
            ])
        ],
        quiz: Quiz(id: "nego101_q", passPercent: 80, questions: [
            Question(id: "nego101_q1", prompt: "Match each negotiation term to its meaning.", matchingPairs: [
                MatchingPair(left: "Target point", right: "The realistic good outcome you aim for"),
                MatchingPair(left: "Reservation point", right: "The line past which you walk away"),
                MatchingPair(left: "ZOPA", right: "The overlap between both sides' acceptable ranges"),
                MatchingPair(left: "Interests", right: "The underlying needs behind a stated position")
            ], explanation: "These four terms are the foundation. Your target and reservation define your range; the ZOPA is where a deal can happen; interests reveal what really drives the other side."),
            Question(id: "nego101_q2", type: .scenario, prompt: "You are about to negotiate the price of a used truck. What should you do first?", choices: ["Walk in and see what number they offer", "Research comparable sold prices and set your target and walk-away", "Tell the seller you have unlimited budget", "Wait until you are at the lot to think about price"], correctIndex: 1, explanation: "Researching comparable sold prices gives you an objective standard and lets you set a target and walk-away before any number is spoken. That preparation is your leverage."),
            Question(id: "nego101_q3", prompt: "The number past which you will walk away from a deal is called your ____ point.", acceptedAnswers: ["reservation", "reservation point", "walk-away", "walk away"], explanation: "Your reservation point is your bottom line. Knowing it before you negotiate keeps you from being talked into a bad deal in the moment."),
            Question(id: "nego101_q4", type: .multiSelect, prompt: "Which belong on a solid pre-negotiation checklist?", choices: ["Your target and reservation points", "Market or comparable pricing", "The other side's pressures and deadlines", "A promise to accept their first offer", "Your opening number"], correctIndices: [0, 1, 2, 4], explanation: "Targets, market data, the other side's pressures, and your opening number are all preparation essentials. Pre-committing to accept their first offer throws away your leverage."),
            Question(id: "nego101_q5", prompt: "True confidence in a negotiation comes mostly from ____.", acceptedAnswers: ["preparation", "research", "doing the homework", "being prepared"], explanation: "Confidence is preparation wearing a calm face. When you have done the research, you do not need to bluff."),
        ]),
        flashcards: [
            Flashcard(id: "nego101_f1", front: "Target point", back: "The specific, realistic outcome you are genuinely aiming for in a negotiation"),
            Flashcard(id: "nego101_f2", front: "Reservation point", back: "Your bottom line: the worst terms you will accept before walking away"),
            Flashcard(id: "nego101_f3", front: "ZOPA", back: "Zone of Possible Agreement: the overlap between your acceptable range and theirs, where a deal can be made"),
            Flashcard(id: "nego101_f4", front: "Interests vs. positions", back: "A position is what someone says they want; interests are the underlying needs driving it. Trade on interests.")
        ],
        tags: ["preparation", "research", "fundamentals"]
    )

    static let lesson2 = Lesson(
        id: "nego_t1_02",
        categoryId: .negotiation,
        tier: 1,
        lessonNumber: 2,
        title: "BATNA: Your Walk-Away Power",
        subtitle: "The strongest move is being able to leave",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["nego_t1_01"],
        contentBlocks: [
            ContentBlock(id: "nego102_b1", type: .whyMatters, title: "Why Your Alternative Is Your Real Power", bullets: [
                "BATNA stands for Best Alternative To a Negotiated Agreement: what you will do if no deal is reached.",
                "Your power in any negotiation comes from how good your alternative is, not from how badly you want the deal.",
                "The person who can genuinely walk away controls the conversation.",
                "Concept developed by Roger Fisher and William Ury in the negotiation classic Getting to Yes."
            ], body: "You cannot bluff your way to leverage. Leverage is real options. Build a strong alternative and you negotiate from calm strength instead of need."),
            ContentBlock(id: "nego102_b2", type: .howItWorks, title: "How BATNA Sets Your Floor", bullets: [
                "Your BATNA is the true minimum any deal must beat. If an offer is worse than your alternative, you walk.",
                "A weak BATNA (no other options) forces you to accept whatever you are given.",
                "A strong BATNA lets you say no comfortably and ask for more.",
                "Always estimate the other side's BATNA too: their weakness is your opening."
            ]),
            ContentBlock(id: "nego102_b3", type: .stepByStep, title: "Building a Stronger Alternative", bullets: [
                "List every alternative you have if this deal falls through.",
                "Pick the best one and make it concrete and real, not hypothetical.",
                "Improve it: get a second job offer, line up another seller, save more cash.",
                "Set your reservation point just above your BATNA's value.",
                "Quietly weaken your dependence on this one deal."
            ], callouts: ["Never reveal a weak BATNA. If you have no alternative, keep that fact to yourself."]),
            ContentBlock(id: "nego102_b4", type: .realWorld, title: "BATNA in Real Life", bullets: [
                "Job offer: a competing offer in hand is the single most powerful salary lever.",
                "Buying a car: being willing to drive to the next dealership is a real BATNA.",
                "Rent: knowing three comparable apartments are available lets you push back on a renewal.",
                "Freelance work: a full pipeline of clients lets you decline lowball projects."
            ]),
            ContentBlock(id: "nego102_b5", type: .summary, title: "The Takeaway", bullets: [
                "BATNA is your best alternative if no deal is reached.",
                "The better your alternative, the more power you have at the table.",
                "Improve your BATNA before you negotiate, not during.",
                "Estimate the other side's BATNA: their lack of options is your leverage."
            ])
        ],
        quiz: Quiz(id: "nego102_q", passPercent: 80, questions: [
            Question(id: "nego102_q1", prompt: "BATNA stands for Best Alternative To a Negotiated ____.", acceptedAnswers: ["agreement", "an agreement"], explanation: "BATNA is your Best Alternative To a Negotiated Agreement: what you will do if this particular deal does not happen."),
            Question(id: "nego102_q2", type: .multipleChoice, prompt: "What primarily gives you power in a negotiation?", choices: ["How much you want the deal", "How loudly you can argue", "How good your alternative (BATNA) is", "How long you have been negotiating"], correctIndex: 2, explanation: "Real leverage comes from having a strong alternative. The person who can comfortably walk away holds the power, regardless of how much they want the deal."),
            Question(id: "nego102_q3", type: .scenario, prompt: "You are negotiating a job offer and have a second, competing offer in hand. How should you treat it?", choices: ["Hide it completely so you seem desperate", "Recognize it as a strong BATNA that lets you ask for more", "Immediately accept the first offer out of fear", "Threaten to expose both companies"], correctIndex: 1, explanation: "A competing offer is a strong BATNA. It sets your floor and lets you negotiate confidently, because you have a genuinely good option if this deal falls through."),
            Question(id: "nego102_q4", type: .multiSelect, prompt: "Which actions strengthen your BATNA?", choices: ["Lining up a second job offer", "Saving more cash before a big purchase", "Finding alternative sellers", "Telling the other side you have no other options", "Building a full client pipeline"], correctIndices: [0, 1, 2, 4], explanation: "Real alternatives strengthen your BATNA. Announcing that you have no other options does the opposite: it tells the other side they can push you."),
            Question(id: "nego102_q5", type: .scenario, prompt: "Your BATNA is weak: you have no other options at all. What is the wise move?", choices: ["Announce it so they feel sorry for you", "Keep it private and work to create an alternative", "Refuse to negotiate entirely", "Accept any offer immediately"], correctIndex: 1, explanation: "Never reveal a weak BATNA. Keep it private while you work to build a real alternative, which restores your leverage over time.")
        ]),
        flashcards: [
            Flashcard(id: "nego102_f1", front: "BATNA", back: "Best Alternative To a Negotiated Agreement: what you will do if this deal does not happen. Your true source of power."),
            Flashcard(id: "nego102_f2", front: "Strong vs. weak BATNA", back: "A strong BATNA (good alternatives) lets you walk away and ask for more. A weak BATNA forces you to accept what you are given."),
            Flashcard(id: "nego102_f3", front: "Their BATNA", back: "The other side's best alternative. The weaker their options, the more flexible they must be with you."),
            Flashcard(id: "nego102_f4", front: "Improving your BATNA", back: "Building real alternatives (a second offer, more cash, another seller) before you negotiate. The best leverage is built in advance.")
        ],
        tags: ["batna", "leverage", "walk-away"]
    )

    static let lesson3 = Lesson(
        id: "nego_t1_03",
        categoryId: .negotiation,
        tier: 1,
        lessonNumber: 3,
        title: "Anchoring and the First Number",
        subtitle: "Why the opening figure shapes everything",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["nego_t1_02"],
        contentBlocks: [
            ContentBlock(id: "nego103_b1", type: .whyMatters, title: "The Power of the First Number", bullets: [
                "An anchor is the first number put on the table; it pulls the final price toward itself.",
                "The human mind adjusts from the starting point and rarely moves far enough away from it.",
                "Documented by psychologists Amos Tversky and Daniel Kahneman: even random numbers bias estimates.",
                "Whoever sets the anchor frames the entire range of the conversation."
            ], body: "Anchoring is one of the most reliable effects in all of behavioral science. Understanding it protects your money and sharpens your offers."),
            ContentBlock(id: "nego103_b2", type: .howItWorks, title: "How Anchoring Bends the Outcome", bullets: [
                "A high anchor makes a high final price feel reasonable by comparison.",
                "A low anchor drags the whole negotiation downward.",
                "Anchors work even when both sides know the trick is being used.",
                "An anchor backed by a reason (a comp, a quote, a standard) is far more powerful."
            ]),
            ContentBlock(id: "nego103_b3", type: .proTips, title: "Anchoring on Purpose", bullets: [
                "When you are well informed, anchor first to set the frame.",
                "Make your anchor ambitious but justifiable, never absurd.",
                "Use precise numbers (\"$23,400\") which feel more researched than round ones (\"$25,000\").",
                "Attach a reason to every anchor so it lands as fair, not greedy.",
                "If you must move, concede slowly and in shrinking steps."
            ], callouts: ["A precise number signals you have done the math. Round numbers invite haggling."]),
            ContentBlock(id: "nego103_b4", type: .commonMistakes, title: "How Anchors Beat You", bullets: [
                "Accepting their first number as the natural starting point.",
                "Counter-offering only slightly above their low anchor, staying trapped near it.",
                "Letting a high sticker price reset your sense of what is fair.",
                "Anchoring so aggressively the other side disengages."
            ]),
            ContentBlock(id: "nego103_b5", type: .summary, title: "The Takeaway", bullets: [
                "The first number anchors the whole negotiation toward itself.",
                "When you are informed, anchor first and back it with a reason.",
                "Use precise, justifiable numbers, not round guesses.",
                "Re-anchor against an aggressive opening instead of negotiating from it."
            ])
        ],
        quiz: Quiz(id: "nego103_q", passPercent: 80, questions: [
            Question(id: "nego103_q1", type: .multipleChoice, prompt: "What is an anchor in a negotiation?", choices: ["The final agreed price", "The first number put on the table", "The lowest possible offer", "The mediator's suggestion"], correctIndex: 1, explanation: "The anchor is the first number introduced. It exerts a strong pull on every figure that follows, including the final price."),
            Question(id: "nego103_q2", type: .scenario, prompt: "A seller lists an item at $10,000, far above its $6,000 value. You want it for a fair price. What is the smart move?", choices: ["Counter at $9,500 since that is near their number", "Re-anchor low with a reasoned offer near true value, around $5,500-$6,000", "Accept the $10,000 to be polite", "Walk away without making any offer"], correctIndex: 1, explanation: "An inflated list price is an anchor designed to pull you up. Re-anchor with your own reasoned offer near true value instead of negotiating from their number."),
            Question(id: "nego103_q3", type: .multipleChoice, prompt: "Which opening offer is likely to be most effective?", choices: ["A round $25,000 with no explanation", "A precise $23,400 backed by comparable sales", "A vague \"make me an offer\"", "An absurd $5,000 on a $24,000 item"], correctIndex: 1, explanation: "A precise number backed by a reason signals research and lands as fair. Round numbers invite haggling, and an absurd anchor can make the other side disengage."),
            Question(id: "nego103_q4", prompt: "Numbers like $23,400 work better than $25,000 because they feel more ____.", acceptedAnswers: ["precise", "researched", "specific", "credible"], explanation: "Precise numbers signal that you have done the math and have a reason for that exact figure, making your anchor more credible and harder to dismiss."),
            Question(id: "nego103_q5", type: .multiSelect, prompt: "Which are sound ways to use anchoring?", choices: ["Anchor first when you are well informed", "Attach a reason to your anchor", "Anchor so absurdly that they walk away", "Concede in shrinking steps if you must move", "Accept their opening as the natural starting point"], correctIndices: [0, 1, 3], explanation: "Anchor first when informed, justify it, and concede slowly. An absurd anchor backfires, and accepting their opening as the baseline hands them the frame.")
        ]),
        flashcards: [
            Flashcard(id: "nego103_f1", front: "Anchor", back: "The first number introduced in a negotiation. It biases the final outcome toward itself, even when both sides know the effect."),
            Flashcard(id: "nego103_f2", front: "Re-anchoring", back: "Countering an aggressive opening with your own reasoned number so the conversation does not stay trapped near their figure."),
            Flashcard(id: "nego103_f3", front: "Precise anchor", back: "A specific number like $23,400 signals research and credibility, making it harder to dismiss than a round $25,000."),
            Flashcard(id: "nego103_f4", front: "Justified anchor", back: "An opening number backed by a reason (a comp, a quote, a standard) lands as fair rather than greedy.")
        ],
        tags: ["anchoring", "first-offer", "psychology"]
    )

    static let lesson4 = Lesson(
        id: "nego_t1_04",
        categoryId: .negotiation,
        tier: 1,
        lessonNumber: 4,
        title: "Active Listening and a Calm Mindset",
        subtitle: "The quiet skills that win the room",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["nego_t1_03"],
        contentBlocks: [
            ContentBlock(id: "nego104_b1", type: .whyMatters, title: "Why Listening Beats Talking", bullets: [
                "The negotiator who listens learns what the other side actually needs.",
                "Most people are so busy preparing their next point that they miss the opening being handed to them.",
                "Information is leverage, and people reveal it when they feel heard.",
                "Calm is a competitive advantage: the person who keeps their composure thinks more clearly."
            ], body: "Negotiation is not a debate you win by talking more. It is a search for what each side truly values, and that requires listening with intent."),
            ContentBlock(id: "nego104_b2", type: .stepByStep, title: "How to Listen Actively", bullets: [
                "Ask open questions: \"Help me understand what matters most to you here.\"",
                "Let silence do work; after you ask, stop talking and let them fill the space.",
                "Paraphrase back what you heard to confirm and build trust.",
                "Label emotions calmly: \"It sounds like the timeline is the real pressure.\"",
                "Take notes; it shows respect and captures details you can use later."
            ], callouts: ["Silence is a tool, not a void. After a number is named, say nothing and let it sit."]),
            ContentBlock(id: "nego104_b3", type: .principles, title: "The Calm Mindset", bullets: [
                "Separate the person from the problem: be hard on the issue, soft on the human.",
                "Treat \"no\" as the start of the conversation, not the end.",
                "Slow down; rushing is how people talk themselves into bad deals.",
                "Detach from any single outcome; need makes you weak, calm makes you strong."
            ]),
            ContentBlock(id: "nego104_b4", type: .commonMistakes, title: "Mindset Traps to Avoid", bullets: [
                "Taking the negotiation personally and getting defensive.",
                "Filling every silence, often by giving up information or ground.",
                "Letting a tactic provoke an emotional reaction.",
                "Talking past the moment the other side already agreed."
            ]),
            ContentBlock(id: "nego104_b5", type: .summary, title: "The Takeaway", bullets: [
                "Listening reveals the interests you can trade on.",
                "Open questions, silence, and labeling draw out information.",
                "Stay calm and detached; need is weakness, composure is strength.",
                "Be hard on the problem and soft on the person."
            ])
        ],
        quiz: Quiz(id: "nego104_q", passPercent: 80, questions: [
            Question(id: "nego104_q1", type: .scenario, prompt: "You name your price and the other person goes silent. What should you do?", choices: ["Immediately lower your number to fill the silence", "Stay quiet and let the silence work", "Apologize for asking too much", "Repeat your number louder"], correctIndex: 1, explanation: "Silence after a number pressures the other side, not you. The person who speaks first to break it often concedes. Let it sit."),
            Question(id: "nego104_q2", prompt: "Restating what the other person said in your own words to confirm understanding is called ____.", acceptedAnswers: ["paraphrasing", "active listening", "mirroring", "reflecting"], explanation: "Paraphrasing confirms you understood correctly, builds trust, and often gets the other side to reveal even more."),
            Question(id: "nego104_q3", type: .multiSelect, prompt: "Which are active listening techniques?", choices: ["Asking open-ended questions", "Interrupting to make your point", "Labeling the other side's emotion", "Paraphrasing what you heard", "Using silence after asking"], correctIndices: [0, 2, 3, 4], explanation: "Open questions, labeling, paraphrasing, and silence all draw out information. Interrupting shuts it down and signals you are not really listening."),
            Question(id: "nego104_q4", type: .scenario, prompt: "The other side uses a tactic that genuinely annoys you. What is the strongest response?", choices: ["Match their energy and get aggressive", "Stay calm, name what is happening, and refocus on the issue", "Storm out immediately", "Accept their terms to end the discomfort"], correctIndex: 1, explanation: "Staying calm keeps you thinking clearly. Be hard on the problem and soft on the person: name the tactic without taking the bait, then steer back to the substance."),
            Question(id: "nego104_q5", type: .multipleChoice, prompt: "In negotiation, the word \"no\" is best understood as:", choices: ["A final rejection to accept", "The start of the real conversation", "A reason to give up", "A personal insult"], correctIndex: 1, explanation: "A \"no\" usually marks the beginning of the real negotiation. It signals there is more to understand and discuss, not that the deal is dead.")
        ]),
        flashcards: [
            Flashcard(id: "nego104_f1", front: "Active listening", back: "Listening with full attention using open questions, silence, paraphrasing, and labeling to draw out the other side's real interests"),
            Flashcard(id: "nego104_f2", front: "Strategic silence", back: "Deliberately staying quiet after a question or number so the other side fills the space, often with a concession or information"),
            Flashcard(id: "nego104_f3", front: "Separate the person from the problem", back: "Be hard on the issue and soft on the human. Attack the problem, not the relationship."),
            Flashcard(id: "nego104_f4", front: "Detachment", back: "Not needing any single outcome. Calm comes from a strong BATNA and lets you negotiate from strength, not desperation.")
        ],
        tags: ["listening", "mindset", "composure"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "nego_t2_01",
        categoryId: .negotiation,
        tier: 2,
        lessonNumber: 1,
        title: "Negotiating Salary and a Job Offer",
        subtitle: "The fastest raise you will ever get",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["nego_t1_04"],
        contentBlocks: [
            ContentBlock(id: "nego201_b1", type: .whyMatters, title: "Why Salary Negotiation Pays for Decades", bullets: [
                "A single $10,000 raise compounds across raises and 401(k) matches into hundreds of thousands over a career.",
                "Most employers expect a counteroffer and build room into the first number.",
                "Failing to negotiate signals you may undervalue yourself in the role too.",
                "Future raises are often a percentage of your starting salary, so the base sets the trajectory."
            ], body: "This is the highest-return negotiation most men will ever do. A few uncomfortable minutes can be worth more than years of saving."),
            ContentBlock(id: "nego201_b2", type: .stepByStep, title: "Working the Offer", bullets: [
                "Let the employer name a number first when you can; if pressed, give a researched range.",
                "Express genuine enthusiasm before you negotiate; tone keeps it collaborative.",
                "Anchor with a specific, market-backed figure: \"Based on the market and my experience, I am targeting $X.\"",
                "Negotiate the whole package: base, bonus, equity, sign-on, PTO, remote flexibility, title.",
                "Get the final offer in writing before you resign anything."
            ], callouts: ["Never accept on the spot. \"Thank you, I'm excited. Can I have 24-48 hours to review?\" is always reasonable."]),
            ContentBlock(id: "nego201_b3", type: .keyTerms, title: "Know the Compensation Levers", bullets: [
                "Base salary: the recurring number that drives most future raises.",
                "Sign-on bonus: one-time cash, often easier to grant than base.",
                "Equity / RSUs: ownership that vests over time, common in tech.",
                "Total compensation: base plus bonus, equity, and benefits combined.",
                "Salary band: the pay range a company has budgeted for a role and level."
            ]),
            ContentBlock(id: "nego201_b4", type: .proTips, title: "Scripts and Smart Moves", bullets: [
                "Use a competing offer as a BATNA without bluffing one you do not have.",
                "Tie your ask to value delivered, not personal need.",
                "If base is capped, pivot to sign-on bonus, equity, or an early review date.",
                "Stay warm and curious: \"Is there flexibility on the base?\" beats demands.",
                "Negotiate the start date and remote terms while you have the most leverage."
            ]),
            ContentBlock(id: "nego201_b5", type: .commonMistakes, title: "Costly Salary Errors", bullets: [
                "Naming the first number when you had no research behind it.",
                "Accepting immediately out of relief or fear.",
                "Negotiating only base and ignoring bonus, equity, and benefits.",
                "Making it about your bills instead of your value."
            ]),
            ContentBlock(id: "nego201_b6", type: .summary, title: "The Takeaway", bullets: [
                "Almost always counter; employers expect it and build in room.",
                "Anchor with a researched number and negotiate the full package.",
                "Tie the ask to value, stay warm, and never accept on the spot.",
                "Get the final terms in writing before resigning anything."
            ])
        ],
        quiz: Quiz(id: "nego201_q", passPercent: 80, questions: [
            Question(id: "nego201_q1", type: .scenario, prompt: "You receive a job offer at $85,000, slightly below market. You want the role. What is the strongest first move?", choices: ["Accept immediately so you do not lose it", "Thank them, express excitement, and counter with a researched, specific number", "Demand $120,000 with no justification", "Decline the offer outright"], correctIndex: 1, explanation: "Employers expect a counter and build in room. Lead with genuine enthusiasm, then anchor with a specific market-backed number. Accepting immediately leaves money on the table."),
            Question(id: "nego201_q2", type: .multiSelect, prompt: "Beyond base salary, which are negotiable parts of a job offer?", choices: ["Sign-on bonus", "Equity or RSUs", "PTO and remote flexibility", "Start date", "The company's stock ticker"], correctIndices: [0, 1, 2, 3], explanation: "Sign-on, equity, PTO, remote terms, and start date are all negotiable, especially when base is capped. The stock ticker is not something you negotiate."),
            Question(id: "nego201_q3", prompt: "Your recurring pay number that drives most future percentage-based raises is your ____ salary.", acceptedAnswers: ["base", "base salary"], explanation: "Base salary compounds because future raises are often a percentage of it. Improving the base has the longest-lasting effect."),
            Question(id: "nego201_q4", type: .scenario, prompt: "The recruiter says, \"This is our best and final on base.\" You still want more value. What is the smart pivot?", choices: ["Walk away from the offer entirely", "Ask about sign-on bonus, equity, or an earlier review date", "Accept and resent it later", "Insist they raise the base anyway"], correctIndex: 1, explanation: "When base is truly capped, pivot to other levers: sign-on bonus, equity, or an accelerated review date. There is almost always flexibility somewhere in the package."),
            Question(id: "nego201_q5", type: .multipleChoice, prompt: "Which framing makes your salary ask strongest?", choices: ["\"I need more because my rent went up\"", "\"Based on the market and the value I will deliver, I am targeting $X\"", "\"My friend makes more than this\"", "\"Just give me whatever you can\""], correctIndex: 1, explanation: "Tie the ask to market data and the value you deliver, not personal need. Value-based framing is persuasive and keeps the conversation professional.")
        ]),
        flashcards: [
            Flashcard(id: "nego201_f1", front: "Total compensation", back: "Base salary plus bonus, equity, and benefits combined. Always negotiate the whole package, not just base."),
            Flashcard(id: "nego201_f2", front: "Sign-on bonus", back: "One-time cash paid at hire. Often easier for a company to grant than a higher base when the band is capped."),
            Flashcard(id: "nego201_f3", front: "Salary band", back: "The budgeted pay range for a role and level. Knowing it tells you how much room exists to negotiate."),
            Flashcard(id: "nego201_f4", front: "Value-based ask", back: "Tying your salary request to market data and the results you will deliver, rather than to personal expenses.")
        ],
        tags: ["salary", "career", "job-offer"]
    )

    static let lesson6 = Lesson(
        id: "nego_t2_02",
        categoryId: .negotiation,
        tier: 2,
        lessonNumber: 2,
        title: "Buying Big-Ticket Items",
        subtitle: "Cars, homes, and major services",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["nego_t2_01"],
        contentBlocks: [
            ContentBlock(id: "nego202_b1", type: .whyMatters, title: "Why Big Purchases Reward Negotiation", bullets: [
                "On a car or home, a few percentage points is thousands of dollars in your pocket.",
                "Sellers of big-ticket items negotiate for a living; you do it a few times in your life.",
                "The list price is a starting position, not a fact.",
                "Preparation and patience routinely beat experience at the table."
            ], body: "These are the negotiations where the dollar amounts are largest and the other side is most practiced. Process beats nerve here."),
            ContentBlock(id: "nego202_b2", type: .stepByStep, title: "Negotiating a Car", bullets: [
                "Negotiate the out-the-door price, not the monthly payment.",
                "Arrange your own financing first so the dealer's rate becomes a competing offer.",
                "Get written quotes from multiple dealers and let them compete.",
                "Keep trade-in, financing, and purchase price as three separate negotiations.",
                "Be ready to walk; end of month and end of quarter give dealers quota pressure."
            ], callouts: ["\"What's the monthly payment?\" is the trap. A long loan hides a high price. Always negotiate total out-the-door cost."]),
            ContentBlock(id: "nego202_b3", type: .stepByStep, title: "Negotiating a Home", bullets: [
                "Study comparable sold prices (comps), not just list prices, to value the home.",
                "Get pre-approved; a strong, clean offer is leverage beyond price.",
                "Use the inspection to renegotiate on real, documented issues.",
                "Know the market: in a buyer's market, ask for closing-cost credits and repairs.",
                "Set a firm walk-away price and respect it; there is always another house."
            ]),
            ContentBlock(id: "nego202_b4", type: .proTips, title: "Negotiating Services and Contractors", bullets: [
                "Always get three written bids for any significant job.",
                "Compare scope line by line; the cheapest bid often omits work.",
                "Ask, \"Is that your best price?\" and then stay silent.",
                "Bundle work or offer flexible timing in exchange for a lower rate.",
                "Tie payment to milestones, never pay everything up front."
            ]),
            ContentBlock(id: "nego202_b5", type: .commonMistakes, title: "How Buyers Overpay", bullets: [
                "Focusing on the monthly payment instead of the total price.",
                "Negotiating against yourself by bidding up before they counter.",
                "Falling in love and abandoning the walk-away price.",
                "Taking the first quote without comparison bids."
            ]),
            ContentBlock(id: "nego202_b6", type: .summary, title: "The Takeaway", bullets: [
                "Negotiate total price, not monthly payments.",
                "Use comps, multiple quotes, and outside financing to create leverage.",
                "Keep separate items (trade-in, financing, price) as separate deals.",
                "Set a walk-away and honor it; there is always another deal."
            ])
        ],
        quiz: Quiz(id: "nego202_q", passPercent: 80, questions: [
            Question(id: "nego202_q1", type: .scenario, prompt: "A car salesperson keeps steering the conversation to \"What monthly payment works for you?\" Why is that a trap?", choices: ["It is the most accurate way to compare cars", "A long loan can hide a high total price and extra costs", "It guarantees the best interest rate", "It speeds up paperwork in your favor"], correctIndex: 1, explanation: "Focusing on the monthly payment lets a dealer stretch the loan term and bury a high price and add-ons. Always negotiate the total out-the-door cost."),
            Question(id: "nego202_q2", prompt: "Recently sold prices of similar homes used to value a property are called ____.", acceptedAnswers: ["comps", "comparables", "comparable sales", "comparable sold prices"], explanation: "Comps are sold prices of comparable homes. They reveal true market value far better than list prices, which are just asking positions."),
            Question(id: "nego202_q3", type: .multiSelect, prompt: "Which moves strengthen your position when buying a car?", choices: ["Arranging your own financing first", "Getting written quotes from multiple dealers", "Negotiating trade-in and price separately", "Telling them your maximum monthly payment up front", "Being willing to walk away"], correctIndices: [0, 1, 2, 4], explanation: "Outside financing, competing quotes, separating the deals, and a credible walk-away all build leverage. Revealing your max payment hands the dealer your ceiling."),
            Question(id: "nego202_q4", type: .scenario, prompt: "You are hiring a contractor for a $15,000 renovation. What is the smartest first step?", choices: ["Hire the first contractor who answers the phone", "Get three written bids and compare scope line by line", "Pay the full amount up front for a discount", "Pick the cheapest bid without reading it"], correctIndex: 1, explanation: "Three written bids let you compare both price and scope. The cheapest bid often omits work, so comparing line by line protects you from surprise costs."),
            Question(id: "nego202_q5", type: .multipleChoice, prompt: "When should you pay a contractor for a large job?", choices: ["Everything up front to lock the rate", "Tied to completed milestones", "Only after a year of waiting", "Whenever they ask for it"], correctIndex: 1, explanation: "Tying payment to milestones protects you and keeps the contractor motivated. Paying everything up front removes your leverage if the work stalls.")
        ]),
        flashcards: [
            Flashcard(id: "nego202_f1", front: "Out-the-door price", back: "The total cost of a car including all fees and taxes. Negotiate this, never the monthly payment."),
            Flashcard(id: "nego202_f2", front: "Comps", back: "Comparable sold prices of similar homes. The real basis for valuing a property, unlike list prices."),
            Flashcard(id: "nego202_f3", front: "Three-bid rule", back: "Always get three written quotes for major services so you can compare both price and scope."),
            Flashcard(id: "nego202_f4", front: "Milestone payments", back: "Paying for a large job in stages tied to completed work, rather than all up front, to protect your leverage.")
        ],
        tags: ["car", "home", "purchases"]
    )

    static let lesson7 = Lesson(
        id: "nego_t2_03",
        categoryId: .negotiation,
        tier: 2,
        lessonNumber: 3,
        title: "Common Tactics and How to Counter Them",
        subtitle: "Recognize the play, neutralize it calmly",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["nego_t2_02"],
        contentBlocks: [
            ContentBlock(id: "nego203_b1", type: .whyMatters, title: "Why You Must Spot the Play", bullets: [
                "Tactics work by triggering emotion: fear, guilt, urgency, or flattery.",
                "Once you can name a tactic, it loses most of its power over you.",
                "You can counter ethically without using manipulation yourself.",
                "Calm recognition keeps you in control of your own decisions."
            ], body: "You do not need to out-manipulate anyone. You simply need to recognize the move and respond from a clear head."),
            ContentBlock(id: "nego203_b2", type: .componentBreakdown, title: "The Tactics You Will See", bullets: [
                "Good cop / bad cop: one person is harsh, the other friendly, to make concessions feel like relief.",
                "The flinch: an exaggerated reaction to your offer to make you doubt it.",
                "Nibbling: small extra asks after the deal feels done.",
                "Manufactured deadline: false time pressure to rush your decision.",
                "Higher authority: \"I have to check with my manager\" to stall or extract more."
            ]),
            ContentBlock(id: "nego203_b3", type: .stepByStep, title: "How to Counter Each One", bullets: [
                "Good cop / bad cop: address it openly and deal with the team as one unit.",
                "The flinch: stay calm, ask \"What specifically concerns you about that number?\"",
                "Nibbling: re-open the whole package or trade every concession for one.",
                "Fake deadline: test it: \"If we can't finish today, what changes tomorrow?\"",
                "Higher authority: ask to speak with the decision-maker, or get your own \"authority\" too."
            ], callouts: ["The cleanest counter to almost any tactic is to name it calmly: \"That feels like pressure. Let's slow down.\""]),
            ContentBlock(id: "nego203_b4", type: .proTips, title: "Principled Counters", bullets: [
                "Insist on objective standards: market data, comps, written policy.",
                "Trade, never just give: \"If I do X, can you do Y?\"",
                "Slow the pace; urgency is the enemy of a good decision.",
                "Keep your BATNA in mind so no single tactic can corner you."
            ]),
            ContentBlock(id: "nego203_b5", type: .commonMistakes, title: "How Tactics Win", bullets: [
                "Reacting emotionally instead of naming the play.",
                "Conceding to a flinch you mistook for a real reaction.",
                "Caving to a deadline you never verified.",
                "Giving a nibble away just to be done."
            ]),
            ContentBlock(id: "nego203_b6", type: .summary, title: "The Takeaway", bullets: [
                "Tactics rely on emotion; naming them defuses them.",
                "Counter with objective standards, trades, and a slower pace.",
                "Test deadlines and authority claims instead of accepting them.",
                "You can stay ethical and still hold firm."
            ])
        ],
        quiz: Quiz(id: "nego203_q", passPercent: 80, questions: [
            Question(id: "nego203_q1", prompt: "Match each tactic to the best counter.", matchingPairs: [
                MatchingPair(left: "The flinch", right: "Stay calm and ask what specifically concerns them"),
                MatchingPair(left: "Nibbling", right: "Trade every concession or re-open the package"),
                MatchingPair(left: "Manufactured deadline", right: "Test whether the deadline is real"),
                MatchingPair(left: "Higher authority", right: "Ask to speak with the decision-maker")
            ], explanation: "Each tactic has a clean, ethical counter. Recognizing the play lets you respond deliberately instead of reacting emotionally."),
            Question(id: "nego203_q2", type: .scenario, prompt: "After you have agreed on a price, the seller says, \"Oh, and delivery will be an extra $300.\" What tactic is this and how do you respond?", choices: ["The flinch; you should accept it", "Nibbling; trade for it or re-open the whole package", "Anchoring; you should walk away", "Good cop / bad cop; thank them"], correctIndex: 1, explanation: "Adding small costs after a deal feels done is nibbling. Counter by trading for it or re-opening the package so the extra is not just handed over."),
            Question(id: "nego203_q3", type: .scenario, prompt: "A salesperson says, \"This price is only good until I leave today.\" What is the smart move?", choices: ["Sign immediately before it expires", "Calmly test it: ask what actually changes tomorrow", "Get angry and end the talk", "Offer to pay extra to hold the price"], correctIndex: 1, explanation: "Manufactured deadlines create false urgency. Testing the deadline calmly often reveals it is flexible, and either way it slows your decision to a clear head."),
            Question(id: "nego203_q4", type: .multiSelect, prompt: "Which are ethical, principled counters to hard tactics?", choices: ["Insisting on objective standards like market data", "Trading concessions instead of giving them", "Slowing the pace down", "Lying about a competing offer", "Naming the tactic calmly"], correctIndices: [0, 1, 2, 4], explanation: "Objective standards, trading, slowing down, and naming the play are all principled. Lying about an offer is manipulation and can destroy trust and deals."),
            Question(id: "nego203_q5", prompt: "When one negotiator is harsh and another is friendly to make you concede, the tactic is called good cop / bad ____.", acceptedAnswers: ["cop", "cop tactic"], explanation: "Good cop / bad cop makes a concession to the friendly person feel like relief. Counter it by treating the team as one unit and addressing the play openly.")
        ]),
        flashcards: [
            Flashcard(id: "nego203_f1", front: "The flinch", back: "An exaggerated negative reaction to your offer designed to make you doubt it. Counter by staying calm and asking what specifically concerns them."),
            Flashcard(id: "nego203_f2", front: "Nibbling", back: "Small extra asks after the deal feels settled. Counter by trading for each one or re-opening the whole package."),
            Flashcard(id: "nego203_f3", front: "Manufactured deadline", back: "False time pressure to rush you. Counter by testing whether the deadline is actually real."),
            Flashcard(id: "nego203_f4", front: "Higher authority", back: "\"I have to check with my manager\" used to stall or extract more. Counter by asking for the decision-maker or invoking your own authority.")
        ],
        tags: ["tactics", "counters", "defense"]
    )

    static let lesson8 = Lesson(
        id: "nego_t2_04",
        categoryId: .negotiation,
        tier: 2,
        lessonNumber: 4,
        title: "First Offer or Wait?",
        subtitle: "Who should put a number on the table",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["nego_t2_03"],
        contentBlocks: [
            ContentBlock(id: "nego204_b1", type: .whyMatters, title: "The Question That Decides the Range", bullets: [
                "The old advice \"never make the first offer\" is often wrong.",
                "Whoever anchors first usually sets the frame for the final price.",
                "The right answer depends on one thing: who has better information.",
                "Getting this decision right is worth real money on every deal."
            ], body: "This is the most misunderstood rule in negotiation. The truth is conditional, and knowing the condition is the edge."),
            ContentBlock(id: "nego204_b2", type: .howItWorks, title: "When to Make the First Offer", bullets: [
                "Make it when you know the market well and can set a credible anchor.",
                "An informed first offer pulls the deal toward your target.",
                "A precise, reasoned anchor signals competence and confidence.",
                "Going first protects you from a clever counter-anchor."
            ]),
            ContentBlock(id: "nego204_b3", type: .howItWorks, title: "When to Let Them Go First", bullets: [
                "Wait when you lack solid information about value.",
                "Their first number may reveal more than you expected, sometimes in your favor.",
                "If they anchor aggressively, re-anchor; do not negotiate from their number.",
                "When uncertain, ask diagnostic questions before any number is named."
            ], callouts: ["If you do not know the market, getting more information first is almost always better than guessing at an anchor."]),
            ContentBlock(id: "nego204_b4", type: .proTips, title: "Making the Offer Land", bullets: [
                "Anchor at the ambitious edge of what you can justify.",
                "Always attach a reason so it reads as fair, not greedy.",
                "Use a range only when it helps; the bottom of your range becomes the new ceiling.",
                "After you anchor, stop talking and let it sit."
            ]),
            ContentBlock(id: "nego204_b5", type: .commonMistakes, title: "First-Offer Errors", bullets: [
                "Following \"never go first\" blindly even when well informed.",
                "Anchoring without any data and giving away your low expectations.",
                "Negotiating up from their aggressive anchor instead of re-anchoring.",
                "Offering a range whose low end you would actually hate to get."
            ]),
            ContentBlock(id: "nego204_b6", type: .summary, title: "The Takeaway", bullets: [
                "Go first when you have good information; it anchors in your favor.",
                "Let them go first when you lack information, then re-anchor if needed.",
                "Every anchor should be ambitious but justifiable.",
                "Information, not a rigid rule, decides who should open."
            ])
        ],
        quiz: Quiz(id: "nego204_q", passPercent: 80, questions: [
            Question(id: "nego204_q1", type: .multipleChoice, prompt: "When is making the first offer the smart move?", choices: ["Never, under any circumstances", "When you have strong information about market value", "Only when the other side is friendly", "Only on small purchases"], correctIndex: 1, explanation: "When you know the market well, making the first offer anchors the deal toward your target. The blanket rule \"never go first\" is wrong when you are well informed."),
            Question(id: "nego204_q2", type: .scenario, prompt: "You are negotiating for something unfamiliar and have little sense of its value. What should you do?", choices: ["Throw out a confident first number anyway", "Let them go first, ask questions, and re-anchor if needed", "Refuse to discuss price at all", "Accept whatever they suggest"], correctIndex: 1, explanation: "When you lack information, letting the other side go first can reveal their range. Ask diagnostic questions, then re-anchor rather than guess at an anchor blindly."),
            Question(id: "nego204_q3", prompt: "When you give a range, the other side tends to treat the ____ end of it as the new ceiling.", acceptedAnswers: ["low", "lower", "bottom", "low end", "lower end"], explanation: "People hear the favorable end of your range as the limit. Only offer a range when even its low end is acceptable to you."),
            Question(id: "nego204_q4", type: .scenario, prompt: "The other side opens with an aggressive anchor far from fair value. You are well informed. What do you do?", choices: ["Negotiate up gradually from their number", "Re-anchor with your own reasoned figure", "Accept it to keep the peace", "End the negotiation immediately"], correctIndex: 1, explanation: "Do not negotiate from an aggressive anchor. Re-anchor with your own justified number so the conversation resets toward fair value instead of staying near theirs."),
            Question(id: "nego204_q5", type: .multiSelect, prompt: "Which make a first offer land well?", choices: ["Anchoring at the ambitious edge of what you can justify", "Attaching a reason to the number", "Staying silent after you anchor", "Offering a range whose low end you would hate", "Naming a wildly unjustifiable figure"], correctIndices: [0, 1, 2], explanation: "An ambitious-but-justified number, a reason, and silence afterward make a strong anchor. A bad-low-end range or an absurd number both undermine you.")
        ]),
        flashcards: [
            Flashcard(id: "nego204_f1", front: "Go first when informed", back: "If you know the market well, making the first offer anchors the deal toward your target. The 'never go first' rule is conditional."),
            Flashcard(id: "nego204_f2", front: "Wait when uninformed", back: "When you lack solid value information, let the other side anchor, ask questions, then re-anchor if their number is unfair."),
            Flashcard(id: "nego204_f3", front: "Range trap", back: "People treat the favorable end of your stated range as the new ceiling. Only give a range whose low end you would accept."),
            Flashcard(id: "nego204_f4", front: "Diagnostic questions", back: "Questions asked before any number is named to learn the other side's interests and value, so you can anchor or respond wisely.")
        ],
        tags: ["first-offer", "anchoring", "strategy"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "nego_t3_01",
        categoryId: .negotiation,
        tier: 3,
        lessonNumber: 1,
        title: "Difficult Conversations and Conflict",
        subtitle: "Staying calm when the stakes are personal",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["nego_t2_04"],
        contentBlocks: [
            ContentBlock(id: "nego301_b1", type: .whyMatters, title: "Why Hard Conversations Are a Skill", bullets: [
                "The highest-stakes negotiations are often with people you cannot walk away from: bosses, partners, family.",
                "Emotion is not the enemy; unmanaged emotion is.",
                "Most conflicts escalate because both sides defend positions instead of exploring interests.",
                "Handling tension with composure is one of the clearest signs of maturity."
            ], body: "This is where negotiation stops being about price and starts being about relationships. The skill is staying steady while the temperature rises."),
            ContentBlock(id: "nego301_b2", type: .stepByStep, title: "Running a Difficult Conversation", bullets: [
                "Open with the facts and the shared goal, not blame.",
                "Use \"I\" statements to describe impact: \"When the report is late, I have to redo the schedule.\"",
                "Ask genuine questions and let the other side feel fully heard.",
                "Acknowledge their view before offering yours; agreement on facts builds trust.",
                "Separate the relationship from the issue so disagreement does not become attack."
            ], callouts: ["When emotions spike, name it and take a break: \"This matters to both of us. Let's pause and come back in ten minutes.\""]),
            ContentBlock(id: "nego301_b3", type: .principles, title: "Principles for Conflict", bullets: [
                "Be hard on the problem, soft on the person.",
                "Seek to understand before seeking to be understood.",
                "Stay curious, not furious; curiosity keeps you thinking.",
                "Aim for the relationship to survive the disagreement intact."
            ]),
            ContentBlock(id: "nego301_b4", type: .realWorld, title: "Where This Shows Up", bullets: [
                "Telling a long-time vendor their work has slipped.",
                "Raising a boundary with a family member without blowing up.",
                "Giving a teammate hard feedback they need to hear.",
                "Resolving a partnership dispute without ending the partnership."
            ]),
            ContentBlock(id: "nego301_b5", type: .commonMistakes, title: "What Makes Conflict Worse", bullets: [
                "Leading with accusation instead of facts.",
                "Trying to win instead of trying to understand.",
                "Bottling up emotion until it explodes.",
                "Attacking the person when you mean to challenge the issue."
            ]),
            ContentBlock(id: "nego301_b6", type: .summary, title: "The Takeaway", bullets: [
                "Open with facts and a shared goal, not blame.",
                "Use \"I\" statements and listen before you push.",
                "Be hard on the problem and soft on the person.",
                "Protect the relationship; pause when emotions spike."
            ])
        ],
        quiz: Quiz(id: "nego301_q", passPercent: 80, questions: [
            Question(id: "nego301_q1", type: .scenario, prompt: "A teammate keeps missing deadlines, affecting your work. How should you open the conversation?", choices: ["\"You are always late and it is ruining everything\"", "\"When deadlines slip, I have to redo the schedule. Can we figure out what's getting in the way?\"", "Say nothing and quietly resent them", "Report them without warning"], correctIndex: 1, explanation: "Leading with the impact and a shared goal, using an 'I' statement, invites problem-solving. Accusation triggers defensiveness and escalates the conflict."),
            Question(id: "nego301_q2", prompt: "Statements that describe impact from your own perspective, like \"When this happens, I feel...\", are called ____ statements.", acceptedAnswers: ["I", "i", "I-statements", "i statements"], explanation: "\"I\" statements describe impact without blaming, which keeps the other person from getting defensive and keeps the conversation productive."),
            Question(id: "nego301_q3", type: .multiSelect, prompt: "Which help a difficult conversation go well?", choices: ["Opening with facts and a shared goal", "Acknowledging the other person's view", "Attacking their character", "Pausing when emotions spike", "Staying curious rather than furious"], correctIndices: [0, 1, 3, 4], explanation: "Facts, acknowledgment, pausing, and curiosity all de-escalate. Attacking character escalates conflict and damages the relationship you need to preserve."),
            Question(id: "nego301_q4", type: .multipleChoice, prompt: "The core principle for handling conflict well is to be:", choices: ["Hard on the person, soft on the problem", "Soft on the person, hard on the problem", "Hard on both", "Soft on both"], correctIndex: 1, explanation: "Be soft on the person and hard on the problem. Attack the issue, not the human, so disagreement does not become a personal battle."),
            Question(id: "nego301_q5", type: .scenario, prompt: "Mid-conversation, both of you are getting heated and stop listening. What is the best move?", choices: ["Raise your voice to be heard", "Name it and propose a short break to cool down", "Concede everything to end it", "Walk out without a word"], correctIndex: 1, explanation: "Naming the tension and proposing a brief pause lets both sides reset and think clearly. Pushing harder while heated almost always makes things worse.")
        ]),
        flashcards: [
            Flashcard(id: "nego301_f1", front: "\"I\" statement", back: "Describing impact from your perspective ('When X happens, I have to...') instead of blaming, to avoid triggering defensiveness"),
            Flashcard(id: "nego301_f2", front: "Hard on problem, soft on person", back: "Challenge the issue firmly while treating the other person with respect, so conflict does not become personal"),
            Flashcard(id: "nego301_f3", front: "Seek to understand first", back: "Make the other side feel genuinely heard before pushing your view. Understanding lowers defenses and reveals real interests."),
            Flashcard(id: "nego301_f4", front: "Strategic pause", back: "Naming rising emotion and taking a short break so both sides can cool down and think clearly before continuing")
        ],
        tags: ["conflict", "communication", "relationships"]
    )

    static let lesson10 = Lesson(
        id: "nego_t3_02",
        categoryId: .negotiation,
        tier: 3,
        lessonNumber: 2,
        title: "Ethical Persuasion and Influence",
        subtitle: "Move people without manipulating them",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["nego_t3_01"],
        contentBlocks: [
            ContentBlock(id: "nego302_b1", type: .whyMatters, title: "Why Ethical Influence Lasts", bullets: [
                "Persuasion built on trust compounds; manipulation poisons every future deal.",
                "Robert Cialdini's research identified durable principles of influence used everywhere.",
                "Understanding these principles helps you persuade honestly and resist manipulation.",
                "The strongest reputation a negotiator can have is being honest and reasonable."
            ], body: "Influence is a tool. Used ethically it builds long relationships; used to deceive it burns them. This lesson is about the honest path."),
            ContentBlock(id: "nego302_b2", type: .componentBreakdown, title: "Cialdini's Principles of Influence", bullets: [
                "Reciprocity: people return favors and concessions; give value first.",
                "Commitment and consistency: people honor what they have agreed to in small steps.",
                "Social proof: people follow what similar others have done.",
                "Liking: people say yes to those they trust and relate to.",
                "Authority and scarcity: credible expertise and genuine limited availability move decisions."
            ]),
            ContentBlock(id: "nego302_b3", type: .stepByStep, title: "Using Influence Honestly", bullets: [
                "Lead with genuine value so reciprocity is earned, not engineered.",
                "Build real rapport; find authentic common ground, do not fake it.",
                "Cite true social proof and real credentials, never invented ones.",
                "Frame benefits around the other person's actual interests.",
                "Make it easy to say yes: clear options, low friction, real reasons."
            ], callouts: ["The ethical line is simple: would the other person feel respected if they saw exactly what you were doing? If yes, proceed."]),
            ContentBlock(id: "nego302_b4", type: .proTips, title: "Resisting Manipulation", bullets: [
                "Notice when a 'free' gift is designed to obligate you.",
                "Beware false scarcity and fabricated deadlines.",
                "Verify authority and social-proof claims before they sway you.",
                "Slow down; manipulation depends on speed and emotion."
            ]),
            ContentBlock(id: "nego302_b5", type: .commonMistakes, title: "Where Influence Goes Wrong", bullets: [
                "Crossing into deception for a short-term win.",
                "Faking rapport, which people sense and resent.",
                "Manufacturing scarcity that later proves false.",
                "Pushing so hard that you damage trust for the next deal."
            ]),
            ContentBlock(id: "nego302_b6", type: .summary, title: "The Takeaway", bullets: [
                "Ethical persuasion builds trust that compounds across deals.",
                "Know Cialdini's principles to use influence and resist manipulation.",
                "Lead with real value, real rapport, and true claims.",
                "The honesty test: would they feel respected seeing exactly what you did?"
            ])
        ],
        quiz: Quiz(id: "nego302_q", passPercent: 80, questions: [
            Question(id: "nego302_q1", prompt: "Match each influence principle to its meaning.", matchingPairs: [
                MatchingPair(left: "Reciprocity", right: "People return favors and concessions"),
                MatchingPair(left: "Social proof", right: "People follow what similar others do"),
                MatchingPair(left: "Scarcity", right: "Genuine limited availability increases value"),
                MatchingPair(left: "Liking", right: "People say yes to those they trust and relate to")
            ], explanation: "These are core principles of influence. Used with true value and honest claims they persuade ethically; used with deception they manipulate."),
            Question(id: "nego302_q2", type: .scenario, prompt: "You want to persuade a client to accept your proposal. Which approach is ethical and durable?", choices: ["Invent fake testimonials to create social proof", "Lead with genuine value and frame real benefits around their interests", "Claim a false deadline to rush them", "Pretend to have expertise you lack"], correctIndex: 1, explanation: "Leading with real value and framing true benefits around the client's interests persuades ethically and builds lasting trust. The other options are manipulation that backfires."),
            Question(id: "nego302_q3", type: .multipleChoice, prompt: "What is the honesty test for ethical persuasion?", choices: ["Would it work on most people?", "Would the other person feel respected if they saw exactly what you were doing?", "Can you get away with it?", "Is it legal?"], correctIndex: 1, explanation: "If the other person would feel respected seeing your full approach, you are persuading ethically. If they would feel tricked, you have crossed into manipulation."),
            Question(id: "nego302_q4", type: .multiSelect, prompt: "Which help you resist manipulation?", choices: ["Noticing a 'free' gift meant to obligate you", "Verifying authority and social-proof claims", "Acting fast on every deadline you hear", "Slowing down when pressure rises", "Treating false scarcity skeptically"], correctIndices: [0, 1, 3, 4], explanation: "Spotting obligation tactics, verifying claims, slowing down, and questioning scarcity all protect you. Acting fast on every deadline is exactly what manipulators want."),
            Question(id: "nego302_q5", prompt: "The principle that people tend to return favors and concessions is called ____.", acceptedAnswers: ["reciprocity", "the reciprocity principle"], explanation: "Reciprocity is the tendency to return favors. Used ethically, it means giving genuine value first; used manipulatively, it engineers obligation.")
        ]),
        flashcards: [
            Flashcard(id: "nego302_f1", front: "Reciprocity", back: "People feel obligated to return favors and concessions. Ethically, give real value first; the principle should be earned, not engineered."),
            Flashcard(id: "nego302_f2", front: "Social proof", back: "People look to what similar others have done. Use true examples, never fabricated testimonials."),
            Flashcard(id: "nego302_f3", front: "Commitment and consistency", back: "Once people agree to something small, they tend to stay consistent with it. Build agreement in honest steps."),
            Flashcard(id: "nego302_f4", front: "The honesty test", back: "Would the other person feel respected if they saw exactly what you were doing? If yes, it is ethical persuasion, not manipulation.")
        ],
        tags: ["influence", "persuasion", "ethics"]
    )

    static let lesson11 = Lesson(
        id: "nego_t3_03",
        categoryId: .negotiation,
        tier: 3,
        lessonNumber: 3,
        title: "Creating Win-Win Value",
        subtitle: "Grow the pie before you split it",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["nego_t3_02"],
        contentBlocks: [
            ContentBlock(id: "nego303_b1", type: .whyMatters, title: "Why Value Creation Beats Haggling", bullets: [
                "Most negotiations are not pure win-lose; there is usually value to create.",
                "Integrative negotiation expands the deal so both sides gain more than a simple split.",
                "Trading across issues each side values differently makes everyone better off.",
                "Win-win deals hold up and build relationships; win-lose deals breed resentment."
            ], body: "The amateur fights over a fixed pie. The professional asks how to make the pie bigger first, then divides it fairly."),
            ContentBlock(id: "nego303_b2", type: .keyTerms, title: "The Language of Value", bullets: [
                "Distributive negotiation: dividing a fixed pie; one side's gain is the other's loss.",
                "Integrative negotiation: creating value so both sides gain.",
                "Interests vs. positions: needs behind the stance, where trades hide.",
                "Logrolling: trading concessions across issues each side values differently.",
                "Contingent agreement: a deal whose terms shift based on a future outcome."
            ]),
            ContentBlock(id: "nego303_b3", type: .stepByStep, title: "How to Create Value", bullets: [
                "Uncover interests by asking why each side wants what they want.",
                "Put multiple issues on the table at once, not one at a time.",
                "Find differences in priority and trade across them (logroll).",
                "Use contingent agreements to bridge disagreements about the future.",
                "Look for low-cost-to-you, high-value-to-them items to give."
            ], callouts: ["The magic question: \"What's cheap for me to give but valuable to you, and vice versa?\""]),
            ContentBlock(id: "nego303_b4", type: .realWorld, title: "Win-Win in Practice", bullets: [
                "A buyer needs fast delivery; the seller needs a longer payment term. Trade one for the other.",
                "An employee values flexibility; the employer values retention. Trade remote days for a longer commitment.",
                "A vendor wants a case study; the client wants a discount. Trade testimonial for price.",
                "Partners value different roles; split responsibilities to each one's strength."
            ]),
            ContentBlock(id: "nego303_b5", type: .commonMistakes, title: "Why People Leave Value Behind", bullets: [
                "Assuming a fixed pie when value could be created.",
                "Negotiating one issue at a time, killing the chance to trade.",
                "Hiding all interests so no creative trades surface.",
                "Treating the other side purely as an opponent."
            ]),
            ContentBlock(id: "nego303_b6", type: .summary, title: "The Takeaway", bullets: [
                "Expand the pie before you divide it.",
                "Uncover interests and put multiple issues on the table.",
                "Logroll: trade across issues each side values differently.",
                "Give low-cost, high-value items to build durable deals."
            ])
        ],
        quiz: Quiz(id: "nego303_q", passPercent: 80, questions: [
            Question(id: "nego303_q1", type: .multipleChoice, prompt: "What is integrative negotiation?", choices: ["Dividing a fixed amount where one side's gain is the other's loss", "Creating value so both sides can gain more", "Refusing to compromise on anything", "Always splitting the difference"], correctIndex: 1, explanation: "Integrative negotiation expands the deal by trading across issues, so both sides gain more than they would from simply splitting a fixed pie."),
            Question(id: "nego303_q2", prompt: "Trading concessions across multiple issues that each side values differently is called ____.", acceptedAnswers: ["logrolling", "log-rolling", "log rolling"], explanation: "Logrolling means giving on issues you care less about in exchange for gains on issues you care more about, creating value for both sides."),
            Question(id: "nego303_q3", type: .scenario, prompt: "A buyer wants fast delivery; you (the seller) want longer payment terms. What is the value-creating move?", choices: ["Refuse to budge on either point", "Trade faster delivery for the longer payment terms you want", "Split the difference on both with no trade", "End the negotiation"], correctIndex: 1, explanation: "Because each side prioritizes a different issue, trading delivery speed for payment terms makes both sides better off. That is logrolling in action."),
            Question(id: "nego303_q4", type: .multiSelect, prompt: "Which behaviors help create win-win value?", choices: ["Uncovering the interests behind each position", "Putting multiple issues on the table at once", "Treating the deal as a strict fixed pie", "Trading low-cost-to-you, high-value-to-them items", "Looking for differences in priority"], correctIndices: [0, 1, 3, 4], explanation: "Surfacing interests, bundling issues, trading asymmetric-value items, and exploiting priority differences all expand the pie. Assuming a fixed pie leaves value on the table."),
            Question(id: "nego303_q5", type: .scenario, prompt: "A client wants a lower price; you want a public testimonial. Neither alone is a clean win. What is the integrative move?", choices: ["Refuse the discount entirely", "Trade a modest discount for the testimonial you value", "Give the discount and ask for nothing", "Walk away from the client"], correctIndex: 1, explanation: "Trading the discount for the testimonial gives each side what it values most. This is value creation: both walk away with a win.")
        ]),
        flashcards: [
            Flashcard(id: "nego303_f1", front: "Distributive vs. integrative", back: "Distributive divides a fixed pie (win-lose); integrative creates value so both sides gain (win-win)."),
            Flashcard(id: "nego303_f2", front: "Logrolling", back: "Trading concessions across multiple issues each side values differently, so both come out ahead"),
            Flashcard(id: "nego303_f3", front: "Contingent agreement", back: "A deal whose terms adjust based on a future outcome, used to bridge disagreements about what will happen"),
            Flashcard(id: "nego303_f4", front: "Expand the pie", back: "Finding ways to create more total value before dividing it, instead of fighting over a fixed amount")
        ],
        tags: ["win-win", "value-creation", "integrative"]
    )

    static let lesson12 = Lesson(
        id: "nego_t3_04",
        categoryId: .negotiation,
        tier: 3,
        lessonNumber: 4,
        title: "Closing, Follow-Through, and Costly Mistakes",
        subtitle: "Seal it cleanly and protect the gain",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["nego_t3_03"],
        contentBlocks: [
            ContentBlock(id: "nego304_b1", type: .whyMatters, title: "Why the Close Is Where Deals Die", bullets: [
                "A deal is not done until terms are confirmed and committed in writing.",
                "Many strong negotiations unravel at the close from sloppiness or second-guessing.",
                "Follow-through is what turns an agreement into actual value delivered.",
                "Your reputation is built on doing exactly what you said you would do."
            ], body: "The last 10 percent of a negotiation protects the first 90 percent. This lesson ties the whole skill together: close well and follow through."),
            ContentBlock(id: "nego304_b2", type: .stepByStep, title: "How to Close Cleanly", bullets: [
                "Summarize the agreed terms out loud and confirm mutual understanding.",
                "Use a trial close to test readiness: \"If we resolve X, are we ready to move?\"",
                "Get it in writing promptly; memory and intent both drift.",
                "Make the final yes easy: remove friction, clarify next steps.",
                "End on goodwill so the relationship outlives the deal."
            ], callouts: ["Always recap in writing within 24 hours: \"Confirming what we agreed...\" An unconfirmed deal is not a deal."]),
            ContentBlock(id: "nego304_b3", type: .commonMistakes, title: "The Mistakes That Cost Real Money", bullets: [
                "Failing to negotiate at all because it feels uncomfortable.",
                "Talking past the yes and re-opening a closed deal.",
                "Negotiating the monthly payment instead of the total price.",
                "Accepting the first offer without a counter.",
                "Letting emotion or ego override a sound walk-away point."
            ]),
            ContentBlock(id: "nego304_b4", type: .principles, title: "Closing Principles", bullets: [
                "Confirm, then stop selling; the deal is won, do not talk it loose.",
                "Trust is built at the close and kept through follow-through.",
                "A clean exit, even from a no, preserves future opportunities.",
                "Deliver exactly what you promised, every time."
            ]),
            ContentBlock(id: "nego304_b5", type: .proTips, title: "Follow-Through That Builds Reputation", bullets: [
                "Send the written recap before the energy fades.",
                "Track commitments and deadlines so nothing slips.",
                "Over-communicate if something changes; surprises erode trust.",
                "Treat every deal as the first chapter of a longer relationship."
            ]),
            ContentBlock(id: "nego304_b6", type: .summary, title: "The Takeaway", bullets: [
                "Confirm terms out loud, then get them in writing fast.",
                "Stop selling once you have the yes; do not re-open it.",
                "Avoid the classic money-losers: not negotiating, payment-not-price, no counter.",
                "Follow through exactly; reputation is built on kept promises."
            ])
        ],
        quiz: Quiz(id: "nego304_q", passPercent: 80, questions: [
            Question(id: "nego304_q1", type: .scenario, prompt: "You and a vendor have just verbally agreed on all the terms. What should you do next?", choices: ["Keep negotiating to squeeze a bit more", "Recap the agreed terms in writing promptly to confirm them", "Assume the verbal agreement is enough and move on", "Wait a few weeks before documenting anything"], correctIndex: 1, explanation: "Confirming agreed terms in writing promptly locks them in before memory or intent drifts. An unconfirmed verbal deal can quietly unravel."),
            Question(id: "nego304_q2", type: .multiSelect, prompt: "Which are classic mistakes that cost people money?", choices: ["Not negotiating at all", "Focusing on monthly payment instead of total price", "Accepting the first offer without a counter", "Confirming the deal in writing", "Letting ego override your walk-away point"], correctIndices: [0, 1, 2, 4], explanation: "Not negotiating, fixating on payments, accepting the first offer, and letting ego override your walk-away all cost money. Confirming the deal in writing is a best practice, not a mistake."),
            Question(id: "nego304_q3", type: .scenario, prompt: "The other side has just said yes to your offer. What is the smart move?", choices: ["Keep listing more reasons to buy", "Confirm the terms, thank them, and stop selling", "Immediately ask for one more concession", "Express doubt about the deal"], correctIndex: 1, explanation: "Once you have the yes, stop selling. Talking past the yes can re-open doubts and unravel a closed deal. Confirm, thank them, and move to documentation."),
            Question(id: "nego304_q4", prompt: "A short statement that tests readiness to close, like \"If we resolve X, are we ready to move forward?\", is called a trial ____.", acceptedAnswers: ["close", "trial close"], explanation: "A trial close tests whether the other side is ready to commit, surfacing any last obstacles before you push for the final yes."),
            Question(id: "nego304_q5", type: .multipleChoice, prompt: "What ultimately protects your reputation as a negotiator?", choices: ["Winning every single point", "Doing exactly what you promised and following through", "Always making the first offer", "Talking more than the other side"], correctIndex: 1, explanation: "Reputation is built on follow-through: delivering exactly what you committed to. That is what makes people want to deal with you again.")
        ]),
        flashcards: [
            Flashcard(id: "nego304_f1", front: "Trial close", back: "A test statement ('If we resolve X, are we ready to move?') that gauges readiness to commit and surfaces last obstacles"),
            Flashcard(id: "nego304_f2", front: "Confirm in writing", back: "Recapping agreed terms in writing promptly so the deal does not unravel as memory and intent drift"),
            Flashcard(id: "nego304_f3", front: "Stop selling at yes", back: "Once the other side agrees, stop talking it up. Talking past the yes can re-open doubt and unravel a closed deal."),
            Flashcard(id: "nego304_f4", front: "Follow-through", back: "Delivering exactly what you promised, every time. The foundation of a reputation that wins future deals.")
        ],
        tags: ["closing", "follow-through", "mistakes"]
    )
}
