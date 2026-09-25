begin;

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 7

## Structural Question Bank — Finance, banking, and insurance

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: FINANCE, BANKING, AND INSURANCE

**Q1.** (a) Define the term "money". *(2 marks)*

(b) State the functions of money. *(4 marks)*

(c) Explain the qualities of good money. *(4 marks)*

---

**Q2.** (a) What is a bank? *(2 marks)*

(b) Distinguish between a commercial bank and a central bank. *(4 marks)*

(c) State three functions of a commercial bank. *(3 marks)*

---

**Q3.** (a) Define the terms "deposit" and "withdrawal". *(4 marks)*

(b) State three types of bank accounts. *(3 marks)*

(c) Explain the difference between a current account and a savings account. *(4 marks)*

---

**Q4.** (a) What is a cheque? *(2 marks)*

(b) State the parties to a cheque. *(3 marks)*

(c) Distinguish between an open cheque and a crossed cheque. *(4 marks)*

---

**Q5.** (a) Define the terms "credit" and "debit". *(4 marks)*

(b) State three forms of credit. *(3 marks)*

(c) Explain the advantages and disadvantages of buying on credit. *(4 marks)*

---

**Q6.** (a) What is a loan? *(2 marks)*

(b) State three types of loans offered by banks. *(3 marks)*

(c) Explain the importance of loans to businesses. *(4 marks)*

---

**Q7.** (a) Define the term "interest". *(2 marks)*

(b) Explain the difference between simple interest and compound interest. *(4 marks)*

(c) Calculate the simple interest on 100,000 FCFA at 5% per annum for 2 years. *(4 marks)*

---

**Q8.** (a) What is insurance? *(2 marks)*

(b) State the principles of insurance. *(4 marks)*

(c) Explain the difference between life insurance and general insurance. *(4 marks)*

---

**Q9.** (a) Define the terms "premium" and "policy". *(4 marks)*

(b) Explain the principle of insurable interest. *(4 marks)*

(c) State three types of insurance policies. *(3 marks)*

---

**Q10.** (a) What is a claim? *(2 marks)*

(b) Describe the procedure for making an insurance claim. *(4 marks)*

(c) Explain the principle of indemnity. *(4 marks)*

---

**Q11.** (a) Define the term "communication". *(2 marks)*

(b) State three means of communication used in business. *(3 marks)*

(c) Explain the importance of communication in business. *(4 marks)*

---

**Q12.** (a) What is a telephone? *(2 marks)*

(b) State three advantages of using the telephone in business. *(3 marks)*

(c) Explain the difference between a landline and a mobile phone. *(4 marks)*

---

**Q13.** (a) Define the term "advertising". *(2 marks)*

(b) State three objectives of advertising. *(3 marks)*

(c) Explain the difference between informative and persuasive advertising. *(4 marks)*

---

**Q14.** (a) What is consumer protection? *(2 marks)*

(b) State three rights of a consumer. *(3 marks)*

(c) Explain the role of the government in protecting consumers. *(4 marks)*

---

**Q15.** (a) Define the term "consumer association". *(2 marks)*

(b) State three functions of a consumer association. *(3 marks)*

(c) Explain how consumers can protect themselves from exploitation. *(4 marks)*

---

**Q16.** (a) What is a savings and loan cooperative? *(2 marks)*

(b) State three functions of savings and loan cooperatives. *(3 marks)*

(c) Explain the importance of microfinance institutions to small businesses. *(4 marks)*

---

**Q17.** (a) Define the term "stock exchange". *(2 marks)*

(b) State three functions of a stock exchange. *(3 marks)*

(c) Explain the importance of the Douala Stock Exchange to Cameroon. *(4 marks)*

---

**Q18.** (a) What is a bond? *(2 marks)*

(b) Distinguish between shares and bonds. *(4 marks)*

(c) State three types of shares. *(3 marks)*

---

**Q19.** (a) Define the term "inflation". *(2 marks)*

(b) State three causes of inflation. *(3 marks)*

(c) Explain the effects of inflation on consumers and businesses. *(5 marks)*

---

**Q20.** (a) What is a budget? *(2 marks)*

(b) State three types of budgets. *(3 marks)*

(c) Explain the importance of budgeting to a business. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P2 SET 8

## Structural Question Bank — Trade and business documents

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: TRADE AND BUSINESS DOCUMENTS

**Q1.** (a) Define the term "commerce". *(2 marks)*

(b) Distinguish between trade and aids to trade. *(4 marks)*

(c) Explain the importance of commerce to the economy of Cameroon. *(4 marks)*

---

**Q2.** (a) What is home trade? *(2 marks)*

(b) Distinguish between wholesale and retail trade. *(4 marks)*

(c) State three functions of a wholesaler. *(3 marks)*

---

**Q3.** (a) Define the term "retailer". *(2 marks)*

(b) State three functions of a retailer. *(3 marks)*

(c) Explain two problems faced by retailers in Cameroon. *(4 marks)*

---

**Q4.** (a) What is foreign trade? *(2 marks)*

(b) Distinguish between imports and exports. *(4 marks)*

(c) Explain the importance of foreign trade to Cameroon. *(4 marks)*

---

**Q5.** (a) Define the terms "balance of trade" and "balance of payments". *(4 marks)*

(b) Explain the difference between a favourable and an unfavourable balance of trade. *(4 marks)*

(c) State three ways of correcting an unfavourable balance of trade. *(3 marks)*

---

**Q6.** (a) What is an invoice? *(2 marks)*

(b) State the information contained in an invoice. *(4 marks)*

(c) Distinguish between a proforma invoice and a commercial invoice. *(4 marks)*

---

**Q7.** (a) Define the terms "receipt" and "credit note". *(4 marks)*

(b) Explain when a credit note is issued. *(3 marks)*

(c) Distinguish between a debit note and a credit note. *(4 marks)*

---

**Q8.** (a) What is a bill of lading? *(2 marks)*

(b) State the functions of a bill of lading. *(4 marks)*

(c) Explain the difference between a bill of lading and an air waybill. *(4 marks)*

---

**Q9.** (a) Define the term "transport". *(2 marks)*

(b) State three modes of transport used in trade. *(3 marks)*

(c) Explain the advantages and disadvantages of road transport. *(5 marks)*

---

**Q10.** (a) What is a warehouse? *(2 marks)*

(b) State three functions of warehousing. *(3 marks)

(c) Explain the importance of warehousing to a wholesaler. *(4 marks)*

---

**Q11.** (a) Define the term "advertising". *(2 marks)*

(b) State three media used for advertising. *(3 marks)*

(c) Explain the importance of advertising to a business. *(4 marks)*

---

**Q12.** (a) What is a market? *(2 marks)*

(b) Distinguish between a consumer market and an industrial market. *(4 marks)*

(c) State three factors that influence the choice of a market. *(3 marks)*

---

**Q13.** (a) Define the term "marketing". *(2 marks)*

(b) State the four Ps of the marketing mix. *(4 marks)*

(c) Explain the importance of the marketing mix to a business. *(4 marks)*

---

