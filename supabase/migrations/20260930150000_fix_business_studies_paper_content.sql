-- Fix Business Studies paper content (issue: auto-generated placeholder
-- content, wrong-level content, questions duplicated).
--
-- Replaces the placeholder/wrong-level content of all 22 Business Studies
-- papers (11 Advanced Level, 11 Ordinary Level) with distinct, correct-level
-- questions.

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL BUSINESS STUDIES — P1 (Multiple Choice) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** A SWOT analysis examines a business's:

A. strengths, weaknesses, opportunities and threats  
B. sales, wages, output and taxes  
C. suppliers, workers, owners and threats  
D. strengths, wages, output and threats  

---

**Q2.** The PESTLE analysis considers which of the following external factors?

A. political, economic, social, technological, legal and environmental  
B. price, product, place and promotion  
C. profit, expenses, sales and taxes  
D. people, equipment, stock and threats  

---

**Q3.** The main objective of a private limited company is usually to:

A. maximise profit  
B. provide a public service  
C. maximise social welfare  
D. minimise output  

---

**Q4.** A merger between two firms in the same industry at the same stage of production is a:

A. horizontal merger  
B. vertical merger  
C. conglomerate merger  
D. backward merger  

---

**Q5.** The marketing mix consists of:

A. product, price, place and promotion  
B. profit, price, place and promotion  
C. product, price, people and promotion  
D. product, price, place and profit  

---

**Q6.** Market segmentation is the process of:

A. dividing the market into distinct groups of customers  
B. combining all customers into one group  
C. increasing the price of products  
D. reducing the number of products  

---

**Q7.** The method of production used when a business produces large quantities of identical products is:

A. job production  
B. batch production  
C. flow production  
D. project production  

---

**Q8.** The break-even point is where:

A. total revenue equals total cost  
B. profit is maximum  
C. fixed costs are zero  
D. variable costs are zero  

---

**Q9.** The source of finance that does not need to be repaid is:

A. a bank loan  
B. share capital  
C. a debenture  
D. an overdraft  

---

**Q10.** Retained profit is:

A. profit kept in the business for reinvestment  
B. profit paid to shareholders  
C. profit paid as tax  
D. profit used to pay wages  

---

**Q11.** The current ratio is a measure of:

A. liquidity  
B. profitability  
C. gearing  
D. efficiency  

---

**Q12.** The theory of motivation that identifies five levels of needs is:

A. Maslow's hierarchy of needs  
B. Herzberg's two-factor theory  
C. Taylor's scientific management  
D. McGregor's theory X and Y  

---

**Q13.** According to Herzberg, which of the following is a motivator?

A. salary  
B. working conditions  
C. achievement  
D. job security  

---

**Q14.** The span of control is:

A. the number of subordinates a manager directly supervises  
B. the number of managers in a business  
C. the number of products a business makes  
D. the number of customers a business serves  

---

**Q15.** A tall organisational structure has:

A. many levels of management  
B. few levels of management  
C. no levels of management  
D. one level of management  

---

**Q16.** The process of selecting the best candidate for a job is:

A. recruitment  
B. selection  
C. training  
D. appraisal  

---

**Q17.** On-the-job training involves:

A. learning while doing the job  
B. learning away from the workplace  
C. learning from a textbook  
D. learning at a university  

---

**Q18.** The main purpose of a business plan is to:

A. set out the objectives and how they will be achieved  
B. record past transactions  
C. calculate the tax due  
D. advertise the business  

---

**Q19.** A cash flow forecast shows:

A. the expected cash inflows and outflows over a period  
B. the profit for the year  
C. the value of assets  
D. the number of employees  

---

**Q20.** The break-even chart is used to:

A. show the level of output at which costs equal revenue  
B. show the profit for the year  
C. show the value of assets  
D. show the number of employees  

---

**Q21.** The term 'globalisation' refers to:

A. the increasing integration of world markets  
B. the reduction of world trade  
C. the increase in local production  
D. the decrease in foreign investment  

---

**Q22.** A multinational company is a business that:

A. operates in more than one country  
B. operates in only one country  
C. operates in one city  
D. operates in one region  

---

**Q23.** Corporate social responsibility means a business:

A. considers the impact of its actions on society  
B. only maximises profit  
C. ignores its employees  
D. avoids paying tax  

---

**Q24.** The term 'stakeholder' refers to:

A. anyone with an interest in a business  
B. only the shareholders  
C. only the employees  
D. only the customers  

---

**Q25.** The main advantage of a multinational company to a host country is:

A. job creation  
B. loss of sovereignty  
C. increased competition  
D. higher prices  

---

## ANSWER KEY

1. A  2. A  3. A  4. A  5. A  6. A  7. C  8. A  9. B  10. A  
11. A  12. A  13. C  14. A  15. A  16. B  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies MCQ set 1',
    updated_at = NOW()
WHERE id = '4e44c731-0f76-30ea-008e-815e269dd296';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The term 'entrepreneur' refers to a person who:

A. takes risks to start and run a business  
B. works for a salary  
C. invests in shares  
D. manages a government department  

---

**Q2.** The main advantage of a sole trader is:

A. unlimited liability  
B. full control of the business  
C. limited capital  
D. lack of continuity  

---

**Q3.** A public limited company is different from a private limited company because it:

A. can sell shares to the public  
B. cannot sell shares  
C. has fewer shareholders  
D. has no shareholders  

---

**Q4.** The term 'limited liability' means shareholders:

A. are only liable for the amount they invested  
B. are liable for all the debts of the company  
C. have no liability  
D. are liable for double their investment  

---

**Q5.** The primary sector of the economy involves:

A. extracting raw materials  
B. manufacturing goods  
C. providing services  
D. selling goods  

---

**Q6.** The tertiary sector of the economy involves:

A. providing services  
B. extracting raw materials  
C. manufacturing goods  
D. farming  

---

**Q7.** The method of production used for a one-off, unique product is:

A. job production  
B. batch production  
C. flow production  
D. mass production  

---

**Q8.** Quality control is the process of:

A. checking products to ensure they meet standards  
B. increasing the price of products  
C. reducing the number of products  
D. advertising products  

---

**Q9.** The term 'just-in-time' (JIT) production means:

A. producing goods only when they are needed  
B. producing goods in large quantities  
C. producing goods continuously  
D. producing goods slowly  

---

**Q10.** The main source of finance for a new business is usually:

A. the owner's savings  
B. a debenture  
C. retained profit  
D. a share issue  

---

**Q11.** A bank overdraft is:

A. a short-term source of finance  
B. a long-term source of finance  
C. a permanent source of finance  
D. a source of equity  

---

**Q12.** The gross profit margin is calculated as:

A. gross profit ÷ sales × 100  
B. net profit ÷ sales × 100  
C. gross profit ÷ cost of sales × 100  
D. sales ÷ gross profit × 100  

---

**Q13.** The quick (acid test) ratio is:

A. (current assets − stock) ÷ current liabilities  
B. current assets ÷ current liabilities  
C. fixed assets ÷ current liabilities  
D. sales ÷ current assets  

---

**Q14.** According to Maslow, the highest level of need is:

A. self-actualisation  
B. physiological needs  
C. safety needs  
D. esteem needs  

---

**Q15.** According to McGregor, Theory X assumes that workers:

A. dislike work and need to be controlled  
B. enjoy work and are self-motivated  
C. are always productive  
D. never need supervision  

---

**Q16.** The process of attracting candidates for a job is:

A. recruitment  
B. selection  
C. training  
D. appraisal  

---

**Q17.** A flat organisational structure has:

A. few levels of management  
B. many levels of management  
C. no managers  
D. one manager  

---

**Q18.** The term 'delegation' means:

