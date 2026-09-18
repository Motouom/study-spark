# Complete A-Level Computer Science Course — Cameroon GCE

## How to use this course

This course covers GCE A-Level Computer Science (subject code 0795) and ICT (0796). A-Level demands depth in programming, data structures, systems and networks. The practical paper tests real coding and application skills — build projects, do not just read.

## Unit 1: Programming (A-Level depth)

### Lesson 1.1: Structured programming

Data types and structures: arrays (1D, 2D), records, files (text, binary; sequential, random access). Control: selection (IF, CASE), iteration (FOR, WHILE, REPEAT). Subroutines: procedures and functions, parameters (by value vs by reference), scope (local/global), recursion (base case + recursive case — trace it).

**Worked example (recursion):** factorial(n): IF n ≤ 1 THEN RETURN 1 ELSE RETURN n × factorial(n − 1). Trace factorial(4): 4×f(3) → 4×3×f(2) → 4×3×2×f(1) → 24.

### Lesson 1.2: Algorithms and complexity

Searching: linear (O(n)) and binary (O(log n) — requires sorted data). Sorting: bubble, insertion, merge (O(n log n) — divide and conquer). Big-O notation: measure growth, not seconds. Algorithm design: top-down decomposition, pseudocode, trace tables. Standard algorithms to master: min/max, count, sum, average, find, reverse, frequency count.

### Lesson 1.3: Data structures

Stacks (LIFO — push/pop; used in undo, call stacks), queues (FIFO — enqueue/dequeue; used in scheduling), linked lists (dynamic insertion), trees (binary search trees: insert, search, traversal — in-order gives sorted output), hash tables (key → index; collisions). Choose the structure that fits the problem and justify the choice.

## Unit 2: Computer Systems

CPU architecture: control unit, ALU, registers (PC, MAR, MDR, ACC), buses; the fetch-decode-execute cycle; factors affecting performance (clock speed, cache, cores). Memory hierarchy: registers → cache → RAM → storage. Operating systems: process management, memory management, file systems, security, user interfaces. Language levels: machine, assembly, high-level; translators (assembler, compiler vs interpreter — differences and uses). IDEs: debugging tools, breakpoints, step-through.

## Unit 3: Data Representation (A-Level depth)

Number systems: binary, denary, hex conversions; two's complement for negative numbers (invert + 1); binary arithmetic (addition with carries, subtraction). Fixed and floating point: mantissa and exponent; precision vs range. Character codes: ASCII, Unicode (UTF-8). Graphics: bitmap (pixels, colour depth, resolution) vs vector (objects, scalable); file size calculations. Compression: lossless (RLE, dictionary) vs lossy (JPEG, MP3) — when each is appropriate. Encryption: symmetric (one key) vs asymmetric (public/private); hashing (passwords, integrity).

## Unit 4: Networks and the Web

Network models: client–server vs peer-to-peer; LAN/WAN; topologies; hardware (router, switch, hub, access point). Protocols: TCP/IP, HTTP/HTTPS, FTP, SMTP/POP3/IMAP; the DNS system; IP addressing (IPv4, IPv6; subnet basics). The web: HTML (structure), CSS (style), JavaScript (behaviour); client vs server side; cookies and sessions; web security (SQL injection, XSS — and defences: validation, parameterised queries, escaping). Databases on the web: normalisation (1NF, 2NF, 3NF), SQL (SELECT, JOIN, INSERT, UPDATE, DELETE), transactions and ACID basics.

## Unit 5: Systems Development

Life cycle: analysis (requirements), design (data flow diagrams, ER diagrams, UI sketches), implementation (coding, testing), deployment, maintenance. Testing: unit, integration, system, acceptance; test data (normal, boundary, erroneous). Documentation: user and technical. Evaluation: fitness for purpose, maintainability. Project work: choose a real problem (school records, market inventory), build it, document it — the practical exam rewards working software.

## Unit 6: Emerging Issues

AI and machine learning basics (training data, models, applications and limits); ethics of AI (bias, jobs, privacy); cybersecurity careers and practices; the digital economy in Cameroon (e-government, mobile money, startups); sustainability (energy use of data centres, e-waste).

## Practice Paper (GCE style)

1. Write a function to return the largest of three numbers. (5)
2. Trace a recursive sum function for n = 5. (5)
3. Sort 7, 3, 9, 1 using insertion sort — show each pass. (5)
4. Convert −13 to 8-bit two's complement. (3)
5. Explain the difference between a compiler and an interpreter. (4)
6. Describe the fetch-decode-execute cycle. (5)
7. Normalise a table to 3NF with an example. (8)
8. Write SQL to list all students with average ≥ 12, sorted by name. (5)
9. Compare lossy and lossless compression with one use of each. (4)
10. Design the ER diagram for a library system (books, members, loans). (8)

## Final exam strategy

- Programming marks come from working code: practise writing, not reading.
- Master the standard algorithms and their Big-O — MCQs test them directly.
- In design questions, justify every choice (structure, method, protocol).
- Build one substantial project before the exam — it cements everything.