**Q14.** (a) What is a sole proprietorship? *(2 marks)*

(b) State three advantages and three disadvantages of a sole proprietorship. *(6 marks)*

(c) Explain why many small businesses in Cameroon are sole proprietorships. *(3 marks)*

---

**Q15.** (a) Define the term "partnership". *(2 marks)*

(b) State three features of a partnership. *(3 marks)*

(c) Explain the difference between a general partner and a limited partner. *(4 marks)*

---

**Q16.** (a) What is a limited liability company? *(2 marks)*

(b) Distinguish between a private limited company and a public limited company. *(4 marks)*

(c) State three advantages of a limited liability company. *(3 marks)*

---

**Q17.** (a) Define the term "cooperative society". *(2 marks)*

(b) State three types of cooperative societies. *(3 marks)*

(c) Explain the importance of cooperative societies to farmers in Cameroon. *(4 marks)*

---

**Q18.** (a) What is a multinational company? *(2 marks)*

(b) State three characteristics of a multinational company. *(3 marks)*

(c) Explain two advantages and two disadvantages of multinational companies to Cameroon. *(5 marks)*

---

**Q19.** (a) Define the term "e-commerce". *(2 marks)*

(b) State three forms of e-commerce. *(3 marks)*

(c) Explain the advantages and disadvantages of e-commerce. *(5 marks)*

---

**Q20.** (a) What is a trade union? *(2 marks)*

(b) State three functions of a trade union. *(3 marks)*

(c) Explain the importance of trade unions to workers. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 1

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The buying and selling of goods and services is called:

A. trade  
B. commerce  
C. industry  
D. transport  

---

**Q2.** The activities that facilitate trade are called:

A. aids to trade  
B. commerce  
C. production  
D. industry  

---

**Q3.** Trade carried out within a country is called:

A. home trade  
B. international trade  
C. foreign trade  
D. barter trade  

---

**Q4.** Trade carried out between countries is called:

A. foreign trade  
B. local trade  
C. retail trade  
D. home trade  

---

**Q5.** The person who buys goods in large quantities from producers is the:

A. wholesaler  
B. agent  
C. retailer  
D. consumer  

---

**Q6.** The person who sells goods in small quantities to consumers is the:

A. retailer  
B. manufacturer  
C. producer  
D. wholesaler  

---

**Q7.** Goods bought from other countries are called:

A. exports  
B. imports  
C. surplus  
D. deficit  

---

**Q8.** Goods sold to other countries are called:

A. imports  
B. exports  
C. deficit  
D. surplus  

---

**Q9.** The document that lists the goods sold and their prices is an:

A. receipt  
B. cheque  
C. invoice  
D. order  

---

**Q10.** The document issued to confirm payment is a:

A. invoice  
B. credit note  
C. debit note  
D. receipt  

---

**Q11.** The document issued when goods are returned by a buyer is a:

A. debit note  
B. receipt  
C. credit note  
D. invoice  

---

**Q12.** The document issued when goods are returned by a seller is a:

A. credit note  
B. receipt  
C. invoice  
D. debit note  

---

**Q13.** The document used in sea transport of goods is the:

A. invoice  
B. bill of lading  
C. air waybill  
D. receipt  

---

**Q14.** The document used in air transport of goods is the:

A. invoice  
B. air waybill  
C. receipt  
D. bill of lading  

---

**Q15.** The storage of goods until they are needed is called:

A. advertising  
B. transport  
C. warehousing  
D. insurance  

---

**Q16.** The movement of goods from one place to another is called:

A. advertising  
B. warehousing  
C. banking  
D. transport  

---

**Q17.** The promotion of goods to attract buyers is called:

A. warehousing  
B. insurance  
C. advertising  
D. transport  

---

**Q18.** A business owned by one person is a:

A. company  
B. cooperative  
C. partnership  
D. sole proprietorship  

---

**Q19.** A business owned by two to twenty people is a:

A. cooperative  
B. partnership  
C. sole proprietorship  
D. company  

---

**Q20.** A business with limited liability owned by shareholders is a:

A. cooperative  
B. limited liability company  
C. partnership  
D. sole proprietorship  

---

**Q21.** A business owned and run by its members is a:

A. company  
B. sole proprietorship  
C. cooperative society  
D. partnership  

---

**Q22.** A company whose shares are sold to the public is a:

A. partnership  
B. private limited company  
C. sole proprietorship  
D. public limited company  

---

**Q23.** A company whose shares are not sold to the public is a:

A. partnership  
B. sole proprietorship  
C. private limited company  
D. public limited company  

---

**Q24.** A large company operating in several countries is a:

A. cooperative  
B. partnership  
C. sole proprietorship  
D. multinational company  

---

**Q25.** Buying and selling goods over the internet is called:

A. e-commerce  
B. e-banking  
C. e-learning  
D. e-mail  

---

**Q26.** An organisation that protects the interests of workers is a:

A. trade union  
B. consumer association  
C. company  
D. cooperative  

---

**Q27.** The four Ps of the marketing mix are product, price, place, and:

A. promotion  
B. process  
C. people  
D. profit  

---

**Q28.** The place where buyers and sellers meet to exchange goods is a:

A. market  
B. bank  
C. factory  
D. warehouse  

---

**Q29.** The person who buys goods for personal use is a:

A. consumer  
B. producer  
C. retailer  
D. wholesaler  

---

**Q30.** The person who produces goods is a:

A. producer  
B. wholesaler  
C. retailer  
D. consumer  

---

**Q31.** Anything generally accepted as a medium of exchange is:

A. goods  
B. money  
C. services  
D. credit  

---

**Q32.** The bank that issues currency and controls the money supply is the:

A. commercial bank  
B. central bank  
C. merchant bank  
D. development bank  

---

**Q33.** The bank that accepts deposits and gives loans to the public is a:

A. central bank  
B. development bank  
C. commercial bank  
D. stock exchange  

---

**Q34.** The account used for frequent transactions is a:

A. savings account  
B. fixed deposit account  
C. loan account  
D. current account  

---

**Q35.** The account that earns interest and encourages saving is a:

A. current account  
B. loan account  
C. savings account  
D. overdraft account  

---

**Q36.** A written order to a bank to pay a stated sum is a:

A. receipt  
B. credit note  
C. invoice  
D. cheque  

---

**Q37.** A cheque that can only be paid into a bank account is a:

A. blank cheque  
B. crossed cheque  
C. open cheque  
D. post-dated cheque  

---

**Q38.** The person who writes a cheque is the:

A. payee  
B. drawer  
C. endorser  
D. drawee  

---

**Q39.** The bank on which a cheque is drawn is the:

A. payee  
B. drawer  
C. drawee  
D. endorser  

---

**Q40.** The person to whom a cheque is paid is the:

A. drawee  
B. drawer  
C. endorser  
D. payee  

---

**Q41.** The money charged for borrowing money is called:

A. commission  
B. dividend  
C. interest  
D. premium  

---

**Q42.** The simple interest on 100,000 FCFA at 5% for 2 years is:

A. 20,000 FCFA  
B. 2,000 FCFA  
C. 5,000 FCFA  
D. 10,000 FCFA  

---

**Q43.** The protection against financial loss is called:

A. warehousing  
B. insurance  
C. banking  
D. advertising  

---

**Q44.** The amount paid for an insurance policy is the:

A. dividend  
B. premium  
C. interest  
D. claim  

---

**Q45.** The document that contains the terms of an insurance contract is the:

A. receipt  
B. premium  
C. policy  
D. claim  

---

**Q46.** The payment made by an insurance company for a loss is a:

A. dividend  
B. premium  
C. policy  
D. claim  

---

**Q47.** The principle that the insured must not profit from a loss is:

A. contribution  
B. utmost good faith  
C. indemnity  
D. insurable interest  

---

**Q48.** The principle that the insured must have a financial interest in the subject matter is:

A. subrogation  
B. utmost good faith  
C. indemnity  
D. insurable interest  

---

**Q49.** Insurance against the death of the insured is:

A. life insurance  
B. fire insurance  
C. marine insurance  
D. motor insurance  

---

**Q50.** Insurance against damage to goods in transit by sea is:

A. marine insurance  
B. fire insurance  
C. motor insurance  
D. life insurance  

---

**Q51.** The exchange of information between people is called:

A. communication  
B. advertising  
C. transport  
D. banking  

---

**Q52.** The protection of consumers from unfair practices is called:

A. consumer protection  
B. marketing  
C. insurance  
D. advertising  

---

**Q53.** An organisation that protects the interests of consumers is a:

A. consumer association  
B. company  
C. trade union  
D. cooperative  

---

**Q54.** A financial institution that gives small loans to small businesses is a:

A. microfinance institution  
B. insurance company  
C. stock exchange  
D. central bank  

---

**Q55.** The market where shares are bought and sold is the:

A. commodity market  
B. stock exchange  
C. money market  
D. foreign exchange market  

---

**Q56.** The unit of ownership of a company is a:

A. bond  
B. share  
C. premium  
D. cheque  

---

**Q57.** A loan to a company or government that pays interest is a:

A. share  
B. cheque  
C. bond  
D. premium  

---

**Q58.** A general rise in the price level is called:

A. deflation  
B. recession  
C. depression  
D. inflation  

---

**Q59.** A plan of expected income and expenditure is a:

A. balance sheet  
B. receipt  
C. budget  
D. invoice  

---

**Q60.** The stock exchange in Cameroon is located in:

A. Yaoundé  
B. Garoua  
C. Buea  
D. Douala  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 2

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Trade carried out between countries is called:

A. foreign trade  
B. home trade  
C. local trade  
D. retail trade  

---

**Q2.** The person who buys goods in large quantities from producers is the:

A. wholesaler  
B. retailer  
C. agent  
D. consumer  

---

**Q3.** The person who sells goods in small quantities to consumers is the:

A. retailer  
B. producer  
C. wholesaler  
D. manufacturer  

---

**Q4.** Goods bought from other countries are called:

A. imports  
B. surplus  
C. deficit  
D. exports  

---

**Q5.** Goods sold to other countries are called:

A. exports  
B. deficit  
C. imports  
D. surplus  

---

**Q6.** The document that lists the goods sold and their prices is an:

A. invoice  
B. order  
C. cheque  
D. receipt  

---

**Q7.** The document issued to confirm payment is a:

A. invoice  
B. receipt  
C. credit note  
D. debit note  

---

**Q8.** The document issued when goods are returned by a buyer is a:

A. debit note  
B. credit note  
C. receipt  
D. invoice  

---

**Q9.** The document issued when goods are returned by a seller is a:

A. credit note  
B. invoice  
C. debit note  
D. receipt  

---

**Q10.** The document used in sea transport of goods is the:

A. air waybill  
B. invoice  
C. receipt  
D. bill of lading  

---

**Q11.** The document used in air transport of goods is the:

A. bill of lading  
B. receipt  
C. air waybill  
D. invoice  

---

**Q12.** The storage of goods until they are needed is called:

A. transport  
B. insurance  
C. advertising  
D. warehousing  

---

**Q13.** The movement of goods from one place to another is called:

A. advertising  
B. transport  
C. warehousing  
D. banking  

---

**Q14.** The promotion of goods to attract buyers is called:

A. warehousing  
B. advertising  
C. insurance  
D. transport  

---

**Q15.** A business owned by one person is a:

A. company  
B. partnership  
C. sole proprietorship  
D. cooperative  

---

**Q16.** A business owned by two to twenty people is a:

A. company  
B. sole proprietorship  
C. cooperative  
D. partnership  

---

**Q17.** A business with limited liability owned by shareholders is a:

A. partnership  
B. cooperative  
C. limited liability company  
D. sole proprietorship  

---

**Q18.** A business owned and run by its members is a:

A. partnership  
B. company  
C. sole proprietorship  
D. cooperative society  

---

**Q19.** A company whose shares are sold to the public is a:

A. partnership  
B. public limited company  
C. private limited company  
D. sole proprietorship  

---

**Q20.** A company whose shares are not sold to the public is a:

A. partnership  
B. private limited company  
C. sole proprietorship  
D. public limited company  

---

**Q21.** A large company operating in several countries is a:

A. cooperative  
B. sole proprietorship  
C. multinational company  
D. partnership  

---

**Q22.** Buying and selling goods over the internet is called:

A. e-mail  
B. e-banking  
C. e-learning  
D. e-commerce  

---

**Q23.** An organisation that protects the interests of workers is a:

A. company  
B. cooperative  
C. trade union  
D. consumer association  

---

**Q24.** The four Ps of the marketing mix are product, price, place, and:

A. profit  
B. process  
C. people  
D. promotion  

---

**Q25.** The place where buyers and sellers meet to exchange goods is a:

A. market  
B. warehouse  
C. bank  
D. factory  

---

**Q26.** The person who buys goods for personal use is a:

A. consumer  
B. retailer  
C. producer  
D. wholesaler  

---

**Q27.** The person who produces goods is a:

A. producer  
B. retailer  
C. consumer  
D. wholesaler  

---

**Q28.** The buying and selling of goods and services is called:

A. trade  
B. industry  
C. transport  
D. commerce  

---

**Q29.** The activities that facilitate trade are called:

A. aids to trade  
B. production  
C. commerce  
D. industry  

---

**Q30.** Trade carried out within a country is called:

A. home trade  
B. barter trade  
C. international trade  
D. foreign trade  

---

**Q31.** The account used for frequent transactions is a:

A. savings account  
B. current account  
C. fixed deposit account  
D. loan account  

---

**Q32.** The account that earns interest and encourages saving is a:

A. current account  
B. savings account  
C. loan account  
D. overdraft account  

---

**Q33.** A written order to a bank to pay a stated sum is a:

A. receipt  
B. invoice  
C. cheque  
D. credit note  

---

**Q34.** A cheque that can only be paid into a bank account is a:

A. open cheque  
B. blank cheque  
C. post-dated cheque  
D. crossed cheque  

---

**Q35.** The person who writes a cheque is the:

A. drawee  
B. endorser  
C. drawer  
D. payee  

---

**Q36.** The bank on which a cheque is drawn is the:

A. drawer  
B. endorser  
C. payee  
D. drawee  

---

**Q37.** The person to whom a cheque is paid is the:

A. drawee  
B. payee  
C. drawer  
D. endorser  

---

**Q38.** The money charged for borrowing money is called:

A. commission  
B. interest  
C. dividend  
D. premium  

---

**Q39.** The simple interest on 100,000 FCFA at 5% for 2 years is:

A. 20,000 FCFA  
B. 5,000 FCFA  
C. 10,000 FCFA  
D. 2,000 FCFA  

---

**Q40.** The protection against financial loss is called:

A. advertising  
B. banking  
C. warehousing  
D. insurance  

---

**Q41.** The amount paid for an insurance policy is the:

A. interest  
B. dividend  
C. premium  
D. claim  

---

**Q42.** The document that contains the terms of an insurance contract is the:

A. claim  
B. receipt  
C. premium  
D. policy  

---

**Q43.** The payment made by an insurance company for a loss is a:

A. dividend  
B. claim  
C. premium  
D. policy  

---

**Q44.** The principle that the insured must not profit from a loss is:

A. contribution  
B. indemnity  
C. utmost good faith  
D. insurable interest  

---

**Q45.** The principle that the insured must have a financial interest in the subject matter is:

A. subrogation  
B. indemnity  
C. insurable interest  
D. utmost good faith  

---

**Q46.** Insurance against the death of the insured is:

A. motor insurance  
B. fire insurance  
C. marine insurance  
D. life insurance  

---

**Q47.** Insurance against damage to goods in transit by sea is:

A. motor insurance  
B. life insurance  
C. marine insurance  
D. fire insurance  

---

**Q48.** The exchange of information between people is called:

A. banking  
B. advertising  
C. transport  
D. communication  

---

**Q49.** The protection of consumers from unfair practices is called:

A. consumer protection  
B. advertising  
C. marketing  
D. insurance  

---

**Q50.** An organisation that protects the interests of consumers is a:

A. consumer association  
B. trade union  
C. company  
D. cooperative  

---

**Q51.** A financial institution that gives small loans to small businesses is a:

A. microfinance institution  
B. stock exchange  
C. central bank  
D. insurance company  

---

**Q52.** The market where shares are bought and sold is the:

A. stock exchange  
B. money market  
C. foreign exchange market  
D. commodity market  

---

**Q53.** The unit of ownership of a company is a:

A. share  
B. premium  
C. bond  
D. cheque  

---

**Q54.** A loan to a company or government that pays interest is a:

A. bond  
B. premium  
C. cheque  
D. share  

---

**Q55.** A general rise in the price level is called:

A. deflation  
B. inflation  
C. recession  
D. depression  

---

**Q56.** A plan of expected income and expenditure is a:

A. balance sheet  
B. budget  
C. receipt  
D. invoice  

---

**Q57.** The stock exchange in Cameroon is located in:

A. Yaoundé  
B. Buea  
C. Douala  
D. Garoua  

---

**Q58.** Anything generally accepted as a medium of exchange is:

A. goods  
B. services  
C. credit  
D. money  

---

**Q59.** The bank that issues currency and controls the money supply is the:

A. commercial bank  
B. merchant bank  
C. central bank  
D. development bank  

---

**Q60.** The bank that accepts deposits and gives loans to the public is a:

A. central bank  
B. stock exchange  
C. development bank  
D. commercial bank  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Commerce'
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Commerce',
  'CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ORDINARY LEVEL COMMERCE P1 SET 3

## Multiple Choice Question Bank

**Level:** Ordinary Level
**Class:** FORM 5
**Series:** commercial, technical
**Subject:** Commerce

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** Goods bought from other countries are called:

A. imports  
B. exports  
C. surplus  
D. deficit  

---

**Q2.** Goods sold to other countries are called:

A. exports  
B. imports  
C. deficit  
D. surplus  

---

**Q3.** The document that lists the goods sold and their prices is an:

A. invoice  
B. cheque  
C. receipt  
D. order  

---

**Q4.** The document issued to confirm payment is a:

A. receipt  
B. credit note  
C. debit note  
D. invoice  

---

**Q5.** The document issued when goods are returned by a buyer is a:

A. credit note  
B. receipt  
C. debit note  
D. invoice  

---

**Q6.** The document issued when goods are returned by a seller is a:

A. debit note  
B. receipt  
C. invoice  
D. credit note  

---

**Q7.** The document used in sea transport of goods is the:

A. air waybill  
B. bill of lading  
C. invoice  
D. receipt  

---

**Q8.** The document used in air transport of goods is the:

A. bill of lading  
B. air waybill  
C. receipt  
D. invoice  

---

**Q9.** The storage of goods until they are needed is called:

A. transport  
B. advertising  
C. warehousing  
D. insurance  

---

**Q10.** The movement of goods from one place to another is called:

A. warehousing  
B. advertising  
C. banking  
D. transport  

---

**Q11.** The promotion of goods to attract buyers is called:

A. transport  
B. insurance  
C. advertising  
D. warehousing  

---

**Q12.** A business owned by one person is a:

A. partnership  
B. cooperative  
C. company  
D. sole proprietorship  

---

**Q13.** A business owned by two to twenty people is a:

A. company  
B. partnership  
C. sole proprietorship  
D. cooperative  

---

**Q14.** A business with limited liability owned by shareholders is a:

A. partnership  
B. limited liability company  
C. cooperative  
D. sole proprietorship  

---

**Q15.** A business owned and run by its members is a:

A. partnership  
B. sole proprietorship  
C. cooperative society  
D. company  

---

**Q16.** A company whose shares are sold to the public is a:

A. sole proprietorship  
B. private limited company  
C. partnership  
D. public limited company  

---

**Q17.** A company whose shares are not sold to the public is a:

A. sole proprietorship  
B. partnership  
C. private limited company  
D. public limited company  

---

**Q18.** A large company operating in several countries is a:

A. partnership  
B. cooperative  
C. sole proprietorship  
D. multinational company  

---

**Q19.** Buying and selling goods over the internet is called:

A. e-mail  
B. e-commerce  
C. e-banking  
D. e-learning  

---

**Q20.** An organisation that protects the interests of workers is a:

A. company  
B. trade union  
C. cooperative  
D. consumer association  

---

**Q21.** The four Ps of the marketing mix are product, price, place, and:

A. profit  
B. people  
C. promotion  
D. process  

---

**Q22.** The place where buyers and sellers meet to exchange goods is a:

A. factory  
B. warehouse  
C. bank  
D. market  

---

**Q23.** The person who buys goods for personal use is a:

A. producer  
B. wholesaler  
C. consumer  
D. retailer  

---

**Q24.** The person who produces goods is a:

A. wholesaler  
B. retailer  
C. consumer  
D. producer  

---

**Q25.** The buying and selling of goods and services is called:

A. trade  
B. commerce  
C. industry  
D. transport  

---

**Q26.** The activities that facilitate trade are called:

A. aids to trade  
B. commerce  
C. production  
D. industry  

---

**Q27.** Trade carried out within a country is called:

A. home trade  
B. international trade  
C. foreign trade  
D. barter trade  

---

**Q28.** Trade carried out between countries is called:

A. foreign trade  
B. local trade  
C. retail trade  
D. home trade  

---

**Q29.** The person who buys goods in large quantities from producers is the:

A. wholesaler  
B. agent  
C. retailer  
D. consumer  

---

**Q30.** The person who sells goods in small quantities to consumers is the:

A. retailer  
B. manufacturer  
C. producer  
D. wholesaler  

---

**Q31.** A cheque that can only be paid into a bank account is a:

A. open cheque  
B. crossed cheque  
C. blank cheque  
D. post-dated cheque  

---

**Q32.** The person who writes a cheque is the:

A. drawee  
B. drawer  
C. endorser  
D. payee  

---

**Q33.** The bank on which a cheque is drawn is the:

A. drawer  
B. payee  
C. drawee  
D. endorser  

---

**Q34.** The person to whom a cheque is paid is the:

A. drawer  
B. drawee  
C. endorser  
D. payee  

---

**Q35.** The money charged for borrowing money is called:

A. premium  
B. dividend  
C. interest  
D. commission  

---

**Q36.** The simple interest on 100,000 FCFA at 5% for 2 years is:

A. 5,000 FCFA  
B. 2,000 FCFA  
C. 20,000 FCFA  
D. 10,000 FCFA  

---

**Q37.** The protection against financial loss is called:

A. advertising  
B. insurance  
C. banking  
D. warehousing  

---

**Q38.** The amount paid for an insurance policy is the:

A. interest  
B. premium  
C. dividend  
D. claim  

---

**Q39.** The document that contains the terms of an insurance contract is the:

A. claim  
B. premium  
C. policy  
D. receipt  

---

**Q40.** The payment made by an insurance company for a loss is a:

A. policy  
B. premium  
C. dividend  
D. claim  

---

**Q41.** The principle that the insured must not profit from a loss is:

A. utmost good faith  
B. contribution  
C. indemnity  
D. insurable interest  

---

**Q42.** The principle that the insured must have a financial interest in the subject matter is:

A. utmost good faith  
B. subrogation  
C. indemnity  
D. insurable interest  

---

**Q43.** Insurance against the death of the insured is:

A. motor insurance  
B. life insurance  
C. fire insurance  
D. marine insurance  

---

**Q44.** Insurance against damage to goods in transit by sea is:

A. motor insurance  
B. marine insurance  
C. life insurance  
D. fire insurance  

---

**Q45.** The exchange of information between people is called:

A. banking  
B. transport  
C. communication  
D. advertising  

---

**Q46.** The protection of consumers from unfair practices is called:

A. insurance  
B. advertising  
C. marketing  
D. consumer protection  

---

**Q47.** An organisation that protects the interests of consumers is a:

A. company  
B. cooperative  
C. consumer association  
D. trade union  

---

**Q48.** A financial institution that gives small loans to small businesses is a:

A. insurance company  
B. stock exchange  
C. central bank  
D. microfinance institution  

---

**Q49.** The market where shares are bought and sold is the:

A. stock exchange  
B. commodity market  
C. money market  
D. foreign exchange market  

---

**Q50.** The unit of ownership of a company is a:

A. share  
B. bond  
C. premium  
D. cheque  

---

**Q51.** A loan to a company or government that pays interest is a:

A. bond  
B. cheque  
C. share  
D. premium  

---

**Q52.** A general rise in the price level is called:

A. inflation  
B. recession  
C. depression  
D. deflation  

---

**Q53.** A plan of expected income and expenditure is a:

A. budget  
B. receipt  
C. balance sheet  
D. invoice  

---

**Q54.** The stock exchange in Cameroon is located in:

A. Douala  
B. Garoua  
C. Buea  
D. Yaoundé  

---

**Q55.** Anything generally accepted as a medium of exchange is:

A. goods  
B. money  
C. services  
D. credit  

---

**Q56.** The bank that issues currency and controls the money supply is the:

A. commercial bank  
B. central bank  
C. merchant bank  
D. development bank  

---

**Q57.** The bank that accepts deposits and gives loans to the public is a:

A. central bank  
B. development bank  
C. commercial bank  
D. stock exchange  

---

**Q58.** The account used for frequent transactions is a:

A. savings account  
B. fixed deposit account  
C. loan account  
D. current account  

---

**Q59.** The account that earns interest and encourages saving is a:

A. current account  
B. loan account  
C. savings account  
D. overdraft account  

---

**Q60.** A written order to a bank to pay a stated sum is a:

A. receipt  
B. credit note  
C. invoice  
D. cheque  

---

## ANSWER KEY

1. A
2. A
3. A
4. A
5. A
6. A
7. B
8. B
9. C
10. D
11. C
12. D
13. B
14. B
15. C
16. D
17. C
18. D
19. B
20. B
21. C
22. D
23. C
24. D
25. A
26. A
27. A
28. A
29. A
30. A
31. B
32. B
33. C
34. D
35. C
36. D
37. B
38. B
39. C
40. D
41. C
42. D
43. B
44. B
45. C
46. D
47. C
48. D
49. A
50. A
51. A
52. A
53. A
54. A
55. B
56. B
57. C
58. D
59. C
60. D
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 4'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 4',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 4

## Structural Question Bank — Microeconomics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MICROECONOMICS

**Q1.** (a) Define the term "scarcity". *(2 marks)*

(b) Explain the basic economic problem. *(4 marks)*

(c) Distinguish between needs and wants, giving two examples of each. *(4 marks)*

---

**Q2.** (a) What is opportunity cost? *(2 marks)*

(b) Explain the concept of opportunity cost using a production possibility curve. *(5 marks)*

(c) State three factors of production. *(3 marks)*

---

**Q3.** (a) Define the term "demand". *(2 marks)*

(b) State the law of demand. *(3 marks)*

(c) Explain three factors that cause a change in demand. *(5 marks)*

---

**Q4.** (a) Define the term "supply". *(2 marks)*

(b) State the law of supply. *(3 marks)*

(c) Explain three factors that cause a change in supply. *(5 marks)*

---

**Q5.** (a) What is market equilibrium? *(2 marks)*

(b) Explain how the equilibrium price is determined by demand and supply. *(5 marks)*

(c) Describe what happens when the price is set above the equilibrium price. *(4 marks)*

---

**Q6.** (a) Define the term "price elasticity of demand". *(3 marks)*

(b) State the formula for price elasticity of demand. *(3 marks)*

(c) Explain the difference between elastic and inelastic demand. *(4 marks)*

---

**Q7.** (a) A 10% rise in price leads to a 20% fall in quantity demanded. Calculate the price elasticity of demand and state whether demand is elastic or inelastic. *(5 marks)*

(b) Explain the factors that determine the price elasticity of demand. *(5 marks)*

---

**Q8.** (a) Define the terms "normal good" and "inferior good". *(4 marks)*