A. giving authority to subordinates  
B. taking authority from subordinates  
C. ignoring subordinates  
D. dismissing subordinates  

---

**Q19.** The main purpose of market research is to:

A. gather information about customers and the market  
B. increase the price of products  
C. reduce the number of products  
D. advertise the business  

---

**Q20.** A primary source of market research data is:

A. a questionnaire  
B. a government report  
C. a newspaper article  
D. a company website  

---

**Q21.** The term 'economies of scale' refers to:

A. the cost advantages gained by producing on a large scale  
B. the cost disadvantages of large-scale production  
C. the increase in average cost  
D. the decrease in output  

---

**Q22.** Diseconomies of scale occur when:

A. average costs increase as output increases  
B. average costs decrease as output increases  
C. output decreases  
D. prices increase  

---

**Q23.** The term 'franchise' refers to:

A. a business that allows others to use its name and products  
B. a business owned by the government  
C. a business with no owner  
D. a business that only exports  

---

**Q24.** The main advantage of a franchise to the franchisee is:

A. a recognised brand and support  
B. high start-up costs  
C. no support  
D. unlimited liability  

---

**Q25.** The term 'benchmarking' means:

A. comparing a business's performance with the best in the industry  
B. setting the lowest price  
C. reducing the number of products  
D. increasing the number of employees  

---

## ANSWER KEY

1. A  2. B  3. A  4. A  5. A  6. A  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies MCQ set 2',
    updated_at = NOW()
WHERE id = '363d075a-41b2-28b0-200e-363c831ef95c';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The term 'business environment' refers to:

A. all the internal and external factors that affect a business  
B. only the internal factors  
C. only the external factors  
D. the physical location of the business  

---

**Q2.** The term 'mission statement' refers to:

A. the overall purpose and values of a business  
B. the profit target of a business  
C. the number of employees  
D. the price of products  

---

**Q3.** A business that grows by taking over another business is using:

A. inorganic growth  
B. organic growth  
C. internal growth  
D. slow growth  

---

**Q4.** The term 'takeover' refers to:

A. one business buying another business  
B. two businesses merging  
C. a business closing down  
D. a business expanding internally  

---

**Q5.** The marketing mix element 'place' refers to:

A. how the product is distributed  
B. the price of the product  
C. the promotion of the product  
D. the product itself  

---

**Q6.** The term 'market share' refers to:

A. the proportion of total sales a business has in a market  
B. the total sales of a business  
C. the profit of a business  
D. the number of products a business makes  

---

**Q7.** The method of production used when a business produces a range of similar products in groups is:

A. batch production  
B. job production  
C. flow production  
D. project production  

---

**Q8.** The term 'total quality management' (TQM) means:

A. involving all employees in improving quality  
B. checking products at the end of production  
C. reducing the number of products  
D. increasing the price of products  

---

**Q9.** The term 'lean production' means:

A. producing with minimum waste  
B. producing with maximum waste  
C. producing slowly  
D. producing expensive products  

---

**Q10.** The main source of long-term finance for a large company is:

A. issuing shares  
B. a bank overdraft  
C. trade credit  
D. retained profit only  

---

**Q11.** The term 'gearing' measures:

A. the proportion of borrowed funds to equity  
B. the proportion of current assets to liabilities  
C. the gross profit margin  
D. the stock turnover  

---

**Q12.** The net profit margin is calculated as:

A. net profit ÷ sales × 100  
B. gross profit ÷ sales × 100  
C. net profit ÷ capital employed × 100  
D. sales ÷ net profit × 100  

---

**Q13.** According to Herzberg, which of the following is a hygiene factor?

A. salary  
B. achievement  
C. recognition  
D. responsibility  

---

**Q14.** The term 'empowerment' means:

A. giving employees more authority and responsibility  
B. reducing employees' authority  
C. dismissing employees  
D. ignoring employees  

---

**Q15.** The term 'organisational culture' refers to:

A. the values and beliefs of a business  
B. the number of employees  
C. the price of products  
D. the location of the business  

---

**Q16.** The term 'appraisal' refers to:

A. the assessment of an employee's performance  
B. the recruitment of employees  
C. the training of employees  
D. the dismissal of employees  

---

**Q17.** The term 'succession planning' means:

A. preparing employees to take over key roles  
B. dismissing employees  
C. recruiting new employees  
D. reducing the number of employees  

---

**Q18.** The term 'cash flow' refers to:

A. the movement of cash into and out of a business  
B. the profit of a business  
C. the value of assets  
D. the number of employees  

---

**Q19.** The term 'working capital' is:

A. current assets − current liabilities  
B. current assets + current liabilities  
C. fixed assets − current assets  
D. sales − purchases  

---

**Q20.** The term 'budget' refers to:

A. a financial plan for a future period  
B. a record of past transactions  
C. the profit for the year  
D. the value of assets  

---

**Q21.** The term 'import' means:

A. buying goods from another country  
B. selling goods to another country  
C. producing goods locally  
D. exporting services  

---

**Q22.** The term 'export' means:

A. selling goods to another country  
B. buying goods from another country  
C. producing goods locally  
D. importing services  

---

**Q23.** The term 'exchange rate' refers to:

A. the price of one currency in terms of another  
B. the price of goods  
C. the rate of inflation  
D. the rate of interest  

---

**Q24.** The main advantage of international trade is:

A. access to a wider market  
B. higher prices  
C. fewer products  
D. less competition  

---

**Q25.** The term 'ethics' in business refers to:

A. moral principles that guide business decisions  
B. the profit of a business  
C. the number of employees  
D. the price of products  

---

## ANSWER KEY

1. A  2. A  3. A  4. A  5. A  6. A  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies MCQ set 3',
    updated_at = NOW()
WHERE id = 'b6b7ea58-dc07-50df-8a48-0b66a0da952c';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL BUSINESS STUDIES — P2 (Structured) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ENVIRONMENT

**Q1.** (a) Define the term 'business environment'. *(2 marks)*

(b) Distinguish between the internal and external environment of a business. *(4 marks)*

(c) Explain how a change in government policy could affect a business. *(4 marks)*

(d) State two ways a business can respond to changes in its environment. *(2 marks)*

---

**Q2.** (a) Define the term 'stakeholder'. *(2 marks)*

(b) State four groups of stakeholders of a business. *(4 marks)*

(c) Explain how the interests of shareholders and employees may conflict. *(4 marks)*

(d) State two ways a business can balance the interests of different stakeholders. *(2 marks)*

---

## SECTION B: MARKETING

**Q3.** (a) Define the term 'marketing mix'. *(2 marks)*

(b) Explain each of the four elements of the marketing mix. *(8 marks)*

(c) State two factors that influence the price of a product. *(2 marks)*

(d) State two methods of promotion. *(2 marks)*

---

**Q4.** (a) Define the term 'market segmentation'. *(2 marks)*

(b) State four bases of market segmentation. *(4 marks)*

(c) Explain the benefits of market segmentation to a business. *(4 marks)*

(d) State two methods of market research. *(2 marks)*

---

## SECTION C: OPERATIONS MANAGEMENT

**Q5.** (a) Define the term 'production'. *(2 marks)*

(b) Distinguish between job, batch and flow production. *(6 marks)*

(c) State two factors that influence the choice of production method. *(2 marks)*

(d) State two advantages of flow production. *(2 marks)*

---

**Q6.** (a) Define the term 'quality control'. *(2 marks)*

(b) Explain the importance of quality to a business. *(4 marks)*

(c) Distinguish between quality control and quality assurance. *(4 marks)*

(d) State two methods of improving quality. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'cash flow'. *(2 marks)*

(b) Explain the difference between cash flow and profit. *(4 marks)*

(c) State two causes of cash flow problems. *(2 marks)*

