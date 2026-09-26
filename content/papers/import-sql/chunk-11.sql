begin;

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
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 2

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The reward for labour is:

A. wages  
B. rent  
C. interest  
D. profit  

---

**Q2.** The reward for capital is:

A. interest  
B. wages  
C. profit  
D. rent  

---

**Q3.** The reward for land is:

A. rent  
B. interest  
C. wages  
D. profit  

---

**Q4.** The reward for enterprise is:

A. profit  
B. rent  
C. interest  
D. wages  

---

**Q5.** The law of demand states that as price rises, quantity demanded:

A. falls  
B. doubles  
C. rises  
D. stays constant  

---

**Q6.** The law of supply states that as price rises, quantity supplied:

A. rises  
B. halves  
C. stays constant  
D. falls  

---

**Q7.** The price at which quantity demanded equals quantity supplied is the:

A. ceiling price  
B. equilibrium price  
C. floor price  
D. market price  

---

**Q8.** If a 10% price rise causes a 20% fall in quantity demanded, demand is:

A. inelastic  
B. elastic  
C. perfectly inelastic  
D. unit elastic  

---

**Q9.** If a 10% price rise causes a 5% fall in quantity demanded, demand is:

A. elastic  
B. unit elastic  
C. inelastic  
D. perfectly elastic  

---

**Q10.** The price elasticity of demand is calculated as:

A. % change in price ÷ % change in quantity demanded  
B. change in price ÷ change in quantity  
C. quantity ÷ price  
D. % change in quantity demanded ÷ % change in price  

---

**Q11.** A good whose demand rises when income rises is a:

A. inferior good  
B. complementary good  
C. normal good  
D. substitute good  

---

**Q12.** A good whose demand falls when income rises is an:

A. normal good  
B. necessity  
C. luxury good  
D. inferior good  

---

**Q13.** The law of diminishing returns applies in the:

A. very long run  
B. short run  
C. long run  
D. market period  

---

**Q14.** Costs that do not change with output are:

A. marginal costs  
B. fixed costs  
C. total costs  
D. variable costs  

---

**Q15.** Costs that change with output are:

A. sunk costs  
B. fixed costs  
C. variable costs  
D. overhead costs  

---

**Q16.** The extra cost of producing one more unit is the:

A. fixed cost  
B. average cost  
C. total cost  
D. marginal cost  

---

**Q17.** A market with many buyers and sellers of identical products is:

A. oligopoly  
B. monopolistic competition  
C. perfect competition  
D. monopoly  

---

**Q18.** A market with a single seller is a:

A. oligopoly  
B. duopoly  
C. perfect competition  
D. monopoly  

---

**Q19.** A market with a few large sellers is an:

A. monopolistic competition  
B. oligopoly  
C. monopoly  
D. perfect competition  

---

**Q20.** A market with many sellers of differentiated products is:

A. oligopoly  
B. monopolistic competition  
C. monopoly  
D. perfect competition  

---

**Q21.** A firm in perfect competition is a:

A. oligopolist  
B. price maker  
C. price taker  
D. monopolist  

---

**Q22.** A monopolist is a:

A. price cutter  
B. price taker  
C. price follower  
D. price maker  

---

**Q23.** The reduction in average cost as output increases is called:

A. increasing returns  
B. diminishing returns  
C. economies of scale  
D. diseconomies of scale  

---

**Q24.** The increase in average cost when a firm becomes too large is called:

A. constant returns  
B. diminishing returns  
C. economies of scale  
D. diseconomies of scale  

---

**Q25.** A maximum price set by the government is a:

A. price ceiling  
B. price floor  
C. equilibrium price  
D. market price  

---

**Q26.** A minimum price set by the government is a:

A. price floor  
B. price ceiling  
C. market price  
D. equilibrium price  

---

**Q27.** The benefit consumers gain when they pay less than they are willing to pay is:

A. consumer surplus  
B. profit  
C. producer surplus  
D. revenue  

---

**Q28.** The basic economic problem is:

A. scarcity  
B. unemployment  
C. taxation  
D. inflation  

---

**Q29.** The next best alternative forgone when a choice is made is the:

A. opportunity cost  
B. fixed cost  
C. marginal cost  
D. sunk cost  

---

**Q30.** The factors of production are land, labour, capital, and:

A. enterprise  
B. services  
C. goods  
D. money  

---

**Q31.** The three methods of measuring national income are income, output, and:

A. savings  
B. expenditure  
C. investment  
D. taxation  

---

**Q32.** Anything generally accepted as a medium of exchange is:

A. goods  
B. money  
C. credit  
D. services  

---

**Q33.** The total amount of money in circulation is the:

A. national income  
B. balance of payments  
C. money supply  
D. public debt  

---

**Q34.** The bank that controls the money supply is the:

A. commercial bank  
B. development bank  
C. merchant bank  
D. central bank  

---

**Q35.** The bank that accepts deposits and gives loans is a:

A. central bank  
B. insurance company  
C. commercial bank  
D. stock exchange  

---

**Q36.** A general and sustained rise in the price level is:

A. deflation  
B. depression  
C. recession  
D. inflation  

---

**Q37.** Inflation caused by excess demand is called:

A. hyperinflation  
B. demand-pull inflation  
C. cost-push inflation  
D. stagflation  

---

**Q38.** Inflation caused by rising costs of production is called:

A. hyperinflation  
B. cost-push inflation  
C. deflation  
D. demand-pull inflation  

---

**Q39.** The situation where people who are able and willing to work cannot find jobs is:

A. deflation  
B. inflation  
C. unemployment  
D. recession  

---

**Q40.** Trade between countries is called:

A. local trade  
B. home trade  
C. retail trade  
D. international trade  

---

**Q41.** The principle that a country should specialise in producing goods it produces most efficiently is:

A. opportunity cost  
B. economies of scale  
C. comparative advantage  
D. absolute advantage  

---

**Q42.** The difference between the value of exports and imports is the:

A. national income  
B. public debt  
C. balance of payments  
D. balance of trade  

---

**Q43.** A tax on imported goods is a:

A. grant  
B. tariff  
C. quota  
D. subsidy  

---

**Q44.** A limit on the quantity of a good that can be imported is a:

A. embargo  
B. quota  
C. subsidy  
D. tariff  

---

**Q45.** Taxes on income and profits are:

A. quotas  
B. indirect taxes  
C. direct taxes  
D. tariffs  

---

**Q46.** Taxes on goods and services are:

A. profit taxes  
B. direct taxes  
C. income taxes  
D. indirect taxes  

---

**Q47.** A plan of government revenue and expenditure is the:

A. receipt  
B. invoice  
C. budget  
D. balance sheet  

---

**Q48.** A budget where revenue equals expenditure is:

A. unbalanced  
B. deficit  
C. surplus  
D. balanced  

---

**Q49.** A budget where revenue exceeds expenditure is:

A. surplus  
B. deficit  
C. balanced  
D. unbalanced  

---

**Q50.** A budget where expenditure exceeds revenue is:

A. deficit  
B. surplus  
C. unbalanced  
D. balanced  

---

**Q51.** The increase in a country''s output of goods and services over time is:

A. economic growth  
B. inflation  
C. economic development  
D. recession  

---

**Q52.** The improvement in the standard of living and welfare of people is:

A. economic development  
B. inflation  
C. deflation  
D. economic growth  

---

**Q53.** The index that measures human welfare is the:

A. Human Development Index  
B. Price Index  
C. Consumer Price Index  
D. Stock Index  

---

**Q54.** Investment by foreign companies in a country is called:

A. foreign direct investment  
B. domestic investment  
C. public investment  
D. portfolio investment  

---

**Q55.** The international organisation that provides loans to countries in balance of payments difficulties is the:

A. World Bank  
B. IMF  
C. WTO  
D. UN  

---

**Q56.** The international organisation that finances development projects is the:

A. IMF  
B. World Bank  
C. UN  
D. WTO  

---

**Q57.** The economic community of Central African states is:

A. ECOWAS  
B. SADC  
C. ECCAS  
D. COMESA  

---

**Q58.** The total value of goods and services produced in a country in a year is the:

A. national debt  
B. balance of trade  
C. money supply  
D. national income  

