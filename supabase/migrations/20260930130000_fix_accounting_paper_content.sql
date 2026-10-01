-- Fix Accounting paper content (issue: auto-generated placeholder content,
-- advanced papers contained ordinary-level content, questions duplicated).
--
-- Replaces the placeholder/wrong-level content of all 22 Accounting papers
-- (11 Advanced Level, 11 Ordinary Level) with distinct, correct-level
-- questions.

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL ACCOUNTING — P1 (Multiple Choice) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 1

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The accounting concept that requires a business to be treated separately from its owner is:

A. the going concern concept  
B. the business entity concept  
C. the accruals concept  
D. the consistency concept  

---

**Q2.** Under the accruals (matching) concept, revenue and expenses are recognised when:

A. cash is received or paid  
B. they are earned or incurred  
C. the invoice is issued  
D. the bank statement is received  

---

**Q3.** A machine costing 500,000 FCFA with a residual value of 50,000 FCFA and a useful life of 5 years has an annual straight-line depreciation of:

A. 100,000 FCFA  
B. 90,000 FCFA  
C. 110,000 FCFA  
D. 50,000 FCFA  

---

**Q4.** The reducing balance method of depreciation:

A. charges equal depreciation each year  
B. charges more depreciation in the early years  
C. charges more depreciation in the later years  
D. does not consider residual value  

---

**Q5.** In a partnership, the account that records each partner's share of profits and drawings is the:

A. capital account  
B. current account  
C. profit and loss account  
D. appropriation account  

---

**Q6.** Goodwill in a partnership is:

A. a tangible asset  
B. an intangible asset  
C. a current liability  
D. an expense  

---

**Q7.** The profit and loss appropriation account of a partnership shows:

A. gross profit  
B. net profit before appropriation  
C. the division of profit among partners  
D. the trading account balance  

---

**Q8.** A company's issued share capital is the:

A. total value of shares actually issued to shareholders  
B. maximum value of shares the company may issue  
C. value of shares held by directors  
D. total assets of the company  

---

**Q9.** Debentures are:

A. shares in a company  
B. loans to a company  
C. retained profits  
D. current liabilities  

---

**Q10.** The statement of financial position (balance sheet) shows:

A. the profit for the year  
B. assets, liabilities and capital  
C. cash received and paid  
D. sales and purchases  

---

**Q11.** In a manufacturing account, prime cost is:

A. direct materials + direct labour + direct expenses  
B. factory overheads  
C. cost of goods sold  
D. selling and distribution costs  

---

**Q12.** The cost of goods sold is calculated as:

A. opening stock + purchases − closing stock  
B. opening stock − purchases + closing stock  
C. sales − gross profit  
D. purchases + closing stock  

---

**Q13.** When a business does not keep full accounting records, the method used to determine profit is:

A. the single entry method  
B. the double entry method  
C. the control account method  
D. the bank reconciliation method  

---

**Q14.** The statement of affairs is used to determine:

A. cash flow  
B. capital at a point in time  
C. gross profit  
D. bank balance  

---

**Q15.** The quick (acid test) ratio is calculated as:

A. current assets ÷ current liabilities  
B. (current assets − stock) ÷ current liabilities  
C. current liabilities ÷ current assets  
D. (current assets + stock) ÷ current liabilities  

---

**Q16.** A current ratio of 2:1 is generally considered:

A. too low  
B. satisfactory  
C. too high  
D. irrelevant  

---

**Q17.** The gross profit margin is calculated as:

A. gross profit ÷ sales × 100  
B. net profit ÷ sales × 100  
C. gross profit ÷ cost of sales × 100  
D. sales ÷ gross profit × 100  

---

**Q18.** A suspense account is used to:

A. record cash transactions  
B. temporarily hold the difference when a trial balance does not balance  
C. record credit sales  
D. record depreciation  

---

**Q19.** When an error affects the trial balance, it is corrected through:

A. the suspense account  
B. the cash book  
C. the general journal  
D. the sales journal  

---

**Q20.** A cash flow statement classifies cash flows into:

A. operating, investing and financing activities  
B. revenue and capital items  
C. assets and liabilities  
D. income and expenses  

---

**Q21.** Depreciation is charged to:

A. increase the value of the asset  
B. allocate the cost of an asset over its useful life  
C. reduce the cash balance  
D. increase the profit  

---

**Q22.** The capital employed of a business is:

A. total assets − current liabilities  
B. total assets + current liabilities  
C. fixed assets − current assets  
D. net profit ÷ sales  

---

**Q23.** Return on capital employed (ROCE) is calculated as:

A. net profit ÷ capital employed × 100  
B. gross profit ÷ capital employed × 100  
C. sales ÷ capital employed × 100  
D. capital employed ÷ net profit × 100  

---

**Q24.** A favourable variance occurs when:

A. actual cost is greater than budgeted cost  
B. actual cost is less than budgeted cost  
C. actual cost equals budgeted cost  
D. budgeted cost is zero  

---

**Q25.** The main purpose of a budget is to:

A. record past transactions  
B. plan and control future operations  
C. prepare the balance sheet  
D. calculate depreciation  

---

## ANSWER KEY

1. B  2. B  3. B  4. B  5. B  6. B  7. C  8. A  9. B  10. B  
11. A  12. A  13. A  14. B  15. B  16. B  17. A  18. B  19. A  20. A  
21. B  22. A  23. A  24. B  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting MCQ set 1',
    updated_at = NOW()
WHERE id = '16e20010-020f-127b-06f6-4a333e3bb8d0';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The going concern concept assumes that a business will:

A. be sold immediately  
B. continue to operate in the foreseeable future  
C. make a profit every year  
D. pay all its debts immediately  

---

**Q2.** The prudence (conservatism) concept requires that:

A. profits are recognised before they are certain  
B. losses are recognised as soon as they are anticipated  
C. assets are always overstated  
D. liabilities are always understated  

---

**Q3.** A delivery van costing 8,000,000 FCFA is depreciated at 20% per annum using the reducing balance method. The depreciation in the second year is:

A. 1,600,000 FCFA  
B. 1,280,000 FCFA  
C. 1,920,000 FCFA  
D. 2,000,000 FCFA  

---

**Q4.** The revaluation of a partnership asset on admission of a new partner is recorded in:

A. the revaluation account  
B. the profit and loss account  
C. the trading account  
D. the cash book  

---

**Q5.** When a new partner is admitted, goodwill is usually:

A. written off immediately  
B. shared among the old partners in their profit-sharing ratio  
C. given to the new partner  
D. ignored  

---

**Q6.** The interest on a partner's capital is:

A. an expense of the partnership  
B. an appropriation of profit  
C. a liability  
D. an asset  

---

**Q7.** Ordinary shares carry:

A. a fixed rate of dividend  
B. voting rights and a variable dividend  
C. no voting rights  
D. a guaranteed return  

---

**Q8.** Preference shares carry:

A. a fixed rate of dividend before ordinary shares  
B. voting rights  
C. a variable dividend  
D. no dividend  

---

**Q9.** The share premium account records:

A. the nominal value of shares  
B. the excess received over the nominal value of shares  
C. retained profits  
D. debentures  

---

**Q10.** In a manufacturing account, factory overheads are:

A. direct costs  
B. indirect costs  
C. prime costs  
D. selling costs  

---

**Q11.** Work-in-progress appears in the:

A. manufacturing account  
B. cash book  
C. sales journal  
D. purchases journal  

---

**Q12.** The gross profit is:

A. sales − cost of goods sold  
B. sales − all expenses  
C. net profit + expenses  
D. purchases − sales  

---

**Q13.** In incomplete records, the opening capital is determined from:

A. the statement of affairs  
B. the cash book  
C. the sales journal  
D. the bank statement  

---

**Q14.** The mark-up is calculated as:

A. gross profit ÷ cost of sales × 100  
B. gross profit ÷ sales × 100  
C. net profit ÷ sales × 100  
D. cost of sales ÷ gross profit × 100  

---

**Q15.** The gross profit percentage (margin) is calculated as:

A. gross profit ÷ sales × 100  
B. gross profit ÷ cost of sales × 100  
C. net profit ÷ sales × 100  
D. sales ÷ gross profit × 100  

---

**Q16.** The debtors' collection period measures:

A. how quickly debtors pay  
B. how quickly stock is sold  
C. how quickly creditors are paid  
D. the gross profit margin  

---

**Q17.** The creditors' payment period measures:

A. how quickly debtors pay  
B. how quickly the business pays its creditors  
C. the stock turnover  
D. the net profit margin  

---

**Q18.** A trial balance that does not balance is corrected using:

A. the suspense account  
B. the cash book  
C. the bank statement  
D. the sales journal  

---

**Q19.** An error of commission occurs when:

A. a transaction is completely omitted  
B. an entry is made in the wrong person's account  
C. the wrong amount is entered  
D. a transaction is recorded twice  

---

**Q20.** An error of principle occurs when:

A. an entry is made in the wrong class of account  
B. a transaction is omitted  
C. the wrong amount is entered  
D. a transaction is recorded twice  

---

**Q21.** The cash flow statement is prepared from:

A. the income statement and statement of financial position  
B. the sales journal only  
C. the purchases journal only  
D. the trial balance only  

---

**Q22.** Cash flows from operating activities include:

A. cash received from customers  
B. purchase of fixed assets  
C. issue of shares  
D. repayment of loans  

---

**Q23.** The asset turnover ratio is:

A. sales ÷ capital employed  
B. net profit ÷ sales  
C. current assets ÷ current liabilities  
D. gross profit ÷ sales  

---

**Q24.** A direct material price variance is favourable when:

A. actual price is less than standard price  
B. actual price is greater than standard price  
C. actual quantity is less than standard quantity  
D. actual quantity is greater than standard quantity  

---

**Q25.** The break-even point is the level of activity where:

A. total revenue equals total cost  
B. profit is maximum  
C. fixed costs are zero  
D. variable costs are zero  

---

## ANSWER KEY

1. B  2. B  3. B  4. A  5. B  6. B  7. B  8. A  9. B  10. B  
11. A  12. A  13. A  14. A  15. A  16. A  17. B  18. A  19. B  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting MCQ set 2',
    updated_at = NOW()
WHERE id = 'fcb39a44-3468-83c3-dc9d-b7a1ab9207b0';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The materiality concept states that:

A. all items must be recorded regardless of size  
B. insignificant items may be treated in the most convenient way  
C. only large items are recorded  
D. assets must be recorded at market value  

---

**Q2.** The consistency concept requires that:

A. accounting methods are changed every year  
B. the same accounting methods are applied from one period to the next  
C. profits are maximised  
D. assets are revalued annually  

---

**Q3.** A machine costing 6,000,000 FCFA is depreciated at 25% per annum on the reducing balance basis. The book value after two years is:

A. 3,375,000 FCFA  
B. 3,000,000 FCFA  
C. 4,500,000 FCFA  
D. 2,250,000 FCFA  

---

**Q4.** On the admission of a new partner, the old partners' capital accounts are credited with their share of:

A. revaluation surplus  
B. drawings  
C. losses  
D. expenses  

---

**Q5.** The profit-sharing ratio of partners is agreed in the:

A. partnership deed  
B. cash book  
C. sales journal  
D. bank statement  

---

**Q6.** A partner's drawings are:

A. credited to the current account  
B. debited to the current account  
C. recorded in the profit and loss account  
D. ignored  

---

**Q7.** The authorised share capital of a company is:

A. the maximum amount of shares the company can issue  
B. the shares actually issued  
C. the shares held by the public  
D. the retained earnings  

---

**Q8.** A bonus issue of shares is financed from:

A. the share premium and reserves  
B. bank loans  
C. debentures  
D. trade creditors  

---

**Q9.** The statement of financial position of a company shows:

A. share capital and reserves  
B. only current assets  
C. only fixed assets  
D. only liabilities  

---

**Q10.** In a manufacturing account, the cost of raw materials consumed is:

A. opening stock of raw materials + purchases − closing stock of raw materials  
B. purchases only  
C. opening stock − purchases  
D. closing stock + purchases  

---

**Q11.** Factory cost (cost of production) is:

A. prime cost + factory overheads  
B. prime cost only  
C. cost of goods sold  
D. selling and distribution costs  

---

**Q12.** The net profit is:

A. gross profit + other income − expenses  
B. gross profit − cost of sales  
C. sales − cost of sales  
D. gross profit + expenses  

---

**Q13.** In incomplete records, the profit for the year is calculated as:

A. closing capital − opening capital + drawings − additional capital  
B. closing capital + opening capital  
C. opening capital − closing capital  
D. drawings + additional capital  

---

**Q14.** The margin is expressed as a percentage of:

A. sales  
B. cost of sales  
C. purchases  
D. net profit  

---

**Q15.** The stock turnover ratio is:

A. cost of sales ÷ average stock  
B. sales ÷ average stock  
C. gross profit ÷ sales  
D. net profit ÷ sales  

---

**Q16.** The return on capital employed (ROCE) is a measure of:

A. profitability  
B. liquidity  
C. solvency  
D. gearing  

---

**Q17.** The gearing ratio measures the relationship between:

A. borrowed funds and equity  
B. current assets and current liabilities  
C. gross profit and sales  
D. debtors and creditors  

---

**Q18.** A trial balance is prepared to:

A. check the arithmetical accuracy of the ledger  
B. prepare the cash book  
C. record credit sales  
D. calculate depreciation  

---

**Q19.** An error of omission occurs when:

A. a transaction is completely left out of the books  
B. the wrong amount is entered  
C. an entry is made in the wrong account  
D. a transaction is recorded twice  

---

**Q20.** A compensating error occurs when:

A. two errors cancel each other out  
B. one error is made  
C. a transaction is omitted  
D. the wrong amount is entered  

---

**Q21.** Cash flows from investing activities include:

A. purchase of fixed assets  
B. cash received from customers  
C. issue of shares  
D. payment to suppliers  

---

**Q22.** Cash flows from financing activities include:

A. issue of shares  
B. purchase of inventory  
C. payment of wages  
D. receipt from debtors  

---

**Q23.** The current ratio is a measure of:

A. liquidity  
B. profitability  
C. gearing  
D. efficiency  

---

**Q24.** A direct labour efficiency variance is favourable when:

A. actual hours are less than standard hours  
B. actual hours are greater than standard hours  
C. actual rate is greater than standard rate  
D. actual rate is less than standard rate  

---

**Q25.** Fixed costs:

A. remain constant regardless of output  
B. vary directly with output  
C. vary inversely with output  
D. are zero at high output  

---

## ANSWER KEY

1. B  2. B  3. A  4. A  5. A  6. B  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting MCQ set 3',
    updated_at = NOW()
WHERE id = 'a9947a71-d0ef-c5d3-bfde-940152704849';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ADVANCED LEVEL ACCOUNTING — P2 (Structured) — Upper Sixth
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 1

## Structural Question Bank - Set 1

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: FINANCIAL STATEMENTS

**Q1.** The following balances were extracted from the books of Kumba Traders for the year ended 31 December 2025:

Sales 12,000,000 FCFA; Purchases 7,500,000 FCFA; Opening stock 1,200,000 FCFA; Closing stock 1,500,000 FCFA; Salaries 1,800,000 FCFA; Rent 600,000 FCFA; Electricity 300,000 FCFA; Discount received 150,000 FCFA.

(a) State the formula for cost of goods sold. *(2 marks)*

(b) Calculate the cost of goods sold. *(3 marks)*

(c) Calculate the gross profit. *(3 marks)*

(d) Prepare the profit and loss account showing the net profit. *(6 marks)*

---

**Q2.** The following information relates to a business:

Capital at 1 January 2025: 5,000,000 FCFA; Capital at 31 December 2025: 6,200,000 FCFA; Drawings during the year: 800,000 FCFA; Additional capital introduced: 500,000 FCFA.

(a) State the formula for profit using the capital comparison method. *(2 marks)*

(b) Calculate the profit for the year. *(4 marks)*

(c) State two reasons why a business might introduce additional capital. *(2 marks)*