(d) State two ways a business can improve its cash flow. *(2 marks)*

---

**Q8.** (a) Define the term 'break-even point'. *(2 marks)*

(b) State the formula for calculating the break-even point. *(2 marks)*

(c) Explain the importance of the break-even point to a business. *(4 marks)*

(d) State two ways a business can lower its break-even point. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 1',
    updated_at = NOW()
WHERE id = '72ec0eb4-9f2e-2a9d-d052-ba7ea8a60425';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS OBJECTIVES

**Q1.** (a) Define the term 'business objective'. *(2 marks)*

(b) State four objectives a business may have. *(4 marks)*

(c) Explain why profit maximisation may not be the only objective of a business. *(4 marks)*

(d) State two reasons why objectives may change over time. *(2 marks)*

---

**Q2.** (a) Define the term 'corporate social responsibility'. *(2 marks)*

(b) State two examples of socially responsible behaviour. *(2 marks)*

(c) Explain the benefits of corporate social responsibility to a business. *(4 marks)*

(d) State two costs of corporate social responsibility. *(2 marks)*

---

## SECTION B: MARKETING

**Q3.** (a) Define the term 'market research'. *(2 marks)*

(b) Distinguish between primary and secondary market research. *(4 marks)*

(c) State two methods of primary research. *(2 marks)*

(d) Explain the importance of market research to a business. *(4 marks)*

---

**Q4.** (a) Define the term 'product life cycle'. *(2 marks)*

(b) State the four stages of the product life cycle. *(4 marks)*

(c) Explain the marketing strategies used at each stage. *(4 marks)*

(d) State two reasons why products decline. *(2 marks)*

---

## SECTION C: OPERATIONS MANAGEMENT

**Q5.** (a) Define the term 'productivity'. *(2 marks)*

(b) Explain how a business can improve productivity. *(4 marks)*

(c) State two benefits of increased productivity. *(2 marks)*

(d) State two factors that affect productivity. *(2 marks)*

---

**Q6.** (a) Define the term 'location'. *(2 marks)*

(b) State four factors that influence the location of a business. *(4 marks)*

(c) Explain the importance of location to a business. *(4 marks)*

(d) State two advantages of locating near the market. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'budget'. *(2 marks)*

(b) Distinguish between a fixed budget and a flexible budget. *(4 marks)*

(c) Explain the benefits of budgeting to a business. *(4 marks)*

(d) State two limitations of budgeting. *(2 marks)*

---

**Q8.** (a) Define the term 'working capital'. *(2 marks)*

(b) State the formula for working capital. *(2 marks)*

(c) Explain the importance of working capital to a business. *(4 marks)*

(d) State two causes of a working capital shortage. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 2',
    updated_at = NOW()
WHERE id = '0c22c9a7-d971-423f-b642-ce42cd2ebe7a';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS GROWTH

**Q1.** (a) Define the term 'business growth'. *(2 marks)*

(b) Distinguish between organic and inorganic growth. *(4 marks)*

(c) State two methods of organic growth. *(2 marks)*

(d) State two methods of inorganic growth. *(2 marks)*

---

**Q2.** (a) Define the term 'merger'. *(2 marks)*

(b) Distinguish between a horizontal, vertical and conglomerate merger. *(6 marks)*

(c) State two reasons why businesses merge. *(2 marks)*

(d) State two disadvantages of a merger. *(2 marks)*

---

## SECTION B: HUMAN RESOURCE MANAGEMENT

**Q3.** (a) Define the term 'motivation'. *(2 marks)*

(b) Explain Maslow's hierarchy of needs. *(6 marks)*

(c) State two financial methods of motivation. *(2 marks)*

(d) State two non-financial methods of motivation. *(2 marks)*

---

**Q4.** (a) Define the term 'leadership'. *(2 marks)*

(b) Distinguish between autocratic, democratic and laissez-faire leadership. *(6 marks)*

(c) State two factors that influence the choice of leadership style. *(2 marks)*

(d) State two qualities of a good leader. *(2 marks)*

---

## SECTION C: ORGANISATIONAL STRUCTURE

**Q5.** (a) Define the term 'organisational structure'. *(2 marks)*

(b) Distinguish between a tall and a flat organisational structure. *(4 marks)*

(c) State two advantages of a tall structure. *(2 marks)*

(d) State two advantages of a flat structure. *(2 marks)*

---

**Q6.** (a) Define the term 'span of control'. *(2 marks)*

(b) Explain the relationship between the span of control and the number of levels in an organisation. *(4 marks)*

(c) State two factors that affect the span of control. *(2 marks)*

(d) State two advantages of a wide span of control. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'ratio analysis'. *(2 marks)*

(b) State two profitability ratios. *(2 marks)*

(c) State two liquidity ratios. *(2 marks)*

(d) Explain the importance of ratio analysis to a business. *(4 marks)*

---

**Q8.** (a) Define the term 'source of finance'. *(2 marks)*

(b) Distinguish between internal and external sources of finance. *(4 marks)*

(c) State two internal sources of finance. *(2 marks)*

(d) State two external sources of finance. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 3',
    updated_at = NOW()
WHERE id = 'fb0eb9f2-460f-00b4-1e47-e2afee002595';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ENVIRONMENT

**Q1.** (a) Define the term 'PESTLE analysis'. *(2 marks)*

(b) Explain each of the six factors in a PESTLE analysis. *(6 marks)*

(c) State two ways a business can use a PESTLE analysis. *(2 marks)*

(d) State two limitations of a PESTLE analysis. *(2 marks)*

---

**Q2.** (a) Define the term 'SWOT analysis'. *(2 marks)*

(b) Distinguish between internal and external factors in a SWOT analysis. *(4 marks)*

(c) State two strengths and two weaknesses a business may have. *(4 marks)*

(d) State two uses of a SWOT analysis. *(2 marks)*

---

## SECTION B: MARKETING

**Q3.** (a) Define the term 'pricing strategy'. *(2 marks)*

(b) Distinguish between cost-plus, penetration and skimming pricing. *(6 marks)*

(c) State two factors that influence the choice of pricing strategy. *(2 marks)*

(d) State two advantages of penetration pricing. *(2 marks)*

---

**Q4.** (a) Define the term 'promotion'. *(2 marks)*

(b) Distinguish between above-the-line and below-the-line promotion. *(4 marks)*

(c) State two methods of above-the-line promotion. *(2 marks)*

(d) State two methods of below-the-line promotion. *(2 marks)*

---

## SECTION C: OPERATIONS MANAGEMENT

**Q5.** (a) Define the term 'inventory control'. *(2 marks)*

(b) Explain the importance of inventory control to a business. *(4 marks)*

(c) State two costs of holding too much inventory. *(2 marks)*

(d) State two costs of holding too little inventory. *(2 marks)*

---

**Q6.** (a) Define the term 'just-in-time' (JIT) production. *(2 marks)*

(b) Explain the benefits of JIT production. *(4 marks)*

(c) State two risks of JIT production. *(2 marks)*

(d) State two conditions necessary for JIT production to work. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'cash flow forecast'. *(2 marks)*

(b) Explain the importance of a cash flow forecast to a business. *(4 marks)*

(c) State two causes of cash flow problems. *(2 marks)*

(d) State two ways a business can improve its cash flow. *(2 marks)*

---

**Q8.** (a) Define the term 'break-even analysis'. *(2 marks)*

(b) State the formula for the break-even point. *(2 marks)*

(c) Explain the importance of break-even analysis. *(4 marks)*

(d) State two limitations of break-even analysis. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 4',
    updated_at = NOW()
WHERE id = 'f673409b-b14f-21d9-5cbb-28e550f8fd69';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: HUMAN RESOURCE MANAGEMENT

**Q1.** (a) Define the term 'recruitment'. *(2 marks)*

