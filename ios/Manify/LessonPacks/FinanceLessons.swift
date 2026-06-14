import Foundation

enum FinanceLessons {
    static let all: [Lesson] = [
        lesson1, lesson2, lesson3, lesson4,
        lesson5, lesson6, lesson7, lesson8,
        lesson9, lesson10, lesson11, lesson12,
        lesson13, lesson14, lesson15, lesson16
    ]

    // MARK: - Tier 1: Foundations

    static let lesson1 = Lesson(
        id: "money_t1_01",
        categoryId: .finance,
        tier: 1,
        lessonNumber: 1,
        title: "Budgeting That Actually Works",
        subtitle: "Tell your money where to go",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: [],
        contentBlocks: [
            ContentBlock(id: "money101_b1", type: .whyMatters, title: "Why a Budget Is Power", bullets: [
                "A budget is not a punishment - it's a plan that gives every dollar a job before the month starts.",
                "Most people do not overspend because they earn too little; they overspend because they never decided in advance where the money goes.",
                "Men who budget make calmer decisions: the plan already answered the question, so impulse loses its grip.",
                "What gets measured gets managed - you cannot fix spending you never track."
            ], body: "A budget turns money from a source of anxiety into a tool you control.", callouts: ["This is general financial education, not personal financial advice. Your situation is unique - consider a licensed advisor for big decisions."]),
            ContentBlock(id: "money101_b2", type: .stepByStep, title: "Building Your First Budget", bullets: [
                "1. Find your real monthly take-home pay (after taxes and deductions) - the number that actually hits your account.",
                "2. List fixed costs: rent/mortgage, utilities, insurance, minimum debt payments, phone.",
                "3. List variable costs: groceries, gas, eating out, subscriptions, fun.",
                "4. Subtract total expenses from take-home pay. The leftover is what you save or invest.",
                "5. If expenses exceed income, cut variable costs first - that is where the slack lives."
            ]),
            ContentBlock(id: "money101_b3", type: .principles, title: "The 50/30/20 Starting Point", bullets: [
                "50% of take-home pay to NEEDS: housing, food, utilities, transport, minimum debt.",
                "30% to WANTS: dining out, hobbies, streaming, travel.",
                "20% to SAVINGS and extra debt payoff.",
                "These are guidelines, not laws - a man with high rent may run 60/20/20 and still win.",
                "The percentages matter less than the habit of assigning every dollar on purpose."
            ]),
            ContentBlock(id: "money101_b4", type: .commonMistakes, title: "Why Budgets Fail", bullets: [
                "Making it so strict it is impossible to follow - leave room for real life.",
                "Forgetting irregular costs like car registration, gifts, or annual subscriptions.",
                "Not tracking actual spending, so you never learn where the money really went.",
                "Quitting after one bad month instead of adjusting the numbers."
            ], callouts: ["A budget you abandon in week two is worse than a rough one you actually keep."]),
            ContentBlock(id: "money101_b5", type: .summary, title: "The Bottom Line", bullets: [
                "A budget gives every dollar a job before the month begins.",
                "Start with take-home pay, subtract fixed and variable costs, and direct the rest.",
                "50/30/20 is a solid default; adjust the ratios to your reality.",
                "Track, review, and revise - the budget is a living tool, not a one-time event."
            ])
        ],
        quiz: Quiz(id: "money101_q", passPercent: 80, questions: [
            Question(id: "money101_q1", type: .multipleChoice, prompt: "In the 50/30/20 rule, what does the 20% represent?", choices: ["Wants and entertainment", "Needs like rent and food", "Savings and extra debt payoff", "Taxes withheld from pay"], correctIndex: 2, explanation: "The 20% slice goes to building savings and paying down debt faster than the minimums - the part that builds your future."),
            Question(id: "money101_q2", type: .scenario, prompt: "You finish your budget and find expenses are $200 more than your take-home pay. What is the smartest first move?", choices: ["Put the $200 on a credit card each month", "Cut variable spending like dining out and subscriptions", "Stop saving entirely and ignore it", "Wait and hope you get a raise"], correctIndex: 1, explanation: "Variable costs are where you have the most control. Trimming wants closes the gap without borrowing or abandoning savings."),
            Question(id: "money101_q3", prompt: "A budget should be based on your ____ pay, the amount that actually lands in your account after taxes.", acceptedAnswers: ["take-home", "take home", "net", "after-tax"], explanation: "Budget from take-home (net) pay, not gross. Gross pay overstates what you can actually spend."),
            Question(id: "money101_q4", type: .multiSelect, prompt: "Which of these are common reasons budgets fail?", choices: ["Making the budget too strict", "Forgetting irregular annual costs", "Tracking spending every week", "Quitting after one bad month", "Leaving a small buffer for fun"], correctIndices: [0, 1, 3], explanation: "Over-restriction, ignoring irregular bills, and quitting early all sink budgets. Tracking and leaving a buffer actually help it survive."),
            Question(id: "money101_q5", type: .multipleChoice, prompt: "What is the core purpose of a budget?", choices: ["To make you feel guilty about spending", "To give every dollar a job before the month starts", "To track only your largest purchases", "To replace the need for any savings"], correctIndex: 1, explanation: "A budget is a proactive plan that assigns every dollar a purpose in advance, replacing impulse with intention.")
        ]),
        flashcards: [
            Flashcard(id: "money101_f1", front: "Take-Home Pay", back: "Your income after taxes and deductions - the money that actually lands in your account and that you budget from."),
            Flashcard(id: "money101_f2", front: "50/30/20 Rule", back: "A budgeting guideline: 50% to needs, 30% to wants, 20% to savings and extra debt payoff."),
            Flashcard(id: "money101_f3", front: "Fixed vs Variable Costs", back: "Fixed costs stay roughly the same each month (rent, insurance). Variable costs change and are easier to cut (dining, gas, fun)."),
            Flashcard(id: "money101_f4", front: "Zero-Based Idea", back: "The habit of assigning every dollar a job so income minus all assignments equals zero - nothing left undirected.")
        ],
        tags: ["budgeting", "basics", "money-management"]
    )

