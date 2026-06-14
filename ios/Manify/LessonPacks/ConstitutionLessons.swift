import Foundation

enum ConstitutionLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12,
        lesson13, lesson14, lesson15, lesson16,
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "const_t1_01",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 1,
        title: "What the Constitution Actually Is",
        subtitle: "The operating system of American government",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "const101_b1", type: .whyMatters, title: "Why Constitutional Literacy Is Leverage", bullets: [
                "The Constitution is the operating system of the United States. Every law, court ruling, and executive action flows from it or is checked against it.",
                "If you do not understand it, you cannot evaluate what any politician, judge, or agency is actually allowed to do.",
                "Constitutional illiteracy makes you easy to manipulate. Knowing the rules lets you call the bluff when someone claims a power they do not have.",
                "It is the shortest founding document of any major nation: roughly 4,500 words in the original, plus 27 amendments."
            ], body: "This is not abstract civics. It is the rulebook for who can do what to whom in your country."),
            ContentBlock(id: "const101_b2", type: .history, title: "From the Articles to Philadelphia", bullets: [
                "The first U.S. government ran under the Articles of Confederation (1781), which created a weak central government that could not tax or enforce.",
                "Shays' Rebellion (1786-87) exposed how powerless the federal government was to keep order.",
                "55 delegates met in Philadelphia in the summer of 1787 to fix it and ended up writing an entirely new document.",
                "It was signed September 17, 1787, ratified by the ninth state (New Hampshire) in 1788, and the government launched in 1789."
            ]),
            ContentBlock(id: "const101_b3", type: .howItWorks, title: "A Framework, Not a Rulebook for Daily Life", bullets: [
                "The Constitution is a framework that sets boundaries. It does not list most specific policies.",
                "It creates three branches, distributes power between the federal government and the states, and limits government through enumerated powers.",
                "Laws must be consistent with it, or courts can strike them down.",
                "It can be amended, but the process is deliberately hard: supermajorities in Congress plus ratification by three-fourths of the states."
            ]),
            ContentBlock(id: "const101_b4", type: .commonMistakes, title: "Three Myths to Drop Now", bullets: [
                "Myth: The Constitution grants you rights. Reality: it restrains government from infringing on rights it treats as pre-existing.",
                "Myth: It governs how private companies and people treat each other. Reality: it mostly constrains government action, not private conduct.",
                "Myth: The Declaration of Independence is part of the Constitution. Reality: they are separate documents, written 11 years apart, with different legal force."
            ], callouts: ["The Declaration declared why we separated from Britain. The Constitution is the machine that runs the country."]),
            ContentBlock(id: "const101_b5", type: .summary, title: "The One-Sentence Takeaway", bullets: [
                "The Constitution is a structural document that creates, limits, and balances federal power.",
                "It replaced the Articles of Confederation because the first system was too weak to govern.",
                "Understanding it is the baseline for evaluating any claim about American government."
            ])
        ],
        quiz: Quiz(id: "const101_q", passPercent: 80, questions: [
            Question(id: "const101_q1", type: .scenario, prompt: "A politician claims a new law is \"unconstitutional.\" What does that actually mean?", choices: ["The law is unpopular with voters", "The law conflicts with a provision of the Constitution and can be struck down by courts", "The President personally disagrees with it", "Congress passed it too quickly"], correctIndex: 1, explanation: "\"Unconstitutional\" means the law conflicts with the Constitution and can be invalidated by courts through judicial review. Popularity has nothing to do with it."),
            Question(id: "const101_q2", type: .multipleChoice, prompt: "What governing system did the Constitution replace?", choices: ["The Magna Carta", "The Federalist Papers", "The Declaration of Independence", "The Articles of Confederation"], correctIndex: 3, explanation: "The Constitution replaced the Articles of Confederation, whose weak central government could not tax or enforce laws."),
            Question(id: "const101_q3", type: .multiSelect, prompt: "Which statements about the Constitution are TRUE?", choices: ["It restrains government rather than granting rights", "It is roughly 4,500 words in its original form", "It directly regulates how private citizens treat each other", "It can be amended through a deliberately difficult process", "It is the same document as the Declaration of Independence"], correctIndices: [0, 1, 3], explanation: "The Constitution restrains government, is famously short, and is amendable through a hard process. It mostly does not regulate private conduct and is a separate document from the Declaration."),
            Question(id: "const101_q4", prompt: "The Constitution does not grant rights. It ____ the government from infringing on them.", acceptedAnswers: ["restricts", "restrict", "limits", "restrains", "prevents", "prohibits"], explanation: "The Constitution restricts and limits government power, protecting rights it treats as pre-existing."),
            Question(id: "const101_q5", prompt: "Match each concept to its description.", matchingPairs: [
                MatchingPair(left: "Articles of Confederation", right: "The weak first U.S. government, replaced in 1789"),
                MatchingPair(left: "Enumerated Powers", right: "Powers explicitly listed in the Constitution"),
                MatchingPair(left: "Bill of Rights", right: "First ten amendments protecting liberties"),
                MatchingPair(left: "Ratification", right: "Formal state approval of the document or an amendment")
            ], explanation: "These are foundational concepts of American constitutional structure.")
        ]),
        flashcards: [
            Flashcard(id: "const101_f1", front: "Articles of Confederation", back: "The first U.S. governing document (1781), replaced by the Constitution in 1789 due to a central government too weak to tax or enforce."),
            Flashcard(id: "const101_f2", front: "Enumerated Powers", back: "Specific powers explicitly listed in the Constitution as belonging to the federal government."),
            Flashcard(id: "const101_f3", front: "Bill of Rights", back: "The first ten amendments to the Constitution, protecting individual liberties from government overreach."),
            Flashcard(id: "const101_f4", front: "Ratification", back: "The formal approval process. The Constitution required nine of thirteen states; amendments require three-fourths.")
        ],
        tags: ["structure", "history", "basics"]
    )

    static let lesson2 = Lesson(
        id: "const_t1_02",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 2,
        title: "The Three Branches",
        subtitle: "Who makes, enforces, and interprets the law",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["const_t1_01"],
        contentBlocks: [
            ContentBlock(id: "const102_b1", type: .whyMatters, title: "Know Which Branch Does What", bullets: [
                "Articles I, II, and III create the three branches. Every federal action traces back to one of them.",
                "If you cannot say which branch is responsible, you cannot judge whether an action is legitimate or out of bounds.",
                "Most viral political outrage comes from people assigning a power to the wrong branch."
            ]),
            ContentBlock(id: "const102_b2", type: .componentBreakdown, title: "Legislative, Executive, Judicial", bullets: [
                "Article I - Legislative (Congress): makes laws. Bicameral: the Senate (100 members) and the House (435 members). Controls taxing, spending, commerce, and declaring war.",
                "Article II - Executive (President): enforces laws. Commander-in-chief, makes treaties with Senate approval, nominates judges and officials.",
                "Article III - Judicial (Supreme Court plus federal courts): interprets laws and resolves disputes. Federal judges serve life terms during \"good behavior.\"",
                "The order is intentional: the framers listed the lawmaking branch first because it was expected to be the most powerful."
            ]),
            ContentBlock(id: "const102_b3", type: .howItWorks, title: "The Flow of a Government Action", bullets: [
                "Congress writes and passes legislation.",
                "The President signs or vetoes bills, directs federal agencies, and commands the military.",
                "Courts resolve disputes about what the law means and whether it is constitutional.",
                "Each branch holds tools that constrain the others, which is the separation of powers in action."
            ]),
            ContentBlock(id: "const102_b4", type: .commonMistakes, title: "Powers People Routinely Misassign", bullets: [
                "The President cannot make law. An executive order directs the executive branch; it is not legislation and cannot override a statute.",
                "The Supreme Court cannot enforce its own rulings. It depends on the executive branch to carry them out.",
                "Congress can override a presidential veto with a two-thirds vote in both chambers."
            ], callouts: ["When someone says \"the President banned X,\" ask whether they mean an order to agencies or an actual law. The difference is everything."]),
            ContentBlock(id: "const102_b5", type: .summary, title: "The Map in One Line", bullets: [
                "Article I makes law, Article II enforces law, Article III interprets law.",
                "Each branch has distinct powers and built-in limits.",
                "The structure is designed so no single branch can dominate."
            ])
        ],
        quiz: Quiz(id: "const102_q", passPercent: 80, questions: [
            Question(id: "const102_q1", prompt: "Match each Article to the branch it creates and its core job.", matchingPairs: [
                MatchingPair(left: "Article I", right: "Legislative - makes law"),
                MatchingPair(left: "Article II", right: "Executive - enforces law"),
                MatchingPair(left: "Article III", right: "Judicial - interprets law")
            ], explanation: "Articles I, II, and III create the three branches in order: legislative, executive, judicial."),
            Question(id: "const102_q2", type: .scenario, prompt: "The President vetoes a bill that Congress strongly supports. What is Congress's recourse?", choices: ["Sue the President in court", "Override the veto with two-thirds of both chambers", "Call a national referendum", "Wait for the next President"], correctIndex: 1, explanation: "Congress can override a presidential veto with a two-thirds supermajority in both the House and the Senate."),
            Question(id: "const102_q3", type: .multiSelect, prompt: "Which powers belong to Congress under Article I?", choices: ["Declaring war", "Commanding the military", "Taxing and spending", "Nominating federal judges", "Regulating interstate commerce"], correctIndices: [0, 2, 4], explanation: "Congress declares war, taxes, spends, and regulates commerce. The President commands the military and nominates judges."),
            Question(id: "const102_q4", prompt: "Federal judges serve ____ terms to insulate them from political pressure.", acceptedAnswers: ["life", "lifetime", "for life", "lifelong"], explanation: "Article III judges serve for life during good behavior, which protects judicial independence from elections and reappointment."),
            Question(id: "const102_q5", type: .scenario, prompt: "A friend says \"the President made it illegal to do X by executive order.\" What is the most accurate correction?", choices: ["Executive orders are how all laws are made", "An executive order directs the executive branch and cannot create criminal law by itself", "The President can override any statute with an order", "Executive orders require Supreme Court approval first"], correctIndex: 1, explanation: "Executive orders direct the executive branch and must rest on existing constitutional or statutory authority. They are not a substitute for legislation passed by Congress.")
        ]),
        flashcards: [
            Flashcard(id: "const102_f1", front: "Article I", back: "Creates the Legislative Branch (Congress), which makes law. Bicameral: Senate and House."),
            Flashcard(id: "const102_f2", front: "Article II", back: "Creates the Executive Branch (President), which enforces law and commands the military."),
            Flashcard(id: "const102_f3", front: "Article III", back: "Creates the Judicial Branch (Supreme Court and federal courts), which interprets law."),
            Flashcard(id: "const102_f4", front: "Bicameral Legislature", back: "A two-chamber legislature. In the U.S., the 100-member Senate and the 435-member House.")
        ],
        tags: ["branches", "structure", "basics"]
    )

    static let lesson3 = Lesson(
        id: "const_t1_03",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 3,
        title: "Separation of Powers",
        subtitle: "Why no branch rules alone",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["const_t1_02"],
        contentBlocks: [
            ContentBlock(id: "const103_b1", type: .whyMatters, title: "The Whole Design Is Anti-Tyranny", bullets: [
                "The entire structure of American government is built to stop any one person or body from accumulating too much power.",
                "When you hear \"checks and balances,\" this is what it means in practice.",
                "James Madison's argument in Federalist No. 51: \"Ambition must be made to counteract ambition.\" The system uses self-interest against itself."
            ]),
            ContentBlock(id: "const103_b2", type: .principles, title: "Each Branch Holds Leverage", bullets: [
                "Congress passes laws, but the President can veto them.",
                "The President enforces laws, but Congress controls funding and can impeach and remove.",
                "Courts interpret laws, but the President nominates judges and the Senate confirms them.",
                "Courts can declare a law unconstitutional, but Congress and the states can amend the Constitution to override the result."
            ], body: "Power is not separated into sealed boxes. It is shared in overlapping ways so each branch can resist the others."),
            ContentBlock(id: "const103_b3", type: .realWorld, title: "Checks in Action", bullets: [
                "Budget standoffs: Congress can defund an executive program it opposes.",
                "Confirmation fights: the Senate can refuse to confirm a President's nominees.",
                "Veto and override: a President blocks a bill, Congress can muster two-thirds to pass it anyway.",
                "Impeachment: the House impeaches and the Senate tries officials, including the President."
            ]),
            ContentBlock(id: "const103_b4", type: .failureModes, title: "When the System Strains", bullets: [
                "When one branch defers too much to another, the balance erodes.",
                "Aggressive use of executive orders to act without Congress.",
                "Congressional gridlock that pressures the executive to act unilaterally.",
                "Delegation of broad rulemaking power to agencies, blurring who actually makes the rules."
            ], callouts: ["The system is designed to work through tension, not harmony. Friction between branches is a feature, not a bug."]),
            ContentBlock(id: "const103_b5", type: .summary, title: "The Core Idea", bullets: [
                "Separation of powers divides government functions among three branches.",
                "Checks and balances let each branch limit the others.",
                "The point is to prevent concentrated power, even at the cost of efficiency."
            ])
        ],
        quiz: Quiz(id: "const103_q", passPercent: 80, questions: [
            Question(id: "const103_q1", prompt: "Match each branch to a check it holds over another.", matchingPairs: [
                MatchingPair(left: "President over Congress", right: "Veto power"),
                MatchingPair(left: "Congress over President", right: "Impeachment and budget control"),
                MatchingPair(left: "Courts over Congress", right: "Declaring laws unconstitutional"),
                MatchingPair(left: "Senate over Courts", right: "Confirming or rejecting judicial nominees")
            ], explanation: "Each branch has specific tools to check the power of the others, creating mutual accountability."),
            Question(id: "const103_q2", type: .scenario, prompt: "The executive branch starts issuing rules that effectively create new criminal penalties without any act of Congress. This is best described as:", choices: ["Judicial review", "Executive overreach that strains separation of powers", "A proper use of the veto", "The system working as designed"], correctIndex: 1, explanation: "When the executive creates law-like rules without congressional authority, it strains the separation of powers."),
            Question(id: "const103_q3", type: .multiSelect, prompt: "Which are legitimate checks Congress holds over other branches?", choices: ["Impeaching and removing officials", "Vetoing court decisions directly", "Controlling federal spending", "Personally appointing judges without the President", "Confirming judicial nominees"], correctIndices: [0, 2, 4], explanation: "Congress can impeach, control the budget, and the Senate confirms judges. Congress cannot veto court rulings or appoint judges by itself."),
            Question(id: "const103_q4", prompt: "Madison argued that \"ambition must be made to counteract ____.\"", acceptedAnswers: ["ambition"], explanation: "In Federalist No. 51, Madison argued the structure should pit the self-interest of each branch against the others.")
        ]),
        flashcards: [
            Flashcard(id: "const103_f1", front: "Separation of Powers", back: "Dividing government responsibilities among the legislative, executive, and judicial branches."),
            Flashcard(id: "const103_f2", front: "Checks and Balances", back: "The system letting each branch limit the powers of the others to prevent concentration of power."),
            Flashcard(id: "const103_f3", front: "Impeachment", back: "The House charges (impeaches) an official; the Senate tries and can remove them from office."),
            Flashcard(id: "const103_f4", front: "Federalist No. 51", back: "Madison's essay arguing the structure should make \"ambition counteract ambition\" to control government.")
        ],
        tags: ["separation", "checks", "structure"]
    )

    static let lesson4 = Lesson(
        id: "const_t1_04",
        categoryId: .constitution,
        tier: 1,
        lessonNumber: 4,
        title: "The Bill of Rights Overview",
        subtitle: "The first ten amendments that protect you",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["const_t1_03"],
        contentBlocks: [
            ContentBlock(id: "const104_b1", type: .whyMatters, title: "Your Direct Shield Against Government", bullets: [
                "The Bill of Rights is the direct shield between you and government overreach.",
                "These ten amendments were the price of ratification. Several states refused to approve the Constitution without a promise to add them.",
                "They were drafted by James Madison and ratified in 1791, two years after the government began."
            ]),
            ContentBlock(id: "const104_b2", type: .componentBreakdown, title: "The Ten, In Plain Language", bullets: [
                "1st - Speech, religion, press, assembly, and petition.",
                "2nd - The right to keep and bear arms.",
                "3rd - No quartering of soldiers in private homes.",
                "4th - Protection against unreasonable searches and seizures.",
                "5th - Due process, no self-incrimination, no double jeopardy, eminent domain limits.",
                "6th - Speedy public trial, an attorney, and confronting witnesses.",
                "7th - Jury trial in civil cases.",
                "8th - No cruel and unusual punishment, no excessive bail or fines.",
                "9th - Rights not listed still exist (unenumerated rights).",
                "10th - Powers not given to the federal government are reserved to the states or the people."
            ]),
            ContentBlock(id: "const104_b3", type: .howItWorks, title: "From Federal-Only to Nationwide", bullets: [
                "Originally, the Bill of Rights restrained only the federal government, not the states.",
                "Through \"incorporation\" under the 14th Amendment, most protections now also apply to state and local governments.",
                "Rights are not absolute. Courts balance them against compelling government interests using levels of scrutiny."
            ], callouts: ["A right being \"incorporated\" means a state, not just Washington, must respect it."]),
            ContentBlock(id: "const104_b4", type: .summary, title: "Why This Is Not Optional Knowledge", bullets: [
                "Ten amendments define the boundary of government power over the individual.",
                "They protect speech, arms, privacy, due process, and reserve unlisted rights.",
                "A competent citizen can name what each one does without looking it up."
            ])
        ],
        quiz: Quiz(id: "const104_q", passPercent: 80, questions: [
            Question(id: "const104_q1", prompt: "Match each amendment to what it protects.", matchingPairs: [
                MatchingPair(left: "1st Amendment", right: "Speech, religion, press, assembly"),
                MatchingPair(left: "2nd Amendment", right: "Right to keep and bear arms"),
                MatchingPair(left: "4th Amendment", right: "Protection from unreasonable searches"),
                MatchingPair(left: "5th Amendment", right: "Due process and no self-incrimination")
            ], explanation: "Each amendment in the Bill of Rights protects specific liberties from government overreach."),
            Question(id: "const104_q2", type: .scenario, prompt: "Police search your home with no warrant, no probable cause, and no consent. Which amendment is most directly violated?", choices: ["First Amendment", "Tenth Amendment", "Fourth Amendment", "Eighth Amendment"], correctIndex: 2, explanation: "The Fourth Amendment requires warrants based on probable cause for government searches and seizures."),
            Question(id: "const104_q3", type: .multiSelect, prompt: "Which statements about the Bill of Rights are TRUE?", choices: ["It originally restrained only the federal government", "It grants rights that did not exist before", "It was a condition of the Constitution's ratification", "It makes all rights absolute with no limits", "It was extended to the states through incorporation"], correctIndices: [0, 2, 4], explanation: "It originally bound only the federal government, was the price of ratification, and was later incorporated against the states via the 14th Amendment. Rights are not unlimited."),
            Question(id: "const104_q4", prompt: "The Bill of Rights was ratified in the year ____.", acceptedAnswers: ["1791", "in 1791"], explanation: "The first ten amendments were ratified in 1791, two years after the new government launched."),
            Question(id: "const104_q5", type: .multipleChoice, prompt: "The Ninth Amendment matters because it establishes that:", choices: ["All rights are explicitly listed", "States have no reserved powers", "Rights not listed in the Constitution still exist", "The President can create new amendments"], correctIndex: 2, explanation: "The Ninth Amendment preserves unenumerated rights. A right not listed is not therefore denied.")
        ]),
        flashcards: [
            Flashcard(id: "const104_f1", front: "Incorporation Doctrine", back: "The process applying most Bill of Rights protections to state governments through the 14th Amendment."),
            Flashcard(id: "const104_f2", front: "Due Process", back: "The guarantee that government must follow fair procedures before depriving someone of life, liberty, or property."),
            Flashcard(id: "const104_f3", front: "Eminent Domain", back: "Government's power to take private property for public use, requiring just compensation under the Fifth Amendment."),
            Flashcard(id: "const104_f4", front: "Tenth Amendment", back: "Reserves powers not delegated to the federal government to the states or the people.")
        ],
        tags: ["bill of rights", "amendments", "rights"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "const_t2_01",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 1,
        title: "The First Amendment in Depth",
        subtitle: "Speech, religion, and the limits of government",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["const_t1_04"],
        contentBlocks: [
            ContentBlock(id: "const201_b1", type: .whyMatters, title: "Most Invoked, Most Misunderstood", bullets: [
                "The First Amendment is the most cited and most misquoted provision in American life.",
                "It restrains the government. It does not bind private platforms, employers, or neighbors.",
                "Getting this right keeps you from making confident arguments that are simply wrong."
            ]),
            ContentBlock(id: "const201_b2", type: .componentBreakdown, title: "Five Distinct Protections", bullets: [
                "Free Speech - government cannot punish you for expressing ideas, with narrow exceptions.",
                "Free Press - government cannot censor or license journalism.",
                "Establishment Clause - government cannot set up an official religion or favor one.",
                "Free Exercise Clause - government cannot prohibit religious practice without a compelling reason.",
                "Assembly and Petition - the right to gather peacefully and ask the government to change."
            ]),
            ContentBlock(id: "const201_b3", type: .keyTerms, title: "The Narrow Exceptions to Speech", bullets: [
                "Incitement - speech directed at producing imminent lawless action that is likely to occur (Brandenburg v. Ohio).",
                "True threats - serious expressions of intent to commit violence against a person.",
                "Obscenity - a narrow category defined by the Miller test, distinct from offensive or adult content.",
                "Defamation - knowingly false statements of fact that damage reputation.",
                "Prior restraint - government censorship before speech happens, which is almost always unconstitutional."
            ]),
            ContentBlock(id: "const201_b4", type: .commonMistakes, title: "What the First Amendment Does NOT Do", bullets: [
                "A private company removing your post is not a First Amendment violation. The amendment only restricts government action.",
                "\"Hate speech\" is not a legal exception. The Supreme Court has repeatedly held there is no hate speech carve-out.",
                "The right to protest does not include blocking roads, trespassing, or destroying property.",
                "Free speech does not mean freedom from criticism or consequences from other private people."
            ], callouts: ["Education only. This is not legal advice. If your speech rights are at stake in a real dispute, consult a qualified attorney."]),
            ContentBlock(id: "const201_b5", type: .summary, title: "The Working Model", bullets: [
                "Five freedoms: speech, press, establishment, free exercise, assembly and petition.",
                "It binds government, not private actors.",
                "Exceptions exist but are narrow and defined by specific court tests."
            ])
        ],
        quiz: Quiz(id: "const201_q", passPercent: 80, questions: [
            Question(id: "const201_q1", type: .scenario, prompt: "A social media company removes your political post. Is this a First Amendment violation?", choices: ["Yes, any speech suppression violates it", "Only if the post was factually accurate", "No, the First Amendment restricts government, not private companies", "Only if you paid for a subscription"], correctIndex: 2, explanation: "Private companies are not bound by the First Amendment. It restrains government action only."),
            Question(id: "const201_q2", type: .multiSelect, prompt: "Which are the five protections within the First Amendment?", choices: ["Free speech", "Right to bear arms", "Free press", "Free exercise of religion", "Assembly and petition", "Establishment clause"], correctIndices: [0, 2, 3, 4, 5], explanation: "The First Amendment protects speech, press, the establishment limit, free exercise, and assembly and petition. Arms is the Second Amendment."),
            Question(id: "const201_q3", prompt: "Government censorship of speech BEFORE it is expressed is called ____.", acceptedAnswers: ["prior restraint", "prior restraints", "prior-restraint"], explanation: "Prior restraint is government censorship before expression and is almost always unconstitutional."),
            Question(id: "const201_q4", prompt: "Match each speech-related concept to its meaning.", matchingPairs: [
                MatchingPair(left: "Establishment Clause", right: "No official government religion"),
                MatchingPair(left: "Free Exercise Clause", right: "Protects religious practice"),
                MatchingPair(left: "Incitement", right: "Speech aimed at imminent lawless action"),
                MatchingPair(left: "Defamation", right: "Knowingly false facts that harm reputation")
            ], explanation: "These distinct doctrines define what the First Amendment covers and where its narrow limits lie."),
            Question(id: "const201_q5", type: .scenario, prompt: "Someone insists \"hate speech\" is a crime under the First Amendment. The most accurate response is:", choices: ["Correct, hate speech is always illegal", "Only online hate speech is illegal", "There is no hate speech exception; speech is protected unless it fits a narrow category like incitement or true threats", "It depends on the state's hate speech statute"], correctIndex: 2, explanation: "The Supreme Court has consistently held there is no hate speech exception. Offensive speech is protected unless it falls into a narrow, defined category.")
        ]),
        flashcards: [
            Flashcard(id: "const201_f1", front: "Establishment Clause", back: "Bars government from establishing an official religion or favoring one religion over another."),
            Flashcard(id: "const201_f2", front: "Free Exercise Clause", back: "Protects the right to practice religion without government interference, absent a compelling reason."),
            Flashcard(id: "const201_f3", front: "Prior Restraint", back: "Government censorship of speech before it is expressed; almost always unconstitutional."),
            Flashcard(id: "const201_f4", front: "Brandenburg Test", back: "Speech can be punished as incitement only if it is directed to and likely to produce imminent lawless action.")
        ],
        tags: ["first amendment", "speech", "religion"]
    )

    static let lesson6 = Lesson(
        id: "const_t2_02",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 2,
        title: "The Amendments in Depth",
        subtitle: "From the 11th to the 27th",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["const_t2_01"],
        contentBlocks: [
            ContentBlock(id: "const202_b1", type: .whyMatters, title: "The Constitution Keeps Evolving", bullets: [
                "Beyond the Bill of Rights, 17 more amendments have reshaped the country.",
                "They expanded who can vote, who counts as a citizen, and how leaders are chosen.",
                "Knowing them lets you trace how rights you take for granted were actually won."
            ]),
            ContentBlock(id: "const202_b2", type: .componentBreakdown, title: "The Amendments That Expanded Democracy", bullets: [
                "13th (1865) - abolished slavery and involuntary servitude except as punishment for a crime.",
                "14th (1868) - defined citizenship and added due process and equal protection against the states.",
                "15th (1870) - the vote cannot be denied based on race.",
                "19th (1920) - the vote cannot be denied based on sex.",
                "24th (1964) - abolished the poll tax in federal elections.",
                "26th (1971) - set the voting age at 18."
            ]),
            ContentBlock(id: "const202_b3", type: .componentBreakdown, title: "Structural and Procedural Amendments", bullets: [
                "12th (1804) - separate electoral votes for President and Vice President.",
                "17th (1913) - direct election of senators by voters instead of state legislatures.",
                "22nd (1951) - limited the President to two terms.",
                "25th (1967) - presidential succession and disability procedures.",
                "27th (1992) - delays congressional pay raises until after the next election; ratified 202 years after it was proposed."
            ]),
            ContentBlock(id: "const202_b4", type: .realWorld, title: "Amendments That Were Reversed", bullets: [
                "18th (1919) - established Prohibition, banning alcohol nationwide.",
                "21st (1933) - repealed Prohibition. It is the only amendment to fully repeal a prior one.",
                "This proves a key point: the Constitution can correct its own mistakes through the same hard process."
            ], callouts: ["Only one amendment has ever been undone by another. The bar to change is high on purpose."]),
            ContentBlock(id: "const202_b5", type: .summary, title: "The Pattern Across 27 Amendments", bullets: [
                "The trend is mostly toward broader rights and broader voting.",
                "Some amendments fix structure (terms, succession, senators); some fix mistakes (Prohibition's repeal).",
                "Every one passed only through supermajorities, proving how much agreement real change requires."
            ])
        ],
        quiz: Quiz(id: "const202_q", passPercent: 80, questions: [
            Question(id: "const202_q1", prompt: "Match each amendment to what it accomplished.", matchingPairs: [
                MatchingPair(left: "13th Amendment", right: "Abolished slavery"),
                MatchingPair(left: "19th Amendment", right: "Women's right to vote"),
                MatchingPair(left: "22nd Amendment", right: "Two-term limit for President"),
                MatchingPair(left: "26th Amendment", right: "Voting age set at 18")
            ], explanation: "These amendments expanded voting and reshaped the presidency."),
            Question(id: "const202_q2", type: .multiSelect, prompt: "Which amendments expanded or protected the right to vote?", choices: ["15th (race)", "18th (Prohibition)", "19th (sex)", "24th (poll tax)", "26th (age 18)"], correctIndices: [0, 2, 3, 4], explanation: "The 15th, 19th, 24th, and 26th all expanded voting rights. The 18th established Prohibition and had nothing to do with voting."),
            Question(id: "const202_q3", prompt: "The only amendment to fully repeal another is the ____ Amendment.", acceptedAnswers: ["21st", "twenty-first", "twenty first", "21"], explanation: "The 21st Amendment repealed the 18th, ending Prohibition. It is the only repeal in the Constitution's history."),
            Question(id: "const202_q4", type: .scenario, prompt: "Before 1913, senators were chosen by state legislatures rather than voters. Which amendment changed that to direct election?", choices: ["12th Amendment", "17th Amendment", "22nd Amendment", "25th Amendment"], correctIndex: 1, explanation: "The 17th Amendment (1913) established the direct popular election of U.S. senators."),
            Question(id: "const202_q5", type: .multipleChoice, prompt: "Which amendment limited the President to two terms?", choices: ["12th", "20th", "22nd", "25th"], correctIndex: 2, explanation: "The 22nd Amendment (1951) limited the President to two elected terms, codifying a tradition broken in the 1940s.")
        ]),
        flashcards: [
            Flashcard(id: "const202_f1", front: "17th Amendment", back: "Established direct election of U.S. senators by voters (1913), replacing selection by state legislatures."),
            Flashcard(id: "const202_f2", front: "22nd Amendment", back: "Limited the President to two terms (1951)."),
            Flashcard(id: "const202_f3", front: "21st Amendment", back: "Repealed Prohibition (1933); the only amendment to fully repeal a prior one."),
            Flashcard(id: "const202_f4", front: "27th Amendment", back: "Delays congressional pay raises until after the next election; ratified in 1992, 202 years after proposal.")
        ],
        tags: ["amendments", "voting", "history"]
    )

    static let lesson7 = Lesson(
        id: "const_t2_03",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 3,
        title: "Federalism: State vs Federal Power",
        subtitle: "Who controls what, and why it matters daily",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["const_t2_02"],
        contentBlocks: [
            ContentBlock(id: "const203_b1", type: .whyMatters, title: "Most Law That Touches You Is State Law", bullets: [
                "Federalism decides which level of government controls what.",
                "Driving, property, most crime, marriage, and education are governed mainly by state law, not federal.",
                "Knowing this tells you which government to hold accountable when something affects you."
            ]),
            ContentBlock(id: "const203_b2", type: .componentBreakdown, title: "Three Kinds of Power", bullets: [
                "Enumerated (delegated) powers - listed for the federal government: coin money, regulate interstate commerce, declare war, run foreign policy.",
                "Reserved powers - kept by the states under the Tenth Amendment: police power, education, local elections, property law.",
                "Concurrent powers - shared by both: taxation, building roads, law enforcement, establishing courts."
            ]),
            ContentBlock(id: "const203_b3", type: .howItWorks, title: "How Conflicts Get Resolved", bullets: [
                "The Supremacy Clause (Article VI) makes valid federal law supreme over conflicting state law.",
                "But supremacy only applies when the federal government acts within its constitutional authority.",
                "The Commerce Clause has been the main engine for expanding federal power over the last century.",
                "States act as \"laboratories of democracy,\" testing different policies that others can copy or reject."
            ], callouts: ["Federal supremacy is not unlimited. It only wins when Congress had the power to act in the first place."]),
            ContentBlock(id: "const203_b4", type: .realWorld, title: "Federalism You See Every Day", bullets: [
                "Speed limits, drivers' licenses, and traffic law: state.",
                "Immigration and naturalization: federal.",
                "Public school curriculum and standards: mostly state and local.",
                "National defense and the military: federal.",
                "Marijuana policy: a live example where state law and federal law openly diverge."
            ]),
            ContentBlock(id: "const203_b5", type: .summary, title: "The Division in One Line", bullets: [
                "Federal power is enumerated; state power is reserved; some powers are shared.",
                "The Supremacy Clause resolves conflicts, but only inside federal jurisdiction.",
                "When in doubt about a daily-life law, assume it is state law first."
            ])
        ],
        quiz: Quiz(id: "const203_q", passPercent: 80, questions: [
            Question(id: "const203_q1", type: .scenario, prompt: "A state passes a law that directly contradicts a valid federal statute Congress had authority to enact. Under the Supremacy Clause:", choices: ["The state law wins inside state borders", "Both laws apply at once", "The federal law prevails because Congress acted within its authority", "Citizens choose which to follow"], correctIndex: 2, explanation: "The Supremacy Clause makes valid federal law supreme over conflicting state law, but only when Congress acted within its constitutional power."),
            Question(id: "const203_q2", prompt: "Powers not delegated to the federal government are reserved to the states by the ____ Amendment.", acceptedAnswers: ["tenth", "10th", "the tenth", "the 10th", "tenth amendment", "10th amendment"], explanation: "The Tenth Amendment reserves all non-delegated powers to the states or the people."),
            Question(id: "const203_q3", prompt: "Match each power category to its definition.", matchingPairs: [
                MatchingPair(left: "Enumerated Powers", right: "Specific federal powers listed in the Constitution"),
                MatchingPair(left: "Reserved Powers", right: "Powers kept by states under the 10th Amendment"),
                MatchingPair(left: "Concurrent Powers", right: "Powers shared by federal and state governments"),
                MatchingPair(left: "Supremacy Clause", right: "Valid federal law beats conflicting state law")
            ], explanation: "Federalism divides power through these categories, with the Supremacy Clause resolving direct conflicts."),
            Question(id: "const203_q4", type: .multiSelect, prompt: "Which of these are primarily governed by STATE law?", choices: ["Driver's licenses", "Immigration and naturalization", "Property and real estate law", "National defense", "Local elections"], correctIndices: [0, 2, 4], explanation: "Driver's licenses, property law, and local elections are state matters. Immigration and national defense are federal."),
            Question(id: "const203_q5", prompt: "The clause most responsible for expanding federal power over the last century is the ____ Clause.", acceptedAnswers: ["commerce", "the commerce", "interstate commerce"], explanation: "The Commerce Clause has been the primary tool for extending federal authority into many areas of economic life.")
        ]),
        flashcards: [
            Flashcard(id: "const203_f1", front: "Federalism", back: "A system dividing power between a central national government and constituent state governments."),
            Flashcard(id: "const203_f2", front: "Supremacy Clause", back: "Article VI provision making valid federal law supreme over conflicting state law."),
            Flashcard(id: "const203_f3", front: "Concurrent Powers", back: "Powers shared by both federal and state governments, such as taxation and law enforcement."),
            Flashcard(id: "const203_f4", front: "Commerce Clause", back: "Grants Congress power to regulate interstate commerce; the main basis for expanded federal authority.")
        ],
        tags: ["federalism", "states", "structure"]
    )

    static let lesson8 = Lesson(
        id: "const_t2_04",
        categoryId: .constitution,
        tier: 2,
        lessonNumber: 4,
        title: "How a Bill Becomes Law",
        subtitle: "The legislative process, and where bills die",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["const_t2_03"],
        contentBlocks: [
            ContentBlock(id: "const204_b1", type: .whyMatters, title: "Tell Real Policy From Theater", bullets: [
                "If you do not understand the legislative process, you cannot tell a serious proposal from political theater.",
                "Most bills die. Knowing where and why gives you structural intelligence about what will actually happen.",
                "Of roughly 10,000+ bills introduced each Congress, only a few hundred become law."
            ]),
            ContentBlock(id: "const204_b2", type: .stepByStep, title: "The Path of a Bill", bullets: [
                "Step 1: A bill is introduced in the House or the Senate by a member of Congress.",
                "Step 2: It is referred to committee, where most bills die without ever reaching a floor vote.",
                "Step 3: If reported out of committee, it goes to the full chamber for debate and a vote.",
                "Step 4: If one chamber passes it, the other chamber repeats the whole process.",
                "Step 5: Differences between the House and Senate versions are reconciled, often in a conference committee.",
                "Step 6: The final identical bill goes to the President to sign into law or veto.",
                "Step 7: Congress can override a veto with a two-thirds vote in both chambers."
            ]),
            ContentBlock(id: "const204_b3", type: .failureModes, title: "Where Bills Die", bullets: [
                "Committee - the graveyard of legislation. Most bills never leave.",
                "The filibuster in the Senate, which requires 60 votes to end debate (cloture).",
                "Conference disagreement, when the House and Senate cannot reconcile their versions.",
                "A presidential veto, which an override (two-thirds in both chambers) rarely defeats.",
                "A pocket veto, when the President declines to sign within 10 days and Congress has adjourned."
            ], callouts: ["A bill must pass both chambers in identical form. \"The House passed it\" is not the same as \"it became law.\""]),
            ContentBlock(id: "const204_b4", type: .summary, title: "The Process at a Glance", bullets: [
                "Bill, then committee, then floor vote, then the other chamber, then reconciliation, then the President.",
                "Most legislation dies in committee. The filibuster and veto are additional kill points.",
                "This is why so little of what is announced ever becomes law."
            ])
        ],
        quiz: Quiz(id: "const204_q", passPercent: 80, questions: [
            Question(id: "const204_q1", type: .scenario, prompt: "A senator talks for 14 hours straight to delay a vote. This tactic is called:", choices: ["Gerrymandering", "A filibuster", "Cloture", "A pocket veto"], correctIndex: 1, explanation: "A filibuster is extended debate in the Senate used to delay or block a vote on legislation."),
            Question(id: "const204_q2", prompt: "Ending a Senate filibuster (cloture) requires ____ votes.", acceptedAnswers: ["60", "sixty", "60 votes", "sixty votes"], explanation: "Cloture, which ends a filibuster, requires 60 votes in the Senate."),
            Question(id: "const204_q3", prompt: "Match each kill point to how it stops a bill.", matchingPairs: [
                MatchingPair(left: "Committee", right: "Most bills die here without a floor vote"),
                MatchingPair(left: "Filibuster", right: "Requires 60 Senate votes to end debate"),
                MatchingPair(left: "Presidential Veto", right: "Needs a two-thirds override in both chambers"),
                MatchingPair(left: "Conference Disagreement", right: "House and Senate cannot reconcile versions")
            ], explanation: "Legislation can be killed at multiple points, which is why so little passes."),
            Question(id: "const204_q4", type: .scenario, prompt: "The House passes a version of a bill different from the Senate's. What happens next?", choices: ["The President picks the preferred version", "The bill dies automatically", "A conference committee reconciles the differences into one version", "The Supreme Court arbitrates"], correctIndex: 2, explanation: "A conference committee of members from both chambers works to produce a single identical version both must pass."),
            Question(id: "const204_q5", prompt: "An indirect veto when the President does not sign within 10 days and Congress has adjourned is a ____ veto.", acceptedAnswers: ["pocket", "pocket veto", "a pocket"], explanation: "A pocket veto kills a bill when the President takes no action within 10 days and Congress has adjourned, leaving no chance for an override.")
        ]),
        flashcards: [
            Flashcard(id: "const204_f1", front: "Filibuster", back: "A Senate tactic of extended debate to delay or block a vote; requires 60 votes (cloture) to end."),
            Flashcard(id: "const204_f2", front: "Cloture", back: "A Senate vote of 60 members to end debate and proceed to a final vote."),
            Flashcard(id: "const204_f3", front: "Conference Committee", back: "A temporary joint committee that reconciles differences between House and Senate versions of a bill."),
            Flashcard(id: "const204_f4", front: "Pocket Veto", back: "An indirect veto when the President does not sign within 10 days and Congress has adjourned.")
        ],
        tags: ["legislation", "process", "congress"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "const_t3_01",
        categoryId: .constitution,
        tier: 3,
        lessonNumber: 1,
        title: "Judicial Review and Marbury v. Madison",
        subtitle: "How the courts seized their greatest power",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["const_t2_04"],
        contentBlocks: [
            ContentBlock(id: "const301_b1", type: .whyMatters, title: "The Most Important Case You Never Studied", bullets: [
                "Marbury v. Madison (1803) established judicial review: the power of courts to declare laws unconstitutional.",
                "That power is not explicitly written in the Constitution. Chief Justice John Marshall created it through interpretation.",
                "It is the single most consequential case in American constitutional law."
            ]),
            ContentBlock(id: "const301_b2", type: .context, title: "What Actually Happened", bullets: [
                "Outgoing President John Adams appointed William Marbury a justice of the peace in his final hours.",
                "The commission was signed but not delivered before Thomas Jefferson took office.",
                "Jefferson's Secretary of State, James Madison, refused to deliver it.",
                "Marbury sued directly in the Supreme Court under the Judiciary Act of 1789.",
                "Marshall ruled the provision granting the Court that original jurisdiction was itself unconstitutional, so the Court could not hear the case."
            ]),
            ContentBlock(id: "const301_b3", type: .proTips, title: "The Strategic Genius of the Ruling", bullets: [
                "By ruling against Marbury, Marshall avoided a direct clash with Jefferson, who would likely have ignored an order to deliver.",
                "But in the process he claimed a far larger power: the Court decides what the Constitution means.",
                "Nobody fought it, because the immediate outcome favored Jefferson. The long-term power grab went unchallenged.",
                "It is a textbook lesson in trading a small loss for an enormous institutional win."
            ], callouts: ["Watch for this move in real politics: giving an opponent today's headline while taking tomorrow's authority."]),
            ContentBlock(id: "const301_b4", type: .summary, title: "What to Remember", bullets: [
                "Marbury established judicial review, letting courts invalidate unconstitutional laws.",
                "The power is implied, not explicitly written, in the Constitution.",
                "Marshall's strategy created the judiciary's most potent weapon without firing a shot."
            ])
        ],
        quiz: Quiz(id: "const301_q", passPercent: 80, questions: [
            Question(id: "const301_q1", type: .scenario, prompt: "Marshall ruled AGAINST Marbury while establishing judicial review. Why was that strategically brilliant?", choices: ["It made the Court look weak and avoided notice", "The immediate result favored Jefferson, so no one challenged the larger power grab", "Congress had already approved judicial review", "Marshall was retiring and had nothing to lose"], correctIndex: 1, explanation: "Marshall handed Jefferson the outcome he wanted while quietly claiming the far greater power of judicial review, which no one then had reason to contest."),
            Question(id: "const301_q2", prompt: "Judicial review is ____ stated in the Constitution.", acceptedAnswers: ["not explicitly", "not", "implied", "not directly", "implicitly", "not stated"], explanation: "Judicial review is not explicitly written into the Constitution. Marshall established it through interpretation in Marbury."),
            Question(id: "const301_q3", type: .multipleChoice, prompt: "Which Chief Justice established judicial review?", choices: ["Oliver Wendell Holmes", "Roger Taney", "John Marshall", "John Jay"], correctIndex: 2, explanation: "Chief Justice John Marshall authored Marbury v. Madison (1803), establishing judicial review."),
            Question(id: "const301_q4", type: .multiSelect, prompt: "Which statements about Marbury v. Madison are TRUE?", choices: ["It was decided in 1803", "It struck down part of a federal law", "Judicial review was already explicit in the Constitution", "Marshall ruled against Marbury's claim", "It established the Court's power to declare laws unconstitutional"], correctIndices: [0, 1, 3, 4], explanation: "Marbury (1803) struck down part of the Judiciary Act and established judicial review. Marshall ruled against Marbury while claiming the larger institutional power.")
        ]),
        flashcards: [
            Flashcard(id: "const301_f1", front: "Marbury v. Madison (1803)", back: "Established judicial review, the power of courts to strike down unconstitutional laws."),
            Flashcard(id: "const301_f2", front: "Judicial Review", back: "The power of courts to declare laws or government actions unconstitutional."),
            Flashcard(id: "const301_f3", front: "Chief Justice John Marshall", back: "Authored Marbury v. Madison and shaped the early power of the federal judiciary."),
            Flashcard(id: "const301_f4", front: "Original Jurisdiction", back: "The authority to hear a case first, rather than on appeal. Marbury limited the Court's original jurisdiction to what the Constitution lists.")
        ],
        tags: ["landmark", "judicial review", "cases"]
    )

    static let lesson10 = Lesson(
        id: "const_t3_02",
        categoryId: .constitution,
        tier: 3,
        lessonNumber: 2,
        title: "Landmark Supreme Court Cases",
        subtitle: "The rulings that reshaped American life",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["const_t3_01"],
        contentBlocks: [
            ContentBlock(id: "const302_b1", type: .whyMatters, title: "Cases Are How the Constitution Comes Alive", bullets: [
                "The text is short. Its real meaning is built case by case over two centuries.",
                "A handful of landmark rulings shaped the rights you exercise daily, from the police stop to the school classroom.",
                "Knowing the cases lets you cite the actual rule instead of a vague feeling about it."
            ]),
            ContentBlock(id: "const302_b2", type: .componentBreakdown, title: "Cases Every Citizen Should Know", bullets: [
                "Brown v. Board of Education (1954) - ended legal racial segregation in public schools under the Equal Protection Clause.",
                "Gideon v. Wainwright (1963) - the state must provide a lawyer to defendants who cannot afford one.",
                "Miranda v. Arizona (1966) - police must inform suspects of their rights before custodial interrogation.",
                "Mapp v. Ohio (1961) - evidence from an illegal search cannot be used in state court (the exclusionary rule).",
                "Tinker v. Des Moines (1969) - students do not shed First Amendment rights at the schoolhouse gate."
            ]),
            ContentBlock(id: "const302_b3", type: .keyTerms, title: "Concepts the Cases Created", bullets: [
                "Exclusionary rule - illegally obtained evidence is generally barred from trial (Mapp).",
                "Right to counsel - the state must supply an attorney to the indigent (Gideon).",
                "Miranda warning - the script police read about silence and the right to an attorney (Miranda).",
                "Precedent (stare decisis) - courts generally follow prior rulings to keep the law stable.",
                "Overruling - the Court can reverse its own precedent, as Brown effectively did to Plessy v. Ferguson."
            ]),
            ContentBlock(id: "const302_b4", type: .commonMistakes, title: "What People Get Wrong About These Cases", bullets: [
                "Miranda does not require police to read rights at arrest. It applies to custodial interrogation.",
                "Gideon does not give you a free lawyer for a parking ticket. It applies to cases where jail is possible.",
                "Tinker protects student expression but allows schools to limit speech that disrupts learning.",
                "A landmark case can be narrowed or overruled later. Precedent is strong, not permanent."
            ], callouts: ["Education only, not legal advice. If you face a real legal situation, consult a licensed attorney."]),
            ContentBlock(id: "const302_b5", type: .summary, title: "The Throughline", bullets: [
                "Landmark cases translate broad text into concrete, enforceable rules.",
                "Many of your everyday rights, from a public defender to a Miranda warning, come from specific decisions.",
                "Precedent gives the law stability, but the Court can and does change course."
            ])
        ],
        quiz: Quiz(id: "const302_q", passPercent: 80, questions: [
            Question(id: "const302_q1", prompt: "Match each landmark case to what it established.", matchingPairs: [
                MatchingPair(left: "Brown v. Board (1954)", right: "Ended school segregation"),
                MatchingPair(left: "Gideon v. Wainwright (1963)", right: "Right to a court-appointed attorney"),
                MatchingPair(left: "Miranda v. Arizona (1966)", right: "Warnings before custodial interrogation"),
                MatchingPair(left: "Mapp v. Ohio (1961)", right: "Exclusionary rule in state courts")
            ], explanation: "These cases translated constitutional text into concrete protections still in force today."),
            Question(id: "const302_q2", type: .scenario, prompt: "A defendant facing prison cannot afford a lawyer. Which case guarantees one will be provided?", choices: ["Miranda v. Arizona", "Gideon v. Wainwright", "Tinker v. Des Moines", "Mapp v. Ohio"], correctIndex: 1, explanation: "Gideon v. Wainwright (1963) requires states to provide counsel to defendants who cannot afford one in cases where incarceration is possible."),
            Question(id: "const302_q3", prompt: "The rule that illegally obtained evidence cannot be used at trial is the ____ rule.", acceptedAnswers: ["exclusionary", "the exclusionary"], explanation: "The exclusionary rule, applied to the states in Mapp v. Ohio, bars evidence obtained through an unconstitutional search."),
            Question(id: "const302_q4", type: .multiSelect, prompt: "Which statements about these landmark cases are TRUE?", choices: ["Miranda applies to custodial interrogation, not the moment of arrest", "Brown overturned the \"separate but equal\" doctrine", "Tinker means schools can never limit any student speech", "Gideon guarantees counsel where jail is possible", "Precedent can be narrowed or overruled later"], correctIndices: [0, 1, 3, 4], explanation: "Miranda applies to interrogation, Brown ended separate-but-equal, Gideon guarantees counsel where jail is at stake, and precedent can change. Schools can limit disruptive student speech, so the Tinker claim is false."),
            Question(id: "const302_q5", prompt: "The principle that courts generally follow prior rulings is called ____.", acceptedAnswers: ["stare decisis", "precedent", "stare-decisis"], explanation: "Stare decisis, or precedent, is the practice of following prior decisions to keep the law stable and predictable.")
        ]),
        flashcards: [
            Flashcard(id: "const302_f1", front: "Brown v. Board of Education (1954)", back: "Ended legal racial segregation in public schools, overturning the separate-but-equal doctrine."),
            Flashcard(id: "const302_f2", front: "Miranda v. Arizona (1966)", back: "Police must warn suspects of their rights before custodial interrogation."),
            Flashcard(id: "const302_f3", front: "Exclusionary Rule", back: "Evidence obtained through an unconstitutional search is generally barred from trial (Mapp v. Ohio)."),
            Flashcard(id: "const302_f4", front: "Stare Decisis", back: "The principle that courts follow precedent to keep the law stable, though it can be overruled.")
        ],
        tags: ["landmark", "cases", "rights"]
    )

    static let lesson11 = Lesson(
        id: "const_t3_03",
        categoryId: .constitution,
        tier: 3,
        lessonNumber: 3,
        title: "Your Rights in Practice",
        subtitle: "The 1st, 2nd, 4th, and 5th Amendments on the ground",
        estimatedMinutes: 10,
        difficulty: 3,
        prerequisites: ["const_t3_02"],
        contentBlocks: [
            ContentBlock(id: "const303_b1", type: .whyMatters, title: "Rights You Cannot Use Are Worthless", bullets: [
                "Knowing a right exists is different from knowing how to invoke it calmly under pressure.",
                "Most rights violations happen because people talk too much, consent to searches, or escalate.",
                "This lesson covers the practical mechanics of four core amendments."
            ], callouts: ["This is educational only and not legal advice. Laws vary by state. For any real encounter, consult a licensed attorney."]),
            ContentBlock(id: "const303_b2", type: .principles, title: "Speech and Arms in Real Life", bullets: [
                "First Amendment: you can record police in public, criticize officials, and decline to answer questions.",
                "Your speech rights run against government, not against private property owners who can set their own rules.",
                "Second Amendment: the right is individual but heavily regulated and varies enormously by state.",
                "Carrying, transporting, and purchasing rules differ across state lines; ignorance of local law is not a defense."
            ]),
            ContentBlock(id: "const303_b3", type: .stepByStep, title: "The 4th and 5th in an Encounter", bullets: [
                "Step 1: Ask plainly, \"Am I free to go?\" If yes, you may leave. If detained, stay calm.",
                "Step 2: For searches, you can say, \"I do not consent to a search.\" Do not physically resist if they proceed.",
                "Step 3: You may invoke the Fifth: \"I am going to remain silent. I want a lawyer.\" Then actually stay silent.",
                "Step 4: Provide identification when legally required (this varies by state and situation).",
                "Step 5: Never lie to law enforcement; remaining silent is your protected right, lying is a crime."
            ]),
            ContentBlock(id: "const303_b4", type: .safety, title: "De-escalation Protects Your Rights", bullets: [
                "Keep your hands visible and your tone level. A confrontation can turn a rights question into a safety incident.",
                "Comply physically with lawful orders even while verbally declining consent. You litigate later, not roadside.",
                "Assert rights clearly and once. Repeating and arguing rarely helps and can escalate.",
                "Memorize the phrases now so they come out automatically when adrenaline is high."
            ], callouts: ["Asserting a right is not an admission of guilt. Silence and declining a search are protected and routine."]),
            ContentBlock(id: "const303_b5", type: .summary, title: "The Practical Core", bullets: [
                "First: you can record, criticize, and decline to speak to government.",
                "Fourth: searches generally need a warrant or consent; you can withhold consent.",
                "Fifth: you can remain silent and request a lawyer, and you should.",
                "Stay calm, comply physically, assert clearly, and never lie."
            ])
        ],
        quiz: Quiz(id: "const303_q", passPercent: 80, questions: [
            Question(id: "const303_q1", type: .scenario, prompt: "An officer asks to search your car during a stop. You do not want them to. What is the appropriate response?", choices: ["Physically block the door", "Say clearly, \"I do not consent to a search,\" and do not resist if they proceed", "Lie and say there is nothing inside", "Drive away immediately"], correctIndex: 1, explanation: "You can verbally decline consent while complying physically. Resisting or lying creates new legal problems; you challenge an improper search later in court."),
            Question(id: "const303_q2", type: .scenario, prompt: "You are being questioned and want to stop. Which statement properly invokes your Fifth Amendment right?", choices: ["\"I think I might want a lawyer maybe\"", "\"I am going to remain silent. I want a lawyer.\"", "Saying nothing at all without stating why", "\"I did nothing wrong so I will explain everything\""], correctIndex: 1, explanation: "Courts have held you should clearly and unambiguously invoke the right to silence and counsel. Vague statements may not trigger protection, and explaining everything waives it."),
            Question(id: "const303_q3", type: .multiSelect, prompt: "Which actions are generally protected or advisable during a police encounter?", choices: ["Recording police in public", "Lying to investigators to avoid trouble", "Asking \"Am I free to go?\"", "Physically resisting a search you object to", "Declining to consent to a search"], correctIndices: [0, 2, 4], explanation: "Recording, asking if you are free to go, and declining consent are protected and advisable. Lying is a crime, and physical resistance is dangerous and counterproductive."),
            Question(id: "const303_q4", prompt: "Searches by government generally require a warrant or your ____.", acceptedAnswers: ["consent", "permission"], explanation: "Absent an exception, a lawful search needs a warrant based on probable cause or your voluntary consent, which you may withhold."),
            Question(id: "const303_q5", prompt: "Match each amendment to a practical right it gives you.", matchingPairs: [
                MatchingPair(left: "First Amendment", right: "Record police and decline to answer"),
                MatchingPair(left: "Second Amendment", right: "Keep arms, subject to state regulation"),
                MatchingPair(left: "Fourth Amendment", right: "Refuse consent to a search"),
                MatchingPair(left: "Fifth Amendment", right: "Stay silent and request a lawyer")
            ], explanation: "Each amendment gives a concrete, usable protection in everyday encounters with government.")
        ]),
        flashcards: [
            Flashcard(id: "const303_f1", front: "Invoking the Fifth", back: "Clearly state \"I want to remain silent and I want a lawyer,\" then stay silent. Vague hints may not count."),
            Flashcard(id: "const303_f2", front: "Refusing Consent", back: "You may say \"I do not consent to a search\" while complying physically. Challenge an improper search in court, not roadside."),
            Flashcard(id: "const303_f3", front: "\"Am I free to go?\"", back: "The question that clarifies whether you are detained. If yes, you may leave; if no, you are being held."),
            Flashcard(id: "const303_f4", front: "Silence vs Lying", back: "Remaining silent is a protected right. Lying to law enforcement is a separate crime.")
        ],
        tags: ["rights", "practical", "encounters"]
    )

    static let lesson12 = Lesson(
        id: "const_t3_04",
        categoryId: .constitution,
        tier: 3,
        lessonNumber: 4,
        title: "Checks and Balances in Real Situations",
        subtitle: "Reading power struggles as they happen",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["const_t3_03"],
        contentBlocks: [
            ContentBlock(id: "const304_b1", type: .whyMatters, title: "Theory Meets the Headlines", bullets: [
                "You already know the branches and their tools. Now apply them to live conflicts.",
                "Most news about government \"crises\" is really one branch using a check against another.",
                "Reading these correctly lets you predict outcomes instead of just reacting to spin."
            ]),
            ContentBlock(id: "const304_b2", type: .realWorld, title: "Five Real Power Struggles", bullets: [
                "Government shutdown - Congress controls the budget; refusing to fund the executive forces a standoff.",
                "Court blocks an executive order - the judiciary checks the President by ruling the order exceeds his authority.",
                "Senate refuses to confirm nominees - the Senate checks both the President and the courts.",
                "Veto and override - the President checks Congress; a two-thirds vote checks back.",
                "Impeachment - the House and Senate together can check a President or judge for high crimes and misdemeanors."
            ]),
            ContentBlock(id: "const304_b3", type: .howItWorks, title: "Diagnosing Who Holds the Leverage", bullets: [
                "Ask: which branch is acting, and what specific power are they using?",
                "Ask: which branch can respond, and what tool do they hold?",
                "Follow the money and the appointments; budget and confirmation power decide most standoffs.",
                "Remember enforcement: a court ruling means little if the executive declines to carry it out, which is itself a constitutional crisis."
            ], callouts: ["When you hear \"the courts struck it down,\" the next question is always: will the executive comply?"]),
            ContentBlock(id: "const304_b4", type: .commonMistakes, title: "Misreadings to Avoid", bullets: [
                "Treating a normal check as a \"breakdown.\" Gridlock is often the system working as designed.",
                "Assuming the President can ignore a final court ruling. That move is a genuine constitutional crisis, not routine.",
                "Forgetting the states. Federalism means governors and state courts are also players, not bystanders.",
                "Thinking impeachment means automatic removal. The House impeaches; only a two-thirds Senate vote removes."
            ]),
            ContentBlock(id: "const304_b5", type: .summary, title: "The Analyst's Habit", bullets: [
                "Name the acting branch and its power, then name the responding branch and its tool.",
                "Budget and confirmation power decide most standoffs; enforcement decides the rest.",
                "Distinguish routine friction from a true crisis where one branch defies another's final word."
            ])
        ],
        quiz: Quiz(id: "const304_q", passPercent: 80, questions: [
            Question(id: "const304_q1", type: .scenario, prompt: "A federal court rules that a presidential order exceeds the President's authority. Which check is being exercised?", choices: ["Congress over the courts", "The judiciary checking the executive", "The executive checking Congress", "The states checking the federal government"], correctIndex: 1, explanation: "When a court invalidates an executive action, the judiciary is checking the executive branch through judicial review."),
            Question(id: "const304_q2", type: .scenario, prompt: "Congress refuses to pass a budget that funds a program the President wants, causing a shutdown. This demonstrates:", choices: ["Judicial review", "Congress's power of the purse checking the executive", "An unconstitutional act by Congress", "The President's veto power"], correctIndex: 1, explanation: "Congress controls spending. Withholding funding is a legitimate check on the executive, even when it produces a shutdown."),
            Question(id: "const304_q3", prompt: "The House ____ an official; the Senate then tries and can remove them.", acceptedAnswers: ["impeaches", "impeach", "charges"], explanation: "Impeachment is a two-step process: the House impeaches (charges), and the Senate tries and may remove with a two-thirds vote."),
            Question(id: "const304_q4", type: .multiSelect, prompt: "Which are real, constitutional checks one branch holds over another?", choices: ["A government shutdown via the power of the purse", "A court striking down an executive order", "The President personally firing federal judges", "The Senate rejecting a nominee", "A veto override by two-thirds of Congress"], correctIndices: [0, 1, 3, 4], explanation: "Budget control, judicial review, confirmation power, and veto overrides are real checks. The President cannot fire federal judges, who serve for life during good behavior."),
            Question(id: "const304_q5", type: .scenario, prompt: "A court issues a final ruling and the executive branch simply refuses to comply. The best description is:", choices: ["Routine separation of powers", "A genuine constitutional crisis", "A normal use of the veto", "A standard budget standoff"], correctIndex: 1, explanation: "Courts depend on the executive to enforce rulings. Open defiance of a final court order is a true constitutional crisis, not ordinary friction.")
        ]),
        flashcards: [
            Flashcard(id: "const304_f1", front: "Power of the Purse", back: "Congress's control over spending, used to fund or defund the executive. The basis of most shutdown standoffs."),
            Flashcard(id: "const304_f2", front: "Advice and Consent", back: "The Senate's power to confirm or reject the President's nominees for judges and officials."),
            Flashcard(id: "const304_f3", front: "Constitutional Crisis", back: "A breakdown where a branch defies another's clear authority, such as the executive ignoring a final court ruling."),
            Flashcard(id: "const304_f4", front: "Impeachment vs Removal", back: "The House impeaches (charges); removal requires a two-thirds vote in the Senate trial.")
        ],
        tags: ["checks", "real-world", "analysis"]
    )

    // MARK: - Tier 4: Mastery

    static let lesson13 = Lesson(
        id: "const_t4_01",
        categoryId: .constitution,
        tier: 4,
        lessonNumber: 1,
        title: "The Amendment Process",
        subtitle: "How the rulebook itself gets changed",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["const_t3_04"],
        contentBlocks: [
            ContentBlock(id: "const401_b1", type: .whyMatters, title: "The Hardest Door in American Law", bullets: [
                "Article V is the only legitimate way to change the Constitution's text.",
                "It is intentionally hard, which is why only 27 amendments exist out of more than 11,000 proposed.",
                "Understanding it tells you why most calls to \"amend the Constitution\" go nowhere."
            ]),
            ContentBlock(id: "const401_b2", type: .stepByStep, title: "Two Ways to Propose, Two Ways to Ratify", bullets: [
                "Propose, Path A: two-thirds of both the House and the Senate vote to propose an amendment. This is how all 27 happened.",
                "Propose, Path B: two-thirds of state legislatures call a constitutional convention. This has never successfully been used.",
                "Ratify, Path A: three-fourths of state legislatures (38 of 50) approve. Used for all but one amendment.",
                "Ratify, Path B: three-fourths of state ratifying conventions approve. Used only once, for the 21st Amendment.",
                "The President has no formal role in the amendment process."
            ]),
            ContentBlock(id: "const401_b3", type: .context, title: "Why So Few Make It", bullets: [
                "The double supermajority means a determined minority can block almost anything.",
                "By design, an amendment requires broad national consensus, not a passing majority.",
                "The Equal Rights Amendment, proposed in 1972, shows how ratification can stall short of 38 states.",
                "The 27th Amendment shows the opposite: it took 202 years from proposal to ratification."
            ], callouts: ["No amendment can be vetoed by the President or struck down by the courts. Article V sits above ordinary politics."]),
            ContentBlock(id: "const401_b4", type: .commonMistakes, title: "Amendment Myths", bullets: [
                "Myth: a national popular vote can amend the Constitution. There is no national referendum mechanism.",
                "Myth: the Supreme Court can strike down an amendment as unconstitutional. It cannot; the amendment is the Constitution.",
                "Myth: the President signs amendments into effect. The President has no role at all.",
                "Myth: a convention has never been a real possibility. States have come within a few of triggering one."
            ]),
            ContentBlock(id: "const401_b5", type: .summary, title: "The Mastery Point", bullets: [
                "Propose by two-thirds of Congress or a convention; ratify by three-fourths of the states.",
                "The bar is a double supermajority, deliberately requiring broad consensus.",
                "The President and the courts have no power over the process itself."
            ])
        ],
        quiz: Quiz(id: "const401_q", passPercent: 80, questions: [
            Question(id: "const401_q1", type: .multipleChoice, prompt: "How many states must ratify an amendment for it to take effect?", choices: ["A simple majority (26)", "Two-thirds (34)", "Three-fourths (38)", "All 50"], correctIndex: 2, explanation: "Ratification requires three-fourths of the states, which is 38 of 50."),
            Question(id: "const401_q2", type: .multiSelect, prompt: "Which are valid steps in the Article V amendment process?", choices: ["Two-thirds of Congress proposes", "The President signs the amendment", "Two-thirds of states call a convention to propose", "Three-fourths of states ratify", "The Supreme Court approves the amendment"], correctIndices: [0, 2, 3], explanation: "Amendments are proposed by two-thirds of Congress or a state convention, then ratified by three-fourths of the states. The President and the courts have no role."),
            Question(id: "const401_q3", type: .scenario, prompt: "Activists propose amending the Constitution by holding a single national popular vote. Why will this not work?", choices: ["The vote would need to be unanimous", "There is no national referendum mechanism in Article V", "Only the President can call such a vote", "The Supreme Court must approve it first"], correctIndex: 1, explanation: "Article V provides no national referendum. Amendments flow through Congress or a convention and then state ratification."),
            Question(id: "const401_q4", prompt: "Proposing an amendment in Congress requires a ____ vote in both chambers.", acceptedAnswers: ["two-thirds", "two thirds", "2/3", "supermajority"], explanation: "A two-thirds vote in both the House and the Senate is required to propose an amendment through Congress."),
            Question(id: "const401_q5", prompt: "Match each amendment fact to its significance.", matchingPairs: [
                MatchingPair(left: "27 amendments", right: "Total ratified out of 11,000+ proposed"),
                MatchingPair(left: "21st Amendment", right: "Only one ratified by state conventions"),
                MatchingPair(left: "27th Amendment", right: "Took 202 years to ratify"),
                MatchingPair(left: "Constitutional convention", right: "Proposal path never successfully used")
            ], explanation: "These facts show how rare and deliberate constitutional change is.")
        ]),
        flashcards: [
            Flashcard(id: "const401_f1", front: "Article V", back: "The Constitution's amendment clause: propose by two-thirds of Congress or a convention, ratify by three-fourths of states."),
            Flashcard(id: "const401_f2", front: "Three-Fourths Rule", back: "An amendment must be ratified by 38 of 50 states (three-fourths) to take effect."),
            Flashcard(id: "const401_f3", front: "Constitutional Convention", back: "An Article V path where two-thirds of states call a convention to propose amendments. Never successfully used."),
            Flashcard(id: "const401_f4", front: "Double Supermajority", back: "The amendment process requires supermajorities to both propose and ratify, ensuring broad consensus.")
        ],
        tags: ["amendment process", "article v", "mastery"]
    )

    static let lesson14 = Lesson(
        id: "const_t4_02",
        categoryId: .constitution,
        tier: 4,
        lessonNumber: 2,
        title: "Elections and the Electoral System",
        subtitle: "The Electoral College and how power is actually allocated",
        estimatedMinutes: 10,
        difficulty: 3,
        prerequisites: ["const_t4_01"],
        contentBlocks: [
            ContentBlock(id: "const402_b1", type: .whyMatters, title: "How the Country Actually Picks Leaders", bullets: [
                "Presidential elections are decided by the Electoral College, not the national popular vote.",
                "Congressional power is allocated by population (House) and by state equality (Senate).",
                "Understanding the mechanics tells you why campaigns focus on a handful of states."
            ]),
            ContentBlock(id: "const402_b2", type: .howItWorks, title: "The Electoral College", bullets: [
                "There are 538 electoral votes; 270 are needed to win the presidency.",
                "Each state's count equals its House members plus its two senators; D.C. gets 3.",
                "Most states award all their electoral votes to the popular-vote winner of that state (winner-take-all).",
                "Maine and Nebraska split their votes by congressional district.",
                "If no candidate reaches 270, the House chooses the President, with each state delegation getting one vote."
            ]),
            ContentBlock(id: "const402_b3", type: .componentBreakdown, title: "Congress and Apportionment", bullets: [
                "The House has 435 seats divided among states by population, recounted every 10 years by the census.",
                "The Senate has 100 seats, two per state, regardless of population. Wyoming and California have equal Senate power.",
                "Redistricting redraws House district lines after each census; gerrymandering is the manipulation of those lines for advantage.",
                "Primaries and caucuses, run mostly by states and parties, choose the nominees before the general election."
            ]),
            ContentBlock(id: "const402_b4", type: .commonMistakes, title: "Election Myths Debunked", bullets: [
                "Myth: the popular-vote winner always becomes President. Five times the winner lost the popular vote.",
                "Myth: the Constitution requires winner-take-all. It does not; states choose their method.",
                "Myth: electors must vote for the popular winner. \"Faithless elector\" laws vary, and the Court upheld state enforcement in 2020.",
                "Myth: the federal government runs elections. States and counties administer them, even for federal office."
            ], callouts: ["The framers designed an indirect system on purpose. Whether you like it, knowing how it works is non-negotiable for a literate citizen."]),
            ContentBlock(id: "const402_b5", type: .summary, title: "The System in One Frame", bullets: [
                "270 of 538 electoral votes wins the presidency, mostly through winner-take-all states.",
                "House seats track population; Senate seats are equal per state.",
                "States, not Washington, actually run elections and choose their electoral methods."
            ])
        ],
        quiz: Quiz(id: "const402_q", passPercent: 80, questions: [
            Question(id: "const402_q1", type: .multipleChoice, prompt: "How many electoral votes are needed to win the presidency?", choices: ["218", "270", "435", "538"], correctIndex: 1, explanation: "A candidate needs 270 of the 538 electoral votes to win the presidency."),
            Question(id: "const402_q2", type: .scenario, prompt: "A candidate wins the national popular vote but loses the election. Under the U.S. system, this is:", choices: ["Impossible by law", "A rare but constitutional outcome of the Electoral College", "Automatic grounds for a new election", "Decided by the Supreme Court"], correctIndex: 1, explanation: "Because the Electoral College, not the popular vote, decides the presidency, a candidate can win the most votes nationally yet lose. It has happened five times."),
            Question(id: "const402_q3", type: .multiSelect, prompt: "Which statements about the electoral system are TRUE?", choices: ["Each state's electoral votes equal its House seats plus two senators", "The Constitution mandates winner-take-all", "House seats are apportioned by population", "Every state has two senators regardless of size", "States administer their own elections"], correctIndices: [0, 2, 3, 4], explanation: "Electoral votes equal House plus Senate seats, House is by population, the Senate is equal per state, and states run elections. Winner-take-all is a state choice, not a constitutional requirement."),
            Question(id: "const402_q4", prompt: "The manipulation of district boundaries to favor a party is called ____.", acceptedAnswers: ["gerrymandering", "gerrymander"], explanation: "Gerrymandering is the drawing of district lines to give one party or group an unfair advantage."),
            Question(id: "const402_q5", prompt: "Match each body or term to how power is allocated.", matchingPairs: [
                MatchingPair(left: "House of Representatives", right: "Seats by state population"),
                MatchingPair(left: "Senate", right: "Two seats per state, equal"),
                MatchingPair(left: "Electoral College", right: "270 of 538 wins the presidency"),
                MatchingPair(left: "Census", right: "Recounts population every 10 years")
            ], explanation: "Each mechanism allocates political power on a different basis: population, state equality, and a decennial count.")
        ]),
        flashcards: [
            Flashcard(id: "const402_f1", front: "Electoral College", back: "The body of 538 electors that elects the President; 270 votes are needed to win."),
            Flashcard(id: "const402_f2", front: "Apportionment", back: "Dividing the 435 House seats among states by population, recalculated after each decennial census."),
            Flashcard(id: "const402_f3", front: "Gerrymandering", back: "Drawing district boundaries to give a party or group an unfair electoral advantage."),
            Flashcard(id: "const402_f4", front: "Winner-Take-All", back: "The common state practice of awarding all electoral votes to the state's popular-vote winner. Not constitutionally required.")
        ],
        tags: ["elections", "electoral college", "mastery"]
    )

    static let lesson15 = Lesson(
        id: "const_t4_03",
        categoryId: .constitution,
        tier: 4,
        lessonNumber: 3,
        title: "Civic Participation That Matters",
        subtitle: "Where your effort actually moves the needle",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["const_t4_02"],
        contentBlocks: [
            ContentBlock(id: "const403_b1", type: .whyMatters, title: "Knowledge Without Action Is a Hobby", bullets: [
                "Constitutional literacy is leverage only if you use it to participate intelligently.",
                "Most people pour energy into the contests least likely to be affected by one person.",
                "Knowing where participation is dense versus thin lets you spend effort where it counts."
            ]),
            ContentBlock(id: "const403_b2", type: .ownerActions, title: "High-Leverage Civic Moves", bullets: [
                "Vote in local and primary elections, where turnout is low and each vote carries far more weight.",
                "Serve on a jury; it is one of the few direct powers citizens hold over the justice system.",
                "Contact representatives on specific bills; staff log constituent positions, especially for local offices.",
                "Attend school board, city council, and county meetings, where policy that touches you daily is set.",
                "Show up to public comment periods, where written and spoken input is formally recorded."
            ]),
            ContentBlock(id: "const403_b3", type: .realWorld, title: "Why Local Beats National for Impact", bullets: [
                "A city council seat can be decided by dozens of votes; a presidential election by millions.",
                "Primaries often determine the real winner in safe districts, yet draw a fraction of general-election turnout.",
                "Local government controls policing priorities, zoning, schools, and budgets you live with every day.",
                "Your single voice carries measurable weight in a room of 30, and almost none in a national poll of millions."
            ], callouts: ["The math is blunt: the smaller the electorate, the larger your individual leverage."]),
            ContentBlock(id: "const403_b4", type: .proTips, title: "Participate Like a Professional", bullets: [
                "Track the calendar: register early, know your primary date, and check deadlines, which vary by state.",
                "Be specific when you contact officials. Reference the bill number and state your ask in one sentence.",
                "Build a voting plan: method, location, and date, decided before election week.",
                "Follow outcomes, not just elections. Watching how a representative actually votes is the real accountability."
            ]),
            ContentBlock(id: "const403_b5", type: .summary, title: "The Action Plan", bullets: [
                "Vote in local and primary races where your weight is highest.",
                "Show up to local meetings and public comment, where decisions are actually made.",
                "Contact officials with specific, concrete asks and then track the results.",
                "Treat civic participation as a discipline, not a once-every-four-years event."
            ])
        ],
        quiz: Quiz(id: "const403_q", passPercent: 80, questions: [
            Question(id: "const403_q1", type: .scenario, prompt: "You want your single vote to carry the most weight. Which election generally offers the highest individual leverage?", choices: ["A presidential general election", "A low-turnout local or primary election", "A national popular-opinion poll", "A statewide ballot in your largest state"], correctIndex: 1, explanation: "The smaller the electorate, the more weight each vote carries. Local and primary elections, with low turnout, give your single vote far more influence."),
            Question(id: "const403_q2", type: .multiSelect, prompt: "Which of these are high-leverage forms of civic participation?", choices: ["Voting in primaries and local elections", "Serving on a jury", "Posting anonymous complaints online", "Attending city council and school board meetings", "Submitting formal public comment"], correctIndices: [0, 1, 3, 4], explanation: "Voting locally, jury service, attending local meetings, and formal public comment all carry real, recorded weight. Anonymous online posts generally do not move policy."),
            Question(id: "const403_q3", prompt: "Serving on a ____ is one of the few direct powers citizens hold over the justice system.", acceptedAnswers: ["jury", "a jury"], explanation: "Jury service lets ordinary citizens directly decide the outcome of legal cases, a rare form of direct civic power."),
            Question(id: "const403_q4", type: .scenario, prompt: "You want to influence a specific bill in Congress. What is the most effective approach?", choices: ["Send a generic mass-forwarded email", "Contact your representative citing the bill number with a clear, specific ask", "Post about it on social media only", "Wait until the next presidential election"], correctIndex: 1, explanation: "Specific, identifiable constituent contact that references the bill and states a clear ask is logged by staff and carries more weight than generic or anonymous messages."),
            Question(id: "const403_q5", prompt: "Match each civic action to where it has the most impact.", matchingPairs: [
                MatchingPair(left: "Primary election", right: "Often decides safe-district winners"),
                MatchingPair(left: "School board meeting", right: "Sets local education policy"),
                MatchingPair(left: "Jury service", right: "Direct power over case outcomes"),
                MatchingPair(left: "Public comment period", right: "Formally records citizen input")
            ], explanation: "Each action channels participation into a venue where individual input is recorded and influential.")
        ]),
        flashcards: [
            Flashcard(id: "const403_f1", front: "Primary Election", back: "The contest that selects party nominees; in safe districts it often decides the real winner, yet draws low turnout."),
            Flashcard(id: "const403_f2", front: "Jury Service", back: "A direct citizen power to decide legal case outcomes, and one of the few hands-on roles in the justice system."),
            Flashcard(id: "const403_f3", front: "Public Comment Period", back: "A formal window for citizens to submit spoken or written input that becomes part of the official record."),
            Flashcard(id: "const403_f4", front: "Leverage Principle", back: "The smaller the electorate or audience, the larger the weight of your individual participation.")
        ],
        tags: ["civic participation", "voting", "mastery"]
    )

    static let lesson16 = Lesson(
        id: "const_t4_04",
        categoryId: .constitution,
        tier: 4,
        lessonNumber: 4,
        title: "Constitutional Misconceptions Debunked",
        subtitle: "The myths smart people still believe",
        estimatedMinutes: 10,
        difficulty: 3,
        prerequisites: ["const_t4_03"],
        contentBlocks: [
            ContentBlock(id: "const404_b1", type: .whyMatters, title: "The Final Test of Literacy", bullets: [
                "The mark of mastery is not just knowing the rules; it is spotting confident falsehoods about them.",
                "Many of these myths are repeated by educated people and pundits every day.",
                "Being able to calmly correct them is the practical payoff of this entire category."
            ]),
            ContentBlock(id: "const404_b2", type: .commonMistakes, title: "Rights and Speech Myths", bullets: [
                "Myth: free speech protects you from being fired or banned by a private company. It restrains government, not private actors.",
                "Myth: \"separation of church and state\" appears in the Constitution. The phrase is from a Jefferson letter; the text says \"establishment\" and \"free exercise.\"",
                "Myth: the Pledge of Allegiance or \"under God\" is in the Constitution. Neither is; the Pledge dates to 1892.",
                "Myth: there is a constitutional right to not be offended. There is not; offensive speech is generally protected."
            ]),
            ContentBlock(id: "const404_b3", type: .commonMistakes, title: "Structure and Power Myths", bullets: [
                "Myth: the U.S. is a \"democracy\" or a \"republic\" but not both. It is a constitutional republic with democratic elections; the labels are not exclusive.",
                "Myth: the President can declare war. Only Congress can declare war, though Presidents have ordered military action without one.",
                "Myth: a Supreme Court ruling is permanent. The Court can overrule itself, and amendments can override it.",
                "Myth: executive orders are laws. They direct the executive branch and must rest on existing authority."
            ]),
            ContentBlock(id: "const404_b4", type: .commonMistakes, title: "Citizenship and Process Myths", bullets: [
                "Myth: the founders intended the Constitution to never change. They built Article V specifically so it could.",
                "Myth: the federal government can do anything not forbidden. It is limited to enumerated powers; the rest is reserved.",
                "Myth: states can nullify federal law they dislike. The Supremacy Clause rejects nullification of valid federal law.",
                "Myth: the popular vote elects the President. The Electoral College does."
            ], callouts: ["Education only, not legal advice. When precision matters in a real dispute, verify against the text and consult a qualified attorney."]),
            ContentBlock(id: "const404_b5", type: .summary, title: "Graduating With Real Literacy", bullets: [
                "Free speech binds government, not private companies; offensive speech is generally protected.",
                "The U.S. is a constitutional republic with democratic elections; Congress declares war; orders are not laws.",
                "Federal power is enumerated and limited; states cannot nullify valid federal law; the Electoral College elects the President.",
                "You can now hear a confident claim about the Constitution and judge whether it is actually true."
            ])
        ],
        quiz: Quiz(id: "const404_q", passPercent: 80, questions: [
            Question(id: "const404_q1", type: .scenario, prompt: "A coworker says, \"My company fired me for a post, that violates my First Amendment rights.\" The accurate correction is:", choices: ["They are right; all speech is protected everywhere", "The First Amendment restrains government, not a private employer", "Only government employees have free speech", "It depends on how many followers they had"], correctIndex: 1, explanation: "The First Amendment restricts government action. A private employer is generally free to set its own rules, so this is not a First Amendment violation."),
            Question(id: "const404_q2", type: .multiSelect, prompt: "Which of the following are MYTHS (false statements) about the Constitution?", choices: ["The President can declare war", "\"Separation of church and state\" is a direct quote from the Constitution", "Free speech protects you from private companies", "Federal power is limited to enumerated powers", "States can nullify valid federal law"], correctIndices: [0, 1, 2, 4], explanation: "Congress declares war, the church-state phrase is from a Jefferson letter, free speech binds government not private firms, and nullification is rejected. That federal power is enumerated is TRUE, not a myth."),
            Question(id: "const404_q3", prompt: "Only ____ can formally declare war under the Constitution.", acceptedAnswers: ["congress", "the congress"], explanation: "The Constitution gives the power to declare war to Congress, not the President, even though Presidents have ordered military action without a formal declaration."),
            Question(id: "const404_q4", type: .scenario, prompt: "Someone argues a Supreme Court ruling can never be changed. The most accurate response is:", choices: ["Correct, rulings are permanent forever", "The Court can overrule itself, and an amendment can override a ruling", "Only the President can change a ruling", "Rulings expire automatically after 50 years"], correctIndex: 1, explanation: "The Court can overrule its own precedent, and the people can override a ruling through the Article V amendment process. Rulings are durable but not permanent."),
            Question(id: "const404_q5", prompt: "Match each common myth to the accurate reality.", matchingPairs: [
                MatchingPair(left: "Executive orders are laws", right: "They direct the executive and need existing authority"),
                MatchingPair(left: "The popular vote elects the President", right: "The Electoral College does"),
                MatchingPair(left: "The Constitution can never change", right: "Article V provides a deliberate amendment path"),
                MatchingPair(left: "The U.S. is a democracy OR a republic", right: "It is a constitutional republic with democratic elections")
            ], explanation: "Each correction replaces a popular but false claim with what the Constitution and its structure actually establish.")
        ]),
        flashcards: [
            Flashcard(id: "const404_f1", front: "\"Separation of Church and State\"", back: "A phrase from a Jefferson letter, not the Constitution. The text uses the Establishment and Free Exercise Clauses."),
            Flashcard(id: "const404_f2", front: "Who Declares War", back: "Congress holds the constitutional power to declare war, not the President, though Presidents have ordered force without a declaration."),
            Flashcard(id: "const404_f3", front: "Nullification Myth", back: "States cannot nullify valid federal law; the Supremacy Clause makes valid federal law binding on the states."),
            Flashcard(id: "const404_f4", front: "Constitutional Republic", back: "The U.S. is a constitutional republic with democratic elections; \"democracy\" and \"republic\" are not mutually exclusive labels.")
        ],
        tags: ["misconceptions", "mastery", "capstone"]
    )
}