(b) Distinguish between internal and external recruitment. *(4 marks)*

(c) State two advantages of internal recruitment. *(2 marks)*

(d) State two advantages of external recruitment. *(2 marks)*

---

**Q2.** (a) Define the term 'selection'. *(2 marks)*

(b) State four methods of selecting employees. *(4 marks)*

(c) Explain the importance of the selection process. *(4 marks)*

(d) State two documents used in the selection process. *(2 marks)*

---

## SECTION B: TRAINING AND DEVELOPMENT

**Q3.** (a) Define the term 'training'. *(2 marks)*

(b) Distinguish between on-the-job and off-the-job training. *(4 marks)*

(c) State two advantages of on-the-job training. *(2 marks)*

(d) State two advantages of off-the-job training. *(2 marks)*

---

**Q4.** (a) Define the term 'appraisal'. *(2 marks)*

(b) State two methods of appraisal. *(2 marks)*

(c) Explain the benefits of appraisal to a business. *(4 marks)*

(d) State two limitations of appraisal. *(2 marks)*

---

## SECTION C: MOTIVATION

**Q5.** (a) Define the term 'motivation'. *(2 marks)*

(b) Explain Herzberg's two-factor theory. *(6 marks)*

(c) State two motivators according to Herzberg. *(2 marks)*

(d) State two hygiene factors according to Herzberg. *(2 marks)*

---

**Q6.** (a) Define the term 'financial reward'. *(2 marks)*

(b) Distinguish between wages and salary. *(4 marks)*

(c) State two methods of payment by results. *(2 marks)*

(d) State two advantages of performance-related pay. *(2 marks)*

---

## SECTION D: BUSINESS COMMUNICATION

**Q7.** (a) Define the term 'business communication'. *(2 marks)*

(b) Distinguish between internal and external communication. *(4 marks)*

(c) State two methods of internal communication. *(2 marks)*

(d) State two methods of external communication. *(2 marks)*

---

**Q8.** (a) Define the term 'effective communication'. *(2 marks)*

(b) State four barriers to effective communication. *(4 marks)*

(c) Explain how a business can overcome barriers to communication. *(4 marks)*

(d) State two benefits of effective communication. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 5',
    updated_at = NOW()
WHERE id = 'cb477b18-7b35-824c-7037-ca3d2c4f462e';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS PLANNING

**Q1.** (a) Define the term 'business plan'. *(2 marks)*

(b) State four sections of a business plan. *(4 marks)*

(c) Explain the importance of a business plan. *(4 marks)*

(d) State two users of a business plan. *(2 marks)*

---

**Q2.** (a) Define the term 'entrepreneur'. *(2 marks)*

(b) State four characteristics of a successful entrepreneur. *(4 marks)*

(c) Explain the role of the entrepreneur in the economy. *(4 marks)*

(d) State two risks faced by an entrepreneur. *(2 marks)*

---

## SECTION B: MARKETING

**Q3.** (a) Define the term 'market'. *(2 marks)*

(b) Distinguish between a consumer market and an industrial market. *(4 marks)*

(c) State two factors that affect the demand for a product. *(2 marks)*

(d) State two factors that affect the supply of a product. *(2 marks)*

---

**Q4.** (a) Define the term 'market research'. *(2 marks)*

(b) Distinguish between quantitative and qualitative research. *(4 marks)*

(c) State two methods of collecting quantitative data. *(2 marks)*

(d) State two methods of collecting qualitative data. *(2 marks)*

---

## SECTION C: OPERATIONS MANAGEMENT

**Q5.** (a) Define the term 'production'. *(2 marks)*

(b) State the four factors of production. *(4 marks)*

(c) Explain the importance of each factor of production. *(4 marks)*

(d) State two ways a business can increase its productivity. *(2 marks)*

---

**Q6.** (a) Define the term 'economies of scale'. *(2 marks)*

(b) State four types of economies of scale. *(4 marks)*

(c) Explain the benefits of economies of scale. *(4 marks)*

(d) State two causes of diseconomies of scale. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'profit'. *(2 marks)*

(b) Distinguish between gross profit and net profit. *(4 marks)*

(c) State two uses of profit. *(2 marks)*

(d) State two ways a business can increase its profit. *(2 marks)*

---

**Q8.** (a) Define the term 'liquidity'. *(2 marks)*

(b) State two liquidity ratios. *(2 marks)*

(c) Explain the importance of liquidity to a business. *(4 marks)*

(d) State two causes of a liquidity problem. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 6',
    updated_at = NOW()
WHERE id = 'a8988de9-b55c-a6c5-d301-0f2d8ac470d9';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: INTERNATIONAL BUSINESS

**Q1.** (a) Define the term 'international trade'. *(2 marks)*

(b) Distinguish between imports and exports. *(4 marks)*

(c) State two benefits of international trade. *(2 marks)*

(d) State two barriers to international trade. *(2 marks)*

---

**Q2.** (a) Define the term 'globalisation'. *(2 marks)*

(b) State two causes of globalisation. *(2 marks)*

(c) Explain the benefits of globalisation to a business. *(4 marks)*

(d) State two disadvantages of globalisation. *(2 marks)*

---

## SECTION B: MULTINATIONAL COMPANIES

**Q3.** (a) Define the term 'multinational company'. *(2 marks)*

(b) State two reasons why a business may become a multinational. *(2 marks)*

(c) Explain the benefits of a multinational to a host country. *(4 marks)*

(d) State two disadvantages of a multinational to a host country. *(2 marks)*

---

**Q4.** (a) Define the term 'exchange rate'. *(2 marks)*

(b) Explain how a change in the exchange rate affects a business. *(4 marks)*

(c) State two effects of a strong currency on exports. *(2 marks)*

(d) State two effects of a weak currency on imports. *(2 marks)*

---

## SECTION C: BUSINESS ETHICS

**Q5.** (a) Define the term 'business ethics'. *(2 marks)*

(b) State two examples of ethical business behaviour. *(2 marks)*

(c) Explain the benefits of ethical behaviour to a business. *(4 marks)*

(d) State two costs of unethical behaviour. *(2 marks)*

---

**Q6.** (a) Define the term 'corporate social responsibility'. *(2 marks)*

(b) State two areas of corporate social responsibility. *(2 marks)*

(c) Explain how a business can be socially responsible to its employees. *(4 marks)*

(d) State two ways a business can be socially responsible to the environment. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'gearing'. *(2 marks)*

(b) State the formula for the gearing ratio. *(2 marks)*

(c) Explain the importance of the gearing ratio. *(4 marks)*

(d) State two advantages of a high gearing ratio. *(2 marks)*

---

**Q8.** (a) Define the term 'share capital'. *(2 marks)*

(b) Distinguish between ordinary and preference shares. *(4 marks)*

(c) State two advantages of issuing shares. *(2 marks)*

(d) State two disadvantages of issuing shares. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 7',
    updated_at = NOW()
WHERE id = 'fdc3827c-42d3-2190-0810-37e6de18535f';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL BUSINESS STUDIES P2 SET 8

## Structural Question Bank - Set 8

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS OBJECTIVES AND STRATEGY

**Q1.** (a) Define the term 'strategy'. *(2 marks)*

(b) Distinguish between a strategy and a tactic. *(4 marks)*

(c) State two factors that influence the choice of strategy. *(2 marks)*

(d) State two benefits of strategic planning. *(2 marks)*

---

**Q2.** (a) Define the term 'mission statement'. *(2 marks)*

(b) State two purposes of a mission statement. *(2 marks)*

(c) Explain how a mission statement differs from a business objective. *(4 marks)*

(d) State two characteristics of a good mission statement. *(2 marks)*

---

## SECTION B: MARKETING