---

**Q59.** GDP stands for:

A. Gross Domestic Profit  
B. Gross Development Plan  
C. Gross Domestic Product  
D. General Domestic Product  

---

**Q60.** GNP stands for:

A. Gross National Profit  
B. Gross Net Product  
C. General National Product  
D. Gross National Product  

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
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P1 SET 3

## Multiple Choice Question Bank

**Level:** Advanced Level
**Class:** UPPER SIXTH
**Series:** a_arts, a_commercial
**Subject:** Economics

**Instructions:**

- Choose the correct option A, B, C or D for each question.
- Record your answers clearly on the answer sheet provided.
- Each question carries equal marks. No marks is deducted for wrong answers.
- Use the answer key at the end of the paper to check your responses.

---

## QUESTIONS

**Q1.** The reward for enterprise is:

A. profit  
B. wages  
C. rent  
D. interest  

---

**Q2.** The law of demand states that as price rises, quantity demanded:

A. falls  
B. rises  
C. doubles  
D. stays constant  

---

**Q3.** The law of supply states that as price rises, quantity supplied:

A. rises  
B. stays constant  
C. falls  
D. halves  

---

**Q4.** The price at which quantity demanded equals quantity supplied is the:

A. equilibrium price  
B. floor price  
C. market price  
D. ceiling price  

---

**Q5.** If a 10% price rise causes a 20% fall in quantity demanded, demand is:

A. elastic  
B. perfectly inelastic  
C. inelastic  
D. unit elastic  

---

**Q6.** If a 10% price rise causes a 5% fall in quantity demanded, demand is:

A. inelastic  
B. perfectly elastic  
C. unit elastic  
D. elastic  

---

**Q7.** The price elasticity of demand is calculated as:

A. % change in price ÷ % change in quantity demanded  
B. % change in quantity demanded ÷ % change in price  
C. change in price ÷ change in quantity  
D. quantity ÷ price  

---

**Q8.** A good whose demand rises when income rises is a:

A. inferior good  
B. normal good  
C. complementary good  
D. substitute good  

---

**Q9.** A good whose demand falls when income rises is an:

A. normal good  
B. luxury good  
C. inferior good  
D. necessity  

---

**Q10.** The law of diminishing returns applies in the:

A. long run  
B. very long run  
C. market period  
D. short run  

---

**Q11.** Costs that do not change with output are:

A. variable costs  
B. total costs  
C. fixed costs  
D. marginal costs  

---

**Q12.** Costs that change with output are:

A. fixed costs  
B. overhead costs  
C. sunk costs  
D. variable costs  

---

**Q13.** The extra cost of producing one more unit is the:

A. fixed cost  
B. marginal cost  
C. average cost  
D. total cost  

---

**Q14.** A market with many buyers and sellers of identical products is:

A. oligopoly  
B. perfect competition  
C. monopolistic competition  
D. monopoly  

---

**Q15.** A market with a single seller is a:

A. oligopoly  
B. perfect competition  
C. monopoly  
D. duopoly  

---

**Q16.** A market with a few large sellers is an:

A. perfect competition  
B. monopoly  
C. monopolistic competition  
D. oligopoly  

---

**Q17.** A market with many sellers of differentiated products is:

A. monopoly  
B. oligopoly  
C. monopolistic competition  
D. perfect competition  

---

**Q18.** A firm in perfect competition is a:

A. monopolist  
B. oligopolist  
C. price maker  
D. price taker  

---

**Q19.** A monopolist is a:

A. price cutter  
B. price maker  
C. price taker  
D. price follower  

---

**Q20.** The reduction in average cost as output increases is called:

A. increasing returns  
B. economies of scale  
C. diminishing returns  
D. diseconomies of scale  

---

**Q21.** The increase in average cost when a firm becomes too large is called:

A. constant returns  
B. economies of scale  
C. diseconomies of scale  
D. diminishing returns  

---

**Q22.** A maximum price set by the government is a:

A. market price  
B. price floor  
C. equilibrium price  
D. price ceiling  

---

**Q23.** A minimum price set by the government is a:

A. market price  
B. equilibrium price  
C. price floor  
D. price ceiling  