(b) Explain the relationship between income and demand for a normal good. *(4 marks)*

(c) Give one example of each type of good. *(2 marks)*

---

**Q9.** (a) Define the term "production". *(2 marks)*

(b) Distinguish between short-run and long-run production. *(4 marks)*

(c) Explain the law of diminishing returns. *(5 marks)*

---

**Q10.** (a) Define the terms "fixed cost" and "variable cost". *(4 marks)*

(b) Explain the difference between total cost, average cost, and marginal cost. *(5 marks)*

(c) State the relationship between marginal cost and average cost. *(3 marks)*

---

**Q11.** (a) Define the term "economies of scale". *(2 marks)*

(b) State three internal economies of scale. *(3 marks)*

(c) Explain two diseconomies of scale. *(4 marks)*

---

**Q12.** (a) What is a market structure? *(2 marks)*

(b) Describe the characteristics of perfect competition. *(5 marks)*

(c) Explain why firms in perfect competition are price takers. *(4 marks)*

---

**Q13.** (a) Define the term "monopoly". *(2 marks)*

(b) State three characteristics of a monopoly. *(3 marks)*

(c) Explain the advantages and disadvantages of a monopoly. *(5 marks)*

---

**Q14.** (a) What is monopolistic competition? *(2 marks)*

(b) Describe the characteristics of monopolistic competition. *(4 marks)*

(c) Distinguish between monopolistic competition and perfect competition. *(4 marks)*

---

**Q15.** (a) Define the term "oligopoly". *(2 marks)*

(b) State three characteristics of an oligopoly. *(3 marks)*

(c) Explain the importance of non-price competition in an oligopoly. *(4 marks)*

---

**Q16.** (a) Define the terms "revenue" and "profit". *(4 marks)*

(b) Distinguish between accounting profit and economic profit. *(4 marks)*

(c) Explain the difference between normal profit and supernormal profit. *(4 marks)*

---

**Q17.** (a) What is a price ceiling? *(2 marks)*

(b) Explain the effects of a price ceiling on the market. *(4 marks)*

(c) State two examples of price controls used by governments. *(2 marks)*

---

**Q18.** (a) Define the term "consumer surplus". *(2 marks)*

(b) Explain how consumer surplus is measured. *(4 marks)*

(c) Explain the effect of a price rise on consumer surplus. *(4 marks)*

---

**Q19.** (a) Define the term "producer surplus". *(2 marks)*

(b) Explain how producer surplus is measured. *(4 marks)*

(c) Explain the effect of a price fall on producer surplus. *(4 marks)*

---

**Q20.** (a) What is the division of labour? *(2 marks)*

(b) State three advantages of the division of labour. *(3 marks)*

(c) Explain two disadvantages of the division of labour. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 5'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 5',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 5

## Structural Question Bank — Macroeconomics and development

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MACROECONOMICS AND DEVELOPMENT

**Q1.** (a) Define the term "national income". *(2 marks)*

(b) State the three methods of measuring national income. *(3 marks)*

(c) Explain the difficulties in measuring national income in developing countries. *(5 marks)*

---

**Q2.** (a) Define the terms "GDP" and "GNP". *(4 marks)*

(b) Distinguish between GDP at market prices and GDP at factor cost. *(4 marks)*

(c) Explain the difference between nominal GDP and real GDP. *(4 marks)*

---

**Q3.** (a) What is money? *(2 marks)*

(b) State the functions of money. *(4 marks)*

(c) Explain the qualities of good money. *(4 marks)*

---

**Q4.** (a) Define the term "money supply". *(2 marks)*

(b) State three components of the money supply. *(3 marks)*

(c) Explain how the central bank controls the money supply. *(5 marks)*

---

**Q5.** (a) What is a commercial bank? *(2 marks)*

(b) State three functions of a commercial bank. *(3 marks)*

(c) Explain how commercial banks create credit. *(5 marks)*

---

**Q6.** (a) Define the term "inflation". *(2 marks)*

(b) State three causes of inflation. *(3 marks)*

(c) Explain the effects of inflation on the economy. *(5 marks)*

---

**Q7.** (a) Define the terms "demand-pull inflation" and "cost-push inflation". *(4 marks)

(b) Explain the difference between the two types of inflation. *(4 marks)*

(c) State two policies used to control inflation. *(2 marks)*

---

**Q8.** (a) What is unemployment? *(2 marks)*

(b) State three types of unemployment. *(3 marks)*

(c) Explain the causes and effects of unemployment. *(5 marks)*

---

**Q9.** (a) Define the term "international trade". *(2 marks)*

(b) Explain the principle of comparative advantage. *(5 marks)*

(c) State three benefits of international trade. *(3 marks)*

---

**Q10.** (a) Define the terms "balance of trade" and "balance of payments". *(4 marks)*

(b) Explain the causes of a deficit in the balance of payments. *(4 marks)*

(c) State three measures to correct a balance of payments deficit. *(3 marks)*

---

**Q11.** (a) What is a tariff? *(2 marks)*

(b) Distinguish between a tariff and a quota. *(4 marks)*

(c) Explain the arguments for and against protectionism. *(5 marks)*

---

**Q12.** (a) Define the term "public finance". *(2 marks)*

(b) State the sources of government revenue. *(4 marks)*

(c) Explain the difference between direct and indirect taxes. *(4 marks)*

---

**Q13.** (a) What is a budget? *(2 marks)*

(b) Distinguish between a balanced, a surplus, and a deficit budget. *(4 marks)*

(c) Explain the importance of the budget as a tool of economic policy. *(4 marks)*

---

**Q14.** (a) Define the term "economic growth". *(2 marks)*

(b) Distinguish between economic growth and economic development. *(4 marks)*

(c) State three factors that promote economic growth. *(3 marks)*

---

**Q15.** (a) What is economic development? *(2 marks)*

(b) State three indicators of economic development. *(3 marks)*

(c) Explain the difference between the Human Development Index and GDP per capita. *(5 marks)*

---

**Q16.** (a) Define the term "foreign direct investment". *(2 marks)*

(b) State three advantages of foreign direct investment to a developing country. *(3 marks)*

(c) Explain two disadvantages of foreign direct investment. *(4 marks)*

---

**Q17.** (a) What is a developing country? *(2 marks)*

(b) State three characteristics of developing countries. *(3 marks)*

(c) Explain the problems facing developing countries in achieving development. *(5 marks)*

---

**Q18.** (a) Define the term "structural adjustment programme". *(2 marks)*

(b) State three conditions attached to structural adjustment programmes. *(3 marks)*

(c) Explain the effects of structural adjustment programmes on developing countries. *(5 marks)*

---

**Q19.** (a) What is the International Monetary Fund? *(2 marks)*

(b) State three functions of the IMF. *(3 marks)*

(c) Explain the role of the World Bank in financing development. *(4 marks)*

---

**Q20.** (a) Define the term "regional integration". *(2 marks)*

(b) State three objectives of the Economic Community of Central African States (ECCAS). *(3 marks)*

(c) Explain the benefits of regional integration to Cameroon. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 6'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 6',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 6