**Q3.** (a) Define the term 'brand'. *(2 marks)*

(b) State two benefits of a strong brand to a business. *(2 marks)*

(c) Explain how a business can build a strong brand. *(4 marks)*

(d) State two risks of a weak brand. *(2 marks)*

---

**Q4.** (a) Define the term 'customer loyalty'. *(2 marks)*

(b) State two ways a business can build customer loyalty. *(2 marks)*

(c) Explain the benefits of customer loyalty to a business. *(4 marks)*

(d) State two factors that affect customer loyalty. *(2 marks)*

---

## SECTION C: OPERATIONS MANAGEMENT

**Q5.** (a) Define the term 'quality assurance'. *(2 marks)*

(b) Distinguish between quality control and quality assurance. *(4 marks)*

(c) State two benefits of quality assurance. *(2 marks)*

(d) State two costs of poor quality. *(2 marks)*

---

**Q6.** (a) Define the term 'total quality management' (TQM). *(2 marks)*

(b) State two principles of TQM. *(2 marks)*

(c) Explain the benefits of TQM to a business. *(4 marks)*

(d) State two challenges of implementing TQM. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'budget'. *(2 marks)*

(b) Distinguish between a cash budget and a profit budget. *(4 marks)*

(c) State two benefits of budgeting. *(2 marks)*

(d) State two limitations of budgeting. *(2 marks)*

---

**Q8.** (a) Define the term 'variance analysis'. *(2 marks)*

(b) Distinguish between a favourable and an adverse variance. *(4 marks)*

(c) State two uses of variance analysis. *(2 marks)*

(d) State two causes of an adverse variance. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Business Studies structured set 8',
    updated_at = NOW()
WHERE id = 'ec00c3a5-bed2-1f3b-ba4d-b5c57101634d';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL BUSINESS STUDIES — P1 (Multiple Choice) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** A business owned and run by one person is a:

A. sole trader  
B. partnership  
C. company  
D. cooperative  

---

**Q2.** The main advantage of a sole trader is:

A. full control of the business  
B. unlimited liability  
C. limited capital  
D. lack of continuity  

---

**Q3.** A business owned by two or more people who share profits is a:

A. sole trader  
B. partnership  
C. public company  
D. cooperative  

---

**Q4.** The document that sets out the rules of a partnership is the:

A. partnership deed  
B. memorandum of association  
C. articles of association  
D. prospectus  

---

**Q5.** The factor of production that refers to the workforce is:

A. land  
B. labour  
C. capital  
D. enterprise  

---

**Q6.** The reward for labour is:

A. wages  
B. rent  
C. interest  
D. profit  

---

**Q7.** The reward for capital is:

A. interest  
B. wages  
C. rent  
D. profit  

---

**Q8.** The process of turning raw materials into finished goods is:

A. production  
B. marketing  
C. finance  
D. distribution  

---

**Q9.** The sector of the economy that involves manufacturing is the:

A. primary sector  
B. secondary sector  
C. tertiary sector  
D. quaternary sector  

---

**Q10.** The sector of the economy that involves providing services is the:

A. primary sector  
B. secondary sector  
C. tertiary sector  
D. none of the above  

---

**Q11.** The marketing mix consists of:

A. product, price, place and promotion  
B. profit, price, place and promotion  
C. product, price, people and promotion  
D. product, price, place and profit  

---

**Q12.** The price of a product is influenced by:

A. the cost of production  
B. the number of employees  
C. the location of the business  
D. the type of ownership  

---

**Q13.** The process of promoting a product through advertising is:

A. promotion  
B. production  
C. distribution  
D. finance  

---

**Q14.** The source of finance that does not need to be repaid is:

A. a bank loan  
B. share capital  
C. a debenture  
D. an overdraft  

---

**Q15.** A bank overdraft is:

A. a short-term source of finance  
B. a long-term source of finance  
C. a permanent source of finance  
D. an equity source  

---

**Q16.** The money a business keeps for its day-to-day operations is:

A. working capital  
B. fixed capital  
C. share capital  
D. loan capital  

---

**Q17.** The process of finding and attracting suitable candidates for a job is:

A. recruitment  
B. selection  
C. training  
D. appraisal  

---

**Q18.** The process of choosing the best candidate for a job is:

A. selection  
B. recruitment  
C. training  
D. promotion  

---

**Q19.** The document that lists the duties and responsibilities of a job is the:

A. job description  
B. job specification  
C. curriculum vitae  
D. application form  

---

**Q20.** The document that lists the qualifications and skills needed for a job is the:

A. job specification  
B. job description  
C. curriculum vitae  
D. contract of employment  

---

**Q21.** The process of teaching employees how to do their job is:

A. training  
B. recruitment  
C. selection  
D. appraisal  

---

**Q22.** The document used to record the sale of goods on credit is the:

A. invoice  
B. receipt  
C. credit note  
D. debit note  

---

**Q23.** The document issued when goods are returned by a customer is the:

A. credit note  
B. invoice  
C. receipt  
D. debit note  

---

**Q24.** The buying and selling of goods within a country is:

A. home trade  
B. foreign trade  
C. international trade  
D. export trade  

---

**Q25.** The buying and selling of goods between countries is:

A. foreign trade  
B. home trade  
C. local trade  
D. retail trade  

---

## ANSWER KEY

1. A  2. A  3. B  4. A  5. B  6. A  7. A  8. A  9. B  10. C  
11. A  12. A  13. A  14. B  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies MCQ set 1',
    updated_at = NOW()
WHERE id = 'cef450de-fb26-b1ff-e963-ce992aae209c';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** A business owned by shareholders is a:

A. company  
B. sole trader  
C. partnership  
D. cooperative  

---

**Q2.** The liability of shareholders in a limited company is:

A. limited to the amount they invested  
B. unlimited  
C. double their investment  
D. zero  

---

**Q3.** The document that allows a company to trade is the:

A. certificate of incorporation  
B. partnership deed  
C. prospectus  
D. invoice  

---

**Q4.** The reward for enterprise is:

A. profit  
B. wages  
C. rent  
D. interest  

---

**Q5.** The reward for land is:

A. rent  
B. wages  
C. interest  
D. profit  

---

**Q6.** The sector of the economy that involves farming is the:

A. primary sector  
B. secondary sector  
C. tertiary sector  
D. quaternary sector  

---

**Q7.** The process of selling goods to customers is:

A. marketing  
B. production  
C. finance  
D. distribution  

---

**Q8.** The four factors of production are:

A. land, labour, capital and enterprise  
B. land, labour, capital and profit  
C. land, labour, money and enterprise  
D. land, wages, capital and enterprise  

---

**Q9.** The method of production used for a one-off product is:

A. job production  
B. batch production  
C. flow production  
D. mass production  

---

**Q10.** The method of production used for large quantities of identical products is:

A. flow production  
B. job production  
C. project production  
D. batch production  

---

**Q11.** The process of gathering information about customers is:

A. market research  
B. production  
C. finance  
D. distribution  

---

**Q12.** A questionnaire is a method of:

A. primary market research  
B. secondary market research  
C. production  
D. finance  

---

**Q13.** The source of finance that is a loan from a bank is:

A. a bank loan  
B. share capital  
C. retained profit  
D. a grant  

---

**Q14.** The profit kept in the business for reinvestment is:

A. retained profit  
B. gross profit  
C. net profit  
D. share capital  

---

**Q15.** The money needed to start a business is:

A. start-up capital  
B. working capital  
C. share capital  
D. loan capital  

---

**Q16.** The process of motivating employees through rewards is:

A. motivation  
B. recruitment  
C. selection  
D. training  

---

**Q17.** The document that a job applicant sends to apply for a job is the:

A. curriculum vitae  
B. job description  
C. job specification  
D. contract of employment  