(d) Explain the difference between capital and drawings. *(2 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** A and B are partners sharing profits in the ratio 3:2. Their capital balances are 4,000,000 FCFA and 3,000,000 FCFA respectively. The net profit for the year is 2,500,000 FCFA. Interest on capital is 10% per annum.

(a) State the purpose of the profit and loss appropriation account. *(2 marks)*

(b) Calculate the interest on capital for each partner. *(4 marks)*

(c) Calculate each partner's share of the remaining profit. *(4 marks)*

(d) State two items that appear in the appropriation account. *(2 marks)*

---

**Q4.** C is admitted as a new partner into a firm. The goodwill of the firm is valued at 1,500,000 FCFA.

(a) Define goodwill. *(2 marks)*

(b) State how goodwill is treated on the admission of a new partner. *(3 marks)*

(c) Explain the effect of the goodwill adjustment on the old partners' capital accounts. *(3 marks)*

(d) State two factors that give rise to goodwill. *(2 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company issued 50,000 ordinary shares of 1,000 FCFA each at a premium of 200 FCFA per share.

(a) Define share capital. *(2 marks)*

(b) Calculate the total amount received from the share issue. *(4 marks)*

(c) State how the share premium is recorded. *(3 marks)*

(d) State two differences between ordinary shares and debentures. *(3 marks)*

---

**Q6.** The following balances relate to a company: Share capital 10,000,000 FCFA; Retained earnings 2,500,000 FCFA; 8% Debentures 4,000,000 FCFA; Net profit 1,800,000 FCFA.

(a) Define debentures. *(2 marks)*

(b) Calculate the interest on debentures. *(3 marks)*

(c) Calculate the capital employed. *(3 marks)*

(d) Calculate the return on capital employed (ROCE). *(4 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 3,000,000 FCFA; Stock 1,200,000 FCFA; Current liabilities 1,500,000 FCFA; Sales 10,000,000 FCFA; Gross profit 4,000,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick (acid test) ratio. *(3 marks)*

(c) Calculate the gross profit margin. *(3 marks)*

(d) State what a current ratio of 2:1 indicates. *(2 marks)*

---

**Q8.** A business has sales of 15,000,000 FCFA, cost of sales of 9,000,000 FCFA, and average stock of 1,500,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the net profit if expenses are 2,000,000 FCFA. *(3 marks)*

(d) State two uses of ratio analysis. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 1',
    updated_at = NOW()
WHERE id = 'e2492cca-83e6-bf4e-e44f-18168699676f';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 2

## Structural Question Bank - Set 2

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: FINANCIAL STATEMENTS

**Q1.** The following balances were extracted from the books of Limbe Enterprises for the year ended 31 December 2025:

Sales 18,000,000 FCFA; Purchases 11,000,000 FCFA; Opening stock 2,000,000 FCFA; Closing stock 2,400,000 FCFA; Wages 2,500,000 FCFA; Rent 900,000 FCFA; Insurance 400,000 FCFA; Commission received 300,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Prepare the profit and loss account showing the net profit. *(6 marks)*

(d) State two differences between gross profit and net profit. *(2 marks)*

---

**Q2.** A business has the following information: Opening capital 8,000,000 FCFA; Closing capital 9,500,000 FCFA; Drawings 1,200,000 FCFA; Additional capital 600,000 FCFA.

(a) State the formula for profit using the capital comparison method. *(2 marks)*

(b) Calculate the profit for the year. *(4 marks)*

(c) State two reasons why drawings reduce capital. *(2 marks)*

(d) Explain the difference between capital expenditure and revenue expenditure. *(3 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** X and Y are partners sharing profits in the ratio 2:1. Their capitals are 6,000,000 FCFA and 4,000,000 FCFA. The net profit is 3,000,000 FCFA. Interest on capital is 10% per annum and X is entitled to a salary of 500,000 FCFA.

(a) State the purpose of a partnership deed. *(2 marks)*

(b) Calculate the interest on capital for each partner. *(4 marks)*

(c) Prepare the profit and loss appropriation account. *(6 marks)*

(d) State two items that are debited to the appropriation account. *(2 marks)*

---

**Q4.** A partnership revalues its assets on the admission of a new partner. The land increases in value by 1,000,000 FCFA.

(a) State the account used to record the revaluation. *(2 marks)*

(b) Explain how the revaluation surplus is treated. *(3 marks)*

(c) State two assets that may be revalued. *(2 marks)*

(d) Explain the effect of the revaluation on the old partners' capital accounts. *(3 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company issued 20,000 preference shares of 1,000 FCFA each at par.

(a) Define preference shares. *(2 marks)*

(b) Calculate the total amount received from the issue. *(3 marks)*

(c) State two differences between preference shares and ordinary shares. *(4 marks)*

(d) State one advantage of issuing preference shares. *(2 marks)*

---

**Q6.** A company has the following: Ordinary share capital 12,000,000 FCFA; Share premium 2,000,000 FCFA; Retained earnings 3,000,000 FCFA; Net profit 2,400,000 FCFA.

(a) Define share premium. *(2 marks)*

(b) Calculate the total shareholders' equity. *(3 marks)*

(c) Calculate the return on equity. *(3 marks)*

(d) State two uses of retained earnings. *(2 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 4,000,000 FCFA; Stock 1,600,000 FCFA; Current liabilities 2,000,000 FCFA; Sales 12,000,000 FCFA; Net profit 1,800,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick ratio. *(3 marks)*

(c) Calculate the net profit margin. *(3 marks)*

(d) State what a quick ratio of less than 1:1 indicates. *(2 marks)*

---

**Q8.** A business has sales of 20,000,000 FCFA, cost of sales of 12,000,000 FCFA, and average stock of 2,000,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the average stock holding period in days. *(3 marks)*

(d) State two limitations of ratio analysis. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 2',
    updated_at = NOW()
WHERE id = '5f0cd040-bbdb-c816-d571-9656f2f7a6a4';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 3

## Structural Question Bank - Set 3

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: FINANCIAL STATEMENTS

**Q1.** The following balances relate to Buea Traders for the year ended 31 December 2025:

Sales 24,000,000 FCFA; Purchases 15,000,000 FCFA; Opening stock 3,000,000 FCFA; Closing stock 3,600,000 FCFA; Salaries 3,000,000 FCFA; Rent 1,200,000 FCFA; Advertising 600,000 FCFA; Discount allowed 200,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Prepare the profit and loss account. *(6 marks)*

(d) State two examples of administrative expenses. *(2 marks)*

---

**Q2.** A business has opening capital of 10,000,000 FCFA and closing capital of 12,500,000 FCFA. Drawings were 1,500,000 FCFA and additional capital was 1,000,000 FCFA.

(a) Calculate the profit for the year. *(4 marks)*

(b) State two reasons why a business may make drawings. *(2 marks)*

(c) Explain the difference between a capital receipt and a revenue receipt. *(3 marks)*

(d) State two examples of capital expenditure. *(2 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** P and Q are partners sharing profits equally. Their capitals are 5,000,000 FCFA each. The net profit is 4,000,000 FCFA. Interest on capital is 10% per annum.

(a) State the purpose of the appropriation account. *(2 marks)*

(b) Calculate the interest on capital for each partner. *(4 marks)*

(c) Prepare the appropriation account. *(6 marks)*

(d) State two items that appear on the credit side of the appropriation account. *(2 marks)*

---

**Q4.** On the retirement of a partner, the remaining partners take over the retiring partner's share of goodwill.

(a) Define goodwill. *(2 marks)*

(b) Explain how goodwill is treated on the retirement of a partner. *(3 marks)*

(c) State two methods of valuing goodwill. *(3 marks)*

(d) Explain the effect of the goodwill adjustment on the remaining partners' capital accounts. *(3 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company issued 40,000 ordinary shares of 1,000 FCFA each at a discount of 100 FCFA per share.

(a) State whether a company may issue shares at a discount. *(2 marks)*

(b) Calculate the total amount received from the issue. *(4 marks)*

(c) State how the discount on issue is recorded. *(3 marks)*

(d) State two differences between shares and debentures. *(3 marks)*

---

**Q6.** A company has the following: Ordinary share capital 15,000,000 FCFA; 10% Debentures 5,000,000 FCFA; Net profit before interest 3,000,000 FCFA.

(a) Calculate the interest on debentures. *(3 marks)*

(b) Calculate the net profit after interest. *(3 marks)*

(c) Calculate the gearing ratio. *(3 marks)*

(d) State what a high gearing ratio indicates. *(2 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 5,000,000 FCFA; Stock 2,000,000 FCFA; Current liabilities 2,500,000 FCFA; Sales 16,000,000 FCFA; Gross profit 6,000,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick ratio. *(3 marks)*

(c) Calculate the gross profit margin. *(3 marks)*

(d) State two ways of improving the current ratio. *(2 marks)*

---

**Q8.** A business has sales of 25,000,000 FCFA, cost of sales of 15,000,000 FCFA, and average stock of 2,500,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the net profit if expenses are 3,000,000 FCFA. *(3 marks)*

(d) State two users of accounting ratios. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 3',
    updated_at = NOW()
WHERE id = 'e682c2ae-19d6-6ffa-bc2d-44d136134ff1';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 4

## Structural Question Bank - Set 4

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: MANUFACTURING ACCOUNTS

**Q1.** The following information relates to a manufacturing business for the year ended 31 December 2025:

Raw materials: opening stock 800,000 FCFA, purchases 6,000,000 FCFA, closing stock 1,000,000 FCFA; Direct labour 3,000,000 FCFA; Direct expenses 500,000 FCFA; Factory overheads 2,000,000 FCFA.

(a) Define prime cost. *(2 marks)*

(b) Calculate the cost of raw materials consumed. *(3 marks)*

(c) Calculate the prime cost. *(3 marks)*

(d) Calculate the factory cost (cost of production). *(4 marks)*

---

**Q2.** A manufacturing business has the following: Factory cost 15,000,000 FCFA; Opening stock of finished goods 2,000,000 FCFA; Closing stock of finished goods 2,500,000 FCFA; Sales 22,000,000 FCFA.

(a) State the formula for cost of goods sold. *(2 marks)*

(b) Calculate the cost of goods sold. *(3 marks)*

(c) Calculate the gross profit. *(3 marks)*

(d) State two differences between direct and indirect costs. *(4 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** A and B are partners sharing profits in the ratio 3:2. Their capitals are 7,000,000 FCFA and 5,000,000 FCFA. The net profit is 5,000,000 FCFA. Interest on capital is 10% per annum.

(a) Calculate the interest on capital for each partner. *(4 marks)*

(b) Calculate each partner's share of the remaining profit. *(4 marks)*

(c) State two items that are credited to the appropriation account. *(2 marks)*

(d) Explain the difference between a capital account and a current account. *(3 marks)*

---

**Q4.** A new partner is admitted and brings in 3,000,000 FCFA as capital and 1,000,000 FCFA as goodwill.

(a) State the journal entry to record the goodwill brought in. *(3 marks)*

(b) Explain how the goodwill is shared among the old partners. *(3 marks)*

(c) State two reasons why a new partner may be admitted. *(2 marks)*

(d) Explain the effect of the new partner's admission on the old partners' capital accounts. *(3 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company has an authorised share capital of 20,000,000 FCFA divided into 20,000 ordinary shares of 1,000 FCFA each. It issued 15,000 shares.

(a) Define authorised share capital. *(2 marks)*

(b) Calculate the issued share capital. *(3 marks)*

(c) Calculate the unissued share capital. *(3 marks)*

(d) State two differences between authorised and issued capital. *(3 marks)*

---

**Q6.** A company declared a dividend of 200 FCFA per share on its 10,000 ordinary shares.

(a) Define a dividend. *(2 marks)*

(b) Calculate the total dividend paid. *(3 marks)*

(c) State the source from which dividends are paid. *(3 marks)*

(d) State two factors that affect the dividend paid by a company. *(3 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 6,000,000 FCFA; Stock 2,400,000 FCFA; Current liabilities 3,000,000 FCFA; Sales 20,000,000 FCFA; Net profit 2,500,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick ratio. *(3 marks)*

(c) Calculate the net profit margin. *(3 marks)*

(d) State two limitations of the current ratio. *(2 marks)*

---

**Q8.** A business has sales of 30,000,000 FCFA, cost of sales of 18,000,000 FCFA, and average stock of 3,000,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the average stock holding period in days. *(3 marks)*

(d) State two ways of improving the stock turnover ratio. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 4',
    updated_at = NOW()
WHERE id = '9ffdd5a3-4c92-ba12-db31-eec04654c6eb';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 5

## Structural Question Bank - Set 5

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: INCOMPLETE RECORDS

**Q1.** A trader does not keep full accounting records. The following information is available:

Opening capital 6,000,000 FCFA; Closing capital 7,800,000 FCFA; Drawings 1,000,000 FCFA; Additional capital 400,000 FCFA.

(a) State the formula for profit using the capital comparison method. *(2 marks)*

(b) Calculate the profit for the year. *(4 marks)*

(c) State two reasons why a trader may not keep full accounting records. *(2 marks)*

(d) Explain the difference between the statement of affairs and the balance sheet. *(3 marks)*

---

**Q2.** A trader provides the following information: Sales 15,000,000 FCFA; Gross profit margin 25%; Opening stock 1,500,000 FCFA; Closing stock 2,000,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the cost of goods sold. *(3 marks)*

(c) Calculate the purchases for the year. *(4 marks)*

(d) State two uses of the gross profit margin. *(2 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** A and B are partners sharing profits in the ratio 3:2. Their capitals are 8,000,000 FCFA and 6,000,000 FCFA. The net profit is 6,000,000 FCFA. Interest on capital is 10% per annum and B is entitled to a salary of 600,000 FCFA.

(a) Calculate the interest on capital for each partner. *(4 marks)*

(b) Prepare the profit and loss appropriation account. *(6 marks)*

(c) State two items that are debited to the appropriation account. *(2 marks)*

(d) Explain the difference between a fixed capital account and a fluctuating capital account. *(3 marks)*

---

**Q4.** A partnership is dissolved and the assets are sold for 12,000,000 FCFA. The book value of the assets was 10,000,000 FCFA.

(a) Define the dissolution of a partnership. *(2 marks)*

(b) Calculate the profit or loss on realisation. *(3 marks)*

(c) State how the profit or loss on realisation is shared. *(3 marks)*

(d) State two expenses that may be incurred on dissolution. *(2 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company issued 30,000 ordinary shares of 1,000 FCFA each at a premium of 300 FCFA per share.

(a) Calculate the total amount received from the issue. *(4 marks)*

(b) State how the share premium is recorded in the books. *(3 marks)*

(c) State two uses of the share premium account. *(3 marks)*

(d) State two differences between a bonus issue and a rights issue. *(3 marks)*

---

**Q6.** A company has the following: Ordinary share capital 18,000,000 FCFA; 8% Debentures 6,000,000 FCFA; Net profit before interest 4,000,000 FCFA.

(a) Calculate the interest on debentures. *(3 marks)*

(b) Calculate the net profit after interest. *(3 marks)*

(c) Calculate the gearing ratio. *(3 marks)*

(d) State one advantage and one disadvantage of issuing debentures. *(3 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 7,000,000 FCFA; Stock 2,800,000 FCFA; Current liabilities 3,500,000 FCFA; Sales 24,000,000 FCFA; Net profit 3,000,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick ratio. *(3 marks)*

(c) Calculate the net profit margin. *(3 marks)*

(d) State two users of financial ratios. *(2 marks)*

---

**Q8.** A business has sales of 35,000,000 FCFA, cost of sales of 21,000,000 FCFA, and average stock of 3,500,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the average stock holding period in days. *(3 marks)*

(d) State two limitations of the stock turnover ratio. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 5',
    updated_at = NOW()
WHERE id = '52b43005-815e-5cec-226f-4acd522283bf';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 6

## Structural Question Bank - Set 6

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: CASH FLOW STATEMENTS

**Q1.** The following information relates to a business:

Net profit 4,000,000 FCFA; Depreciation 800,000 FCFA; Increase in debtors 500,000 FCFA; Decrease in creditors 300,000 FCFA; Increase in stock 400,000 FCFA.

(a) State the purpose of a cash flow statement. *(2 marks)*

(b) Calculate the net cash flow from operating activities. *(5 marks)*

(c) State two examples of investing activities. *(2 marks)*

(d) State two examples of financing activities. *(2 marks)*

---

**Q2.** A business purchased a machine for 10,000,000 FCFA and sold an old machine for 2,000,000 FCFA during the year.

(a) Classify the purchase of the machine in the cash flow statement. *(2 marks)*

(b) Classify the sale of the old machine. *(2 marks)*

(c) State two reasons why a business prepares a cash flow statement. *(3 marks)*

(d) Explain the difference between cash and profit. *(3 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** A and B are partners sharing profits in the ratio 2:1. Their capitals are 9,000,000 FCFA and 6,000,000 FCFA. The net profit is 7,000,000 FCFA. Interest on capital is 10% per annum.

(a) Calculate the interest on capital for each partner. *(4 marks)*

(b) Calculate each partner's share of the remaining profit. *(4 marks)*

(c) State two items that appear in the appropriation account. *(2 marks)*

(d) Explain the treatment of interest on drawings. *(3 marks)*

---

**Q4.** A partner retires from a firm. The goodwill is valued at 2,000,000 FCFA and the retiring partner's share is 800,000 FCFA.

(a) Define goodwill. *(2 marks)*

(b) Explain how the retiring partner's share of goodwill is treated. *(3 marks)*

(c) State two methods of valuing goodwill. *(3 marks)*

(d) Explain the effect of the goodwill adjustment on the remaining partners' capital accounts. *(3 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company has an authorised share capital of 30,000,000 FCFA divided into 30,000 ordinary shares of 1,000 FCFA each. It issued 25,000 shares at par.

(a) Calculate the issued share capital. *(3 marks)*

(b) Calculate the unissued share capital. *(3 marks)*

(c) State two differences between authorised and issued capital. *(3 marks)*

(d) State two reasons why a company may not issue all its shares. *(2 marks)*

---

**Q6.** A company declared a dividend of 150 FCFA per share on its 20,000 ordinary shares.

(a) Define a dividend. *(2 marks)*

(b) Calculate the total dividend paid. *(3 marks)*

(c) State the source from which dividends are paid. *(3 marks)*

(d) State two factors that affect the dividend decision. *(3 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 8,000,000 FCFA; Stock 3,200,000 FCFA; Current liabilities 4,000,000 FCFA; Sales 28,000,000 FCFA; Gross profit 11,200,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick ratio. *(3 marks)*

(c) Calculate the gross profit margin. *(3 marks)*

(d) State two ways of improving the quick ratio. *(2 marks)*

---

**Q8.** A business has sales of 40,000,000 FCFA, cost of sales of 24,000,000 FCFA, and average stock of 4,000,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the average stock holding period in days. *(3 marks)*

(d) State two users of the stock turnover ratio. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 6',
    updated_at = NOW()
WHERE id = 'be22ff26-06a3-d95d-da3a-e4e3c5d59603';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 7

## Structural Question Bank - Set 7

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: CONTROL ACCOUNTS

**Q1.** The following information relates to the sales ledger control account:

Opening debtors 5,000,000 FCFA; Credit sales 20,000,000 FCFA; Cash received from debtors 18,000,000 FCFA; Discount allowed 500,000 FCFA; Returns inwards 400,000 FCFA; Bad debts written off 300,000 FCFA.

(a) State the purpose of a sales ledger control account. *(2 marks)*

(b) Calculate the closing balance of debtors. *(5 marks)*

(c) State two items that appear on the debit side of the control account. *(2 marks)*

(d) State two items that appear on the credit side of the control account. *(2 marks)*

---

**Q2.** The following information relates to the purchases ledger control account:

Opening creditors 4,000,000 FCFA; Credit purchases 16,000,000 FCFA; Cash paid to creditors 14,000,000 FCFA; Discount received 400,000 FCFA; Returns outwards 300,000 FCFA.

(a) State the purpose of a purchases ledger control account. *(2 marks)*

(b) Calculate the closing balance of creditors. *(5 marks)*

(c) State two reasons why control accounts are prepared. *(3 marks)*

(d) State two items that appear on the debit side of the purchases ledger control account. *(2 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** A and B are partners sharing profits in the ratio 3:2. Their capitals are 10,000,000 FCFA and 8,000,000 FCFA. The net profit is 8,000,000 FCFA. Interest on capital is 10% per annum.

(a) Calculate the interest on capital for each partner. *(4 marks)*

(b) Calculate each partner's share of the remaining profit. *(4 marks)*

(c) State two items that are credited to the appropriation account. *(2 marks)*

(d) Explain the difference between interest on capital and interest on drawings. *(3 marks)*

---

**Q4.** A new partner is admitted and the goodwill of the firm is valued at 3,000,000 FCFA.

(a) Define goodwill. *(2 marks)*

(b) Explain how goodwill is treated on the admission of a new partner. *(3 marks)*

(c) State two factors that give rise to goodwill. *(3 marks)*

(d) Explain the effect of the goodwill adjustment on the old partners' capital accounts. *(3 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company issued 50,000 ordinary shares of 1,000 FCFA each at a premium of 250 FCFA per share.

(a) Calculate the total amount received from the issue. *(4 marks)*

(b) State how the share premium is recorded. *(3 marks)*

(c) State two uses of the share premium account. *(3 marks)*

(d) State two differences between a bonus issue and a rights issue. *(3 marks)*

---

**Q6.** A company has the following: Ordinary share capital 20,000,000 FCFA; 10% Debentures 8,000,000 FCFA; Net profit before interest 5,000,000 FCFA.

(a) Calculate the interest on debentures. *(3 marks)*

(b) Calculate the net profit after interest. *(3 marks)*

(c) Calculate the gearing ratio. *(3 marks)*

(d) State one advantage and one disadvantage of issuing debentures. *(3 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 9,000,000 FCFA; Stock 3,600,000 FCFA; Current liabilities 4,500,000 FCFA; Sales 32,000,000 FCFA; Net profit 4,000,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick ratio. *(3 marks)*

(c) Calculate the net profit margin. *(3 marks)*

(d) State two users of financial ratios. *(2 marks)*

---

**Q8.** A business has sales of 45,000,000 FCFA, cost of sales of 27,000,000 FCFA, and average stock of 4,500,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the average stock holding period in days. *(3 marks)*

(d) State two limitations of ratio analysis. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 7',
    updated_at = NOW()
WHERE id = 'ca171651-d71b-8060-e0f6-99af67df5819';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ADVANCED LEVEL ACCOUNTING P2 SET 8

## Structural Question Bank - Set 8

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: CORRECTION OF ERRORS

**Q1.** The following errors were discovered in the books of a business:

(i) A purchase of 500,000 FCFA was completely omitted from the books.
(ii) A sale of 300,000 FCFA was recorded as 3,000,000 FCFA.
(iii) Rent of 200,000 FCFA was debited to the purchases account.

(a) State the type of error in each case. *(3 marks)*

(b) State which of the errors affect the trial balance. *(3 marks)*

(c) State the account used to correct errors that affect the trial balance. *(2 marks)*

(d) Explain the difference between an error of principle and an error of commission. *(3 marks)*

---

**Q2.** A trial balance did not balance and the difference was posted to a suspense account.

(a) State the purpose of a suspense account. *(2 marks)*

(b) State two reasons why a trial balance may not balance. *(4 marks)*

(c) Explain how a suspense account is cleared. *(3 marks)*

(d) State two errors that do not affect the trial balance. *(2 marks)*

---

## SECTION B: PARTNERSHIP ACCOUNTS

**Q3.** A and B are partners sharing profits in the ratio 2:1. Their capitals are 12,000,000 FCFA and 9,000,000 FCFA. The net profit is 9,000,000 FCFA. Interest on capital is 10% per annum.

(a) Calculate the interest on capital for each partner. *(4 marks)*

(b) Calculate each partner's share of the remaining profit. *(4 marks)*

(c) State two items that appear in the appropriation account. *(2 marks)*

(d) Explain the treatment of a partner's salary. *(3 marks)*

---

**Q4.** A partnership is dissolved and the assets are sold for 15,000,000 FCFA. The book value of the assets was 13,000,000 FCFA.

(a) Define the dissolution of a partnership. *(2 marks)*

(b) Calculate the profit or loss on realisation. *(3 marks)*

(c) State how the profit or loss on realisation is shared. *(3 marks)*

(d) State two expenses that may be incurred on dissolution. *(2 marks)*

---

## SECTION C: COMPANY ACCOUNTS

**Q5.** A company issued 60,000 ordinary shares of 1,000 FCFA each at par.

(a) Calculate the total amount received from the issue. *(3 marks)*

(b) State the journal entry to record the issue of shares. *(3 marks)*

(c) State two differences between ordinary shares and preference shares. *(4 marks)*

(d) State two reasons why a company may issue shares. *(2 marks)*

---

**Q6.** A company has the following: Ordinary share capital 25,000,000 FCFA; Retained earnings 5,000,000 FCFA; Net profit 6,000,000 FCFA.

(a) Define retained earnings. *(2 marks)*

(b) Calculate the total shareholders' equity. *(3 marks)*

(c) Calculate the return on equity. *(3 marks)*

(d) State two uses of retained earnings. *(2 marks)*

---

## SECTION D: RATIO ANALYSIS

**Q7.** The following information is available: Current assets 10,000,000 FCFA; Stock 4,000,000 FCFA; Current liabilities 5,000,000 FCFA; Sales 36,000,000 FCFA; Gross profit 14,400,000 FCFA.

(a) Calculate the current ratio. *(3 marks)*

(b) Calculate the quick ratio. *(3 marks)*

(c) Calculate the gross profit margin. *(3 marks)*

(d) State two ways of improving the current ratio. *(2 marks)*

---

**Q8.** A business has sales of 50,000,000 FCFA, cost of sales of 30,000,000 FCFA, and average stock of 5,000,000 FCFA.

(a) Calculate the gross profit. *(3 marks)*

(b) Calculate the stock turnover ratio. *(3 marks)*

(c) Calculate the average stock holding period in days. *(3 marks)*

(d) State two users of the stock turnover ratio. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct A-level Accounting structured set 8',
    updated_at = NOW()
WHERE id = 'be336215-22fc-6d1f-5b09-0fbe5a2b514b';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL ACCOUNTING — P1 (Multiple Choice) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The document used to record a credit sale is the:

A. invoice  
B. receipt  
C. credit note  
D. debit note  

---

**Q2.** The book of original entry for credit sales is the:

A. sales journal  
B. purchases journal  
C. cash book  
D. general journal  

---

**Q3.** The account that records all transactions with a particular customer is the:

A. sales ledger  
B. purchases ledger  
C. general ledger  
D. cash book  

---

**Q4.** A trial balance is prepared to:

A. check the arithmetical accuracy of the ledger  
B. record credit sales  
C. prepare the cash book  
D. calculate depreciation  

---

**Q5.** The asset that is not a current asset is:

A. stock  
B. debtors  
C. bank balance  
D. machinery  

---

**Q6.** The accounting equation is:

A. Assets = Liabilities + Capital  
B. Assets = Liabilities − Capital  
C. Assets + Liabilities = Capital  
D. Capital = Assets + Liabilities  

---

**Q7.** The document issued when goods are returned by a customer is the:

A. credit note  
B. debit note  
C. invoice  
D. receipt  

---

**Q8.** The book of original entry for credit purchases is the:

A. purchases journal  
B. sales journal  
C. cash book  
D. general journal  

---

**Q9.** The account that records all transactions with a particular supplier is the:

A. purchases ledger  
B. sales ledger  
C. general ledger  
D. cash book  

---

**Q10.** The balance of the cash book is:

A. the cash and bank balance  
B. the profit  
C. the capital  
D. the sales  

---

**Q11.** Depreciation is:

A. the decrease in the value of a fixed asset over time  
B. the increase in the value of a fixed asset  
C. the cost of goods sold  
D. the profit for the year  

---

**Q12.** The method of depreciation that charges equal amounts each year is:

A. the straight-line method  
B. the reducing balance method  
C. the revaluation method  
D. the sum of digits method  

---

**Q13.** A bad debt is:

A. a debt that cannot be recovered  
B. a debt that is paid promptly  
C. a discount allowed  
D. a credit sale  

---

**Q14.** The provision for doubtful debts is:

A. an estimate of debts that may not be paid  
B. the actual bad debts written off  
C. a current asset  
D. a fixed asset  

---

**Q15.** The trading account shows:

A. gross profit  
B. net profit  
C. capital  
D. liabilities  

---

**Q16.** The profit and loss account shows:

A. net profit  
B. gross profit  
C. sales  
D. purchases  

---

**Q17.** The balance sheet shows:

A. assets, liabilities and capital  
B. profit and loss  
C. sales and purchases  
D. cash received and paid  

---

**Q18.** The current ratio is:

A. current assets ÷ current liabilities  
B. current liabilities ÷ current assets  
C. fixed assets ÷ current assets  
D. sales ÷ purchases  

---

**Q19.** The gross profit is:

A. sales − cost of goods sold  
B. sales − all expenses  
C. net profit + expenses  
D. purchases − sales  

---

**Q20.** The cost of goods sold is:

A. opening stock + purchases − closing stock  
B. opening stock − purchases + closing stock  
C. sales − gross profit  
D. purchases + closing stock  

---

**Q21.** The document used to record cash received is the:

A. receipt  
B. invoice  
C. credit note  
D. debit note  

---

**Q22.** The petty cash book is used to record:

A. small cash payments  
B. credit sales  
C. large bank deposits  
D. purchases of fixed assets  

---

**Q23.** The imprest system of petty cash means:

A. the petty cashier is given a fixed amount at the start of each period  
B. the petty cashier keeps all the money  
C. no records are kept  
D. the petty cash is never replenished  

---

**Q24.** A bank overdraft is:

A. a liability  
B. an asset  
C. an expense  
D. income  

---

**Q25.** The statement that reconciles the cash book with the bank statement is the:

A. bank reconciliation statement  
B. trial balance  
C. balance sheet  
D. trading account  

---

## ANSWER KEY

1. A  2. A  3. A  4. A  5. D  6. A  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting MCQ set 1',
    updated_at = NOW()
WHERE id = 'b507630f-1ef8-c767-d0ad-f51ff5731d27';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The document issued when goods are returned to a supplier is the:

A. debit note  
B. credit note  
C. invoice  
D. receipt  

---

**Q2.** The book of original entry for returns inwards is the:

A. returns inwards journal  
B. sales journal  
C. purchases journal  
D. cash book  

---

**Q3.** The account that records the owner's investment in the business is the:

A. capital account  
B. sales account  
C. purchases account  
D. cash account  

---

**Q4.** A trial balance has equal totals when:

A. the ledger is arithmetically correct  
B. the business makes a profit  
C. cash equals bank  
D. sales equal purchases  

---

**Q5.** The asset that is a current asset is:

A. stock  
B. machinery  
C. buildings  
D. motor vehicles  

---

**Q6.** If assets are 500,000 FCFA and liabilities are 200,000 FCFA, the capital is:

A. 300,000 FCFA  
B. 700,000 FCFA  
C. 500,000 FCFA  
D. 200,000 FCFA  

---

**Q7.** The document used to record a credit purchase is the:

A. invoice  
B. receipt  
C. credit note  
D. debit note  

---

**Q8.** The book of original entry for returns outwards is the:

A. returns outwards journal  
B. sales journal  
C. purchases journal  
D. cash book  

---

**Q9.** The account that records all expenses and incomes is the:

A. general ledger  
B. sales ledger  
C. purchases ledger  
D. cash book  

---

**Q10.** The balance of the bank column of the cash book is:

A. the bank balance  
B. the profit  
C. the capital  
D. the sales  

---

**Q11.** The straight-line method of depreciation:

A. charges equal depreciation each year  
B. charges more in the early years  
C. charges more in the later years  
D. does not consider cost  

---

**Q12.** The reducing balance method of depreciation:

A. charges more depreciation in the early years  
B. charges equal depreciation each year  
C. charges more in the later years  
D. ignores the cost of the asset  

---

**Q13.** A provision for doubtful debts is:

A. an estimate of debts that may not be paid  
B. the actual bad debts  
C. a fixed asset  
D. a liability  

---

**Q14.** The trading account is prepared to determine:

A. gross profit  
B. net profit  
C. capital  
D. liabilities  

---

**Q15.** The profit and loss account is prepared to determine:

A. net profit  
B. gross profit  
C. sales  
D. purchases  

---

**Q16.** The balance sheet is prepared to show:

A. the financial position of the business  
B. the profit for the year  
C. the cash received  
D. the sales made  

---

**Q17.** The quick (acid test) ratio is:

A. (current assets − stock) ÷ current liabilities  
B. current assets ÷ current liabilities  
C. fixed assets ÷ current liabilities  
D. sales ÷ current liabilities  

---

**Q18.** The net profit is:

A. gross profit + other income − expenses  
B. gross profit − cost of sales  
C. sales − cost of sales  
D. gross profit + expenses  

---

**Q19.** The document used to record cash paid is the:

A. receipt  
B. invoice  
C. credit note  
D. debit note  

---

**Q20.** The petty cash book is controlled by:

A. the imprest system  
B. the bank  
C. the sales ledger  
D. the purchases ledger  

---

**Q21.** A bank statement is issued by:

A. the bank  
B. the customer  
C. the government  
D. the auditor  

---

**Q22.** A bank reconciliation statement is prepared to:

A. reconcile the cash book with the bank statement  
B. prepare the trial balance  
C. calculate depreciation  
D. record credit sales  

---

**Q23.** The capital of a business increases when:

A. the owner introduces more money  
B. the owner withdraws money  
C. expenses increase  
D. liabilities increase  

---

**Q24.** Drawings are:

A. money taken by the owner for personal use  
B. money invested by the owner  
C. sales made  
D. purchases made  

---

**Q25.** The double entry for a credit sale is:

A. debit sales account, credit debtor's account  
B. debit debtor's account, credit sales account  
C. debit cash, credit sales  
D. debit sales, credit cash  

---

## ANSWER KEY

1. A  2. A  3. A  4. A  5. A  6. A  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. B
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting MCQ set 2',
    updated_at = NOW()
WHERE id = 'e8c335fd-0030-e96e-9511-b1d394e5e41c';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks are deducted for wrong answers.

---

## QUESTIONS

**Q1.** The document used to record a credit note issued to a customer is for:

A. goods returned by the customer  
B. goods returned to the supplier  
C. cash received  
D. cash paid  

---

**Q2.** The book of original entry for all transactions not recorded in other journals is the:

A. general journal  
B. sales journal  
C. purchases journal  
D. cash book  

---

**Q3.** The account that records the value of goods bought for resale is the:

A. purchases account  
B. sales account  
C. capital account  
D. cash account  

---

**Q4.** A trial balance is a list of:

A. all ledger balances  
B. all cash transactions  
C. all credit sales  
D. all fixed assets  

---

**Q5.** The liability that is a current liability is:

A. creditors  
B. machinery  
C. buildings  
D. stock  

---

**Q6.** If capital is 400,000 FCFA and liabilities are 100,000 FCFA, the assets are:

A. 500,000 FCFA  
B. 300,000 FCFA  
C. 400,000 FCFA  
D. 100,000 FCFA  

---

**Q7.** The document used to record a debit note issued to a supplier is for:

A. goods returned to the supplier  
B. goods returned by the customer  
C. cash received  
D. cash paid  

---

**Q8.** The book of original entry for cash transactions is the:

A. cash book  
B. sales journal  
C. purchases journal  
D. general journal  

---

**Q9.** The account that records the value of goods sold is the:

A. sales account  
B. purchases account  
C. capital account  
D. cash account  

---

**Q10.** The balance of the cash column of the cash book is:

A. the cash balance  
B. the profit  
C. the capital  
D. the sales  

---

**Q11.** Depreciation is charged on:

A. fixed assets  
B. current assets  
C. liabilities  
D. capital  

---

**Q12.** The residual value of an asset is:

A. its estimated value at the end of its useful life  
B. its original cost  
C. its market value  
D. its book value  

---

**Q13.** A bad debt written off is:

A. a loss to the business  
B. a profit to the business  
C. an asset  
D. a liability  

---

**Q14.** The provision for doubtful debts is shown in the balance sheet as:

A. a deduction from debtors  
B. an addition to debtors  
C. a fixed asset  
D. a liability  

---

**Q15.** The gross profit is transferred to:

A. the profit and loss account  
B. the balance sheet  
C. the cash book  
D. the sales journal  

---

**Q16.** The net profit is transferred to:

A. the capital account  
B. the trading account  
C. the sales journal  
D. the purchases journal  

---

**Q17.** The working capital is:

A. current assets − current liabilities  
B. current assets + current liabilities  
C. fixed assets − current assets  
D. sales − purchases  

---

**Q18.** The gross profit margin is:

A. gross profit ÷ sales × 100  
B. gross profit ÷ cost of sales × 100  
C. net profit ÷ sales × 100  
D. sales ÷ gross profit × 100  

---

**Q19.** The document used to record a discount allowed is the:

A. credit note  
B. debit note  
C. invoice  
D. receipt  

---

**Q20.** The imprest amount of petty cash is:

A. the fixed amount given to the petty cashier  
B. the amount spent  
C. the amount in the bank  
D. the profit  

---

**Q21.** A bank overdraft occurs when:

A. the bank balance is negative  
B. the bank balance is positive  
C. cash is received  
D. sales are made  

---

**Q22.** The bank reconciliation statement is prepared by:

A. the business  
B. the bank  
C. the government  
D. the auditor  

---

**Q23.** The capital of a business decreases when:

A. the owner withdraws money  
B. the owner introduces money  
C. sales increase  
D. liabilities decrease  

---

**Q24.** The double entry for a credit purchase is:

A. debit purchases account, credit creditor's account  
B. debit creditor's account, credit purchases account  
C. debit cash, credit purchases  
D. debit purchases, credit cash  

---

**Q25.** The double entry for cash received from a debtor is:

A. debit cash, credit debtor's account  
B. debit debtor's account, credit cash  
C. debit sales, credit cash  
D. debit cash, credit sales  

---

## ANSWER KEY

1. A  2. A  3. A  4. A  5. A  6. A  7. A  8. A  9. A  10. A  
11. A  12. A  13. A  14. A  15. A  16. A  17. A  18. A  19. A  20. A  
21. A  22. A  23. A  24. A  25. A
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting MCQ set 3',
    updated_at = NOW()
WHERE id = '15efff85-f8e0-f5b1-8863-4f4d0b8a66d6';

COMMIT;

BEGIN;

-- ═══════════════════════════════════════════════════════════════════════════
-- ORDINARY LEVEL ACCOUNTING — P2 (Structured) — Form 5
-- ═══════════════════════════════════════════════════════════════════════════

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 1

## Structural Question Bank - Set 1

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business sells goods on credit to a customer.

(a) State the source document used to record the credit sale. *(1 mark)*

(b) State the book of original entry in which the credit sale is recorded. *(2 marks)*

(c) State the two accounts affected by the credit sale. *(2 marks)*

(d) State the double entry for the credit sale. *(2 marks)*

---

**Q2.** A customer returns goods to the business.

(a) State the document issued to the customer. *(1 mark)*

(b) State the book of original entry in which the return is recorded. *(2 marks)*

(c) State the two accounts affected by the return. *(2 marks)*

(d) State the double entry for the return. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in January 2025:

Jan 1: Started business with 500,000 FCFA cash.
Jan 5: Bought goods for cash 200,000 FCFA.
Jan 10: Sold goods for cash 300,000 FCFA.

(a) State the account debited and credited for each transaction. *(6 marks)*

(b) Prepare the cash account. *(6 marks)*

(c) State the balance of the cash account. *(2 marks)*

---

**Q4.** A business sells goods on credit to a customer for 150,000 FCFA.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the debtor's account. *(4 marks)*

(d) State the balance of the debtor's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 400,000 FCFA; Cash 100,000 FCFA; Bank 150,000 FCFA; Purchases 200,000 FCFA; Sales 300,000 FCFA; Creditors 80,000 FCFA; Debtors 130,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** A trial balance does not balance.

(a) State two reasons why a trial balance may not balance. *(4 marks)*

(b) State the account used to correct the difference. *(2 marks)*

(c) State two errors that do not affect the trial balance. *(4 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 500,000 FCFA; Purchases 300,000 FCFA; Opening stock 50,000 FCFA; Closing stock 70,000 FCFA; Expenses 80,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State the difference between gross profit and net profit. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 600,000 FCFA; Cash 100,000 FCFA; Bank 150,000 FCFA; Stock 120,000 FCFA; Debtors 180,000 FCFA; Creditors 100,000 FCFA; Machinery 150,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State the purpose of a balance sheet. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 1',
    updated_at = NOW()
WHERE id = '9613cebe-1ecb-55bd-be89-80fd937505c1';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 2

## Structural Question Bank - Set 2

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business buys goods on credit from a supplier.

(a) State the source document used to record the credit purchase. *(1 mark)*

(b) State the book of original entry in which the credit purchase is recorded. *(2 marks)*

(c) State the two accounts affected by the credit purchase. *(2 marks)*

(d) State the double entry for the credit purchase. *(2 marks)*

---

**Q2.** A business returns goods to a supplier.

(a) State the document issued to the supplier. *(1 mark)*

(b) State the book of original entry in which the return is recorded. *(2 marks)*

(c) State the two accounts affected by the return. *(2 marks)*

(d) State the double entry for the return. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in February 2025:

Feb 1: Started business with 800,000 FCFA in the bank.
Feb 8: Bought goods on credit 300,000 FCFA.
Feb 15: Sold goods on credit 400,000 FCFA.

(a) State the account debited and credited for each transaction. *(6 marks)*

(b) Prepare the purchases account. *(4 marks)*

(c) Prepare the sales account. *(4 marks)*

---

**Q4.** A business pays a creditor 100,000 FCFA by cheque.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the creditor's account. *(4 marks)*

(d) State the balance of the creditor's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 500,000 FCFA; Cash 80,000 FCFA; Bank 220,000 FCFA; Purchases 250,000 FCFA; Sales 400,000 FCFA; Creditors 120,000 FCFA; Debtors 170,000 FCFA; Rent 100,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** State the double entry for each of the following:

(a) Cash received from a debtor. *(2 marks)*

(b) Payment of rent by cheque. *(2 marks)*

(c) Purchase of machinery for cash. *(2 marks)*

(d) Sale of goods on credit. *(2 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 800,000 FCFA; Purchases 500,000 FCFA; Opening stock 80,000 FCFA; Closing stock 100,000 FCFA; Expenses 120,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State two examples of expenses. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 700,000 FCFA; Cash 90,000 FCFA; Bank 160,000 FCFA; Stock 130,000 FCFA; Debtors 200,000 FCFA; Creditors 110,000 FCFA; Motor vehicle 230,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State two differences between assets and liabilities. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 2',
    updated_at = NOW()
WHERE id = '947a01a5-26f8-e6d5-e4ba-5b3d38c9a7e7';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 3

## Structural Question Bank - Set 3

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business receives cash from a customer for goods sold.

(a) State the source document issued to the customer. *(1 mark)*

(b) State the book of original entry in which the cash receipt is recorded. *(2 marks)*

(c) State the two accounts affected by the cash receipt. *(2 marks)*

(d) State the double entry for the cash receipt. *(2 marks)*

---

**Q2.** A business pays cash to a supplier for goods bought.

(a) State the source document received from the supplier. *(1 mark)*

(b) State the book of original entry in which the cash payment is recorded. *(2 marks)*

(c) State the two accounts affected by the cash payment. *(2 marks)*

(d) State the double entry for the cash payment. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in March 2025:

Mar 1: Started business with 600,000 FCFA cash.
Mar 6: Bought goods for cash 250,000 FCFA.
Mar 12: Sold goods for cash 350,000 FCFA.
Mar 20: Paid rent 50,000 FCFA cash.

(a) State the account debited and credited for each transaction. *(8 marks)*

(b) Prepare the cash account. *(8 marks)*

(c) State the balance of the cash account. *(2 marks)*

---

**Q4.** A business buys goods on credit from a supplier for 200,000 FCFA.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the supplier's account. *(4 marks)*

(d) State the balance of the supplier's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 450,000 FCFA; Cash 70,000 FCFA; Bank 180,000 FCFA; Purchases 220,000 FCFA; Sales 350,000 FCFA; Creditors 90,000 FCFA; Debtors 140,000 FCFA; Wages 80,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** State the double entry for each of the following:

(a) Cash paid to a creditor. *(2 marks)*

(b) Purchase of goods on credit. *(2 marks)*

(c) Sale of goods for cash. *(2 marks)*

(d) Payment of wages by cheque. *(2 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 600,000 FCFA; Purchases 360,000 FCFA; Opening stock 60,000 FCFA; Closing stock 80,000 FCFA; Expenses 90,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State two examples of income. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 550,000 FCFA; Cash 80,000 FCFA; Bank 140,000 FCFA; Stock 110,000 FCFA; Debtors 170,000 FCFA; Creditors 100,000 FCFA; Equipment 150,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State two examples of fixed assets. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 3',
    updated_at = NOW()
WHERE id = '3eb7269b-99a1-2ef8-0e48-aa3fbde992c9';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 4

## Structural Question Bank - Set 4

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business issues a credit note to a customer.

(a) State the reason for issuing the credit note. *(2 marks)*

(b) State the book of original entry in which the credit note is recorded. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the credit note. *(2 marks)*

---

**Q2.** A business receives a debit note from a supplier.

(a) State the reason for receiving the debit note. *(2 marks)*

(b) State the book of original entry in which the debit note is recorded. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the debit note. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in April 2025:

Apr 1: Started business with 900,000 FCFA in the bank.
Apr 7: Bought goods on credit 400,000 FCFA.
Apr 14: Sold goods on credit 500,000 FCFA.
Apr 21: Paid a creditor 200,000 FCFA by cheque.

(a) State the account debited and credited for each transaction. *(8 marks)*

(b) Prepare the bank account. *(8 marks)*

(c) State the balance of the bank account. *(2 marks)*

---

**Q4.** A business receives cash from a debtor of 120,000 FCFA.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the debtor's account. *(4 marks)*

(d) State the balance of the debtor's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 480,000 FCFA; Cash 60,000 FCFA; Bank 200,000 FCFA; Purchases 260,000 FCFA; Sales 420,000 FCFA; Creditors 110,000 FCFA; Debtors 160,000 FCFA; Rent 90,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** State the double entry for each of the following:

(a) Cash received from a customer. *(2 marks)*

(b) Purchase of goods for cash. *(2 marks)*

(c) Sale of goods on credit. *(2 marks)*

(d) Payment of rent by cash. *(2 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 700,000 FCFA; Purchases 420,000 FCFA; Opening stock 70,000 FCFA; Closing stock 90,000 FCFA; Expenses 100,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State two examples of expenses. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 650,000 FCFA; Cash 70,000 FCFA; Bank 150,000 FCFA; Stock 120,000 FCFA; Debtors 190,000 FCFA; Creditors 120,000 FCFA; Machinery 240,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State two examples of current assets. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 4',
    updated_at = NOW()
WHERE id = 'bc590610-7185-2bc6-6b4c-a33eed7318c3';

COMMIT;

BEGIN;

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 5

## Structural Question Bank - Set 5

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business records a credit sale of 250,000 FCFA.

(a) State the source document used. *(1 mark)*

(b) State the book of original entry used. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the credit sale. *(2 marks)*

---

**Q2.** A business records a credit purchase of 180,000 FCFA.

(a) State the source document used. *(1 mark)*

(b) State the book of original entry used. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the credit purchase. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in May 2025:

May 1: Started business with 700,000 FCFA cash.
May 5: Bought goods for cash 300,000 FCFA.
May 10: Sold goods for cash 400,000 FCFA.
May 18: Bought goods on credit 150,000 FCFA.

(a) State the account debited and credited for each transaction. *(8 marks)*

(b) Prepare the cash account. *(8 marks)*

(c) State the balance of the cash account. *(2 marks)*

---

**Q4.** A business pays a creditor 90,000 FCFA by cash.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the creditor's account. *(4 marks)*

(d) State the balance of the creditor's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 520,000 FCFA; Cash 90,000 FCFA; Bank 170,000 FCFA; Purchases 240,000 FCFA; Sales 380,000 FCFA; Creditors 100,000 FCFA; Debtors 150,000 FCFA; Wages 70,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** State the double entry for each of the following:

(a) Cash paid to a supplier. *(2 marks)*

(b) Purchase of goods on credit. *(2 marks)*

(c) Sale of goods for cash. *(2 marks)*

(d) Payment of rent by cheque. *(2 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 650,000 FCFA; Purchases 390,000 FCFA; Opening stock 65,000 FCFA; Closing stock 85,000 FCFA; Expenses 95,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State two examples of income. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 580,000 FCFA; Cash 60,000 FCFA; Bank 160,000 FCFA; Stock 100,000 FCFA; Debtors 180,000 FCFA; Creditors 90,000 FCFA; Equipment 170,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State two examples of liabilities. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 5',
    updated_at = NOW()
WHERE id = '50532007-94e5-0c7b-4757-079a6a0ff51a';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 6

## Structural Question Bank - Set 6

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business issues a receipt to a customer.

(a) State the reason for issuing the receipt. *(2 marks)*

(b) State the book of original entry in which the receipt is recorded. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the cash receipt. *(2 marks)*

---

**Q2.** A business receives an invoice from a supplier.

(a) State the reason for receiving the invoice. *(2 marks)*

(b) State the book of original entry in which the invoice is recorded. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the credit purchase. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in June 2025:

Jun 1: Started business with 850,000 FCFA in the bank.
Jun 6: Bought goods on credit 350,000 FCFA.
Jun 12: Sold goods on credit 450,000 FCFA.
Jun 20: Received cash from a debtor 200,000 FCFA.

(a) State the account debited and credited for each transaction. *(8 marks)*

(b) Prepare the bank account. *(8 marks)*

(c) State the balance of the bank account. *(2 marks)*

---

**Q4.** A business receives cash from a debtor of 110,000 FCFA.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the debtor's account. *(4 marks)*

(d) State the balance of the debtor's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 490,000 FCFA; Cash 80,000 FCFA; Bank 190,000 FCFA; Purchases 230,000 FCFA; Sales 370,000 FCFA; Creditors 95,000 FCFA; Debtors 145,000 FCFA; Rent 85,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** State the double entry for each of the following:

(a) Cash received from a customer. *(2 marks)*

(b) Purchase of goods for cash. *(2 marks)*

(c) Sale of goods on credit. *(2 marks)*

(d) Payment of wages by cash. *(2 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 750,000 FCFA; Purchases 450,000 FCFA; Opening stock 75,000 FCFA; Closing stock 95,000 FCFA; Expenses 110,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State two examples of expenses. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 620,000 FCFA; Cash 70,000 FCFA; Bank 140,000 FCFA; Stock 115,000 FCFA; Debtors 185,000 FCFA; Creditors 105,000 FCFA; Machinery 215,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State two examples of current assets. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 6',
    updated_at = NOW()
WHERE id = '48c9e945-2bb4-03aa-dd9e-421541d4e855';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 7

## Structural Question Bank - Set 7

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business issues a credit note to a customer for goods returned.

(a) State the reason for issuing the credit note. *(2 marks)*

(b) State the book of original entry in which the credit note is recorded. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the credit note. *(2 marks)*

---

**Q2.** A business receives a debit note from a supplier for goods returned.

(a) State the reason for receiving the debit note. *(2 marks)*

(b) State the book of original entry in which the debit note is recorded. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the debit note. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in July 2025:

Jul 1: Started business with 750,000 FCFA cash.
Jul 5: Bought goods for cash 320,000 FCFA.
Jul 11: Sold goods for cash 420,000 FCFA.
Jul 19: Paid rent 60,000 FCFA cash.

(a) State the account debited and credited for each transaction. *(8 marks)*

(b) Prepare the cash account. *(8 marks)*

(c) State the balance of the cash account. *(2 marks)*

---

**Q4.** A business buys goods on credit from a supplier for 160,000 FCFA.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the supplier's account. *(4 marks)*

(d) State the balance of the supplier's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 510,000 FCFA; Cash 85,000 FCFA; Bank 175,000 FCFA; Purchases 245,000 FCFA; Sales 390,000 FCFA; Creditors 105,000 FCFA; Debtors 155,000 FCFA; Wages 75,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** State the double entry for each of the following:

(a) Cash paid to a creditor. *(2 marks)*

(b) Purchase of goods on credit. *(2 marks)*

(c) Sale of goods for cash. *(2 marks)*

(d) Payment of rent by cheque. *(2 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 680,000 FCFA; Purchases 408,000 FCFA; Opening stock 68,000 FCFA; Closing stock 88,000 FCFA; Expenses 100,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State two examples of income. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 600,000 FCFA; Cash 65,000 FCFA; Bank 155,000 FCFA; Stock 105,000 FCFA; Debtors 175,000 FCFA; Creditors 95,000 FCFA; Equipment 195,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State two examples of fixed assets. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 7',
    updated_at = NOW()
WHERE id = 'd409332c-c6fd-3387-281b-05b0318976d6';

UPDATE public.course_documents SET markdown_content = $md$
# CAMEROON GCE ORDINARY LEVEL ACCOUNTING P2 SET 8

## Structural Question Bank - Set 8

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial
**Subject:** Accounting

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.

---

## SECTION A: SOURCE DOCUMENTS AND BOOKS OF ORIGINAL ENTRY

**Q1.** A business records a credit sale of 220,000 FCFA.

(a) State the source document used. *(1 mark)*

(b) State the book of original entry used. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the credit sale. *(2 marks)*

---

**Q2.** A business records a credit purchase of 190,000 FCFA.

(a) State the source document used. *(1 mark)*

(b) State the book of original entry used. *(2 marks)*

(c) State the two accounts affected. *(2 marks)*

(d) State the double entry for the credit purchase. *(2 marks)*

---

## SECTION B: LEDGER ACCOUNTS

**Q3.** A business has the following transactions in August 2025:

Aug 1: Started business with 820,000 FCFA in the bank.
Aug 6: Bought goods on credit 340,000 FCFA.
Aug 12: Sold goods on credit 440,000 FCFA.
Aug 20: Paid a creditor 180,000 FCFA by cheque.

(a) State the account debited and credited for each transaction. *(8 marks)*

(b) Prepare the bank account. *(8 marks)*

(c) State the balance of the bank account. *(2 marks)*

---

**Q4.** A business receives cash from a debtor of 130,000 FCFA.

(a) State the account debited. *(1 mark)*

(b) State the account credited. *(1 mark)*

(c) Prepare the debtor's account. *(4 marks)*

(d) State the balance of the debtor's account. *(2 marks)*

---

## SECTION C: TRIAL BALANCE

**Q5.** The following balances were extracted from the books of a business:

Capital 530,000 FCFA; Cash 75,000 FCFA; Bank 185,000 FCFA; Purchases 255,000 FCFA; Sales 400,000 FCFA; Creditors 115,000 FCFA; Debtors 165,000 FCFA; Rent 95,000 FCFA.

(a) State the purpose of a trial balance. *(2 marks)*

(b) Prepare the trial balance. *(8 marks)*

(c) State the total of the trial balance. *(2 marks)*

---

**Q6.** State the double entry for each of the following:

(a) Cash received from a customer. *(2 marks)*

(b) Purchase of goods for cash. *(2 marks)*

(c) Sale of goods on credit. *(2 marks)*

(d) Payment of wages by cash. *(2 marks)*

---

## SECTION D: FINANCIAL STATEMENTS

**Q7.** The following information relates to a business:

Sales 720,000 FCFA; Purchases 432,000 FCFA; Opening stock 72,000 FCFA; Closing stock 92,000 FCFA; Expenses 105,000 FCFA.

(a) Calculate the cost of goods sold. *(3 marks)*

(b) Calculate the gross profit. *(3 marks)*

(c) Calculate the net profit. *(3 marks)*

(d) State two examples of expenses. *(2 marks)*

---

**Q8.** The following balances relate to a business:

Capital 640,000 FCFA; Cash 55,000 FCFA; Bank 165,000 FCFA; Stock 125,000 FCFA; Debtors 195,000 FCFA; Creditors 110,000 FCFA; Machinery 210,000 FCFA.

(a) State the accounting equation. *(2 marks)*

(b) Prepare the balance sheet. *(8 marks)*

(c) Calculate the working capital. *(3 marks)*

(d) State two examples of current assets. *(2 marks)*
$md$,
    content_version = '2.0.0',
    change_note = 'Replaced placeholder content with distinct O-level Accounting structured set 8',
    updated_at = NOW()
WHERE id = 'a28e391a-773c-ea40-3df4-c39eb16d6353';

COMMIT;