## Structural Question Bank — Microeconomics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MICROECONOMICS

**Q1.** (a) Define the term "scarcity". *(2 marks)*

(b) Explain the basic economic problem. *(4 marks)*

(c) Distinguish between needs and wants, giving two examples of each. *(4 marks)*

---

**Q2.** (a) What is opportunity cost? *(2 marks)*

(b) Explain the concept of opportunity cost using a production possibility curve. *(5 marks)*

(c) State three factors of production. *(3 marks)*

---

**Q3.** (a) Define the term "demand". *(2 marks)*

(b) State the law of demand. *(3 marks)*

(c) Explain three factors that cause a change in demand. *(5 marks)*

---

**Q4.** (a) Define the term "supply". *(2 marks)*

(b) State the law of supply. *(3 marks)*

(c) Explain three factors that cause a change in supply. *(5 marks)*

---

**Q5.** (a) What is market equilibrium? *(2 marks)*

(b) Explain how the equilibrium price is determined by demand and supply. *(5 marks)*

(c) Describe what happens when the price is set above the equilibrium price. *(4 marks)*

---

**Q6.** (a) Define the term "price elasticity of demand". *(3 marks)*

(b) State the formula for price elasticity of demand. *(3 marks)*

(c) Explain the difference between elastic and inelastic demand. *(4 marks)*

---

**Q7.** (a) A 10% rise in price leads to a 20% fall in quantity demanded. Calculate the price elasticity of demand and state whether demand is elastic or inelastic. *(5 marks)*

(b) Explain the factors that determine the price elasticity of demand. *(5 marks)*

---

**Q8.** (a) Define the terms "normal good" and "inferior good". *(4 marks)*

(b) Explain the relationship between income and demand for a normal good. *(4 marks)*

(c) Give one example of each type of good. *(2 marks)*

---

**Q9.** (a) Define the term "production". *(2 marks)*

(b) Distinguish between short-run and long-run production. *(4 marks)*

(c) Explain the law of diminishing returns. *(5 marks)*

---

**Q10.** (a) Define the terms "fixed cost" and "variable cost". *(4 marks)*

(b) Explain the difference between total cost, average cost, and marginal cost. *(5 marks)*

(c) State the relationship between marginal cost and average cost. *(3 marks)*

---

**Q11.** (a) Define the term "economies of scale". *(2 marks)*

(b) State three internal economies of scale. *(3 marks)*

(c) Explain two diseconomies of scale. *(4 marks)*

---

**Q12.** (a) What is a market structure? *(2 marks)*

(b) Describe the characteristics of perfect competition. *(5 marks)*

(c) Explain why firms in perfect competition are price takers. *(4 marks)*

---

**Q13.** (a) Define the term "monopoly". *(2 marks)*

(b) State three characteristics of a monopoly. *(3 marks)*

(c) Explain the advantages and disadvantages of a monopoly. *(5 marks)*

---

**Q14.** (a) What is monopolistic competition? *(2 marks)*

(b) Describe the characteristics of monopolistic competition. *(4 marks)*

(c) Distinguish between monopolistic competition and perfect competition. *(4 marks)*

---

**Q15.** (a) Define the term "oligopoly". *(2 marks)*

(b) State three characteristics of an oligopoly. *(3 marks)*

(c) Explain the importance of non-price competition in an oligopoly. *(4 marks)*

---

**Q16.** (a) Define the terms "revenue" and "profit". *(4 marks)*

(b) Distinguish between accounting profit and economic profit. *(4 marks)*

(c) Explain the difference between normal profit and supernormal profit. *(4 marks)*

---

**Q17.** (a) What is a price ceiling? *(2 marks)*

(b) Explain the effects of a price ceiling on the market. *(4 marks)*

(c) State two examples of price controls used by governments. *(2 marks)*

---

**Q18.** (a) Define the term "consumer surplus". *(2 marks)*

(b) Explain how consumer surplus is measured. *(4 marks)*

(c) Explain the effect of a price rise on consumer surplus. *(4 marks)*

---

**Q19.** (a) Define the term "producer surplus". *(2 marks)*

(b) Explain how producer surplus is measured. *(4 marks)*

(c) Explain the effect of a price fall on producer surplus. *(4 marks)*

---

**Q20.** (a) What is the division of labour? *(2 marks)*

(b) State three advantages of the division of labour. *(3 marks)*

(c) Explain two disadvantages of the division of labour. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 7'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 7',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 7

## Structural Question Bank — Macroeconomics and development

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MACROECONOMICS AND DEVELOPMENT

**Q1.** (a) Define the term "national income". *(2 marks)*

(b) State the three methods of measuring national income. *(3 marks)*

(c) Explain the difficulties in measuring national income in developing countries. *(5 marks)*

---

**Q2.** (a) Define the terms "GDP" and "GNP". *(4 marks)*

(b) Distinguish between GDP at market prices and GDP at factor cost. *(4 marks)*

(c) Explain the difference between nominal GDP and real GDP. *(4 marks)*

---

**Q3.** (a) What is money? *(2 marks)*

(b) State the functions of money. *(4 marks)*

(c) Explain the qualities of good money. *(4 marks)*

---

**Q4.** (a) Define the term "money supply". *(2 marks)*

(b) State three components of the money supply. *(3 marks)*

(c) Explain how the central bank controls the money supply. *(5 marks)*

---

**Q5.** (a) What is a commercial bank? *(2 marks)*

(b) State three functions of a commercial bank. *(3 marks)*

(c) Explain how commercial banks create credit. *(5 marks)*

---

**Q6.** (a) Define the term "inflation". *(2 marks)*

(b) State three causes of inflation. *(3 marks)*

(c) Explain the effects of inflation on the economy. *(5 marks)*

---

**Q7.** (a) Define the terms "demand-pull inflation" and "cost-push inflation". *(4 marks)

(b) Explain the difference between the two types of inflation. *(4 marks)*

(c) State two policies used to control inflation. *(2 marks)*

---

**Q8.** (a) What is unemployment? *(2 marks)*

(b) State three types of unemployment. *(3 marks)*

(c) Explain the causes and effects of unemployment. *(5 marks)*

---

**Q9.** (a) Define the term "international trade". *(2 marks)*

(b) Explain the principle of comparative advantage. *(5 marks)*

(c) State three benefits of international trade. *(3 marks)*

---

**Q10.** (a) Define the terms "balance of trade" and "balance of payments". *(4 marks)*

(b) Explain the causes of a deficit in the balance of payments. *(4 marks)*

(c) State three measures to correct a balance of payments deficit. *(3 marks)*

---

**Q11.** (a) What is a tariff? *(2 marks)*

(b) Distinguish between a tariff and a quota. *(4 marks)*

(c) Explain the arguments for and against protectionism. *(5 marks)*

---

**Q12.** (a) Define the term "public finance". *(2 marks)*

(b) State the sources of government revenue. *(4 marks)*

(c) Explain the difference between direct and indirect taxes. *(4 marks)*

---

**Q13.** (a) What is a budget? *(2 marks)*