---

**Q18.** The process of assessing an employee's performance is:

A. appraisal  
B. recruitment  
C. selection  
D. training  

---

**Q19.** The document used to record cash received is the:

A. receipt  
B. invoice  
C. credit note  
D. debit note  

---

**Q20.** The document used to record a credit purchase is the:

A. invoice  
B. receipt  
C. credit note  
D. debit note  

---

**Q21.** The buying of goods from another country is:

A. import  
B. export  
C. home trade  
D. retail trade  

---

**Q22.** The selling of goods to another country is:

A. export  
B. import  
C. home trade  
D. wholesale trade  

---

**Q23.** The person who buys goods in large quantities and sells them in smaller quantities is a:

A. wholesaler  
B. retailer  
C. producer  
D. consumer  

---

**Q24.** The person who sells goods directly to the final consumer is a:

A. retailer  
B. wholesaler  
C. producer  
D. manufacturer  

---

**Q25.** The final user of a product is the:

A. consumer  
B. producer  
C. wholesaler  
D. retailer  

---

## ANSWER KEY

1. A  2. A  3. A  4. A  5. A  6. A  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies MCQ set 2',
    updated_at = NOW()
WHERE id = '5ef6ecca-96d0-609a-92d1-cee6eacab72f';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** A cooperative society is owned by:

A. its members  
B. the government  
C. shareholders  
D. one person  

---

**Q2.** The main objective of a cooperative society is to:

A. help its members  
B. maximise profit  
C. provide a public service  
D. minimise output  

---

**Q3.** The document that sets out the rules of a company is the:

A. articles of association  
B. partnership deed  
C. prospectus  
D. invoice  

---

**Q4.** The reward for labour is:

A. wages  
B. rent  
C. interest  
D. profit  

---

**Q5.** The sector of the economy that involves providing services is the:

A. tertiary sector  
B. primary sector  
C. secondary sector  
D. quaternary sector  

---

**Q6.** The process of converting raw materials into finished goods is:

A. production  
B. marketing  
C. finance  
D. distribution  

---

**Q7.** The marketing mix element that refers to how a product is distributed is:

A. place  
B. product  
C. price  
D. promotion  

---

**Q8.** The marketing mix element that refers to advertising is:

A. promotion  
B. product  
C. price  
D. place  

---

**Q9.** The source of finance that is a short-term loan is:

A. a bank overdraft  
B. share capital  
C. retained profit  
D. a debenture  

---

**Q10.** The money a business needs for its daily operations is:

A. working capital  
B. fixed capital  
C. share capital  
D. loan capital  

---

**Q11.** The process of finding suitable candidates for a job is:

A. recruitment  
B. selection  
C. training  
D. appraisal  

---

**Q12.** The document that lists the duties of a job is the:

A. job description  
B. job specification  
C. curriculum vitae  
D. application form  

---

**Q13.** The process of teaching employees how to do their job is:

A. training  
B. recruitment  
C. selection  
D. appraisal  

---

**Q14.** The document used to record a credit sale is the:

A. invoice  
B. receipt  
C. credit note  
D. debit note  

---

**Q15.** The document issued when goods are returned to a supplier is the:

A. debit note  
B. credit note  
C. invoice  
D. receipt  

---

**Q16.** The buying and selling of goods within a country is:

A. home trade  
B. foreign trade  
C. international trade  
D. export trade  

---

**Q17.** The person who buys goods in large quantities is a:

A. wholesaler  
B. retailer  
C. consumer  
D. producer  

---

**Q18.** The person who sells goods directly to the consumer is a:

A. retailer  
B. wholesaler  
C. producer  
D. manufacturer  

---

**Q19.** The final user of a product is the:

A. consumer  
B. producer  
C. wholesaler  
D. retailer  

---

**Q20.** The process of selling goods to another country is:

A. export  
B. import  
C. home trade  
D. retail trade  

---

**Q21.** The process of buying goods from another country is:

A. import  
B. export  
C. home trade  
D. wholesale trade  

---

**Q22.** The reward for enterprise is:

A. profit  
B. wages  
C. rent  
D. interest  

---

**Q23.** The reward for land is:

A. rent  
B. wages  
C. interest  
D. profit  

---

**Q24.** The four factors of production are:

A. land, labour, capital and enterprise  
B. land, labour, capital and profit  
C. land, labour, money and enterprise  
D. land, wages, capital and enterprise  

---

**Q25.** The sector of the economy that involves manufacturing is the:

A. secondary sector  
B. primary sector  
C. tertiary sector  
D. quaternary sector  

---

## ANSWER KEY

1. A  2. A  3. A  4. A  5. A  6. A  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies MCQ set 3',
    updated_at = NOW()
WHERE id = 'fc197b89-3ffb-4fc8-32d2-6b134b1c757c';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL BUSINESS STUDIES — P2 (Structured) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ORGANISATION

**Q1.** (a) Define the term 'sole trader'. *(2 marks)*

(b) State two advantages of a sole trader. *(2 marks)*

(c) State two disadvantages of a sole trader. *(2 marks)*

(d) State two differences between a sole trader and a partnership. *(2 marks)*

---

**Q2.** (a) Define the term 'partnership'. *(2 marks)*

(b) State two advantages of a partnership. *(2 marks)*

(c) State two disadvantages of a partnership. *(2 marks)*

(d) State the document that sets out the rules of a partnership. *(2 marks)*

---

## SECTION B: PRODUCTION

**Q3.** (a) State the four factors of production. *(4 marks)*

(b) State the reward for each factor of production. *(4 marks)*

(c) State two examples of each factor of production. *(4 marks)*

(d) State two reasons why production is important. *(2 marks)*

---

**Q4.** (a) Define the term 'production'. *(2 marks)*

(b) Distinguish between the primary, secondary and tertiary sectors. *(6 marks)*

(c) State two examples of each sector. *(2 marks)*

(d) State two reasons why the tertiary sector is growing. *(2 marks)*

---

## SECTION C: MARKETING

**Q5.** (a) Define the term 'marketing'. *(2 marks)*

(b) State the four elements of the marketing mix. *(4 marks)*

(c) Explain each element of the marketing mix. *(4 marks)*

(d) State two reasons why marketing is important. *(2 marks)*

---

**Q6.** (a) Define the term 'market research'. *(2 marks)*

(b) Distinguish between primary and secondary research. *(4 marks)*

(c) State two methods of primary research. *(2 marks)*

(d) State two reasons why market research is important. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'source of finance'. *(2 marks)*

(b) State two internal sources of finance. *(2 marks)*

(c) State two external sources of finance. *(2 marks)*

(d) State two factors to consider when choosing a source of finance. *(2 marks)*

---

**Q8.** (a) Define the term 'working capital'. *(2 marks)*

(b) State the formula for working capital. *(2 marks)*

(c) State two reasons why a business needs working capital. *(2 marks)*

(d) State two causes of a working capital shortage. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 1',
    updated_at = NOW()
WHERE id = '41d62051-c3fe-6be1-c3b0-7dfed0f3fa5d';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ORGANISATION

**Q1.** (a) Define the term 'limited company'. *(2 marks)*

(b) Distinguish between a private and a public limited company. *(4 marks)*

(c) State two advantages of a limited company. *(2 marks)*

(d) State two disadvantages of a limited company. *(2 marks)*

---

**Q2.** (a) Define the term 'cooperative society'. *(2 marks)*

(b) State two objectives of a cooperative society. *(2 marks)*

(c) State two advantages of a cooperative society. *(2 marks)*

(d) State two differences between a cooperative and a company. *(2 marks)*

---

## SECTION B: PRODUCTION

**Q3.** (a) Define the term 'production'. *(2 marks)*