    static let lesson2 = Lesson(
        id: "money_t1_02",
        categoryId: .finance,
        tier: 1,
        lessonNumber: 2,
        title: "The Emergency Fund",
        subtitle: "Your financial shock absorber",
        estimatedMinutes: 7,
        difficulty: 1,
        prerequisites: ["money_t1_01"],
        contentBlocks: [
            ContentBlock(id: "money102_b1", type: .whyMatters, title: "Why Cash on Hand Wins", bullets: [
                "An emergency fund is money set aside only for true surprises: job loss, car repair, medical bill, broken furnace.",
                "Without one, a single bad event forces you into high-interest credit card debt - the trap that keeps men poor.",
                "Cash reserves buy calm: you make better decisions when you are not desperate.",
                "It is the foundation everything else is built on - invest, buy a home, or take risks only once you have a buffer."
            ], body: "An emergency fund is the difference between a setback and a financial disaster."),
            ContentBlock(id: "money102_b2", type: .howItWorks, title: "How Big and Where to Keep It", bullets: [
                "Starter goal: $1,000 in cash for small emergencies while you pay down debt.",
                "Full goal: 3 to 6 months of essential expenses (rent, food, utilities, minimum bills).",
                "If your income is unstable or you support a family, aim for 6 months or more.",
                "Keep it in a separate high-yield savings account - easy to reach in days, but not your daily checking.",
                "Do NOT invest your emergency fund in stocks; it must be safe and liquid, not at risk of dropping when you need it."
            ]),
            ContentBlock(id: "money102_b3", type: .stepByStep, title: "Building It Fast", bullets: [
                "1. Open a separate savings account so the money is out of sight.",
                "2. Automate a transfer every payday - even $25 builds momentum.",
                "3. Funnel windfalls (tax refund, bonus, gift) straight in.",
                "4. Sell unused items and add the cash.",
                "5. Once funded, leave it alone - it is insurance, not a slush fund."
            ]),
            ContentBlock(id: "money102_b4", type: .commonMistakes, title: "What People Get Wrong", bullets: [
                "Treating it as spending money for vacations or upgrades.",
                "Keeping it in checking where it gets blended into daily spending.",
                "Investing it in stocks chasing yield, then being forced to sell at a loss.",
                "Never starting because the full 6-month goal feels impossible - start with $1,000."
            ], callouts: ["If you tap the fund for a real emergency, that is success, not failure. Refill it afterward."]),
            ContentBlock(id: "money102_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Start with $1,000, then build to 3 to 6 months of essential expenses.",
                "Keep it separate, safe, and liquid in a high-yield savings account.",
                "Automate contributions and redirect windfalls.",
                "It exists to absorb shocks so one bad event does not become debt."
            ])
        ],
        quiz: Quiz(id: "money102_q", passPercent: 80, questions: [
            Question(id: "money102_q1", type: .multipleChoice, prompt: "What is the typical full-size target for an emergency fund?", choices: ["1 week of pay", "3 to 6 months of essential expenses", "12 months of total income", "Whatever is left over each year"], correctIndex: 1, explanation: "Three to six months of essential expenses is the standard target - enough to cover a job loss or major surprise without borrowing."),
            Question(id: "money102_q2", type: .scenario, prompt: "Your car needs a $700 repair to get to work. You have a funded emergency fund. What is the right move?", choices: ["Put it on a high-interest credit card", "Use the emergency fund, then refill it over the next months", "Skip the repair and risk your job", "Take a payday loan"], correctIndex: 1, explanation: "This is exactly what the fund is for. Use it, avoid interest, and rebuild it afterward - that is the system working."),
            Question(id: "money102_q3", prompt: "An emergency fund should be kept in an account that is safe and ____, meaning you can access the cash quickly.", acceptedAnswers: ["liquid", "accessible", "available"], explanation: "Liquidity means you can get the cash fast without losing value. That rules out stocks and locked-up investments."),
            Question(id: "money102_q4", type: .multiSelect, prompt: "Which are good practices for an emergency fund?", choices: ["Keep it in a separate high-yield savings account", "Invest it in individual stocks for growth", "Automate contributions each payday", "Use it for vacations when bored", "Redirect tax refunds and bonuses into it"], correctIndices: [0, 2, 4], explanation: "Separate account, automation, and funneling windfalls all help. Stocks and casual spending defeat the fund's purpose of safe, ready cash.")
        ]),
        flashcards: [
            Flashcard(id: "money102_f1", front: "Emergency Fund", back: "Cash reserved only for true surprises - job loss, repairs, medical bills - kept safe and liquid, typically 3 to 6 months of expenses."),
            Flashcard(id: "money102_f2", front: "Liquidity", back: "How quickly an asset can be converted to cash without losing value. Emergency funds must be highly liquid."),
            Flashcard(id: "money102_f3", front: "Starter Emergency Fund", back: "An initial $1,000 cushion to handle small emergencies while you pay down high-interest debt."),
            Flashcard(id: "money102_f4", front: "High-Yield Savings Account", back: "A savings account that pays more interest than standard checking while keeping money safe and accessible.")
        ],
        tags: ["emergency-fund", "savings", "basics"]
    )

    static let lesson3 = Lesson(
        id: "money_t1_03",
        categoryId: .finance,
        tier: 1,
        lessonNumber: 3,
        title: "How Banking Actually Works",
        subtitle: "Checking, savings, and the system underneath",
        estimatedMinutes: 8,
        difficulty: 1,
        prerequisites: ["money_t1_02"],
        contentBlocks: [
            ContentBlock(id: "money103_b1", type: .whyMatters, title: "Why Understand the Bank", bullets: [
                "Banks are tools you use, not authorities you obey - knowing how they work saves you fees and protects your money.",
                "Most overdraft and maintenance fees are avoidable once you understand the rules.",
                "Choosing the right accounts and protections keeps more of your money working for you.",
                "Fraud and mistakes happen - knowing your rights lets you respond fast."
            ]),
            ContentBlock(id: "money103_b2", type: .keyTerms, title: "Core Account Types", bullets: [
                "Checking account - for daily spending; comes with a debit card and check-writing. Usually earns little or no interest.",
                "Savings account - for storing money you do not spend daily; earns interest and limits frequent withdrawals.",
                "High-yield savings (HYSA) - an online savings account paying far more interest than a big bank's standard rate.",
                "Money market account - a hybrid that may earn more interest with limited check access.",
                "Certificate of deposit (CD) - locks money for a set term at a fixed rate; penalty for early withdrawal."
            ]),
            ContentBlock(id: "money103_b3", type: .howItWorks, title: "What the Bank Does With Your Money", bullets: [
                "When you deposit money, the bank lends most of it out and pays you a small share of the interest it earns.",
                "FDIC insurance protects up to $250,000 per depositor, per bank, per ownership category if the bank fails.",
                "Credit unions are member-owned nonprofits; deposits are insured by the NCUA up to the same $250,000.",
                "Interest is quoted as APY (annual percentage yield), which already includes compounding - use it to compare accounts."
            ], callouts: ["Keep total deposits at any one bank under the $250,000 FDIC limit to stay fully insured."]),
            ContentBlock(id: "money103_b4", type: .commonMistakes, title: "Avoidable Fees and Traps", bullets: [
                "Overdraft fees - spending more than your balance. Opt out of overdraft coverage so the card simply declines instead.",
                "Monthly maintenance fees - often waived with direct deposit or a minimum balance.",
                "ATM fees - use in-network ATMs or banks that reimburse fees.",
                "Leaving large cash in low-interest checking instead of a high-yield savings account."
            ]),
            ContentBlock(id: "money103_b5", type: .ownerActions, title: "Set Up a Smart Banking Stack", bullets: [
                "Use a no-fee checking account for bills and daily spending.",
                "Pair it with a high-yield savings account for your emergency fund and goals.",
                "Turn on account alerts for low balance, large transactions, and login attempts.",
                "Review statements monthly and dispute any charge you do not recognize quickly."
            ]),
            ContentBlock(id: "money103_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Checking is for spending; savings is for storing and earning interest.",
                "FDIC and NCUA insurance protect deposits up to $250,000.",
                "Compare accounts by APY and avoid maintenance, overdraft, and ATM fees.",
                "A no-fee checking plus a high-yield savings account is a strong default setup."
            ])
        ],
        quiz: Quiz(id: "money103_q", passPercent: 80, questions: [
            Question(id: "money103_q1", prompt: "Match each banking term to its meaning.", matchingPairs: [
                MatchingPair(left: "Checking account", right: "Daily spending with a debit card"),
                MatchingPair(left: "High-yield savings", right: "Online account paying higher interest"),
                MatchingPair(left: "FDIC insurance", right: "Protects deposits up to $250,000"),
                MatchingPair(left: "APY", right: "Yearly return including compounding")
            ], explanation: "Knowing these terms lets you compare accounts and protect your money. APY is the apples-to-apples rate; FDIC is the safety net."),
            Question(id: "money103_q2", type: .multipleChoice, prompt: "How much does FDIC insurance protect per depositor, per bank, per ownership category?", choices: ["$10,000", "$100,000", "$250,000", "Unlimited"], correctIndex: 2, explanation: "FDIC insurance covers up to $250,000. Keeping balances at one bank under that limit ensures full protection if the bank fails."),
            Question(id: "money103_q3", type: .scenario, prompt: "You keep $15,000 sitting in a checking account earning nearly nothing. What is the smartest adjustment?", choices: ["Withdraw it all as cash and store it at home", "Move most of it to a high-yield savings account", "Buy lottery tickets to grow it faster", "Leave it - checking is the safest place for everything"], correctIndex: 1, explanation: "Idle cash should earn interest. A high-yield savings account keeps it safe and insured while paying far more than checking."),
            Question(id: "money103_q4", prompt: "Spending more than your balance triggers an ____ fee, which you can avoid by opting out of that coverage.", acceptedAnswers: ["overdraft", "over-draft"], explanation: "Overdraft fees hit when you spend past your balance. Opting out makes the transaction decline instead of charging a fee."),
            Question(id: "money103_q5", type: .multiSelect, prompt: "Which fees can usually be avoided with the right account and habits?", choices: ["Monthly maintenance fees", "FDIC insurance", "Out-of-network ATM fees", "Overdraft fees", "Federal income tax"], correctIndices: [0, 2, 3], explanation: "Maintenance, ATM, and overdraft fees are all avoidable with no-fee accounts and good habits. FDIC insurance is free, and taxes are not a bank fee.")
        ]),
        flashcards: [
            Flashcard(id: "money103_f1", front: "FDIC Insurance", back: "Federal protection for bank deposits up to $250,000 per depositor, per bank, per ownership category."),
            Flashcard(id: "money103_f2", front: "APY", back: "Annual Percentage Yield - the yearly interest rate including compounding, used to compare savings accounts."),
            Flashcard(id: "money103_f3", front: "Overdraft", back: "Spending more than your account balance. Opting out of overdraft coverage makes the card decline instead of charging a fee."),
            Flashcard(id: "money103_f4", front: "Certificate of Deposit (CD)", back: "A savings product that locks your money for a fixed term at a fixed rate, with a penalty for early withdrawal.")
        ],
        tags: ["banking", "accounts", "basics"]
    )

    static let lesson4 = Lesson(
        id: "money_t1_04",
        categoryId: .finance,
        tier: 1,
        lessonNumber: 4,
        title: "Credit Scores and How Debt Works",
        subtitle: "The number that opens or closes doors",
        estimatedMinutes: 9,
        difficulty: 1,
        prerequisites: ["money_t1_03"],
        contentBlocks: [
            ContentBlock(id: "money104_b1", type: .whyMatters, title: "Why Your Credit Score Matters", bullets: [
                "Your credit score is a number, typically 300 to 850, that predicts how reliably you repay borrowed money.",
                "It decides whether you get approved for loans, what interest rate you pay, and sometimes whether you get an apartment or a job.",
                "A strong score can save you tens of thousands of dollars in interest over a lifetime.",
                "It is built slowly through consistent good habits and damaged quickly by missed payments."
            ], body: "Credit is a reputation system for borrowing. You build it on purpose."),
            ContentBlock(id: "money104_b2", type: .componentBreakdown, title: "What Builds Your Score", bullets: [
                "Payment history (about 35%) - paying on time, every time, is the single biggest factor.",
                "Credit utilization (about 30%) - how much of your available credit you use; keep it under 30%, ideally under 10%.",
                "Length of credit history (about 15%) - older accounts help, so do not close your oldest card.",
                "Credit mix (about 10%) - a blend of cards and installment loans.",
                "New credit and inquiries (about 10%) - opening many accounts quickly can ding your score."
            ]),
            ContentBlock(id: "money104_b3", type: .howItWorks, title: "How Debt and Interest Work", bullets: [
                "Interest is the price of borrowing money, expressed as an annual percentage rate (APR).",
                "Credit card APRs often run 20% or higher - carrying a balance is one of the most expensive debts you can hold.",
                "Minimum payments mostly cover interest, so a balance can take years and cost more than double to pay off.",
                "Good debt can build wealth (a mortgage, a reasonable student loan); bad debt funds depreciating wants at high interest.",
                "Pay credit cards in full each month and you get the convenience with zero interest."
            ], callouts: ["Paying only the minimum on a credit card is how a $2,000 balance turns into thousands in interest over many years."]),
            ContentBlock(id: "money104_b4", type: .stepByStep, title: "Building Credit From Scratch", bullets: [
                "1. Open a secured credit card or become an authorized user on a trusted family member's card.",
                "2. Charge a small recurring bill to it and set autopay for the full statement balance.",
                "3. Keep utilization low - use only a small slice of your limit.",
                "4. Never miss a due date; on-time payment is everything.",
                "5. Check your credit report yearly for free and dispute any errors."
            ]),
            ContentBlock(id: "money104_b5", type: .commonMistakes, title: "Credit Killers to Avoid", bullets: [
                "Missing or making late payments - a single 30-day late mark can drop your score sharply.",
                "Maxing out cards, which spikes utilization.",
                "Closing your oldest account and shortening your history.",
                "Applying for many cards or loans in a short window.",
                "Ignoring your credit report and missing fraud or errors."
            ]),
            ContentBlock(id: "money104_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Credit scores run 300 to 850 and predict repayment reliability.",
                "Payment history and utilization are the two biggest factors.",
                "Pay in full, keep utilization low, and never miss a due date.",
                "Good debt can build wealth; high-interest consumer debt destroys it."
            ])
        ],
        quiz: Quiz(id: "money104_q", passPercent: 80, questions: [
            Question(id: "money104_q1", type: .multipleChoice, prompt: "Which factor has the largest impact on your credit score?", choices: ["Credit mix", "Payment history", "Number of inquiries", "Your annual income"], correctIndex: 1, explanation: "Payment history is about 35% of your score - paying on time, every time, matters more than anything else. Income is not even a factor."),
            Question(id: "money104_q2", type: .multipleChoice, prompt: "What is generally the recommended maximum for credit utilization?", choices: ["Under 30% of your available credit", "Exactly 100%", "Around 70%", "There is no limit that matters"], correctIndex: 0, explanation: "Keeping utilization under 30% (and ideally under 10%) signals you are not over-reliant on credit, which protects your score."),
            Question(id: "money104_q3", type: .scenario, prompt: "You have a $2,500 credit card balance at 22% APR and can only pay the minimum each month. What is the realistic outcome?", choices: ["It is paid off in a few months at little cost", "It takes years and costs far more than $2,500 total", "Interest is waived because you pay something", "Your score improves the longer you carry it"], correctIndex: 1, explanation: "Minimum payments mostly cover interest. At 22% APR, the balance lingers for years and the total cost can more than double."),
            Question(id: "money104_q4", prompt: "Interest is the price of borrowing money, usually expressed as an annual percentage rate, abbreviated ____.", acceptedAnswers: ["APR", "A.P.R.", "annual percentage rate"], explanation: "APR (annual percentage rate) is the yearly cost of borrowing. Comparing APRs tells you which debt is most expensive."),
            Question(id: "money104_q5", type: .multiSelect, prompt: "Which habits help build and protect a strong credit score?", choices: ["Paying every bill on time", "Keeping utilization low", "Maxing out every card", "Keeping your oldest account open", "Applying for many cards at once"], correctIndices: [0, 1, 3], explanation: "On-time payments, low utilization, and a long history build credit. Maxing cards and rapid-fire applications hurt it.")
        ]),
        flashcards: [
            Flashcard(id: "money104_f1", front: "Credit Score", back: "A number, typically 300 to 850, that predicts how reliably you repay borrowed money and affects loans, rates, and approvals."),
            Flashcard(id: "money104_f2", front: "Credit Utilization", back: "The percentage of your available credit you are using. Keeping it under 30% (ideally under 10%) protects your score."),
            Flashcard(id: "money104_f3", front: "APR", back: "Annual Percentage Rate - the yearly cost of borrowing money, used to compare the expense of different debts."),
            Flashcard(id: "money104_f4", front: "Secured Credit Card", back: "A card backed by a cash deposit, used to build or rebuild credit when you have little or no history.")
        ],
        tags: ["credit", "debt", "basics"]
    )

    // MARK: - Tier 2: Working Knowledge

    static let lesson5 = Lesson(
        id: "money_t2_01",
        categoryId: .finance,
        tier: 2,
        lessonNumber: 1,
        title: "Saving vs Investing",
        subtitle: "Two different jobs for your money",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["money_t1_04"],
        contentBlocks: [
            ContentBlock(id: "money201_b1", type: .whyMatters, title: "Why the Distinction Matters", bullets: [
                "Saving and investing are different tools for different jobs - confusing them costs you money or growth.",
                "Saving keeps money safe and available for near-term needs; investing grows money over years.",
                "Cash in savings slowly loses value to inflation; investing aims to outpace it.",
                "Knowing which to use, and when, is the core skill of building wealth."
            ]),
            ContentBlock(id: "money201_b2", type: .componentBreakdown, title: "Saving Defined", bullets: [
                "Goal: safety and quick access for short-term needs (under 3 to 5 years).",
                "Vehicles: high-yield savings, money market accounts, short CDs.",
                "Return: modest interest, often near or just above inflation.",
                "Risk: very low; principal is protected and often FDIC-insured.",
                "Use it for: emergency fund, a car you will buy next year, a near-term down payment."
            ]),
            ContentBlock(id: "money201_b3", type: .componentBreakdown, title: "Investing Defined", bullets: [
                "Goal: growth over the long term (5+ years, often decades).",
                "Vehicles: stocks, bonds, index funds, ETFs, real estate.",
                "Return: historically higher than savings, but not guaranteed and it fluctuates.",
                "Risk: values rise and fall; you can lose money in the short run.",
                "Use it for: retirement, long-term wealth, money you will not need soon."
            ], callouts: ["Never invest money you might need within a few years - short-term dips can force you to sell at a loss."]),
            ContentBlock(id: "money201_b4", type: .principles, title: "Inflation: The Silent Tax", bullets: [
                "Inflation is the rise in prices over time, averaging roughly 2 to 3% per year historically.",
                "At 3% inflation, $100 today buys about $74 worth of goods in 10 years.",
                "Cash that earns less than inflation loses purchasing power every year.",
                "Investing is how you try to beat inflation and actually grow real wealth.",
                "This is why long-term money belongs in investments, not under the mattress."
            ]),
            ContentBlock(id: "money201_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Save for short-term needs and safety; invest for long-term growth.",
                "Savings is low-risk and liquid; investing carries risk but higher expected returns.",
                "Inflation erodes idle cash, so long-term money should be invested.",
                "Match the tool to the time horizon."
            ])
        ],
        quiz: Quiz(id: "money201_q", passPercent: 80, questions: [
            Question(id: "money201_q1", type: .multipleChoice, prompt: "Which is the better description of when to invest rather than save?", choices: ["Money you need next month", "Money you will not need for 5+ years", "Your daily spending money", "Your emergency fund"], correctIndex: 1, explanation: "Investing suits long horizons (5+ years) where time can ride out short-term swings. Near-term money belongs in savings."),
            Question(id: "money201_q2", type: .scenario, prompt: "You plan to buy a house in about 18 months and have the down payment saved. Where should that money sit?", choices: ["In the stock market for higher returns", "In a high-yield savings account or short CD", "In a single hot stock", "In cryptocurrency"], correctIndex: 1, explanation: "An 18-month horizon is short. A market dip right before you buy could shrink your down payment, so keep it safe and liquid."),
            Question(id: "money201_q3", prompt: "____ is the rise in prices over time that quietly erodes the purchasing power of idle cash.", acceptedAnswers: ["inflation"], explanation: "Inflation reduces what your money buys over time. Beating it is a key reason to invest long-term money rather than hold cash."),
            Question(id: "money201_q4", prompt: "Match each money job to the right tool.", matchingPairs: [
                MatchingPair(left: "Emergency fund", right: "High-yield savings account"),
                MatchingPair(left: "Retirement in 30 years", right: "Index funds and ETFs"),
                MatchingPair(left: "Car purchase next year", right: "Short CD or savings"),
                MatchingPair(left: "Long-term wealth", right: "Diversified investments")
            ], explanation: "Short-term and safety needs go to savings; long-horizon growth goes to investments. Matching tool to time horizon is the skill."),
            Question(id: "money201_q5", type: .multipleChoice, prompt: "What is the main risk of keeping all your long-term money in a savings account?", choices: ["It is too volatile", "It loses purchasing power to inflation", "It cannot be FDIC-insured", "It is impossible to access"], correctIndex: 1, explanation: "Savings is safe but low-return. Over decades, inflation can outpace the interest, eroding real wealth.")
        ]),
        flashcards: [
            Flashcard(id: "money201_f1", front: "Saving", back: "Setting money aside safely for short-term needs and emergencies, prioritizing low risk and quick access over growth."),
            Flashcard(id: "money201_f2", front: "Investing", back: "Putting money into assets like stocks and funds to grow it over the long term, accepting short-term risk for higher expected returns."),
            Flashcard(id: "money201_f3", front: "Inflation", back: "The gradual rise in prices over time (historically about 2 to 3% per year) that erodes the purchasing power of cash."),
            Flashcard(id: "money201_f4", front: "Time Horizon", back: "How long until you need the money. Short horizons favor saving; long horizons favor investing.")
        ],
        tags: ["saving", "investing", "inflation"]
    )

    static let lesson6 = Lesson(
        id: "money_t2_02",
        categoryId: .finance,
        tier: 2,
        lessonNumber: 2,
        title: "Compound Interest",
        subtitle: "The most powerful force in money",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["money_t2_01"],
        contentBlocks: [
            ContentBlock(id: "money202_b1", type: .whyMatters, title: "Why Compounding Wins", bullets: [
                "Compound interest is earning returns on your returns, not just on your original money.",
                "Over decades it produces growth that looks almost unbelievable - small amounts become large fortunes.",
                "It rewards time more than amount: starting early beats investing more later.",
                "The same force works against you with debt, where interest compounds on what you owe."
            ], body: "Albert Einstein reportedly called compound interest the eighth wonder of the world for good reason."),
            ContentBlock(id: "money202_b2", type: .howItWorks, title: "How Compounding Works", bullets: [
                "Year 1: $1,000 at 10% earns $100, growing to $1,100.",
                "Year 2: you earn 10% on $1,100, which is $110, not $100 - the extra $10 is interest on interest.",
                "Each year the base grows, so the dollar gains accelerate over time.",
                "The longer the money stays invested, the steeper the curve gets at the end.",
                "Reinvesting dividends and gains is what keeps the snowball rolling."
            ]),
            ContentBlock(id: "money202_b3", type: .principles, title: "The Rule of 72", bullets: [
                "Divide 72 by your annual return rate to estimate years to double your money.",
                "At 8% a year, money doubles in about 9 years (72 / 8 = 9).",
                "At 10%, it doubles in about 7.2 years.",
                "Run it backward on debt: a 24% credit card doubles what you owe in about 3 years if unpaid.",
                "It is a quick mental tool, not exact, but close enough to make decisions."
            ], callouts: ["The Rule of 72 reveals why high-interest debt is so dangerous - it doubles fast too."]),
            ContentBlock(id: "money202_b4", type: .realWorld, title: "Start Early: The Tortoise Wins", bullets: [
                "Investor A puts in $200/month from age 25 to 35, then stops, total $24,000.",
                "Investor B puts in $200/month from age 35 to 65, total $72,000.",
                "At a 7% average return, the early starter often ends up with MORE despite investing far less.",
                "The reason: A's money had an extra decade to compound before B even began.",
                "Time in the market is the lever that ordinary income earners can pull."
            ]),
            ContentBlock(id: "money202_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Compounding means earning returns on your returns - growth accelerates over time.",
                "Time matters more than amount; start as early as you can.",
                "The Rule of 72 estimates doubling time: 72 divided by the rate.",
                "Compounding builds wealth in investing and destroys it in high-interest debt."
            ])
        ],
        quiz: Quiz(id: "money202_q", passPercent: 80, questions: [
            Question(id: "money202_q1", type: .multipleChoice, prompt: "What does compound interest mean?", choices: ["Earning interest only on your original deposit", "Earning interest on both your original money and prior interest", "A flat fee charged by banks", "Interest that never changes"], correctIndex: 1, explanation: "Compounding earns returns on your returns. That snowball effect is what makes long-term investing so powerful."),
            Question(id: "money202_q2", type: .multipleChoice, prompt: "Using the Rule of 72, about how long does it take to double money earning 8% a year?", choices: ["About 3 years", "About 9 years", "About 18 years", "About 36 years"], correctIndex: 1, explanation: "72 divided by 8 equals 9. The Rule of 72 gives a quick estimate of doubling time."),
            Question(id: "money202_q3", type: .scenario, prompt: "Two friends each invest $200/month at 7%. One starts at 25 and stops at 35; the other starts at 35 and goes to 65. What usually happens?", choices: ["The later starter always wins because they invest more", "The early starter often ends up with more despite investing less", "They always end up exactly equal", "Neither builds meaningful wealth"], correctIndex: 1, explanation: "The early starter's money compounds for an extra decade, frequently overtaking someone who invested three times as much but started later."),
            Question(id: "money202_q4", prompt: "The Rule of ____ estimates how many years it takes to double your money: divide it by your annual return rate.", acceptedAnswers: ["72", "seventy-two", "seventy two"], explanation: "The Rule of 72 is a fast mental shortcut. Divide 72 by the annual rate to estimate years to double."),
            Question(id: "money202_q5", type: .multiSelect, prompt: "Which statements about compounding are true?", choices: ["Starting early is more powerful than investing more later", "It works against you with high-interest debt", "Reinvesting gains accelerates growth", "It only matters for the wealthy", "The growth curve steepens over time"], correctIndices: [0, 1, 2, 4], explanation: "Compounding rewards time, accelerates with reinvestment, steepens late, and cuts both ways. It matters for everyone, not just the rich.")
        ]),
        flashcards: [
            Flashcard(id: "money202_f1", front: "Compound Interest", back: "Earning returns on both your original principal and all previously earned interest, creating accelerating growth over time."),
            Flashcard(id: "money202_f2", front: "Rule of 72", back: "A shortcut to estimate years to double money: divide 72 by the annual return rate."),
            Flashcard(id: "money202_f3", front: "Reinvesting", back: "Putting earnings, dividends, and gains back into the investment so they too begin compounding."),
            Flashcard(id: "money202_f4", front: "Time in the Market", back: "The principle that how long money stays invested matters more than trying to time the market perfectly.")
        ],
        tags: ["compound-interest", "growth", "investing"]
    )

    static let lesson7 = Lesson(
        id: "money_t2_03",
        categoryId: .finance,
        tier: 2,
        lessonNumber: 3,
        title: "Index Funds and ETFs",
        subtitle: "The simplest way to own the market",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["money_t2_02"],
        contentBlocks: [
            ContentBlock(id: "money203_b1", type: .whyMatters, title: "Why Index Funds Changed the Game", bullets: [
                "An index fund holds every company in a market index, so you own a tiny slice of hundreds or thousands of businesses at once.",
                "Instead of betting on one stock, you own the whole market and ride its long-term growth.",
                "They are cheap, simple, and historically beat most actively managed funds over time.",
                "For the average person, low-cost index investing is one of the most reliable wealth-building tools available."
            ], body: "You do not need to pick winners - you can simply own them all."),
            ContentBlock(id: "money203_b2", type: .keyTerms, title: "Key Terms", bullets: [
                "Index - a list that tracks a market segment, like the S&P 500 (about 500 large U.S. companies).",
                "Index fund - a fund built to mirror an index's holdings and returns.",
                "ETF (exchange-traded fund) - an index fund that trades like a stock throughout the day.",
                "Expense ratio - the annual fee a fund charges, shown as a percentage; lower is better.",
                "Diversification - spreading money across many assets to reduce the impact of any one failing."
            ]),
            ContentBlock(id: "money203_b3", type: .componentBreakdown, title: "Index Fund vs ETF", bullets: [
                "Both can track the same index and deliver nearly identical returns.",
                "Mutual-fund index funds trade once per day at the closing price; ETFs trade anytime the market is open.",
                "ETFs often have very low expense ratios and no minimum beyond one share's price.",
                "Many index mutual funds require a minimum initial investment.",
                "For most long-term investors, the difference is minor - both are excellent low-cost choices."
            ]),
            ContentBlock(id: "money203_b4", type: .proTips, title: "Why Fees Quietly Matter", bullets: [
                "A 1% annual fee may sound small, but over decades it can consume a large chunk of your returns.",
                "Broad index funds often charge 0.03% to 0.10% - pennies on every $100.",
                "Actively managed funds may charge 0.5% to 1.5% and still underperform the index.",
                "Lower fees mean more of the market's return stays in your pocket and compounds.",
                "When two funds track the same index, the cheaper one almost always wins."
            ], callouts: ["A 1% fee on a $100,000 portfolio is $1,000 a year - and that money never gets to compound for you."]),
            ContentBlock(id: "money203_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Index funds and ETFs let you own an entire market cheaply and simply.",
                "They diversify automatically, reducing single-company risk.",
                "Expense ratios matter enormously over time - favor low-cost funds.",
                "For most people, broad low-cost index investing is a proven, boring, effective strategy."
            ])
        ],
        quiz: Quiz(id: "money203_q", passPercent: 80, questions: [
            Question(id: "money203_q1", type: .multipleChoice, prompt: "What does an S&P 500 index fund hold?", choices: ["A single hand-picked stock", "About 500 large U.S. companies", "Only bonds and cash", "Foreign currencies"], correctIndex: 1, explanation: "An S&P 500 index fund holds roughly 500 large U.S. companies, giving you instant diversification across the broad market."),
            Question(id: "money203_q2", type: .multipleChoice, prompt: "What is an expense ratio?", choices: ["The fund's yearly return", "The annual fee the fund charges, as a percentage", "The number of stocks in the fund", "A one-time purchase tax"], correctIndex: 1, explanation: "The expense ratio is the fund's annual fee. Lower is better because fees drag on your long-term returns."),
            Question(id: "money203_q3", type: .scenario, prompt: "Two funds track the exact same index. Fund A charges 0.04% and Fund B charges 1.0%. Which should you generally choose?", choices: ["Fund B, because higher fees mean better management", "Fund A, because lower fees leave more return for you", "It makes no difference at all", "Whichever has the longer name"], correctIndex: 1, explanation: "When two funds track the same index, returns are nearly identical, so the lower-fee fund wins. Fees compound against you over time."),
            Question(id: "money203_q4", prompt: "Spreading your money across many investments to reduce the impact of any single one failing is called ____.", acceptedAnswers: ["diversification", "diversifying"], explanation: "Diversification reduces risk by not betting everything on one company. Index funds diversify automatically."),
            Question(id: "money203_q5", type: .multiSelect, prompt: "Which are true of broad index funds and ETFs?", choices: ["They hold many companies at once", "They typically have low expense ratios", "They guarantee you never lose money", "ETFs trade throughout the day like stocks", "They diversify automatically"], correctIndices: [0, 1, 3, 4], explanation: "Index funds are diversified, low-cost, and ETFs trade intraday. But no investment guarantees against loss - values still rise and fall.")
        ]),
        flashcards: [
            Flashcard(id: "money203_f1", front: "Index Fund", back: "A fund that mirrors a market index by holding all its companies, giving broad diversification at low cost."),
            Flashcard(id: "money203_f2", front: "ETF", back: "Exchange-Traded Fund - an index-style fund that trades like a stock throughout the day, often with very low fees."),
            Flashcard(id: "money203_f3", front: "Expense Ratio", back: "The annual fee a fund charges as a percentage of assets. Lower ratios leave more of the return for you."),
            Flashcard(id: "money203_f4", front: "S&P 500", back: "An index of about 500 large U.S. companies, widely used as a benchmark for the broad American stock market.")
        ],
        tags: ["index-funds", "etf", "investing"]
    )

    static let lesson8 = Lesson(
        id: "money_t2_04",
        categoryId: .finance,
        tier: 2,
        lessonNumber: 4,
        title: "Retirement Accounts and Tax Basics",
        subtitle: "401k, IRAs, and how income tax works",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["money_t2_03"],
        contentBlocks: [
            ContentBlock(id: "money204_b1", type: .whyMatters, title: "Why Tax-Advantaged Accounts Win", bullets: [
                "Retirement accounts give you legal tax breaks that let your money grow faster than a regular brokerage account.",
                "A 401(k) match from your employer is free money - passing it up is leaving a guaranteed return on the table.",
                "Understanding income tax basics helps you keep more of every dollar you earn.",
                "These accounts are the main engine most ordinary people use to retire comfortably."
            ], callouts: ["This is general education, not tax advice. Tax rules change and vary by situation - consult a qualified professional for your case."]),
            ContentBlock(id: "money204_b2", type: .componentBreakdown, title: "The Main Account Types", bullets: [
                "401(k) - employer-sponsored; contributions often come from your paycheck pre-tax, and employers may match.",
                "Traditional IRA - you may deduct contributions now and pay taxes when you withdraw in retirement.",
                "Roth IRA - you contribute after-tax money now and withdrawals in retirement are tax-free.",
                "Both IRAs have annual contribution limits set by the IRS that adjust over time.",
                "Many people use a 401(k) up to the match, then fund a Roth IRA."
            ]),
            ContentBlock(id: "money204_b3", type: .principles, title: "Traditional vs Roth: The Core Trade-Off", bullets: [
                "Traditional: tax break now, taxed later. Good if you expect a lower tax rate in retirement.",
                "Roth: pay tax now, tax-free later. Good if you expect a higher tax rate in retirement, common for younger earners.",
                "Roth growth is never taxed again if rules are followed - decades of gains come out free.",
                "You can hold both and split contributions to hedge your future tax rate."
            ]),
            ContentBlock(id: "money204_b4", type: .howItWorks, title: "How Income Tax Basics Work", bullets: [
                "The U.S. uses progressive tax brackets: higher portions of income are taxed at higher rates, not your whole income.",
                "Your marginal rate is the rate on your last dollar; your effective rate is the average across all your income.",
                "A raise pushing you into a higher bracket only taxes the dollars in that bracket more, never all of it.",
                "Deductions reduce taxable income; credits reduce the tax you owe dollar-for-dollar.",
                "Pre-tax 401(k) and Traditional IRA contributions lower this year's taxable income."
            ]),
            ContentBlock(id: "money204_b5", type: .stepByStep, title: "A Sensible Retirement Order", bullets: [
                "1. Contribute to your 401(k) at least enough to capture the full employer match.",
                "2. Build or maintain your emergency fund.",
                "3. Pay off high-interest debt aggressively.",
                "4. Fund a Roth or Traditional IRA up to the annual limit.",
                "5. Return to the 401(k) and increase contributions toward the annual maximum."
            ]),
            ContentBlock(id: "money204_b6", type: .summary, title: "The Bottom Line", bullets: [
                "401(k)s and IRAs give tax advantages that supercharge long-term growth.",
                "Always capture a full employer match - it is free money.",
                "Traditional saves taxes now; Roth gives tax-free withdrawals later.",
                "Tax brackets are progressive, so a raise never lowers your total take-home pay."
            ])
        ],
        quiz: Quiz(id: "money204_q", passPercent: 80, questions: [
            Question(id: "money204_q1", type: .multipleChoice, prompt: "What is the key difference between a Roth IRA and a Traditional IRA?", choices: ["Roth has no contribution limit", "Roth is taxed now and withdrawn tax-free; Traditional is deducted now and taxed later", "Traditional is only for the wealthy", "There is no real difference"], correctIndex: 1, explanation: "Roth = pay tax now, withdraw tax-free later. Traditional = deduct now, pay tax on withdrawals. The bet is on your future tax rate."),
            Question(id: "money204_q2", type: .scenario, prompt: "Your employer matches 100% of your 401(k) contributions up to 4% of your salary, but you contribute nothing. What are you doing?", choices: ["Saving money by avoiding the account", "Leaving a guaranteed 100% return on the table", "Making the smart tax move", "Avoiding all risk wisely"], correctIndex: 1, explanation: "An employer match is free money and an instant return. Not contributing enough to get the full match leaves guaranteed gains unclaimed."),
            Question(id: "money204_q3", type: .multipleChoice, prompt: "In a progressive tax system, what happens when a raise pushes part of your income into a higher bracket?", choices: ["Your entire income is taxed at the higher rate", "Only the dollars in the higher bracket are taxed at that rate", "You lose money by earning more", "Your tax rate drops"], correctIndex: 1, explanation: "Only the income within each bracket is taxed at that bracket's rate. A raise never causes your whole income to be taxed higher."),
            Question(id: "money204_q4", prompt: "Your ____ tax rate is the rate on your last dollar earned, while your effective rate is the average across all your income.", acceptedAnswers: ["marginal"], explanation: "Marginal rate applies to your next/last dollar; effective rate is your overall average. Confusing the two leads to bad raise math."),
            Question(id: "money204_q5", prompt: "Match each item to its definition.", matchingPairs: [
                MatchingPair(left: "Tax deduction", right: "Reduces your taxable income"),
                MatchingPair(left: "Tax credit", right: "Reduces tax owed dollar-for-dollar"),
                MatchingPair(left: "Roth IRA", right: "After-tax contributions, tax-free withdrawals"),
                MatchingPair(left: "401(k) match", right: "Free money from your employer")
            ], explanation: "Deductions shrink taxable income; credits cut the tax bill directly. Roth grows tax-free, and the match is an instant return.")
        ]),
        flashcards: [
            Flashcard(id: "money204_f1", front: "401(k)", back: "An employer-sponsored retirement account funded from your paycheck, often with employer matching contributions."),
            Flashcard(id: "money204_f2", front: "Roth IRA", back: "A retirement account funded with after-tax money; qualified withdrawals in retirement are completely tax-free."),
            Flashcard(id: "money204_f3", front: "Employer Match", back: "Money your employer adds to your 401(k) based on your own contributions - effectively free money and an instant return."),
            Flashcard(id: "money204_f4", front: "Progressive Tax Brackets", back: "A system where higher portions of income are taxed at higher rates, so only the income within each bracket is taxed at that rate.")
        ],
        tags: ["retirement", "taxes", "401k", "ira"]
    )

    // MARK: - Tier 3: Advanced Skills

    static let lesson9 = Lesson(
        id: "money_t3_01",
        categoryId: .finance,
        tier: 3,
        lessonNumber: 1,
        title: "Building a Simple Portfolio",
        subtitle: "Asset allocation without the complexity",
        estimatedMinutes: 9,
        difficulty: 2,
        prerequisites: ["money_t2_04"],
        contentBlocks: [
            ContentBlock(id: "money301_b1", type: .whyMatters, title: "Why Allocation Beats Stock-Picking", bullets: [
                "A portfolio is the full mix of investments you own; how you split it matters more than any single pick.",
                "Asset allocation - your blend of stocks and bonds - drives most of your long-term results and risk.",
                "A simple, well-allocated portfolio beats a complicated one you cannot stick with.",
                "You can build a complete portfolio with just two or three low-cost funds."
            ], callouts: ["This is general education, not personalized investment advice. Consider your own goals and a licensed professional for your plan."]),
            ContentBlock(id: "money301_b2", type: .keyTerms, title: "The Building Blocks", bullets: [
                "Stocks (equities) - ownership in companies; higher growth, higher short-term swings.",
                "Bonds (fixed income) - loans to governments or companies; lower growth, more stability.",
                "Asset allocation - the percentage split between stocks and bonds.",
                "Rebalancing - periodically returning your mix to its target percentages.",
                "Total market fund - a single fund holding the whole stock or bond market."
            ]),
            ContentBlock(id: "money301_b3", type: .principles, title: "Allocation by Time Horizon", bullets: [
                "A common rough guide: subtract your age from 110 to estimate your stock percentage.",
                "Younger investors with decades to go can hold mostly stocks and ride out downturns.",
                "As retirement approaches, shifting toward bonds reduces the risk of a crash right before you need the money.",
                "There is no single perfect number - match the mix to your goals and your stomach for swings.",
                "A simple three-fund portfolio: U.S. stocks, international stocks, and bonds."
            ]),
            ContentBlock(id: "money301_b4", type: .howItWorks, title: "Rebalancing in Practice", bullets: [
                "Say you target 80% stocks and 20% bonds. After a strong year, stocks might grow to 88%.",
                "Rebalancing sells some stocks and buys bonds to return to 80/20.",
                "This enforces buy-low, sell-high automatically and controls your risk level.",
                "Check once or twice a year; you do not need to tinker constantly.",
                "Many target-date funds rebalance for you automatically as you age."
            ]),
            ContentBlock(id: "money301_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Asset allocation, your stock-to-bond mix, drives most of your results.",
                "Younger investors can hold more stocks; shift toward bonds as you near retirement.",
                "A two or three fund portfolio can be complete and excellent.",
                "Rebalance once or twice a year to keep your risk in check."
            ])
        ],
        quiz: Quiz(id: "money301_q", passPercent: 80, questions: [
            Question(id: "money301_q1", type: .multipleChoice, prompt: "What does asset allocation refer to?", choices: ["The single best stock to buy", "The percentage split between stocks, bonds, and other assets", "The fee a broker charges", "The day you buy investments"], correctIndex: 1, explanation: "Asset allocation is your blend of asset types, like stocks vs bonds. It drives most of your long-term risk and return."),
            Question(id: "money301_q2", type: .scenario, prompt: "You target 80% stocks and 20% bonds. After a great year, stocks have grown to 90% of your portfolio. What does rebalancing call for?", choices: ["Buy more stocks since they are winning", "Sell some stocks and buy bonds to return to 80/20", "Sell everything and hold cash", "Do nothing ever"], correctIndex: 1, explanation: "Rebalancing returns you to target by trimming the overgrown asset and adding to the other, automatically buying low and selling high."),
            Question(id: "money301_q3", type: .multipleChoice, prompt: "Generally, how should a portfolio shift as someone approaches retirement?", choices: ["Toward more stocks for maximum growth", "Toward more bonds to reduce risk", "Entirely into a single company", "Entirely into cash forever"], correctIndex: 1, explanation: "Nearing retirement, shifting toward bonds reduces the chance a crash hits right when you need to start withdrawing."),
            Question(id: "money301_q4", prompt: "____ is the act of periodically returning your portfolio to its target stock-and-bond percentages.", acceptedAnswers: ["rebalancing", "rebalance"], explanation: "Rebalancing keeps your risk level steady and enforces disciplined buy-low, sell-high behavior."),
            Question(id: "money301_q5", type: .multiSelect, prompt: "Which describe a sound simple portfolio approach?", choices: ["Hold a few low-cost broad funds", "Rebalance once or twice a year", "Chase whatever stock is hot this week", "Match allocation to your time horizon", "Constantly buy and sell to time the market"], correctIndices: [0, 1, 3], explanation: "Broad low-cost funds, occasional rebalancing, and horizon-matched allocation are sound. Chasing hot stocks and market timing usually hurt returns.")
        ]),
        flashcards: [
            Flashcard(id: "money301_f1", front: "Asset Allocation", back: "The percentage split of your portfolio among asset types like stocks and bonds - the main driver of risk and return."),
            Flashcard(id: "money301_f2", front: "Rebalancing", back: "Periodically adjusting your holdings back to target percentages, which controls risk and enforces buy-low, sell-high."),
            Flashcard(id: "money301_f3", front: "Three-Fund Portfolio", back: "A simple complete portfolio of U.S. stocks, international stocks, and bonds using low-cost index funds."),
            Flashcard(id: "money301_f4", front: "Bonds", back: "Loans to governments or companies that pay interest; they add stability and lower volatility to a portfolio.")
        ],
        tags: ["portfolio", "allocation", "investing"]
    )

    static let lesson10 = Lesson(
        id: "money_t3_02",
        categoryId: .finance,
        tier: 3,
        lessonNumber: 2,
        title: "Risk and Diversification",
        subtitle: "Don't put all your eggs in one basket",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["money_t3_01"],
        contentBlocks: [
            ContentBlock(id: "money302_b1", type: .whyMatters, title: "Why Managing Risk Builds Wealth", bullets: [
                "Risk is the chance an investment loses value or does not perform as hoped.",
                "You cannot eliminate risk, but you can manage it so no single event wipes you out.",
                "The goal is not to avoid all risk - it is to take smart, survivable risk that pays you over time.",
                "Men who manage risk well stay in the game long enough for compounding to work."
            ]),
            ContentBlock(id: "money302_b2", type: .keyTerms, title: "Types of Risk", bullets: [
                "Market risk - the whole market can fall, affecting nearly everything.",
                "Company-specific risk - one business can fail while the market is fine.",
                "Inflation risk - your money loses purchasing power over time.",
                "Volatility - how much an investment's price swings up and down.",
                "Sequence risk - bad returns early in retirement can do lasting damage."
            ]),
            ContentBlock(id: "money302_b3", type: .principles, title: "How Diversification Protects You", bullets: [
                "Diversification spreads money across many investments so one failure does not sink you.",
                "It targets company-specific risk: if you own 500 companies and one goes bankrupt, you barely feel it.",
                "Spreading across asset types, industries, and geographies smooths the ride.",
                "Diversification does not remove market risk - when the whole market drops, diversified portfolios drop too.",
                "It is the closest thing to a free lunch in investing: lower risk without necessarily lower expected return."
            ], callouts: ["Holding mostly your employer's stock concentrates two risks at once: your paycheck and your savings both depend on one company."]),
            ContentBlock(id: "money302_b4", type: .commonMistakes, title: "Risk Mistakes to Avoid", bullets: [
                "Putting a large share of your money in one stock, often the company you work for.",
                "Confusing a recent winner with a safe bet - past performance is not a guarantee.",
                "Taking on more volatility than you can emotionally handle, then panic-selling at the bottom.",
                "Being so afraid of risk that you hold only cash and lose to inflation.",
                "Believing diversification means you can never lose money."
            ]),
            ContentBlock(id: "money302_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Risk is unavoidable; the job is to manage it, not erase it.",
                "Diversification reduces company-specific risk but not market-wide risk.",
                "Avoid concentrating in one stock, especially your employer's.",
                "Take survivable risk matched to your horizon and temperament."
            ])
        ],
        quiz: Quiz(id: "money302_q", passPercent: 80, questions: [
            Question(id: "money302_q1", type: .multipleChoice, prompt: "What kind of risk does diversification primarily reduce?", choices: ["Market-wide risk", "Company-specific risk", "Inflation risk entirely", "All risk completely"], correctIndex: 1, explanation: "Diversification mainly reduces company-specific risk. If one of many holdings fails, the impact is small. It cannot remove market-wide drops."),
            Question(id: "money302_q2", type: .scenario, prompt: "Most of your savings is in your employer's stock, and you also rely on that company for your paycheck. Why is this dangerous?", choices: ["It is not dangerous at all", "Both your income and savings depend on one company's fate", "It guarantees the highest returns", "Employer stock is always safe"], correctIndex: 1, explanation: "Concentrating savings in your employer doubles your exposure: if the company struggles, you could lose your job and your nest egg at once."),
            Question(id: "money302_q3", prompt: "____ measures how much an investment's price swings up and down over time.", acceptedAnswers: ["volatility"], explanation: "Volatility describes the size of price swings. Higher volatility means a bumpier ride, which can trigger panic-selling if you are not prepared."),
            Question(id: "money302_q4", prompt: "Match each risk type to its description.", matchingPairs: [
                MatchingPair(left: "Market risk", right: "The whole market can fall"),
                MatchingPair(left: "Company-specific risk", right: "One business can fail alone"),
                MatchingPair(left: "Inflation risk", right: "Money loses purchasing power"),
                MatchingPair(left: "Volatility", right: "Size of price swings")
            ], explanation: "Different risks call for different defenses. Diversification handles company-specific risk; investing for growth handles inflation risk."),
            Question(id: "money302_q5", type: .multiSelect, prompt: "Which are smart ways to manage investment risk?", choices: ["Diversify across many companies and asset types", "Put everything in one hot stock", "Match risk to your time horizon", "Hold only cash forever", "Avoid panic-selling during downturns"], correctIndices: [0, 2, 4], explanation: "Diversifying, matching risk to horizon, and staying calm in downturns manage risk well. Concentration and all-cash both create their own dangers.")
        ]),
        flashcards: [
            Flashcard(id: "money302_f1", front: "Diversification", back: "Spreading money across many investments so the failure of any one has little impact, mainly reducing company-specific risk."),
            Flashcard(id: "money302_f2", front: "Volatility", back: "The degree to which an investment's price swings up and down. Higher volatility means a bumpier but not necessarily worse ride."),
            Flashcard(id: "money302_f3", front: "Company-Specific Risk", back: "The risk that a single business fails or underperforms, which diversification can largely neutralize."),
            Flashcard(id: "money302_f4", front: "Concentration Risk", back: "The danger of holding too much in one investment, such as putting most of your savings in your employer's stock.")
        ],
        tags: ["risk", "diversification", "investing"]
    )

    static let lesson11 = Lesson(
        id: "money_t3_03",
        categoryId: .finance,
        tier: 3,
        lessonNumber: 3,
        title: "Avoiding Scams and Debt Traps",
        subtitle: "Protect what you build",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["money_t3_02"],
        contentBlocks: [
            ContentBlock(id: "money303_b1", type: .whyMatters, title: "Why Defense Wins", bullets: [
                "Building wealth is hard; losing it to a scam or a debt trap can happen in minutes.",
                "Scammers and predatory lenders target everyone, and smart people fall for sophisticated schemes too.",
                "Avoiding one major financial mistake can be worth more than years of investing gains.",
                "Recognizing the patterns is the best protection you can have."
            ]),
            ContentBlock(id: "money303_b2", type: .failureModes, title: "Scam Red Flags", bullets: [
                "Guaranteed high returns with no risk - real investments never promise this.",
                "Pressure to act NOW before a deadline so you cannot think or research.",
                "Requests for payment by gift card, wire transfer, or cryptocurrency, which are hard to reverse.",
                "Unsolicited contact claiming to be the IRS, your bank, or tech support demanding action.",
                "Anything that requires you to recruit others to make money is likely a pyramid scheme."
            ], callouts: ["If it sounds too good to be true, it is. Legitimate opportunities survive scrutiny; scams collapse under it."]),
            ContentBlock(id: "money303_b3", type: .keyTerms, title: "High-Interest Debt Traps", bullets: [
                "Payday loans - small short-term loans with effective APRs that can exceed 300% or 400%.",
                "Title loans - borrow against your car; miss payments and you can lose the vehicle.",
                "Rent-to-own - pay far more than retail for furniture or electronics over time.",
                "Buy-now-pay-later overuse - easy to stack many payments you lose track of.",
                "Credit card cash advances - high fees and interest that starts immediately with no grace period."
            ]),
            ContentBlock(id: "money303_b4", type: .stepByStep, title: "Protect Yourself", bullets: [
                "1. Slow down - pressure is the scammer's main weapon, so never decide on the spot.",
                "2. Verify independently - hang up and call the real company using the number on your card or statement.",
                "3. Never pay with gift cards, wire transfers, or crypto to someone you do not know.",
                "4. Freeze your credit with the bureaus to block new accounts in your name.",
                "5. For cash crunches, seek a small bank loan, a payment plan, or your emergency fund before payday lenders."
            ]),
            ContentBlock(id: "money303_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Guaranteed returns, urgency, and untraceable payment are scam red flags.",
                "Payday, title, and rent-to-own products carry brutal effective interest rates.",
                "Slow down and verify independently before sending money.",
                "Avoiding one big mistake protects years of hard-won progress."
            ])
        ],
        quiz: Quiz(id: "money303_q", passPercent: 80, questions: [
            Question(id: "money303_q1", type: .multipleChoice, prompt: "Which is the clearest red flag of an investment scam?", choices: ["A detailed prospectus you can review", "A guaranteed high return with no risk", "A modest, realistic expected return", "Being told to take your time deciding"], correctIndex: 1, explanation: "No legitimate investment guarantees high returns with no risk. That promise is the hallmark of a scam."),
            Question(id: "money303_q2", type: .scenario, prompt: "Someone calls claiming to be from your bank, says your account is compromised, and demands you read back a verification code right now. What should you do?", choices: ["Read the code so they can fix it fast", "Hang up and call the bank using the number on your card", "Give them remote access to your phone", "Send a gift card to verify your identity"], correctIndex: 1, explanation: "Real banks never ask for codes or pressure you like this. Hang up and call the official number yourself to verify independently."),
            Question(id: "money303_q3", prompt: "____ loans are small, short-term loans with effective APRs that can exceed 300% or 400%, trapping borrowers in repeated borrowing.", acceptedAnswers: ["payday", "pay-day"], explanation: "Payday loans carry extreme effective interest rates and often roll over, trapping borrowers. Seek almost any alternative first."),
            Question(id: "money303_q4", type: .multiSelect, prompt: "Which are common scam or debt-trap warning signs?", choices: ["Pressure to act immediately", "Payment demanded by gift card or wire", "A return that beats inflation by a small, realistic margin", "Requests to recruit others to earn money", "Unsolicited contact claiming to be the IRS"], correctIndices: [0, 1, 3, 4], explanation: "Urgency, untraceable payment, recruitment, and IRS impersonation are classic warning signs. A small realistic return is normal and not a red flag."),
            Question(id: "money303_q5", type: .scenario, prompt: "You have an unexpected $500 bill and no cash until payday. Which is the worst option?", choices: ["Use your emergency fund", "Ask your bank about a small personal loan", "Take a payday loan at over 300% APR", "Set up a payment plan with the biller"], correctIndex: 2, explanation: "A payday loan at triple-digit APR is the most expensive and dangerous choice. The emergency fund, a bank loan, or a payment plan are all far better.")
        ]),
        flashcards: [
            Flashcard(id: "money303_f1", front: "Pyramid Scheme", back: "A fraud where earnings come mainly from recruiting others rather than selling a real product, destined to collapse."),
            Flashcard(id: "money303_f2", front: "Payday Loan", back: "A small short-term loan with extremely high effective APR (often 300%+) that frequently traps borrowers in repeat borrowing."),
            Flashcard(id: "money303_f3", front: "Credit Freeze", back: "Locking your credit report with the bureaus so no new accounts can be opened in your name without your approval."),
            Flashcard(id: "money303_f4", front: "Scam Urgency Tactic", back: "Pressure to act immediately so you cannot think or verify - a primary tool scammers use to bypass your judgment.")
        ],
        tags: ["scams", "debt-traps", "protection"]
    )

    static let lesson12 = Lesson(
        id: "money_t3_04",
        categoryId: .finance,
        tier: 3,
        lessonNumber: 4,
        title: "The Insurance You Actually Need",
        subtitle: "Protecting your income and assets",
        estimatedMinutes: 8,
        difficulty: 2,
        prerequisites: ["money_t3_03"],
        contentBlocks: [
            ContentBlock(id: "money304_b1", type: .whyMatters, title: "Why Insurance Is Wealth Defense", bullets: [
                "Insurance transfers the risk of a financial catastrophe from you to a company in exchange for a premium.",
                "One uninsured disaster, a serious illness, a lawsuit, a totaled car, can erase years of savings.",
                "The goal is to insure what you cannot afford to lose, not every minor inconvenience.",
                "Smart insurance lets you take other risks confidently because your downside is covered."
            ], callouts: ["This is general education, not insurance advice. Coverage needs vary widely; consult a licensed agent for your situation."]),
            ContentBlock(id: "money304_b2", type: .componentBreakdown, title: "The Coverage Most People Need", bullets: [
                "Health insurance - protects against catastrophic medical bills, the top cause of financial ruin.",
                "Auto insurance - required in most places; liability coverage protects you if you injure others.",
                "Renters or homeowners insurance - covers your belongings and liability at home.",
                "Term life insurance - replaces your income for dependents if you die; cheap when bought young.",
                "Disability insurance - replaces income if injury or illness stops you from working."
            ]),
            ContentBlock(id: "money304_b3", type: .keyTerms, title: "Insurance Terms to Know", bullets: [
                "Premium - what you pay (monthly or yearly) to keep the policy active.",
                "Deductible - what you pay out of pocket before insurance kicks in.",
                "Higher deductible usually means a lower premium, and vice versa.",
                "Liability coverage - pays for damage or injury you cause to others.",
                "Term vs whole life - term is pure, cheap coverage for a set period; whole life mixes coverage with a costly savings component."
            ]),
            ContentBlock(id: "money304_b4", type: .principles, title: "How to Buy Smart", bullets: [
                "Insure big, rare, catastrophic risks; self-insure small ones through your emergency fund.",
                "Raise deductibles to lower premiums once your emergency fund can cover the deductible.",
                "For most families, term life is far better value than whole life.",
                "Match life insurance coverage to those who depend on your income.",
                "Skip narrow, low-value add-ons like extended warranties on cheap electronics."
            ]),
            ContentBlock(id: "money304_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Insurance protects you from disasters you cannot afford to absorb.",
                "Health, auto liability, home or renters, term life, and disability are the core needs.",
                "Premium, deductible, and liability are the terms that drive your costs and protection.",
                "Insure the catastrophic, self-insure the small, and favor term over whole life."
            ])
        ],
        quiz: Quiz(id: "money304_q", passPercent: 80, questions: [
            Question(id: "money304_q1", type: .multipleChoice, prompt: "What is the core purpose of insurance?", choices: ["To make money on small claims", "To transfer the risk of a catastrophe you cannot afford", "To cover every minor expense", "To replace your emergency fund"], correctIndex: 1, explanation: "Insurance transfers catastrophic risk to the insurer. You insure what you cannot afford to lose, not the small stuff."),
            Question(id: "money304_q2", type: .multipleChoice, prompt: "What is a deductible?", choices: ["The monthly cost of the policy", "What you pay out of pocket before insurance pays", "A bonus the insurer pays you", "The maximum the policy will ever pay"], correctIndex: 1, explanation: "The deductible is your out-of-pocket share before coverage kicks in. Higher deductibles usually lower your premium."),
            Question(id: "money304_q3", type: .scenario, prompt: "You are young, healthy, and have two kids who depend on your income. Which life insurance is usually the smart buy?", choices: ["Whole life for the savings feature", "Term life, which is cheap and replaces income", "No life insurance at all", "Only coverage for funeral costs"], correctIndex: 1, explanation: "For income replacement, term life is far cheaper and does the job. Whole life's bundled savings is usually a poor value for most families."),
            Question(id: "money304_q4", prompt: "The ____ is the amount you regularly pay to keep an insurance policy active.", acceptedAnswers: ["premium"], explanation: "The premium is your ongoing payment for coverage. Raising the deductible typically lowers the premium."),
            Question(id: "money304_q5", type: .multiSelect, prompt: "Which coverages form the core of most people's insurance needs?", choices: ["Health insurance", "Extended warranty on a phone", "Auto liability insurance", "Disability insurance", "Term life insurance for dependents"], correctIndices: [0, 2, 3, 4], explanation: "Health, auto liability, disability, and term life protect against catastrophic losses. A phone warranty is a small, low-value add-on.")
        ]),
        flashcards: [
            Flashcard(id: "money304_f1", front: "Premium", back: "The regular payment you make to keep an insurance policy in force."),
            Flashcard(id: "money304_f2", front: "Deductible", back: "The amount you pay out of pocket before insurance begins covering a claim. Higher deductibles usually mean lower premiums."),
            Flashcard(id: "money304_f3", front: "Term Life Insurance", back: "Pure, low-cost life insurance that pays a benefit if you die within a set term - ideal for replacing income for dependents."),
            Flashcard(id: "money304_f4", front: "Liability Coverage", back: "Insurance that pays for damage or injury you cause to other people or their property.")
        ],
        tags: ["insurance", "protection", "risk"]
    )

    // MARK: - Tier 4: Mastery

    static let lesson13 = Lesson(
        id: "money_t4_01",
        categoryId: .finance,
        tier: 4,
        lessonNumber: 1,
        title: "Renting vs Buying and Mortgages",
        subtitle: "The biggest purchase of your life",
        estimatedMinutes: 10,
        difficulty: 3,
        prerequisites: ["money_t3_04"],
        contentBlocks: [
            ContentBlock(id: "money401_b1", type: .whyMatters, title: "Why This Decision Is Huge", bullets: [
                "A home is the largest purchase most people ever make, and the choice between renting and buying shapes your finances for years.",
                "Buying is not automatically better than renting - the math depends on your situation and how long you will stay.",
                "Understanding mortgages prevents you from overpaying by tens of thousands of dollars.",
                "A clear head here protects you from one of the most emotional financial decisions there is."
            ], callouts: ["This is general education, not real estate or lending advice. Run your own numbers and consult licensed professionals."]),
            ContentBlock(id: "money401_b2", type: .componentBreakdown, title: "Renting vs Buying: The Real Trade-Offs", bullets: [
                "Renting: flexibility, no maintenance costs, predictable monthly outlay, no exposure to home price drops.",
                "Buying: builds equity over time, fixes your housing cost with a fixed-rate loan, potential appreciation.",
                "Buying has large upfront and ongoing costs: down payment, closing costs, taxes, insurance, repairs.",
                "A common guide: buying often makes sense only if you will stay at least 5 to 7 years.",
                "Owning ties up cash and reduces flexibility - a job move becomes harder."
            ]),
            ContentBlock(id: "money401_b3", type: .keyTerms, title: "Mortgage Vocabulary", bullets: [
                "Principal - the amount you borrowed; interest - the cost of borrowing it.",
                "Down payment - your upfront cash; 20% avoids private mortgage insurance (PMI).",
                "Fixed-rate vs adjustable-rate (ARM) - fixed stays the same; ARM can rise after an intro period.",
                "Amortization - early payments are mostly interest; later payments are mostly principal.",
                "Escrow - an account that bundles property taxes and insurance into your monthly payment."
            ]),
            ContentBlock(id: "money401_b4", type: .howItWorks, title: "How a Mortgage Really Costs You", bullets: [
                "On a 30-year loan, you can pay nearly as much in interest as the home's price over the full term.",
                "A larger down payment lowers your loan, your interest, and may remove PMI.",
                "Shorter terms (15-year) have higher monthly payments but far less total interest.",
                "Even a small rate difference, 6% vs 7%, changes total cost by tens of thousands.",
                "Extra principal payments early on save large amounts of interest because of amortization."
            ], callouts: ["Get pre-approved and shop multiple lenders - rates and fees vary, and small differences compound over 30 years."]),
            ContentBlock(id: "money401_b5", type: .commonMistakes, title: "Home-Buying Mistakes", bullets: [
                "Buying the maximum the bank approves instead of what your budget comfortably allows.",
                "Forgetting that taxes, insurance, maintenance, and repairs add 1-2% of the home value per year.",
                "Draining your entire emergency fund for the down payment.",
                "Choosing an ARM without understanding how high the payment could rise.",
                "Treating a home purely as an investment rather than a place to live."
            ]),
            ContentBlock(id: "money401_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Renting offers flexibility; buying builds equity but carries big costs and commitment.",
                "Buying often makes sense only if you stay 5 to 7+ years.",
                "Down payment size, rate, and term dramatically change total mortgage cost.",
                "Buy what you can comfortably afford, not the maximum approved."
            ])
        ],
        quiz: Quiz(id: "money401_q", passPercent: 80, questions: [
            Question(id: "money401_q1", type: .multipleChoice, prompt: "Putting at least 20% down on a home typically lets you avoid which cost?", choices: ["Property taxes", "Private mortgage insurance (PMI)", "Homeowners insurance", "All interest"], correctIndex: 1, explanation: "A 20% down payment usually removes the requirement for PMI, which protects the lender and adds to your monthly cost."),
            Question(id: "money401_q2", type: .scenario, prompt: "You expect to move cities for work in about two years. Is buying a home likely a smart financial move?", choices: ["Yes, always buy as soon as possible", "No, the transaction costs likely outweigh the benefits over such a short stay", "Yes, because rent is always wasted money", "It makes no difference"], correctIndex: 1, explanation: "With only a two-year horizon, closing costs, agent fees, and price risk usually make renting the smarter financial choice."),
            Question(id: "money401_q3", prompt: "____ is the process where early mortgage payments go mostly to interest and later payments go mostly to principal.", acceptedAnswers: ["amortization", "amortisation"], explanation: "Amortization front-loads interest, which is why extra principal payments early in the loan save the most money."),
            Question(id: "money401_q4", prompt: "Match each mortgage term to its meaning.", matchingPairs: [
                MatchingPair(left: "Principal", right: "The amount you borrowed"),
                MatchingPair(left: "PMI", right: "Insurance often required under 20% down"),
                MatchingPair(left: "Escrow", right: "Bundles taxes and insurance into the payment"),
                MatchingPair(left: "ARM", right: "Rate can rise after an intro period")
            ], explanation: "Knowing these terms helps you compare loans and avoid surprises. ARMs in particular can jump after the introductory period."),
            Question(id: "money401_q5", type: .multiSelect, prompt: "Which are common home-buying mistakes?", choices: ["Buying the maximum the bank approves", "Budgeting for taxes, insurance, and maintenance", "Draining your entire emergency fund for the down payment", "Ignoring how high an ARM could rise", "Shopping multiple lenders for the best rate"], correctIndices: [0, 2, 3], explanation: "Maxing the loan, emptying your emergency fund, and ignoring ARM risk are mistakes. Budgeting for ongoing costs and shopping lenders are smart moves.")
        ]),
        flashcards: [
            Flashcard(id: "money401_f1", front: "Down Payment", back: "The upfront cash you pay toward a home. Putting 20% or more typically avoids private mortgage insurance."),
            Flashcard(id: "money401_f2", front: "Amortization", back: "The schedule by which early loan payments are mostly interest and later payments are mostly principal."),
            Flashcard(id: "money401_f3", front: "Fixed vs Adjustable Rate", back: "A fixed-rate mortgage keeps the same rate for the term; an ARM can rise after an introductory period."),
            Flashcard(id: "money401_f4", front: "PMI", back: "Private Mortgage Insurance - an added cost lenders usually require when your down payment is under 20%.")
        ],
        tags: ["mortgage", "housing", "home-buying"]
    )

    static let lesson14 = Lesson(
        id: "money_t4_02",
        categoryId: .finance,
        tier: 4,
        lessonNumber: 2,
        title: "Building Credit for Big Purchases",
        subtitle: "Position yourself before you borrow",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["money_t4_01"],
        contentBlocks: [
            ContentBlock(id: "money402_b1", type: .whyMatters, title: "Why Credit Strategy Pays Off", bullets: [
                "When you finance a car or a home, your credit score directly sets your interest rate.",
                "A strong score versus a weak one can mean tens of thousands of dollars over a mortgage's life.",
                "The months before a big purchase are when credit moves matter most, and small mistakes cost real money.",
                "Positioning your credit ahead of time is a deliberate skill, not luck."
            ]),
            ContentBlock(id: "money402_b2", type: .stepByStep, title: "Prepping Credit Before a Mortgage", bullets: [
                "1. Pull your credit reports months ahead and dispute any errors that drag your score down.",
                "2. Pay every bill on time without exception - late payments do the most damage.",
                "3. Lower your credit utilization below 30%, ideally under 10%, by paying down balances.",
                "4. Do NOT open new credit cards or finance a car right before applying for a mortgage.",
                "5. Keep old accounts open to preserve the length of your credit history."
            ], callouts: ["A new car loan or credit card in the months before a mortgage can lower your score and shrink how much home you qualify for."]),
            ContentBlock(id: "money402_b3", type: .keyTerms, title: "What Lenders Look At", bullets: [
                "Credit score - the headline number that sets your rate tier.",
                "Debt-to-income ratio (DTI) - your monthly debt payments divided by gross monthly income; lower is better.",
                "Down payment - more cash down means less risk to the lender and often a better rate.",
                "Employment and income stability - steady history reassures lenders.",
                "Hard inquiries - formal credit checks that can briefly lower your score."
            ]),
            ContentBlock(id: "money402_b4", type: .proTips, title: "Rate-Shopping and DTI Tactics", bullets: [
                "Rate-shop within a focused window (often about 14 to 45 days) so multiple inquiries count as one.",
                "Pay down high balances and avoid new debt to lower your DTI before applying.",
                "Even a 0.5% lower rate on a mortgage can save tens of thousands over 30 years.",
                "Get pre-approved to know your true budget and strengthen your offer.",
                "Avoid large unexplained deposits or new debts during underwriting."
            ]),
            ContentBlock(id: "money402_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Your credit score sets the interest rate on big financed purchases.",
                "Prep months ahead: fix errors, pay on time, cut utilization, avoid new credit.",
                "Lenders weigh score, DTI, down payment, and income stability.",
                "Rate-shop within a tight window so it counts as a single inquiry."
            ])
        ],
        quiz: Quiz(id: "money402_q", passPercent: 80, questions: [
            Question(id: "money402_q1", type: .scenario, prompt: "You plan to apply for a mortgage in three months. A dealership offers you a great deal on financing a new truck today. What is the wise move?", choices: ["Finance the truck now, it will not matter", "Wait until after the mortgage closes to take on new debt", "Open two new credit cards as well", "Max out a card to show activity"], correctIndex: 1, explanation: "New debt before a mortgage lowers your score and raises your DTI, shrinking how much home you qualify for. Wait until after closing."),
            Question(id: "money402_q2", type: .multipleChoice, prompt: "What does debt-to-income ratio (DTI) measure?", choices: ["Your savings divided by spending", "Your monthly debt payments divided by gross monthly income", "Your credit score over time", "The age of your oldest account"], correctIndex: 1, explanation: "DTI compares your monthly debt obligations to your gross income. Lenders favor a lower DTI because it signals you can handle the payment."),
            Question(id: "money402_q3", prompt: "When mortgage shopping, multiple credit checks within a focused window are usually counted as a single ____ inquiry.", acceptedAnswers: ["hard", "rate-shopping", "rate shopping"], explanation: "Rate-shopping windows let you compare lenders without each pull dinging your score separately, so shop within a tight timeframe."),
            Question(id: "money402_q4", type: .multiSelect, prompt: "Which actions help position your credit before a big purchase?", choices: ["Fixing errors on your credit report", "Paying all bills on time", "Opening several new cards right before applying", "Lowering your credit utilization", "Keeping old accounts open"], correctIndices: [0, 1, 3, 4], explanation: "Fixing errors, on-time payments, low utilization, and a long history all help. Opening new cards right before applying hurts your score."),
            Question(id: "money402_q5", type: .multipleChoice, prompt: "Roughly how much can even a 0.5% lower mortgage rate save over a 30-year loan?", choices: ["A few dollars", "Tens of thousands of dollars", "Nothing measurable", "It always costs more"], correctIndex: 1, explanation: "Over 30 years, even half a percent compounds into tens of thousands saved. This is why credit prep and rate-shopping pay off so much.")
        ]),
        flashcards: [
            Flashcard(id: "money402_f1", front: "Debt-to-Income Ratio (DTI)", back: "Your monthly debt payments divided by gross monthly income. Lenders prefer a lower DTI before approving big loans."),
            Flashcard(id: "money402_f2", front: "Hard Inquiry", back: "A formal credit check by a lender that can briefly lower your score. Rate-shopping within a tight window counts as one."),
            Flashcard(id: "money402_f3", front: "Pre-Approval", back: "A lender's conditional commitment to lend you up to a set amount, which clarifies your budget and strengthens an offer."),
            Flashcard(id: "money402_f4", front: "Credit Utilization (Pre-Purchase)", back: "Lowering the percentage of available credit you use before applying for a big loan to boost your score and rate.")
        ],
        tags: ["credit", "big-purchase", "mortgage-prep"]
    )

    static let lesson15 = Lesson(
        id: "money_t4_03",
        categoryId: .finance,
        tier: 4,
        lessonNumber: 3,
        title: "Creating Extra Income",
        subtitle: "More ways for money to flow in",
        estimatedMinutes: 8,
        difficulty: 3,
        prerequisites: ["money_t4_02"],
        contentBlocks: [
            ContentBlock(id: "money403_b1", type: .whyMatters, title: "Why Income Streams Matter", bullets: [
                "You can only cut spending so far; growing income has no ceiling.",
                "Multiple income streams add resilience: if one dries up, the others keep you afloat.",
                "Extra income, directed into investments, dramatically speeds up wealth-building.",
                "The skill is building income that eventually requires less of your time."
            ]),
            ContentBlock(id: "money403_b2", type: .keyTerms, title: "Active vs Passive Income", bullets: [
                "Active income - money you trade your time for: a job, freelancing, a side gig.",
                "Passive income - money that flows with little ongoing effort once set up: dividends, rent, royalties.",
                "Most passive income requires significant upfront work or capital - it is rarely truly effortless.",
                "Portfolio income - returns from investments like interest, dividends, and capital gains.",
                "The goal over time: shift more of your income from active to passive."
            ]),
            ContentBlock(id: "money403_b3", type: .componentBreakdown, title: "Realistic Ways to Earn More", bullets: [
                "Raise your main income - negotiate, upskill, or change employers; this is often the biggest lever.",
                "Sell a skill: freelancing, trades, tutoring, consulting on what you already know.",
                "Build a small side business around a service people pay for.",
                "Invest for dividends and let portfolio income grow over decades.",
                "Rent out an asset you own, such as a room, equipment, or a vehicle."
            ]),
            ContentBlock(id: "money403_b4", type: .commonMistakes, title: "Side-Income Pitfalls", bullets: [
                "Chasing get-rich-quick schemes instead of building real, durable income.",
                "Ignoring taxes - set aside money for taxes on self-employment income.",
                "Spending the extra income instead of investing it, so it never builds wealth.",
                "Letting a side hustle burn you out and hurt your main, higher-paying job.",
                "Underpricing your work because you undervalue your time and skill."
            ], callouts: ["Self-employment income is not tax-free. Set aside a portion for taxes so you are not surprised at filing time."]),
            ContentBlock(id: "money403_b5", type: .summary, title: "The Bottom Line", bullets: [
                "Income has no ceiling; multiple streams add resilience.",
                "Active income trades time for money; passive income flows with less ongoing effort.",
                "Raising your main income is often the most powerful single move.",
                "Invest the extra rather than spending it, and plan for taxes on side income."
            ])
        ],
        quiz: Quiz(id: "money403_q", passPercent: 80, questions: [
            Question(id: "money403_q1", type: .multipleChoice, prompt: "What best describes passive income?", choices: ["Money you earn hourly at a job", "Money that flows with little ongoing effort once it is set up", "Money that requires no upfront work or capital", "A guaranteed payment from the government"], correctIndex: 1, explanation: "Passive income flows with minimal ongoing effort, like dividends or rent. It usually still requires real upfront work or capital."),
            Question(id: "money403_q2", type: .scenario, prompt: "Your side gig brings in an extra $600 a month. To build wealth fastest, what should you generally do with it?", choices: ["Increase your lifestyle spending by $600", "Invest most of it toward your long-term goals", "Leave it all idle in checking", "Spend it on quick wants"], correctIndex: 1, explanation: "Extra income only builds wealth if you invest it. Spending it on lifestyle simply raises your costs without growing your net worth."),
            Question(id: "money403_q3", prompt: "____ income is money you trade your time for, such as a job or freelancing.", acceptedAnswers: ["active"], explanation: "Active income requires your direct time and effort. The long-term goal is to shift more income toward passive sources."),
            Question(id: "money403_q4", prompt: "Match each income type to an example.", matchingPairs: [
                MatchingPair(left: "Active income", right: "Salary from a job"),
                MatchingPair(left: "Passive income", right: "Rent from a property"),
                MatchingPair(left: "Portfolio income", right: "Dividends from stocks"),
                MatchingPair(left: "Side income", right: "Weekend freelancing")
            ], explanation: "Understanding these categories helps you intentionally build a mix that is more resilient and less dependent on your time."),
            Question(id: "money403_q5", type: .multiSelect, prompt: "Which are smart practices when building extra income?", choices: ["Set aside money for taxes on self-employment", "Invest the extra income", "Chase get-rich-quick schemes", "Price your work fairly", "Let the side hustle wreck your main job"], correctIndices: [0, 1, 3], explanation: "Planning for taxes, investing the surplus, and pricing fairly build durable income. Schemes and burnout undermine it.")
        ]),
        flashcards: [
            Flashcard(id: "money403_f1", front: "Active Income", back: "Money you earn by trading your time and effort, such as a salary, freelancing, or a side gig."),
            Flashcard(id: "money403_f2", front: "Passive Income", back: "Income that flows with little ongoing effort once established, like dividends, rent, or royalties - though it usually needs upfront work or capital."),
            Flashcard(id: "money403_f3", front: "Portfolio Income", back: "Returns generated by investments, including interest, dividends, and capital gains."),
            Flashcard(id: "money403_f4", front: "Multiple Income Streams", back: "Having several sources of income so that the loss of any one does not leave you financially exposed.")
        ],
        tags: ["income", "side-hustle", "passive-income"]
    )

    static let lesson16 = Lesson(
        id: "money_t4_04",
        categoryId: .finance,
        tier: 4,
        lessonNumber: 4,
        title: "Long-Term Wealth and Estate Basics",
        subtitle: "Habits that compound and plans that protect",
        estimatedMinutes: 9,
        difficulty: 3,
        prerequisites: ["money_t4_03"],
        contentBlocks: [
            ContentBlock(id: "money404_b1", type: .whyMatters, title: "Why the Long Game Wins", bullets: [
                "Wealth is built less by clever moves and more by boring habits repeated for decades.",
                "Consistency, patience, and avoiding big mistakes beat trying to get rich quickly.",
                "Planning for what happens to your money after you die protects the people you love.",
                "True financial maturity is thinking beyond yourself and beyond this year."
            ], callouts: ["This is general education, not legal, tax, or estate advice. For wills, trusts, and taxes, consult licensed professionals."]),
            ContentBlock(id: "money404_b2", type: .principles, title: "The Habits That Build Wealth", bullets: [
                "Spend less than you earn, every year, and widen the gap as your income grows.",
                "Automate saving and investing so wealth-building happens without willpower.",
                "Avoid lifestyle inflation - when income rises, invest the raise instead of spending it.",
                "Stay invested through downturns; selling in a panic locks in losses.",
                "Keep fees and taxes low, and let compounding do the heavy lifting over decades."
            ]),
            ContentBlock(id: "money404_b3", type: .keyTerms, title: "Estate Planning Essentials", bullets: [
                "Will - a legal document stating who gets your assets and who cares for minor children.",
                "Beneficiary designation - names who receives a specific account; it overrides your will for that account.",
                "Power of attorney - lets someone manage your finances if you become unable to.",
                "Trust - a legal structure that can control how and when assets pass to heirs.",
                "Probate - the court process for settling an estate, which good planning can reduce or avoid."
            ]),
            ContentBlock(id: "money404_b4", type: .stepByStep, title: "A Basic Estate Setup", bullets: [
                "1. Name and update beneficiaries on every retirement account, life insurance policy, and bank account.",
                "2. Create a simple will, especially if you have dependents or property.",
                "3. Assign a financial and a healthcare power of attorney.",
                "4. Keep a clear record of accounts, passwords, and key documents your family can find.",
                "5. Review everything after major life events: marriage, divorce, a child, or a death."
            ], callouts: ["Beneficiary designations override your will. An outdated beneficiary, like an ex-spouse, can send money to the wrong person."]),
            ContentBlock(id: "money404_b5", type: .realWorld, title: "Putting It All Together", bullets: [
                "A disciplined man with average income who invests steadily for 30 years often out-builds a high earner who never saves.",
                "Net worth, not income, is the real scoreboard of wealth.",
                "Protecting your family with insurance and an estate plan is part of the wealth picture, not separate from it.",
                "The compounding of good habits over decades is what turns ordinary income into lasting security.",
                "Wealth that is planned and protected is wealth that actually reaches the next generation."
            ]),
            ContentBlock(id: "money404_b6", type: .summary, title: "The Bottom Line", bullets: [
                "Boring, consistent habits build wealth more reliably than clever bets.",
                "Spend less than you earn, automate investing, and avoid lifestyle inflation.",
                "Set up beneficiaries, a will, and powers of attorney to protect your family.",
                "Beneficiary designations override your will, so keep them current."
            ])
        ],
        quiz: Quiz(id: "money404_q", passPercent: 80, questions: [
            Question(id: "money404_q1", type: .multipleChoice, prompt: "What most reliably builds long-term wealth?", choices: ["Picking one hot stock each year", "Boring, consistent habits repeated over decades", "Frequent trading to beat the market", "Waiting for the perfect time to start"], correctIndex: 1, explanation: "Wealth comes from consistency: spending less than you earn and investing steadily for decades, not from clever short-term bets."),
            Question(id: "money404_q2", type: .scenario, prompt: "You divorced years ago but never updated your 401(k) beneficiary, which still names your ex-spouse. Who likely receives that account if you die?", choices: ["Your current chosen heirs automatically", "Your ex-spouse, because the beneficiary overrides your will", "The bank keeps it", "It is split evenly by the court"], correctIndex: 1, explanation: "Beneficiary designations override your will. An outdated beneficiary can send money to the wrong person, so keep them current."),
            Question(id: "money404_q3", prompt: "A ____ is a legal document that states who receives your assets and who cares for any minor children after you die.", acceptedAnswers: ["will", "last will", "last will and testament"], explanation: "A will directs your assets and names guardians for minor children. It is a core piece of basic estate planning."),
            Question(id: "money404_q4", prompt: "Match each estate term to its role.", matchingPairs: [
                MatchingPair(left: "Will", right: "Directs assets and guardianship"),
                MatchingPair(left: "Beneficiary designation", right: "Names who receives a specific account"),
                MatchingPair(left: "Power of attorney", right: "Lets someone manage finances if you cannot"),
                MatchingPair(left: "Probate", right: "Court process to settle an estate")
            ], explanation: "Each tool plays a role. Beneficiary designations even override the will for those specific accounts, so they must stay accurate."),
            Question(id: "money404_q5", type: .multiSelect, prompt: "Which habits and steps support long-term wealth and protection?", choices: ["Avoiding lifestyle inflation", "Automating investing", "Panic-selling during downturns", "Keeping beneficiaries up to date", "Spending every raise immediately"], correctIndices: [0, 1, 3], explanation: "Avoiding lifestyle inflation, automating investing, and updating beneficiaries build and protect wealth. Panic-selling and spending raises do the opposite.")
        ]),
        flashcards: [
            Flashcard(id: "money404_f1", front: "Lifestyle Inflation", back: "The tendency to increase spending as income rises, which can prevent wealth from ever accumulating."),
            Flashcard(id: "money404_f2", front: "Beneficiary Designation", back: "The named recipient of a specific account or policy. It overrides your will for that account, so it must be kept current."),
            Flashcard(id: "money404_f3", front: "Power of Attorney", back: "A legal authorization for someone to manage your financial or healthcare decisions if you become unable to."),
            Flashcard(id: "money404_f4", front: "Net Worth", back: "What you own minus what you owe - the true scoreboard of wealth, more telling than income alone.")
        ],
        tags: ["wealth", "estate-planning", "habits"]
    )
}