(b) Distinguish between a balanced, a surplus, and a deficit budget. *(4 marks)*

(c) Explain the importance of the budget as a tool of economic policy. *(4 marks)*

---

**Q14.** (a) Define the term "economic growth". *(2 marks)*

(b) Distinguish between economic growth and economic development. *(4 marks)*

(c) State three factors that promote economic growth. *(3 marks)*

---

**Q15.** (a) What is economic development? *(2 marks)*

(b) State three indicators of economic development. *(3 marks)*

(c) Explain the difference between the Human Development Index and GDP per capita. *(5 marks)*

---

**Q16.** (a) Define the term "foreign direct investment". *(2 marks)*

(b) State three advantages of foreign direct investment to a developing country. *(3 marks)*

(c) Explain two disadvantages of foreign direct investment. *(4 marks)*

---

**Q17.** (a) What is a developing country? *(2 marks)*

(b) State three characteristics of developing countries. *(3 marks)*

(c) Explain the problems facing developing countries in achieving development. *(5 marks)*

---

**Q18.** (a) Define the term "structural adjustment programme". *(2 marks)*

(b) State three conditions attached to structural adjustment programmes. *(3 marks)*

(c) Explain the effects of structural adjustment programmes on developing countries. *(5 marks)*

---

**Q19.** (a) What is the International Monetary Fund? *(2 marks)*

(b) State three functions of the IMF. *(3 marks)*

(c) Explain the role of the World Bank in financing development. *(4 marks)*

---

**Q20.** (a) Define the term "regional integration". *(2 marks)*

(b) State three objectives of the Economic Community of Central African States (ECCAS). *(3 marks)*

(c) Explain the benefits of regional integration to Cameroon. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

with chosen_topic as (
  select id
  from public.topics
  where subject = 'Economics'
  order by case when level = 'advanced' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 8'
  limit 1
)
insert into public.course_documents (
  id, topic_id, subject, title, language, level, class_levels, series, status,
  markdown_content, created_by
)
values (
  coalesce((select id from existing), gen_random_uuid()),
  (select id from chosen_topic),
  'Economics',
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 8',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 8

## Structural Question Bank — Microeconomics

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Answer all questions in a clear and organized manner.
- Show all working where calculations are required.
- Use correct subject terminology and Cameroon GCE presentation standards.
- Diagrams, tables, maps, labelled sketches, and examples should be included where useful.

---

## SECTION 1: MICROECONOMICS

**Q1.** (a) Define the term "scarcity". *(2 marks)*

(b) Explain the basic economic problem. *(4 marks)*

(c) Distinguish between needs and wants, giving two examples of each. *(4 marks)*

---

**Q2.** (a) What is opportunity cost? *(2 marks)*

(b) Explain the concept of opportunity cost using a production possibility curve. *(5 marks)*

(c) State three factors of production. *(3 marks)*

---

**Q3.** (a) Define the term "demand". *(2 marks)*

(b) State the law of demand. *(3 marks)*

(c) Explain three factors that cause a change in demand. *(5 marks)*

---

**Q4.** (a) Define the term "supply". *(2 marks)*

(b) State the law of supply. *(3 marks)*

(c) Explain three factors that cause a change in supply. *(5 marks)*

---

**Q5.** (a) What is market equilibrium? *(2 marks)*

(b) Explain how the equilibrium price is determined by demand and supply. *(5 marks)*

(c) Describe what happens when the price is set above the equilibrium price. *(4 marks)*

---

**Q6.** (a) Define the term "price elasticity of demand". *(3 marks)*

(b) State the formula for price elasticity of demand. *(3 marks)*

(c) Explain the difference between elastic and inelastic demand. *(4 marks)*

---

**Q7.** (a) A 10% rise in price leads to a 20% fall in quantity demanded. Calculate the price elasticity of demand and state whether demand is elastic or inelastic. *(5 marks)*

(b) Explain the factors that determine the price elasticity of demand. *(5 marks)*

---

**Q8.** (a) Define the terms "normal good" and "inferior good". *(4 marks)*

(b) Explain the relationship between income and demand for a normal good. *(4 marks)*

(c) Give one example of each type of good. *(2 marks)*

---

**Q9.** (a) Define the term "production". *(2 marks)*

(b) Distinguish between short-run and long-run production. *(4 marks)*

(c) Explain the law of diminishing returns. *(5 marks)*

---

**Q10.** (a) Define the terms "fixed cost" and "variable cost". *(4 marks)*

(b) Explain the difference between total cost, average cost, and marginal cost. *(5 marks)*

(c) State the relationship between marginal cost and average cost. *(3 marks)*

---

**Q11.** (a) Define the term "economies of scale". *(2 marks)*

(b) State three internal economies of scale. *(3 marks)*

(c) Explain two diseconomies of scale. *(4 marks)*

---

**Q12.** (a) What is a market structure? *(2 marks)*

(b) Describe the characteristics of perfect competition. *(5 marks)*

(c) Explain why firms in perfect competition are price takers. *(4 marks)*

---

**Q13.** (a) Define the term "monopoly". *(2 marks)*

(b) State three characteristics of a monopoly. *(3 marks)*

(c) Explain the advantages and disadvantages of a monopoly. *(5 marks)*

---

**Q14.** (a) What is monopolistic competition? *(2 marks)*

(b) Describe the characteristics of monopolistic competition. *(4 marks)*

(c) Distinguish between monopolistic competition and perfect competition. *(4 marks)*

---

**Q15.** (a) Define the term "oligopoly". *(2 marks)*

(b) State three characteristics of an oligopoly. *(3 marks)*

(c) Explain the importance of non-price competition in an oligopoly. *(4 marks)*

---

**Q16.** (a) Define the terms "revenue" and "profit". *(4 marks)*

(b) Distinguish between accounting profit and economic profit. *(4 marks)*

(c) Explain the difference between normal profit and supernormal profit. *(4 marks)*

---

**Q17.** (a) What is a price ceiling? *(2 marks)*

(b) Explain the effects of a price ceiling on the market. *(4 marks)*

(c) State two examples of price controls used by governments. *(2 marks)*

---

**Q18.** (a) Define the term "consumer surplus". *(2 marks)*

(b) Explain how consumer surplus is measured. *(4 marks)*

(c) Explain the effect of a price rise on consumer surplus. *(4 marks)*

---

**Q19.** (a) Define the term "producer surplus". *(2 marks)*

(b) Explain how producer surplus is measured. *(4 marks)*

(c) Explain the effect of a price fall on producer surplus. *(4 marks)*

---

**Q20.** (a) What is the division of labour? *(2 marks)*

(b) State three advantages of the division of labour. *(3 marks)*

(c) Explain two disadvantages of the division of labour. *(4 marks)*
',
  null
)
on conflict (id) do update set
  topic_id = excluded.topic_id,
  subject = excluded.subject,
  title = excluded.title,
  language = excluded.language,
  level = excluded.level,
  class_levels = excluded.class_levels,
  series = excluded.series,
  status = excluded.status,
  markdown_content = excluded.markdown_content,
  updated_at = now();

commit;