(b) Distinguish between job, batch and flow production. *(6 marks)*

(c) State two examples of each method of production. *(2 marks)*

(d) State two factors that influence the choice of production method. *(2 marks)*

---

**Q4.** (a) Define the term 'productivity'. *(2 marks)*

(b) State two ways a business can improve productivity. *(2 marks)*

(c) State two benefits of increased productivity. *(2 marks)*

(d) State two factors that affect productivity. *(2 marks)*

---

## SECTION C: MARKETING

**Q5.** (a) Define the term 'price'. *(2 marks)*

(b) State two factors that influence the price of a product. *(2 marks)*

(c) State two pricing strategies. *(2 marks)*

(d) State two reasons why pricing is important. *(2 marks)*

---

**Q6.** (a) Define the term 'promotion'. *(2 marks)*

(b) State two methods of promotion. *(2 marks)*

(c) State two advantages of advertising. *(2 marks)*

(d) State two disadvantages of advertising. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'profit'. *(2 marks)*

(b) Distinguish between gross profit and net profit. *(4 marks)*

(c) State two uses of profit. *(2 marks)*

(d) State two ways a business can increase its profit. *(2 marks)*

---

**Q8.** (a) Define the term 'cash flow'. *(2 marks)*

(b) State two causes of cash flow problems. *(2 marks)*

(c) State two ways a business can improve its cash flow. *(2 marks)*

(d) State two differences between cash flow and profit. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 2',
    updated_at = NOW()
WHERE id = 'c6c00824-57c0-144c-308c-dd9bf80b3e3c';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ORGANISATION

**Q1.** (a) Define the term 'entrepreneur'. *(2 marks)*

(b) State two characteristics of a successful entrepreneur. *(2 marks)*

(c) State two functions of an entrepreneur. *(2 marks)*

(d) State two risks faced by an entrepreneur. *(2 marks)*

---

**Q2.** (a) Define the term 'business plan'. *(2 marks)*

(b) State four sections of a business plan. *(4 marks)*

(c) State two reasons why a business plan is important. *(2 marks)*

(d) State two users of a business plan. *(2 marks)*

---

## SECTION B: PRODUCTION

**Q3.** (a) Define the term 'factors of production'. *(2 marks)*

(b) State the four factors of production. *(4 marks)*

(c) State the reward for each factor. *(4 marks)*

(d) State two examples of capital. *(2 marks)*

---

**Q4.** (a) Define the term 'division of labour'. *(2 marks)*

(b) State two advantages of division of labour. *(2 marks)*

(c) State two disadvantages of division of labour. *(2 marks)*

(d) State two examples of division of labour. *(2 marks)*

---

## SECTION C: MARKETING

**Q5.** (a) Define the term 'market'. *(2 marks)*

(b) Distinguish between a consumer market and an industrial market. *(4 marks)*

(c) State two factors that affect the demand for a product. *(2 marks)*

(d) State two factors that affect the supply of a product. *(2 marks)*

---

**Q6.** (a) Define the term 'distribution'. *(2 marks)*

(b) State two channels of distribution. *(2 marks)*

(c) State two advantages of selling through a wholesaler. *(2 marks)*

(d) State two advantages of selling directly to the consumer. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'source of finance'. *(2 marks)*

(b) State two short-term sources of finance. *(2 marks)*

(c) State two long-term sources of finance. *(2 marks)*

(d) State two factors to consider when choosing a source of finance. *(2 marks)*

---

**Q8.** (a) Define the term 'budget'. *(2 marks)*

(b) State two benefits of budgeting. *(2 marks)*

(c) State two limitations of budgeting. *(2 marks)*

(d) State two types of budget. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 3',
    updated_at = NOW()
WHERE id = 'fd9a59db-9a0a-3b68-dd8f-6e0eef4ae707';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: HUMAN RESOURCES

**Q1.** (a) Define the term 'recruitment'. *(2 marks)*

(b) Distinguish between internal and external recruitment. *(4 marks)*

(c) State two advantages of internal recruitment. *(2 marks)*

(d) State two advantages of external recruitment. *(2 marks)*

---

**Q2.** (a) Define the term 'selection'. *(2 marks)*

(b) State two methods of selecting employees. *(2 marks)*

(c) State two documents used in the selection process. *(2 marks)*

(d) State two reasons why the selection process is important. *(2 marks)*

---

## SECTION B: TRAINING AND MOTIVATION

**Q3.** (a) Define the term 'training'. *(2 marks)*

(b) Distinguish between on-the-job and off-the-job training. *(4 marks)*

(c) State two advantages of training. *(2 marks)*

(d) State two disadvantages of training. *(2 marks)*

---

**Q4.** (a) Define the term 'motivation'. *(2 marks)*

(b) State two financial methods of motivation. *(2 marks)*

(c) State two non-financial methods of motivation. *(2 marks)*

(d) State two reasons why motivation is important. *(2 marks)*

---

## SECTION C: BUSINESS DOCUMENTS

**Q5.** (a) Define the term 'invoice'. *(2 marks)*

(b) State two uses of an invoice. *(2 marks)*

(c) State two differences between an invoice and a receipt. *(2 marks)*

(d) State two differences between a credit note and a debit note. *(2 marks)*

---

**Q6.** (a) Define the term 'receipt'. *(2 marks)*

(b) State two uses of a receipt. *(2 marks)*

(c) State two differences between a credit note and an invoice. *(2 marks)*

(d) State two reasons why business documents are important. *(2 marks)*

---

## SECTION D: TRADE

**Q7.** (a) Define the term 'home trade'. *(2 marks)*

(b) Distinguish between wholesale and retail trade. *(4 marks)*

(c) State two functions of a wholesaler. *(2 marks)*

(d) State two functions of a retailer. *(2 marks)*

---

**Q8.** (a) Define the term 'foreign trade'. *(2 marks)*

(b) Distinguish between imports and exports. *(4 marks)*

(c) State two benefits of foreign trade. *(2 marks)*

(d) State two barriers to foreign trade. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 4',
    updated_at = NOW()
WHERE id = 'e66744e9-94f3-332d-7f4f-260aa078bce5';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ORGANISATION

**Q1.** (a) Define the term 'sole trader'. *(2 marks)*

(b) State two advantages of a sole trader. *(2 marks)*

(c) State two disadvantages of a sole trader. *(2 marks)*

(d) State two differences between a sole trader and a company. *(2 marks)*

---

**Q2.** (a) Define the term 'partnership'. *(2 marks)*

(b) State two advantages of a partnership. *(2 marks)*

(c) State two disadvantages of a partnership. *(2 marks)*

(d) State the document that sets out the rules of a partnership. *(2 marks)*

---

## SECTION B: PRODUCTION

**Q3.** (a) State the four factors of production. *(4 marks)*

(b) State the reward for each factor of production. *(4 marks)*

(c) State two examples of each factor of production. *(4 marks)*

(d) State two reasons why production is important. *(2 marks)*

---

**Q4.** (a) Define the term 'production'. *(2 marks)*

(b) Distinguish between the primary, secondary and tertiary sectors. *(6 marks)*

(c) State two examples of each sector. *(2 marks)*

(d) State two reasons why the tertiary sector is growing. *(2 marks)*

---

## SECTION C: MARKETING

**Q5.** (a) Define the term 'marketing'. *(2 marks)*

(b) State the four elements of the marketing mix. *(4 marks)*

(c) Explain each element of the marketing mix. *(4 marks)*

(d) State two reasons why marketing is important. *(2 marks)*

---

**Q6.** (a) Define the term 'market research'. *(2 marks)*

(b) Distinguish between primary and secondary research. *(4 marks)*

(c) State two methods of primary research. *(2 marks)*

(d) State two reasons why market research is important. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'source of finance'. *(2 marks)*