---

**Q24.** The benefit consumers gain when they pay less than they are willing to pay is:

A. revenue  
B. profit  
C. producer surplus  
D. consumer surplus  

---

**Q25.** The basic economic problem is:

A. scarcity  
B. inflation  
C. unemployment  
D. taxation  

---

**Q26.** The next best alternative forgone when a choice is made is the:

A. opportunity cost  
B. marginal cost  
C. fixed cost  
D. sunk cost  

---

**Q27.** The factors of production are land, labour, capital, and:

A. enterprise  
B. goods  
C. money  
D. services  

---

**Q28.** The reward for labour is:

A. wages  
B. interest  
C. profit  
D. rent  

---

**Q29.** The reward for capital is:

A. interest  
B. profit  
C. wages  
D. rent  

---

**Q30.** The reward for land is:

A. rent  
B. profit  
C. interest  
D. wages  

---

**Q31.** The bank that controls the money supply is the:

A. commercial bank  
B. central bank  
C. development bank  
D. merchant bank  

---

**Q32.** The bank that accepts deposits and gives loans is a:

A. central bank  
B. commercial bank  
C. insurance company  
D. stock exchange  

---

**Q33.** A general and sustained rise in the price level is:

A. deflation  
B. recession  
C. inflation  
D. depression  

---

**Q34.** Inflation caused by excess demand is called:

A. cost-push inflation  
B. hyperinflation  
C. stagflation  
D. demand-pull inflation  

---

**Q35.** Inflation caused by rising costs of production is called:

A. demand-pull inflation  
B. deflation  
C. cost-push inflation  
D. hyperinflation  

---

**Q36.** The situation where people who are able and willing to work cannot find jobs is:

A. inflation  
B. recession  
C. deflation  
D. unemployment  

---

**Q37.** Trade between countries is called:

A. local trade  
B. international trade  
C. home trade  
D. retail trade  

---

**Q38.** The principle that a country should specialise in producing goods it produces most efficiently is:

A. opportunity cost  
B. comparative advantage  
C. economies of scale  
D. absolute advantage  

---

**Q39.** The difference between the value of exports and imports is the:

A. national income  
B. balance of payments  
C. balance of trade  
D. public debt  

---

**Q40.** A tax on imported goods is a:

A. subsidy  
B. quota  
C. grant  
D. tariff  

---

**Q41.** A limit on the quantity of a good that can be imported is a:

A. subsidy  
B. embargo  
C. quota  
D. tariff  

---

**Q42.** Taxes on income and profits are:

A. tariffs  
B. quotas  
C. indirect taxes  
D. direct taxes  

---

**Q43.** Taxes on goods and services are:

A. profit taxes  
B. indirect taxes  
C. direct taxes  
D. income taxes  

---

**Q44.** A plan of government revenue and expenditure is the:

A. receipt  
B. budget  
C. invoice  
D. balance sheet  

---

**Q45.** A budget where revenue equals expenditure is:

A. unbalanced  
B. surplus  
C. balanced  
D. deficit  

---

**Q46.** A budget where revenue exceeds expenditure is:

A. unbalanced  
B. deficit  
C. balanced  
D. surplus  

---

**Q47.** A budget where expenditure exceeds revenue is:

A. unbalanced  
B. balanced  
C. deficit  
D. surplus  

---

**Q48.** The increase in a country''s output of goods and services over time is:

A. recession  
B. inflation  
C. economic development  
D. economic growth  

---

**Q49.** The improvement in the standard of living and welfare of people is:

A. economic development  
B. economic growth  
C. inflation  
D. deflation  

---

**Q50.** The index that measures human welfare is the:

A. Human Development Index  
B. Consumer Price Index  
C. Price Index  
D. Stock Index  

---

**Q51.** Investment by foreign companies in a country is called:

A. foreign direct investment  
B. public investment  
C. portfolio investment  
D. domestic investment  

---

**Q52.** The international organisation that provides loans to countries in balance of payments difficulties is the:

A. IMF  
B. WTO  
C. UN  
D. World Bank  

---

**Q53.** The international organisation that finances development projects is the:

A. World Bank  
B. UN  
C. IMF  
D. WTO  

---

**Q54.** The economic community of Central African states is:

A. ECCAS  
B. COMESA  
C. SADC  
D. ECOWAS  

---

**Q55.** The total value of goods and services produced in a country in a year is the:

A. national debt  
B. national income  
C. balance of trade  
D. money supply  

---

**Q56.** GDP stands for:

A. Gross Domestic Profit  
B. Gross Domestic Product  
C. Gross Development Plan  
D. General Domestic Product  

---

**Q57.** GNP stands for:

A. Gross National Profit  
B. General National Product  
C. Gross National Product  
D. Gross Net Product  

---

**Q58.** The three methods of measuring national income are income, output, and:

A. savings  
B. investment  
C. taxation  
D. expenditure  

---

**Q59.** Anything generally accepted as a medium of exchange is:

A. goods  
B. credit  
C. money  
D. services  

---

**Q60.** The total amount of money in circulation is the:

A. national income  
B. public debt  
C. balance of payments  
D. money supply  

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
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1'
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
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 1

## Structural Question Bank - Set 1

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

## SECTION 1: BASIC CONCEPTS

**Q1.** Basic concepts: Market case 1 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

![Demand and supply graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Basic concepts: Market case 2 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Basic concepts: Market case 3 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Basic concepts: Market case 4 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Basic concepts: Market case 5 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: DEMAND AND SUPPLY

**Q6.** Demand and supply: Market case 6 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Demand and supply: Market case 7 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Demand and supply: Market case 8 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Demand and supply: Market case 9 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Demand and supply: Market case 10 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: ELASTICITY

**Q11.** Elasticity: Market case 11 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Elasticity: Market case 12 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Elasticity: Market case 13 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Elasticity: Market case 14 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Elasticity: Market case 15 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: PRODUCTION AND COSTS

**Q16.** Production and costs: Market case 16 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Production and costs: Market case 17 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Production and costs: Market case 18 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Production and costs: Market case 19 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Production and costs: Market case 20 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: MARKET STRUCTURES

**Q21.** Market structures: Market case 21 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Market structures: Market case 22 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Market structures: Market case 23 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Market structures: Market case 24 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Market structures: Market case 25 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: NATIONAL INCOME

**Q26.** National income: Market case 26 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** National income: Market case 27 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** National income: Market case 28 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** National income: Market case 29 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** National income: Market case 30 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: MONEY AND BANKING

**Q31.** Money and banking: Market case 31 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Money and banking: Market case 32 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Money and banking: Market case 33 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Money and banking: Market case 34 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Money and banking: Market case 35 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: INTERNATIONAL TRADE

**Q36.** International trade: Market case 36 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** International trade: Market case 37 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** International trade: Market case 38 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** International trade: Market case 39 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** International trade: Market case 40 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---
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
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 2'
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
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 2',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 2

## Structural Question Bank - Set 2

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

## SECTION 1: BASIC CONCEPTS

**Q1.** Basic concepts: Market case 1 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Basic concepts: Market case 2 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Basic concepts: Market case 3 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Basic concepts: Market case 4 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Basic concepts: Market case 5 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

![Demand and supply graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: DEMAND AND SUPPLY

**Q6.** Demand and supply: Market case 6 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Demand and supply: Market case 7 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Demand and supply: Market case 8 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Demand and supply: Market case 9 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Demand and supply: Market case 10 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: ELASTICITY

**Q11.** Elasticity: Market case 11 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Elasticity: Market case 12 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Elasticity: Market case 13 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Elasticity: Market case 14 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Elasticity: Market case 15 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: PRODUCTION AND COSTS

**Q16.** Production and costs: Market case 16 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Production and costs: Market case 17 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Production and costs: Market case 18 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Production and costs: Market case 19 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Production and costs: Market case 20 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: MARKET STRUCTURES

**Q21.** Market structures: Market case 21 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Market structures: Market case 22 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Market structures: Market case 23 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Market structures: Market case 24 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Market structures: Market case 25 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: NATIONAL INCOME

**Q26.** National income: Market case 26 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** National income: Market case 27 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** National income: Market case 28 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** National income: Market case 29 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** National income: Market case 30 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: MONEY AND BANKING

**Q31.** Money and banking: Market case 31 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Money and banking: Market case 32 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Money and banking: Market case 33 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Money and banking: Market case 34 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Money and banking: Market case 35 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: INTERNATIONAL TRADE

**Q36.** International trade: Market case 36 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** International trade: Market case 37 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** International trade: Market case 38 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** International trade: Market case 39 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** International trade: Market case 40 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---
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
  where title = 'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 3'
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
  'CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 3',
  'english',
  'advanced',
  array['lower_sixth', 'upper_sixth']::text[],
  array['general', 'science', 'arts', 'commercial', 'technical', 'a_science', 'a_arts', 'a_commercial', 'a_technical']::text[],
  'published',
  '# CAMEROON GCE ADVANCED LEVEL ECONOMICS P2 SET 3

## Structural Question Bank - Set 3

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

## SECTION 1: BASIC CONCEPTS

**Q1.** Basic concepts: Market case 1 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

![Demand and supply graph](/paper-diagrams/economics-demand-supply.svg)

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q2.** Basic concepts: Market case 2 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q3.** Basic concepts: Market case 3 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q4.** Basic concepts: Market case 4 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q5.** Basic concepts: Market case 5 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse basic concepts using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 2: DEMAND AND SUPPLY

**Q6.** Demand and supply: Market case 6 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q7.** Demand and supply: Market case 7 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q8.** Demand and supply: Market case 8 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q9.** Demand and supply: Market case 9 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q10.** Demand and supply: Market case 10 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse demand and supply using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 3: ELASTICITY

**Q11.** Elasticity: Market case 11 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q12.** Elasticity: Market case 12 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q13.** Elasticity: Market case 13 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q14.** Elasticity: Market case 14 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q15.** Elasticity: Market case 15 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse elasticity using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 4: PRODUCTION AND COSTS

**Q16.** Production and costs: Market case 16 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q17.** Production and costs: Market case 17 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q18.** Production and costs: Market case 18 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q19.** Production and costs: Market case 19 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q20.** Production and costs: Market case 20 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse production and costs using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 5: MARKET STRUCTURES

**Q21.** Market structures: Market case 21 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q22.** Market structures: Market case 22 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q23.** Market structures: Market case 23 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q24.** Market structures: Market case 24 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q25.** Market structures: Market case 25 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse market structures using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 6: NATIONAL INCOME

**Q26.** National income: Market case 26 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q27.** National income: Market case 27 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q28.** National income: Market case 28 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q29.** National income: Market case 29 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q30.** National income: Market case 30 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse national income using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 7: MONEY AND BANKING

**Q31.** Money and banking: Market case 31 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q32.** Money and banking: Market case 32 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q33.** Money and banking: Market case 33 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q34.** Money and banking: Market case 34 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q35.** Money and banking: Market case 35 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse money and banking using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

## SECTION 8: INTERNATIONAL TRADE

**Q36.** International trade: Market case 36 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q37.** International trade: Market case 37 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(8 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q38.** International trade: Market case 38 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(10 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q39.** International trade: Market case 39 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(12 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---

**Q40.** International trade: Market case 40 for a staple good changes after income, price, taxation, and supply conditions shift. Analyse international trade using diagrams and Cameroon examples.

(a) Explain the key concept, document, account, graph, or decision involved. *(4 marks)*

(b) Apply the concept to the case using calculations, entries, schedules, diagrams, or reasoned commercial analysis where relevant. *(6 marks)*

(c) Give two justified recommendations, controls, or conclusions based on your work. *(4 marks)*

---
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 4'
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
  'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 4',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 5'
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
  'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 5',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 6'
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
  'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 6',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 7'
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
  'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 7',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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
  order by case when level = 'ordinary' then 0 else 1 end, title
  limit 1
),
existing as (
  select id
  from public.course_documents
  where title = 'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 8'
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
  'CAMEROON GCE ORDINARY LEVEL ECONOMICS P2 SET 8',
  'english',
  'ordinary',
  array['form_3', 'form_4', 'form_5']::text[],
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