import Foundation

enum ConstitutionLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4, lesson5,
        lesson6, lesson7, lesson8, lesson9,
        lesson10, lesson11, lesson12
    ]

    // MARK: - Tier 1: Structural Awareness

    static let lesson1 = Lesson(
        id: "con_t1_01",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 1,
        title: "Why the U.S. Constitution Exists",
        subtitle: "The origin of American governance",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "con101_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The Constitution is the operating system of the United States. Every law, court ruling, and executive action flows from or is checked against it.",
                "Without understanding it, you cannot evaluate what any politician, judge, or agency is actually allowed to do.",
                "Constitutional illiteracy makes you easy to manipulate."
            ]),
            ContentBlock(id: "con101_b2", type: .systemOverview, title: "System Overview", bullets: [
                "The Constitution replaced the Articles of Confederation in 1789.",
                "It creates a federal government with three branches: legislative, executive, judicial.",
                "It distributes power between the federal government and the states.",
                "It limits government power through enumerated powers and the Bill of Rights."
            ]),
            ContentBlock(id: "con101_b3", type: .howItWorks, title: "How It Works", bullets: [
                "The Constitution is a framework, not a policy manual. It sets boundaries.",
                "Laws must be consistent with it or they can be struck down by courts.",
                "It can be amended, but the process is intentionally difficult — requiring supermajorities in Congress and ratification by three-fourths of states."
            ]),
            ContentBlock(id: "con101_b4", type: .failureModes, title: "Common Misunderstandings", bullets: [
                "The Constitution does not grant rights — it restricts government from infringing on pre-existing rights.",
                "It does not directly regulate private individuals or companies in most cases.",
                "Many people confuse the Declaration of Independence with the Constitution."
            ]),
            ContentBlock(id: "con101_b5", type: .summary, title: "Summary", bullets: [
                "The Constitution is a structural document that creates, limits, and balances federal power.",
                "It replaced the Articles of Confederation because the first system was too weak.",
                "Understanding it is the baseline for evaluating any claim about American government."
            ])
        ],
        quiz: Quiz(id: "con101_q", passPercent: 80, questions: [
            Question(id: "con101_q1", prompt: "What did the Constitution replace?", choices: ["The Declaration of Independence", "The Articles of Confederation", "The Federalist Papers", "The Magna Carta"], correctIndex: 1, explanation: "The Constitution replaced the Articles of Confederation in 1789 because the original system was too weak to govern effectively."),
            Question(id: "con101_q2", prompt: "How many branches of government does the Constitution create?", choices: ["Two", "Four", "Three", "Five"], correctIndex: 2, explanation: "The Constitution creates three branches: legislative (Congress), executive (President), and judicial (courts)."),
            Question(id: "con101_q3", type: .scenario, prompt: "A new federal law contradicts a provision of the Constitution. What happens?", choices: ["Courts can strike the law down", "The law overrides the Constitution", "The President decides", "States vote on it"], correctIndex: 0, explanation: "Courts have the power of judicial review to strike down laws that violate the Constitution."),
            Question(id: "con101_q4", prompt: "The Constitution primarily restricts:", choices: ["Private citizens", "Foreign governments", "Corporations", "The government itself"], correctIndex: 3, explanation: "The Constitution limits what the government can do, not what private citizens can do."),
            Question(id: "con101_q5", prompt: "Amending the Constitution requires:", choices: ["Supermajorities and state ratification", "Presidential executive order", "A simple majority vote", "Supreme Court approval"], correctIndex: 0, explanation: "Amendments require two-thirds of Congress and ratification by three-fourths of the states."),
            Question(id: "con101_q6", type: .fillBlank, prompt: "The Constitution does not grant rights — it _____ the government from infringing on them.", choices: ["Encourages", "Allows", "Restricts", "Empowers"], correctIndex: 2, explanation: "The Constitution restricts government power, protecting pre-existing natural rights.")
        ]),
        flashcards: [
            Flashcard(id: "con101_f1", front: "Articles of Confederation", back: "The first governing document of the United States, replaced by the Constitution in 1789 due to structural weakness"),
            Flashcard(id: "con101_f2", front: "Enumerated Powers", back: "Specific powers explicitly listed in the Constitution as belonging to the federal government"),
            Flashcard(id: "con101_f3", front: "Bill of Rights", back: "The first ten amendments to the Constitution, protecting individual liberties from government overreach"),
            Flashcard(id: "con101_f4", front: "Judicial Review", back: "The power of courts to determine whether laws and government actions are constitutional"),
            Flashcard(id: "con101_f5", front: "Ratification", back: "The formal process of approving a constitutional amendment, requiring three-fourths of state legislatures")
        ],
        tags: ["structure", "history", "basics"]
    )

    static let lesson2 = Lesson(
        id: "con_t1_02",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 2,
        title: "Preamble and Purpose",
        subtitle: "The mission statement of the republic",
        estimatedMinutes: 6,
        difficulty: 1,
        prerequisites: ["con_t1_01"],
        contentBlocks: [
            ContentBlock(id: "con102_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The Preamble states the objectives of the entire constitutional system in one sentence.",
                "It is not legally enforceable, but it frames everything that follows."
            ]),
            ContentBlock(id: "con102_b2", type: .componentBreakdown, title: "Component Breakdown", bullets: [
                "'We the People' — sovereignty originates from citizens, not the government.",
                "'Form a more perfect Union' — improve on the Articles of Confederation.",
                "'Establish Justice' — create a fair legal system.",
                "'Insure domestic Tranquility' — maintain internal peace and order.",
                "'Provide for the common defence' — national security.",
                "'Promote the general Welfare' — support conditions for public well-being.",
                "'Secure the Blessings of Liberty' — protect freedom for current and future generations."
            ]),
            ContentBlock(id: "con102_b3", type: .failureModes, title: "Common Mistakes", bullets: [
                "The Preamble does not create or grant any specific legal powers.",
                "Courts do not use it to decide cases — it's interpretive context, not operative text.",
                "People often quote it as if it's the law itself."
            ]),
            ContentBlock(id: "con102_b4", type: .summary, title: "Summary", bullets: [
                "The Preamble is the Constitution's mission statement.",
                "It declares popular sovereignty and six core objectives.",
                "It frames the document but is not a source of government power."
            ])
        ],
        quiz: Quiz(id: "con102_q", passPercent: 80, questions: [
            Question(id: "con102_q1", prompt: "Who does the Preamble say holds sovereignty?", choices: ["The President", "The States", "The People", "Congress"], correctIndex: 2, explanation: "'We the People' establishes that sovereignty originates from the citizens."),
            Question(id: "con102_q2", prompt: "Is the Preamble legally enforceable in court?", choices: ["Yes, always", "No, it provides interpretive context only", "Only in federal courts", "Only for criminal cases"], correctIndex: 1, explanation: "The Preamble is not used to decide cases; it's context, not operative law."),
            Question(id: "con102_q3", prompt: "'Form a more perfect Union' refers to improving on:", choices: ["The British monarchy", "State constitutions", "The Declaration of Independence", "The Articles of Confederation"], correctIndex: 3, explanation: "The phrase acknowledges the weaknesses of the Articles and aims to improve upon them."),
            Question(id: "con102_q4", type: .fillBlank, prompt: "The Preamble lists _____ core objectives of the Constitution.", choices: ["Four", "Five", "Seven", "Six"], correctIndex: 3, explanation: "The six objectives: form union, establish justice, insure tranquility, provide defense, promote welfare, secure liberty.")
        ]),
        flashcards: [
            Flashcard(id: "con102_f1", front: "Popular Sovereignty", back: "The principle that government authority comes from the consent of the people"),
            Flashcard(id: "con102_f2", front: "Domestic Tranquility", back: "Internal peace and order within the nation's borders"),
            Flashcard(id: "con102_f3", front: "General Welfare", back: "The overall well-being and common good of the public")
        ],
        tags: ["preamble", "basics", "structure"]
    )

    static let lesson3 = Lesson(
        id: "con_t1_03",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 3,
        title: "Articles I, II, and III Overview",
        subtitle: "The three branches, mapped",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["con_t1_02"],
        contentBlocks: [
            ContentBlock(id: "con103_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Articles I, II, and III create the three branches of government. Every federal action traces back to one of these.",
                "If you don't know which branch does what, you can't evaluate whether an action is legitimate."
            ]),
            ContentBlock(id: "con103_b2", type: .componentBreakdown, title: "Component Breakdown", bullets: [
                "Article I — Legislative Branch (Congress): Makes laws. Bicameral: Senate (100) and House (435). Controls taxing, spending, commerce, and declaring war.",
                "Article II — Executive Branch (President): Enforces laws. Commander-in-chief. Makes treaties (with Senate approval). Nominates judges and officials.",
                "Article III — Judicial Branch (Supreme Court + federal courts): Interprets laws. Decides constitutional disputes. Lifetime appointments for federal judges."
            ]),
            ContentBlock(id: "con103_b3", type: .howItWorks, title: "How It Works", bullets: [
                "Congress writes and passes legislation.",
                "The President signs or vetoes bills, directs federal agencies, and commands the military.",
                "The courts resolve disputes about what the law means and whether it's constitutional.",
                "Each branch has tools to check the others — this is the separation of powers."
            ]),
            ContentBlock(id: "con103_b4", type: .failureModes, title: "Common Mistakes", bullets: [
                "The President cannot make laws — only sign or veto them (executive orders are not legislation).",
                "The Supreme Court cannot enforce its own rulings — it relies on the executive branch.",
                "Congress can override a presidential veto with two-thirds of both chambers."
            ]),
            ContentBlock(id: "con103_b5", type: .summary, title: "Summary", bullets: [
                "Article I creates Congress (legislative), Article II the President (executive), Article III the courts (judicial).",
                "Each branch has distinct powers and limits.",
                "The system is designed so no single branch can dominate."
            ])
        ],
        quiz: Quiz(id: "con103_q", passPercent: 80, questions: [
            Question(id: "con103_q1", prompt: "Which article creates the legislative branch?", choices: ["Article I", "Article II", "Article III", "Article IV"], correctIndex: 0, explanation: "Article I establishes Congress — the Senate and House of Representatives."),
            Question(id: "con103_q2", prompt: "Who has the power to declare war?", choices: ["The President", "The Secretary of Defense", "The Supreme Court", "Congress"], correctIndex: 3, explanation: "The power to declare war belongs to Congress under Article I, not the President."),
            Question(id: "con103_q3", type: .scenario, prompt: "The President vetoes a bill. What can Congress do?", choices: ["Nothing — it's dead", "Take it to the Supreme Court", "Override with two-thirds of both chambers", "Pass it through executive order"], correctIndex: 2, explanation: "Congress can override a presidential veto with a two-thirds supermajority in both the House and Senate."),
            Question(id: "con103_q4", prompt: "Federal judges serve:", choices: ["Four-year terms", "Eight-year terms", "Until retirement age", "Lifetime appointments"], correctIndex: 3, explanation: "Article III provides lifetime appointments for federal judges to insulate them from political pressure.")
        ]),
        flashcards: [
            Flashcard(id: "con103_f1", front: "Article I", back: "Creates the Legislative Branch (Congress) — makes laws"),
            Flashcard(id: "con103_f2", front: "Article II", back: "Creates the Executive Branch (President) — enforces laws"),
            Flashcard(id: "con103_f3", front: "Article III", back: "Creates the Judicial Branch (Courts) — interprets laws"),
            Flashcard(id: "con103_f4", front: "Bicameral Legislature", back: "A two-chamber legislature: the Senate and the House of Representatives"),
            Flashcard(id: "con103_f5", front: "Veto Override", back: "Congress can override a presidential veto with a two-thirds vote in both chambers")
        ],
        tags: ["branches", "structure", "basics"]
    )

    static let lesson4 = Lesson(
        id: "con_t1_04",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 4,
        title: "Federalism Basics",
        subtitle: "Federal vs state power",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["con_t1_03"],
        contentBlocks: [
            ContentBlock(id: "con104_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Federalism determines which level of government controls what.",
                "Most of the laws that affect your daily life — driving, property, crime, education — are state laws, not federal."
            ]),
            ContentBlock(id: "con104_b2", type: .systemOverview, title: "System Overview", bullets: [
                "The federal government has enumerated powers — specific powers listed in the Constitution.",
                "The states retain all other powers through the Tenth Amendment.",
                "Some powers are shared (concurrent): taxation, law enforcement, building roads."
            ]),
            ContentBlock(id: "con104_b3", type: .howItWorks, title: "How It Works", bullets: [
                "When federal and state laws conflict, the Supremacy Clause (Article VI) makes federal law supreme — if the federal government has the constitutional authority.",
                "States serve as 'laboratories of democracy' — they can experiment with different policies.",
                "The Commerce Clause has been the primary tool for expanding federal power over time."
            ]),
            ContentBlock(id: "con104_b4", type: .summary, title: "Summary", bullets: [
                "Federalism splits power between national and state governments.",
                "Federal power is enumerated; state power is reserved.",
                "The Supremacy Clause resolves conflicts, but only within federal jurisdiction."
            ])
        ],
        quiz: Quiz(id: "con104_q", passPercent: 80, questions: [
            Question(id: "con104_q1", prompt: "Which amendment reserves powers to the states?", choices: ["First", "Fourteenth", "Tenth", "Fifth"], correctIndex: 2, explanation: "The Tenth Amendment reserves all powers not delegated to the federal government to the states or the people."),
            Question(id: "con104_q2", prompt: "When federal and state laws conflict:", choices: ["State law wins", "The President decides", "Federal law wins if constitutional", "Courts always side with states"], correctIndex: 2, explanation: "The Supremacy Clause makes federal law supreme, but only if the federal government has constitutional authority."),
            Question(id: "con104_q3", prompt: "Most laws affecting daily life are:", choices: ["Federal laws", "State laws", "International treaties", "Executive orders"], correctIndex: 1, explanation: "Driving, property, criminal law, education — these are primarily governed by state law.")
        ]),
        flashcards: [
            Flashcard(id: "con104_f1", front: "Federalism", back: "A system of government where power is divided between a central authority and constituent states"),
            Flashcard(id: "con104_f2", front: "Tenth Amendment", back: "Reserves all non-delegated powers to the states or the people"),
            Flashcard(id: "con104_f3", front: "Supremacy Clause", back: "Article VI provision making federal law supreme over state law when there is a conflict"),
            Flashcard(id: "con104_f4", front: "Concurrent Powers", back: "Powers shared by both federal and state governments, such as taxation")
        ],
        tags: ["federalism", "structure", "basics"]
    )

    static let lesson5 = Lesson(
        id: "con_t1_05",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 5,
        title: "Separation of Powers",
        subtitle: "Why no branch rules alone",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["con_t1_03"],
        contentBlocks: [
            ContentBlock(id: "con105_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The entire structure of American government is designed around preventing any one person or body from accumulating too much power.",
                "When you hear 'checks and balances,' this is what it means in practice."
            ]),
            ContentBlock(id: "con105_b2", type: .howItWorks, title: "How It Works", bullets: [
                "Congress passes laws — but the President can veto them.",
                "The President enforces laws — but Congress controls funding and can impeach.",
                "The courts interpret laws — but Congress confirms judges and can amend the Constitution.",
                "Each branch has leverage over the others, creating mutual accountability."
            ]),
            ContentBlock(id: "con105_b3", type: .failureModes, title: "Failure Modes", bullets: [
                "When one branch defers too much to another, the system breaks down.",
                "Executive overreach through aggressive use of executive orders.",
                "Congressional gridlock that forces the executive to act unilaterally.",
                "Judicial activism or restraint that fails to check the other branches."
            ]),
            ContentBlock(id: "con105_b4", type: .summary, title: "Summary", bullets: [
                "Separation of powers divides government functions among three branches.",
                "Checks and balances ensure no branch can dominate.",
                "The system works through tension, not harmony."
            ])
        ],
        quiz: Quiz(id: "con105_q", passPercent: 80, questions: [
            Question(id: "con105_q1", prompt: "The President's check on Congress is:", choices: ["Judicial review", "Declaring war", "The veto power", "Appointing senators"], correctIndex: 2, explanation: "The President can veto legislation passed by Congress."),
            Question(id: "con105_q2", prompt: "Congress's check on the President includes:", choices: ["Impeachment and funding control", "Vetoing executive orders", "Appointing cabinet members", "Issuing judicial rulings"], correctIndex: 0, explanation: "Congress can impeach the President and controls the federal budget."),
            Question(id: "con105_q3", type: .scenario, prompt: "The executive branch begins making law-like rules without Congress. This is an example of:", choices: ["Proper governance", "Separation of powers working", "Judicial review", "Executive overreach"], correctIndex: 3, explanation: "When the executive acts like the legislature, it violates the separation of powers.")
        ]),
        flashcards: [
            Flashcard(id: "con105_f1", front: "Separation of Powers", back: "The division of government responsibilities among the legislative, executive, and judicial branches"),
            Flashcard(id: "con105_f2", front: "Checks and Balances", back: "The system where each branch of government can limit the powers of the other branches"),
            Flashcard(id: "con105_f3", front: "Impeachment", back: "The process by which Congress can charge and remove a President or federal official from office")
        ],
        tags: ["separation", "checks", "structure"]
    )

    // MARK: - Tier 2: Operational Competence

    static let lesson6 = Lesson(
        id: "con_t2_01",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 1,
        title: "Bill of Rights Overview",
        subtitle: "The first ten amendments that protect you",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["con_t1_05"],
        contentBlocks: [
            ContentBlock(id: "con201_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The Bill of Rights is the direct shield between you and government overreach.",
                "These ten amendments were the condition for ratification — without them, the Constitution would not have been adopted."
            ]),
            ContentBlock(id: "con201_b2", type: .componentBreakdown, title: "Component Breakdown", bullets: [
                "1st — Speech, religion, press, assembly, petition.",
                "2nd — Right to keep and bear arms.",
                "3rd — No quartering soldiers in homes.",
                "4th — Protection against unreasonable searches and seizures.",
                "5th — Due process, self-incrimination, double jeopardy, eminent domain.",
                "6th — Right to speedy trial, counsel, confrontation of witnesses.",
                "7th — Right to jury trial in civil cases.",
                "8th — No cruel and unusual punishment, no excessive bail.",
                "9th — Unenumerated rights still exist.",
                "10th — Powers not delegated are reserved to states or the people."
            ]),
            ContentBlock(id: "con201_b3", type: .howItWorks, title: "How It Works", bullets: [
                "Originally applied only to the federal government.",
                "Through incorporation (14th Amendment), most now apply to state and local governments too.",
                "Rights are not absolute — courts balance them against compelling government interests."
            ]),
            ContentBlock(id: "con201_b4", type: .summary, title: "Summary", bullets: [
                "Ten amendments that define the boundaries of government power over individuals.",
                "They protect speech, arms, privacy, due process, and reserve unenumerated rights.",
                "Understanding them is not optional for a competent citizen."
            ])
        ],
        quiz: Quiz(id: "con201_q", passPercent: 80, questions: [
            Question(id: "con201_q1", prompt: "Which amendment protects against unreasonable searches?", choices: ["Second", "Third", "Fifth", "Fourth"], correctIndex: 3, explanation: "The Fourth Amendment protects against unreasonable searches and seizures by the government."),
            Question(id: "con201_q2", prompt: "The Ninth Amendment states that:", choices: ["All rights are listed in the Constitution", "Unenumerated rights still exist", "States have no rights", "The President can create new rights"], correctIndex: 1, explanation: "The Ninth Amendment preserves rights not explicitly mentioned in the Constitution."),
            Question(id: "con201_q3", prompt: "The Bill of Rights originally restricted:", choices: ["Only the federal government", "All governments worldwide", "State governments only", "Private companies"], correctIndex: 0, explanation: "The Bill of Rights originally applied only to the federal government, later extended to states through incorporation."),
            Question(id: "con201_q4", type: .scenario, prompt: "Police search your home without a warrant or probable cause. Which amendment is violated?", choices: ["First Amendment", "Fourth Amendment", "Eighth Amendment", "Tenth Amendment"], correctIndex: 1, explanation: "The Fourth Amendment requires warrants based on probable cause for searches."),
            Question(id: "con201_q5", type: .fillBlank, prompt: "The Bill of Rights was the condition for _____ of the Constitution.", choices: ["Amendment", "Enforcement", "Ratification", "Interpretation"], correctIndex: 2, explanation: "Several states refused to ratify the Constitution without a guarantee that a Bill of Rights would be added.")
        ]),
        flashcards: [
            Flashcard(id: "con201_f1", front: "Incorporation Doctrine", back: "The legal process through which the Bill of Rights was applied to state governments via the 14th Amendment"),
            Flashcard(id: "con201_f2", front: "Due Process", back: "The constitutional guarantee that the government must follow fair procedures before depriving someone of life, liberty, or property"),
            Flashcard(id: "con201_f3", front: "Double Jeopardy", back: "The Fifth Amendment protection against being tried twice for the same criminal offense"),
            Flashcard(id: "con201_f4", front: "Eminent Domain", back: "The government's power to take private property for public use, with just compensation (Fifth Amendment)")
        ],
        tags: ["bill of rights", "amendments", "rights"]
    )

    static let lesson7 = Lesson(
        id: "con_t2_02",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 2,
        title: "First Amendment Deep Dive",
        subtitle: "Speech, religion, and the limits of government",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["con_t2_01"],
        contentBlocks: [
            ContentBlock(id: "con202_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The First Amendment is the most invoked and most misunderstood amendment.",
                "It restricts the government, not private platforms or employers."
            ]),
            ContentBlock(id: "con202_b2", type: .componentBreakdown, title: "Five Protections", bullets: [
                "Free Speech — Government cannot punish you for expressing ideas, with narrow exceptions (incitement, true threats, obscenity).",
                "Free Press — Government cannot censor or license the press.",
                "Religion (Establishment Clause) — Government cannot establish an official religion.",
                "Religion (Free Exercise Clause) — Government cannot prohibit religious practice without compelling reason.",
                "Assembly & Petition — Right to gather peacefully and petition the government for change."
            ]),
            ContentBlock(id: "con202_b3", type: .failureModes, title: "Common Misunderstandings", bullets: [
                "A private company banning speech is not a First Amendment violation — it only applies to government action.",
                "Hate speech is not a legal category — there is no hate speech exception to the First Amendment.",
                "The right to protest does not include the right to block roads or destroy property."
            ]),
            ContentBlock(id: "con202_b4", type: .summary, title: "Summary", bullets: [
                "Five freedoms: speech, press, establishment, free exercise, assembly/petition.",
                "Applies to government action only.",
                "Exceptions are narrow and well-defined by courts."
            ])
        ],
        quiz: Quiz(id: "con202_q", passPercent: 80, questions: [
            Question(id: "con202_q1", prompt: "The First Amendment restricts:", choices: ["The government", "Private companies", "Individual citizens", "Foreign countries"], correctIndex: 0, explanation: "The First Amendment only restricts government action, not private actors."),
            Question(id: "con202_q2", prompt: "Is 'hate speech' a legal exception to the First Amendment?", choices: ["Yes, it's always illegal", "Only in federal courts", "Only online", "No, there is no hate speech exception"], correctIndex: 3, explanation: "The Supreme Court has consistently ruled there is no hate speech exception to the First Amendment."),
            Question(id: "con202_q3", type: .scenario, prompt: "A social media company removes your post. Is this a First Amendment violation?", choices: ["Yes, they censored you", "Only if it's political speech", "No, the First Amendment restricts government, not private companies", "Only if you're a journalist"], correctIndex: 2, explanation: "Private companies are not bound by the First Amendment — only the government is."),
            Question(id: "con202_q4", type: .fillBlank, prompt: "The First Amendment contains _____ distinct protections.", choices: ["Three", "Four", "Five", "Six"], correctIndex: 2, explanation: "Speech, press, establishment clause, free exercise clause, and assembly/petition — five protections.")
        ]),
        flashcards: [
            Flashcard(id: "con202_f1", front: "Establishment Clause", back: "Prohibits the government from establishing an official religion or favoring one religion over another"),
            Flashcard(id: "con202_f2", front: "Free Exercise Clause", back: "Protects individuals' right to practice their religion without government interference"),
            Flashcard(id: "con202_f3", front: "Prior Restraint", back: "Government censorship of speech before it is expressed — almost always unconstitutional"),
            Flashcard(id: "con202_f4", front: "Incitement Exception", back: "Speech directed at producing imminent lawless action that is likely to produce such action — one of the narrow exceptions to free speech")
        ],
        tags: ["first amendment", "speech", "religion"]
    )

    static let lesson8 = Lesson(
        id: "con_t2_03",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 3,
        title: "Second Amendment and Heller",
        subtitle: "Text, history, and the individual right",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["con_t2_01"],
        contentBlocks: [
            ContentBlock(id: "con203_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The Second Amendment is one of the most debated provisions. Understanding the actual legal framework matters more than media narratives.",
                "District of Columbia v. Heller (2008) established the individual right interpretation."
            ]),
            ContentBlock(id: "con203_b2", type: .howItWorks, title: "The Text and Interpretation", bullets: [
                "'A well regulated Militia, being necessary to the security of a free State, the right of the people to keep and bear Arms, shall not be infringed.'",
                "Heller held this protects an individual right unconnected to militia service.",
                "The right is not unlimited — the government can regulate dangerous and unusual weapons, prohibit felons from possession, and restrict carry in sensitive places.",
                "McDonald v. Chicago (2010) incorporated the right against state governments."
            ]),
            ContentBlock(id: "con203_b3", type: .failureModes, title: "Common Misunderstandings", bullets: [
                "The right is not limited to muskets — 'arms' is interpreted broadly as it was at the founding.",
                "The militia clause is prefatory, not limiting — Heller was clear on this.",
                "The right is still subject to reasonable regulation — 'shall not be infringed' does not mean zero regulation."
            ]),
            ContentBlock(id: "con203_b4", type: .summary, title: "Summary", bullets: [
                "The Second Amendment protects an individual right to keep and bear arms.",
                "Heller (2008) and McDonald (2010) are the landmark cases.",
                "The right is individual but not unlimited."
            ])
        ],
        quiz: Quiz(id: "con203_q", passPercent: 80, questions: [
            Question(id: "con203_q1", prompt: "District of Columbia v. Heller established:", choices: ["Only militia members can own firearms", "An individual right to keep and bear arms", "States can ban all firearms", "The Second Amendment is obsolete"], correctIndex: 1, explanation: "Heller held that the Second Amendment protects an individual right to keep and bear arms, unconnected to militia service."),
            Question(id: "con203_q2", prompt: "McDonald v. Chicago (2010) did what?", choices: ["Banned handguns in Chicago", "Repealed the Second Amendment", "Incorporated the right against state governments", "Created a national gun registry"], correctIndex: 2, explanation: "McDonald applied the Second Amendment to state and local governments through the Fourteenth Amendment."),
            Question(id: "con203_q3", prompt: "Under Heller, the Second Amendment right is:", choices: ["Absolute with no limits", "Limited to militia members only", "Individual but not unlimited", "Only for hunting purposes"], correctIndex: 2, explanation: "Heller recognized the individual right while also acknowledging that it is subject to reasonable regulations."),
            Question(id: "con203_q4", type: .fillBlank, prompt: "The militia clause in the Second Amendment is considered _____, not limiting.", choices: ["Operative", "Prefatory", "Advisory", "Mandatory"], correctIndex: 1, explanation: "The Supreme Court in Heller determined the militia clause is prefatory — it announces a purpose but does not limit the operative clause.")
        ]),
        flashcards: [
            Flashcard(id: "con203_f1", front: "DC v. Heller (2008)", back: "Supreme Court case establishing the Second Amendment protects an individual right to keep and bear arms"),
            Flashcard(id: "con203_f2", front: "McDonald v. Chicago (2010)", back: "Supreme Court case incorporating the Second Amendment against state and local governments"),
            Flashcard(id: "con203_f3", front: "Prefatory Clause", back: "The opening clause of the Second Amendment about militia — announces purpose but does not limit the right"),
            Flashcard(id: "con203_f4", front: "Incorporation", back: "The legal doctrine applying Bill of Rights protections to state governments through the 14th Amendment")
        ],
        tags: ["second amendment", "heller", "rights"]
    )

    static let lesson9 = Lesson(
        id: "con_t2_04",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 4,
        title: "How a Bill Becomes Law",
        subtitle: "The legislative process mapped",
        estimatedMinutes: 7,
        difficulty: 2,
        prerequisites: ["con_t2_01"],
        contentBlocks: [
            ContentBlock(id: "con204_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "If you don't understand the legislative process, you cannot evaluate whether a policy is a real proposal or political theater.",
                "Most bills die. Knowing where and why gives you structural intelligence."
            ]),
            ContentBlock(id: "con204_b2", type: .howItWorks, title: "The Process", bullets: [
                "A bill is introduced in either chamber by a member of Congress.",
                "It goes to committee — most bills die here, never reaching a floor vote.",
                "If reported out of committee, it goes to the full chamber for debate and vote.",
                "If passed by one chamber, it goes to the other chamber and repeats the process.",
                "Differences between House and Senate versions are resolved in a conference committee.",
                "The final bill goes to the President: sign it (law), veto it, or pocket veto (10-day timeout).",
                "Congress can override a veto with two-thirds vote in both chambers."
            ]),
            ContentBlock(id: "con204_b3", type: .failureModes, title: "Where Bills Die", bullets: [
                "Committee — the graveyard of legislation. Most bills never leave committee.",
                "Filibuster in the Senate — requires 60 votes to end debate (cloture).",
                "Conference disagreement — House and Senate can't reconcile differences.",
                "Presidential veto — override requires two-thirds in both chambers, which is rare."
            ]),
            ContentBlock(id: "con204_b4", type: .summary, title: "Summary", bullets: [
                "Bill → committee → floor vote → other chamber → conference → President.",
                "Most bills die in committee. The filibuster and veto are additional kill points.",
                "Understanding this process reveals why so little legislation actually passes."
            ])
        ],
        quiz: Quiz(id: "con204_q", passPercent: 80, questions: [
            Question(id: "con204_q1", prompt: "Where do most bills die?", choices: ["On the Senate floor", "In the President's office", "In committee", "At conference"], correctIndex: 2, explanation: "The vast majority of bills introduced in Congress die in committee, never reaching a floor vote."),
            Question(id: "con204_q2", prompt: "A filibuster in the Senate requires how many votes to end?", choices: ["51 (simple majority)", "60 (cloture)", "67 (two-thirds)", "75 (three-fourths)"], correctIndex: 1, explanation: "Cloture — ending a filibuster — requires 60 votes in the Senate."),
            Question(id: "con204_q3", prompt: "To override a presidential veto, Congress needs:", choices: ["Simple majority in one chamber", "Two-thirds of both chambers", "Three-fourths of the Senate", "Unanimous consent"], correctIndex: 1, explanation: "A veto override requires a two-thirds supermajority vote in both the House and the Senate."),
            Question(id: "con204_q4", type: .scenario, prompt: "The House passes a version of a bill different from the Senate version. What happens next?", choices: ["The President picks the version they prefer", "A conference committee reconciles differences", "The bill dies automatically", "The Supreme Court decides"], correctIndex: 1, explanation: "A conference committee of members from both chambers works to produce a single unified version of the bill.")
        ]),
        flashcards: [
            Flashcard(id: "con204_f1", front: "Filibuster", back: "A Senate procedure allowing unlimited debate to delay or prevent a vote — requires 60 votes (cloture) to end"),
            Flashcard(id: "con204_f2", front: "Cloture", back: "A Senate vote requiring 60 members to end debate and proceed to a vote on the bill"),
            Flashcard(id: "con204_f3", front: "Conference Committee", back: "A temporary committee of House and Senate members that reconciles differences between two versions of a bill"),
            Flashcard(id: "con204_f4", front: "Pocket Veto", back: "An indirect veto that occurs when the President fails to sign a bill within 10 days and Congress has adjourned")
        ],
        tags: ["legislation", "process", "congress"]
    )

    // MARK: - Tier 3: Diagnostic Thinking

    static let lesson10 = Lesson(
        id: "con_t3_01",
        categoryId: .constitution,
        tier: 3,
        lessonNumber: 1,
        title: "Marbury v. Madison",
        subtitle: "How the courts seized their greatest power",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["con_t2_04"],
        contentBlocks: [
            ContentBlock(id: "con301_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Marbury v. Madison (1803) established judicial review — the power of courts to declare laws unconstitutional.",
                "This power is not explicitly written in the Constitution. Chief Justice Marshall created it through interpretation.",
                "It is the single most important case in American constitutional law."
            ]),
            ContentBlock(id: "con301_b2", type: .howItWorks, title: "What Happened", bullets: [
                "John Adams appointed William Marbury as a justice of the peace in his final hours as President.",
                "The commission was signed but not delivered before Jefferson took office.",
                "Jefferson's Secretary of State, James Madison, refused to deliver it.",
                "Marbury sued directly in the Supreme Court under the Judiciary Act of 1789.",
                "Marshall ruled that the Judiciary Act provision granting original jurisdiction was unconstitutional — the court couldn't hear the case, but in doing so, claimed the power to strike down laws."
            ]),
            ContentBlock(id: "con301_b3", type: .failureModes, title: "The Strategic Brilliance", bullets: [
                "Marshall avoided a direct confrontation with Jefferson by ruling against Marbury.",
                "But in doing so, he established the far more important precedent: the Supreme Court decides what the Constitution means.",
                "No one challenged it because the immediate result favored Jefferson. The long-term power grab went unchecked."
            ]),
            ContentBlock(id: "con301_b4", type: .summary, title: "Summary", bullets: [
                "Marbury established judicial review — courts can invalidate unconstitutional laws.",
                "This power is implied, not explicit, in the Constitution.",
                "Marshall's strategic genius created the judiciary's most potent weapon."
            ])
        ],
        quiz: Quiz(id: "con301_q", passPercent: 80, questions: [
            Question(id: "con301_q1", prompt: "Marbury v. Madison established:", choices: ["Executive privilege", "Congressional immunity", "The power of the presidential veto", "Judicial review"], correctIndex: 3, explanation: "Marbury v. Madison established judicial review — the power of courts to declare laws unconstitutional."),
            Question(id: "con301_q2", prompt: "The Chief Justice who decided Marbury was:", choices: ["John Jay", "John Marshall", "Roger Taney", "Oliver Wendell Holmes"], correctIndex: 1, explanation: "Chief Justice John Marshall authored the opinion that created judicial review."),
            Question(id: "con301_q3", type: .scenario, prompt: "Why did no one challenge Marshall's power grab in Marbury?", choices: ["The Constitution explicitly grants judicial review", "Everyone agreed with the decision", "The immediate result favored Jefferson, so he didn't fight it", "Congress passed a law confirming it"], correctIndex: 2, explanation: "Marshall ruled against Marbury (which Jefferson wanted) while claiming the larger power of judicial review — a strategic masterpiece."),
            Question(id: "con301_q4", type: .fillBlank, prompt: "Judicial review is _____ stated in the Constitution.", choices: ["Explicitly", "Not explicitly", "Repeatedly", "Never"], correctIndex: 1, explanation: "The power of judicial review is not explicitly written in the Constitution — it was established by the Marshall Court's interpretation.")
        ]),
        flashcards: [
            Flashcard(id: "con301_f1", front: "Marbury v. Madison (1803)", back: "The landmark case establishing judicial review — the power of courts to strike down unconstitutional laws"),
            Flashcard(id: "con301_f2", front: "Judicial Review", back: "The power of courts to declare laws or government actions unconstitutional — established in Marbury v. Madison"),
            Flashcard(id: "con301_f3", front: "Chief Justice John Marshall", back: "Fourth Chief Justice who established judicial review and shaped the early power of the federal judiciary")
        ],
        tags: ["landmark", "judicial review", "cases"]
    )

    static let lesson11 = Lesson(
        id: "con_t3_02",
        categoryId: .constitution,
        tier: 3,
        lessonNumber: 2,
        title: "The Civil War Amendments",
        subtitle: "13th, 14th, and 15th — rebuilding the republic",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["con_t3_01"],
        contentBlocks: [
            ContentBlock(id: "con302_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "The 13th, 14th, and 15th Amendments fundamentally reshaped the Constitution after the Civil War.",
                "The 14th Amendment's Due Process and Equal Protection clauses are the basis for most modern constitutional litigation."
            ]),
            ContentBlock(id: "con302_b2", type: .componentBreakdown, title: "The Three Amendments", bullets: [
                "13th Amendment (1865) — Abolishes slavery and involuntary servitude, except as punishment for crime.",
                "14th Amendment (1868) — Defines citizenship. Due Process Clause. Equal Protection Clause. Applies Bill of Rights to states (incorporation).",
                "15th Amendment (1870) — Prohibits denying the right to vote based on race, color, or previous condition of servitude."
            ]),
            ContentBlock(id: "con302_b3", type: .howItWorks, title: "The 14th Amendment's Power", bullets: [
                "Due Process Clause — No state shall deprive any person of life, liberty, or property without due process of law.",
                "Equal Protection Clause — No state shall deny any person equal protection of the laws.",
                "These clauses are the foundation of modern civil rights law, privacy rights, and incorporation of the Bill of Rights.",
                "Section 5 gives Congress the power to enforce the amendment through legislation."
            ]),
            ContentBlock(id: "con302_b4", type: .summary, title: "Summary", bullets: [
                "Three amendments that transformed the Constitution from a document tolerating slavery to one demanding equality.",
                "The 14th Amendment is the most litigated provision in the entire Constitution.",
                "Equal protection and due process are the twin pillars of modern constitutional rights."
            ])
        ],
        quiz: Quiz(id: "con302_q", passPercent: 80, questions: [
            Question(id: "con302_q1", prompt: "Which amendment abolished slavery?", choices: ["12th", "14th", "13th", "15th"], correctIndex: 2, explanation: "The 13th Amendment (1865) abolished slavery and involuntary servitude."),
            Question(id: "con302_q2", prompt: "The Equal Protection Clause is found in the:", choices: ["Bill of Rights", "Article III", "15th Amendment", "14th Amendment"], correctIndex: 3, explanation: "The Equal Protection Clause is part of the 14th Amendment."),
            Question(id: "con302_q3", prompt: "The most litigated provision in the Constitution is:", choices: ["The First Amendment", "The Second Amendment", "The 14th Amendment", "Article I"], correctIndex: 2, explanation: "The 14th Amendment's Due Process and Equal Protection Clauses are the foundation of more constitutional litigation than any other provision."),
            Question(id: "con302_q4", type: .scenario, prompt: "A state law treats one racial group differently than another. Which clause is most directly relevant?", choices: ["Free Exercise Clause", "Commerce Clause", "Supremacy Clause", "Equal Protection Clause"], correctIndex: 3, explanation: "The Equal Protection Clause of the 14th Amendment prohibits states from denying equal protection of the laws.")
        ]),
        flashcards: [
            Flashcard(id: "con302_f1", front: "13th Amendment", back: "Abolishes slavery and involuntary servitude (1865)"),
            Flashcard(id: "con302_f2", front: "14th Amendment", back: "Defines citizenship, establishes due process and equal protection, incorporates Bill of Rights against states (1868)"),
            Flashcard(id: "con302_f3", front: "15th Amendment", back: "Prohibits denying the right to vote based on race, color, or previous condition of servitude (1870)"),
            Flashcard(id: "con302_f4", front: "Equal Protection Clause", back: "14th Amendment provision requiring states to treat all persons equally under the law")
        ],
        tags: ["civil war", "amendments", "reconstruction"]
    )

    static let lesson12 = Lesson(
        id: "con_t3_03",
        categoryId: .constitution,
        tier: 3,
        lessonNumber: 3,
        title: "How to Read a Constitutional Dispute",
        subtitle: "Capstone: the analytical framework",
        estimatedMinutes: 10,
        difficulty: 3,
        prerequisites: ["con_t3_02"],
        contentBlocks: [
            ContentBlock(id: "con303_b1", type: .whyMatters, title: "Why This Matters", bullets: [
                "Every political argument about 'what's constitutional' is a claim about structure, text, or precedent.",
                "With this framework, you can evaluate those claims instead of just reacting to them."
            ]),
            ContentBlock(id: "con303_b2", type: .howItWorks, title: "The Analytical Framework", bullets: [
                "Step 1: What constitutional provision is at issue? (Text)",
                "Step 2: What does the text actually say? Read it. Don't assume.",
                "Step 3: What is the historical understanding? (Original meaning, framing debates)",
                "Step 4: What have courts said about it? (Precedent)",
                "Step 5: What level of scrutiny applies? (Rational basis, intermediate, strict)",
                "Step 6: Does the government action survive that scrutiny?"
            ]),
            ContentBlock(id: "con303_b3", type: .componentBreakdown, title: "Levels of Scrutiny", bullets: [
                "Rational Basis — Government only needs a legitimate interest and a rational connection. Most laws pass this easily.",
                "Intermediate Scrutiny — Government must show an important interest and that the law is substantially related. Used for gender discrimination.",
                "Strict Scrutiny — Government must show a compelling interest and the law must be narrowly tailored. Used for race, religion, fundamental rights. Very hard to pass."
            ]),
            ContentBlock(id: "con303_b4", type: .summary, title: "Summary", bullets: [
                "Read the text. Check the history. Review the precedent. Identify the scrutiny level.",
                "This is how constitutional lawyers and judges actually analyze disputes.",
                "You don't need a law degree to use this framework — just discipline and intellectual honesty."
            ])
        ],
        quiz: Quiz(id: "con303_q", passPercent: 80, questions: [
            Question(id: "con303_q1", prompt: "Strict scrutiny requires the government to show:", choices: ["Any rational reason", "An important interest", "A compelling interest with narrow tailoring", "Majority public support"], correctIndex: 2, explanation: "Strict scrutiny — the highest level — requires a compelling government interest and narrowly tailored means."),
            Question(id: "con303_q2", prompt: "Rational basis review is:", choices: ["The hardest standard to meet", "The easiest standard for the government to meet", "Only used for criminal cases", "Applied only to federal laws"], correctIndex: 1, explanation: "Rational basis is the most deferential standard — the government only needs a legitimate interest and rational connection."),
            Question(id: "con303_q3", type: .scenario, prompt: "A law treats people differently based on race. What level of scrutiny applies?", choices: ["Rational basis", "Intermediate scrutiny", "No scrutiny", "Strict scrutiny"], correctIndex: 3, explanation: "Race-based classifications trigger strict scrutiny — the government must show a compelling interest and narrow tailoring."),
            Question(id: "con303_q4", type: .fillBlank, prompt: "The first step in analyzing a constitutional dispute is identifying the _____ at issue.", choices: ["Politician", "Court", "Constitutional provision", "Political party"], correctIndex: 2, explanation: "Start with the text — identify which specific constitutional provision is being invoked or challenged.")
        ]),
        flashcards: [
            Flashcard(id: "con303_f1", front: "Strict Scrutiny", back: "Highest standard of judicial review — requires compelling interest and narrow tailoring. Applied to race, religion, and fundamental rights."),
            Flashcard(id: "con303_f2", front: "Intermediate Scrutiny", back: "Middle standard — requires important interest and substantial relation. Applied to gender discrimination."),
            Flashcard(id: "con303_f3", front: "Rational Basis Review", back: "Lowest standard — requires only a legitimate interest and rational connection. Most laws survive this test."),
            Flashcard(id: "con303_f4", front: "Narrow Tailoring", back: "The requirement that a law be specifically designed to achieve its stated purpose without being overly broad")
        ],
        tags: ["analysis", "scrutiny", "capstone"]
    )
}