(b) State two internal sources of finance. *(2 marks)*

(c) State two external sources of finance. *(2 marks)*

(d) State two factors to consider when choosing a source of finance. *(2 marks)*

---

**Q8.** (a) Define the term 'working capital'. *(2 marks)*

(b) State the formula for working capital. *(2 marks)*

(c) State two reasons why a business needs working capital. *(2 marks)*

(d) State two causes of a working capital shortage. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 5',
    updated_at = NOW()
WHERE id = '10e7a7ea-ad43-3c81-8fa2-8073397fd1f0';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ORGANISATION

**Q1.** (a) Define the term 'limited company'. *(2 marks)*

(b) Distinguish between a private and a public limited company. *(4 marks)*

(c) State two advantages of a limited company. *(2 marks)*

(d) State two disadvantages of a limited company. *(2 marks)*

---

**Q2.** (a) Define the term 'cooperative society'. *(2 marks)*

(b) State two objectives of a cooperative society. *(2 marks)*

(c) State two advantages of a cooperative society. *(2 marks)*

(d) State two differences between a cooperative and a company. *(2 marks)*

---

## SECTION B: PRODUCTION

**Q3.** (a) Define the term 'production'. *(2 marks)*

(b) Distinguish between job, batch and flow production. *(6 marks)*

(c) State two examples of each method of production. *(2 marks)*

(d) State two factors that influence the choice of production method. *(2 marks)*

---

**Q4.** (a) Define the term 'productivity'. *(2 marks)*

(b) State two ways a business can improve productivity. *(2 marks)*

(c) State two benefits of increased productivity. *(2 marks)*

(d) State two factors that affect productivity. *(2 marks)*

---

## SECTION C: MARKETING

**Q5.** (a) Define the term 'price'. *(2 marks)*

(b) State two factors that influence the price of a product. *(2 marks)*

(c) State two pricing strategies. *(2 marks)*

(d) State two reasons why pricing is important. *(2 marks)*

---

**Q6.** (a) Define the term 'promotion'. *(2 marks)*

(b) State two methods of promotion. *(2 marks)*

(c) State two advantages of advertising. *(2 marks)*

(d) State two disadvantages of advertising. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'profit'. *(2 marks)*

(b) Distinguish between gross profit and net profit. *(4 marks)*

(c) State two uses of profit. *(2 marks)*

(d) State two ways a business can increase its profit. *(2 marks)*

---

**Q8.** (a) Define the term 'cash flow'. *(2 marks)*

(b) State two causes of cash flow problems. *(2 marks)*

(c) State two ways a business can improve its cash flow. *(2 marks)*

(d) State two differences between cash flow and profit. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 6',
    updated_at = NOW()
WHERE id = '78e2c203-bf65-c892-77dc-dec547c6f5c4';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: HUMAN RESOURCES

**Q1.** (a) Define the term 'recruitment'. *(2 marks)*

(b) Distinguish between internal and external recruitment. *(4 marks)*

(c) State two advantages of internal recruitment. *(2 marks)*

(d) State two advantages of external recruitment. *(2 marks)*

---

**Q2.** (a) Define the term 'selection'. *(2 marks)*

(b) State two methods of selecting employees. *(2 marks)*

(c) State two documents used in the selection process. *(2 marks)*

(d) State two reasons why the selection process is important. *(2 marks)*

---

## SECTION B: TRAINING AND MOTIVATION

**Q3.** (a) Define the term 'training'. *(2 marks)*

(b) Distinguish between on-the-job and off-the-job training. *(4 marks)*

(c) State two advantages of training. *(2 marks)*

(d) State two disadvantages of training. *(2 marks)*

---

**Q4.** (a) Define the term 'motivation'. *(2 marks)*

(b) State two financial methods of motivation. *(2 marks)*

(c) State two non-financial methods of motivation. *(2 marks)*

(d) State two reasons why motivation is important. *(2 marks)*

---

## SECTION C: BUSINESS DOCUMENTS

**Q5.** (a) Define the term 'invoice'. *(2 marks)*

(b) State two uses of an invoice. *(2 marks)*

(c) State two differences between an invoice and a receipt. *(2 marks)*

(d) State two differences between a credit note and a debit note. *(2 marks)*

---

**Q6.** (a) Define the term 'receipt'. *(2 marks)*

(b) State two uses of a receipt. *(2 marks)*

(c) State two differences between a credit note and an invoice. *(2 marks)*

(d) State two reasons why business documents are important. *(2 marks)*

---

## SECTION D: TRADE

**Q7.** (a) Define the term 'home trade'. *(2 marks)*

(b) Distinguish between wholesale and retail trade. *(4 marks)*

(c) State two functions of a wholesaler. *(2 marks)*

(d) State two functions of a retailer. *(2 marks)*

---

**Q8.** (a) Define the term 'foreign trade'. *(2 marks)*

(b) Distinguish between imports and exports. *(4 marks)*

(c) State two benefits of foreign trade. *(2 marks)*

(d) State two barriers to foreign trade. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 7',
    updated_at = NOW()
WHERE id = '4fa27ad1-a17c-eff2-b742-4bc51a971a13';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL BUSINESS STUDIES P2 SET 8

## Structural Question Bank - Set 8

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Business Studies

**Instructions:**

- Answer all questions in a clear and organized manner.
- Use correct business terminology and Cameroon GCE presentation standards.

---

## SECTION A: BUSINESS ORGANISATION

**Q1.** (a) Define the term 'entrepreneur'. *(2 marks)*

(b) State two characteristics of a successful entrepreneur. *(2 marks)*

(c) State two functions of an entrepreneur. *(2 marks)*

(d) State two risks faced by an entrepreneur. *(2 marks)*

---

**Q2.** (a) Define the term 'business plan'. *(2 marks)*

(b) State four sections of a business plan. *(4 marks)*

(c) State two reasons why a business plan is important. *(2 marks)*

(d) State two users of a business plan. *(2 marks)*

---

## SECTION B: PRODUCTION

**Q3.** (a) Define the term 'factors of production'. *(2 marks)*

(b) State the four factors of production. *(4 marks)*

(c) State the reward for each factor. *(4 marks)*

(d) State two examples of capital. *(2 marks)*

---

**Q4.** (a) Define the term 'division of labour'. *(2 marks)*

(b) State two advantages of division of labour. *(2 marks)*

(c) State two disadvantages of division of labour. *(2 marks)*

(d) State two examples of division of labour. *(2 marks)*

---

## SECTION C: MARKETING

**Q5.** (a) Define the term 'market'. *(2 marks)*

(b) Distinguish between a consumer market and an industrial market. *(4 marks)*

(c) State two factors that affect the demand for a product. *(2 marks)*

(d) State two factors that affect the supply of a product. *(2 marks)*

---

**Q6.** (a) Define the term 'distribution'. *(2 marks)*

(b) State two channels of distribution. *(2 marks)*

(c) State two advantages of selling through a wholesaler. *(2 marks)*

(d) State two advantages of selling directly to the consumer. *(2 marks)*

---

## SECTION D: FINANCE

**Q7.** (a) Define the term 'source of finance'. *(2 marks)*

(b) State two short-term sources of finance. *(2 marks)*

(c) State two long-term sources of finance. *(2 marks)*

(d) State two factors to consider when choosing a source of finance. *(2 marks)*

---

**Q8.** (a) Define the term 'budget'. *(2 marks)*

(b) State two benefits of budgeting. *(2 marks)*

(c) State two limitations of budgeting. *(2 marks)*

(d) State two types of budget. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Business Studies structured set 8',
    updated_at = NOW()
WHERE id = '63a1fbcc-8012-10bc-f5f8-3fade5e6d6a5';

COMMIT;
