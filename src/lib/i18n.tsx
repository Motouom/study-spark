import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useState,
  type ReactNode,
} from "react";
import type { Language } from "@/lib/study-reference-data";

export type Locale = "en" | "fr";
export type TranslationKey = keyof typeof en;

const STORAGE_KEY = "studyspark.locale";

const en = {
  "common.accountPayments": "Account and payments",
  "common.advancedSearch": "Advanced search",
  "common.availableNow": "available now",
  "common.bookmarks": "Bookmarks",
  "common.cancel": "Cancel",
  "common.cheatsheets": "Cheatsheets",
  "common.clearFilters": "Clear filters",
  "common.clearSearch": "Clear search",
  "common.continue": "Continue",
  "common.courses": "Courses",
  "common.dashboard": "Dashboard",
  "common.email": "Email",
  "common.free": "Free",
  "common.language": "Language",
  "common.learningPath": "Learning path",
  "common.leaderboard": "Leaderboard",
  "common.loading": "Loading...",
  "common.notifications": "Notifications",
  "common.papers": "Papers",
  "common.premium": "Premium",
  "common.ready": "Ready",
  "common.read": "read",
  "common.search": "Search",
  "common.searchResults": "Search results",
  "common.settings": "Settings",
  "common.signOut": "Sign out",
  "common.subjects": "Subjects",
  "common.support": "Support",
  "common.viewPremium": "View Premium",
  "common.back": "Back",
  "common.topic": "Topic",
  "common.studied": "Studied",
  "common.courseTime": "Course time",
  "common.sheet": "Sheet",
  "common.focus": "Focus",
  "common.cheatsheet": "Cheatsheet",
  "common.quickRevision": "Quick revision",
  "common.clear": "Clear",
  "app.checkingProfile": "Checking your study profile...",
  "app.openingSignIn": "Opening sign in...",
  "app.openingProfileSetup": "Opening profile setup...",
  "app.searchPlaceholder": "Search...",
  "app.notificationsNew": "{count} new",
  "app.viewAllNotifications": "View all notifications",
  "app.renewEarly": "Renew early to keep uninterrupted access.",
  "app.renewPremium": "Renew Premium",
  "app.adminPanel": "Admin panel",
  "app.streak": "Streak",
  "app.navigation": "Navigation",
  "app.upgradeToPremium": "Upgrade to Premium",
  "commandMenu.searchPlaceholder": "Search topics, subjects, or pages...",
  "commandMenu.empty": "No results found.",
  "commandMenu.pages": "Pages",
  "commandMenu.topics": "Topics",
  "library.premiumBlurb": "This paper matches your profile and unlocks with Premium.",
  "library.unlock": "Unlock",
  "library.percentRead": "{percent}% read",
  "library.readThrough": "Read through",
  "library.ready": "Ready",
  "library.protectedPaper": "Protected structural paper",
  "document.backCourses": "My courses",
  "document.backTopics": "My topics",
  "document.backCheatsheets": "My cheatsheets",
  "document.kindCourse": "Course lesson",
  "document.kindTextbook": "Textbook chapter",
  "document.kindCheatsheet": "Revision cheatsheet",
  "document.kindPaper": "Protected paper",
  "document.fallbackTitle": "Course document",
  "document.loadError": "Document could not be loaded: {error}",
  "document.loading": "Loading protected document...",
  "document.unavailable": "Document unavailable",
  "document.unavailableDescription":
    "This document is not published or does not match your current class, series, language, and subjects.",
  "document.premiumCourse": "Premium course",
  "document.premiumTextbook": "Premium textbook",
  "document.premiumPaper": "Premium paper",
  "document.lockedDescription":
    "This {kind} matches your class, series, and subjects, but it is locked on the Free plan. Free learners can open only the first preview papers.",
  "document.backTo": "Back to {label}",
  "document.preparing": "Preparing protected {kind}...",
  "document.startQuestionFirst": "Start this question first, then mark it passed or failed.",
  "document.saveQuestionError": "Could not save question progress.",
  "document.saveTopicError": "Could not save topic progress.",
  "document.reportTitle": "Report a content issue",
  "document.reportDescription":
    "Tell admins about wrong answers, broken formatting, metadata mistakes, or missing solutions.",
  "document.closeReport": "Close report",
  "document.reportIssue": "Report issue",
  "document.issueType": "Issue type",
  "document.issueContentError": "Content error",
  "document.issueFormatting": "Formatting",
  "document.issueWrongMetadata": "Wrong metadata",
  "document.issueMissingSolution": "Missing solution",
  "document.issueCopyright": "Copyright concern",
  "document.issueOther": "Other",
  "document.questionLabel": "Question",
  "document.questionPlaceholder": "Example: 4",
  "document.topicSection": "Topic or section",
  "document.optional": "Optional",
  "document.reportBodyPlaceholder": "Describe what is wrong so an admin can fix it.",
  "document.sending": "Sending...",
  "document.sendReport": "Send report",
  "document.reportNotConfigured": "Content reporting is not configured yet.",
  "document.reportThanks": "Thanks. StudySpark admins will review this content issue.",
  "document.reportSendError": "Could not send this report.",
  "document.courseContents": "Course contents",
  "document.units": "{count} units",
  "document.readingProgress": "Reading progress",
  "document.topicUnderstanding": "Topic understanding",
  "document.markEachTopic": "Mark each {kind} beside its heading",
  "document.topicUnderstandingDescription":
    "Understood and review marks now sit directly inside the content where you study.",
  "document.understood": "Understood",
  "document.review": "Review",
  "document.unmarked": "Unmarked",
  "document.needReview": "Need review",
  "document.studySession": "Study session",
  "document.trackQuietly": "Track this {kind} quietly",
  "document.trackDescription":
    "StudySpark tracks reading time, scroll depth, and useful checkpoints for {title}.",
  "document.time": "Time",
  "document.read": "Read",
  "document.saved": "Saved",
  "document.iUnderstandThis": "I understand this",
  "document.bookmark": "Bookmark",
  "document.resumeAt": "Resume at {percent}%",
  "document.savedConfirmation": "Saved. This {kind} now counts toward progress.",
  "document.saveCheckpointError": "Could not save this checkpoint.",
  "document.notMarked": "Not marked",
  "document.start": "Start",
  "document.started": "Started",
  "document.passed": "Passed",
  "document.failed": "Failed",
  "dashboard.analyticsTitle": "Premium progress analytics",
  "dashboard.analyticsDescription":
    "Upgrade to unlock streaks, pass rate, timing, mastery, and your personalized learning path.",
  "dashboard.avgReadDepth": "Learning progress",
  "dashboard.bookmarksHint": "bookmarks",
  "dashboard.continueReading": "Continue reading",
  "dashboard.currentStreak": "Current streak",
  "dashboard.dailyGoal": "Today's goal",
  "dashboard.dailyGoalHint": "5 marked actions",
  "dashboard.learningActionsHint": "questions/topics marked",
  "dashboard.noPaper": "No published paper is available for your profile yet.",
  "dashboard.openLibrary": "Open paper library",
  "dashboard.paperActivity": "Recent learning activity",
  "dashboard.paperActivityDescription":
    "Your latest passed, failed, understood, and review marks. Scroll depth is only context.",
  "dashboard.papersOpened": "Questions marked",
  "dashboard.questionsMarkedHint": "passed or failed",
  "dashboard.readThrough": "read through",
  "dashboard.recommendedPaper": "Recommended paper",
  "dashboard.reviewMarks": "review marks",
  "dashboard.startReading": "Start reading",
  "dashboard.startToday": "start today",
  "dashboard.studySignals": "Study signals",
  "dashboard.studySignalsDescription": "Useful marks you add while studying.",
  "dashboard.studyTime": "Study time",
  "dashboard.topicsMarked": "Topics marked",
  "dashboard.topicsMarkedHint": "understood or review",
  "dashboard.weeklyPerformance": "Weekly performance",
  "dashboard.weeklyPerformanceHint": "Daily study minutes",
  "dashboard.masteryBySubject": "Mastery by subject",
  "dashboard.masteryBySubjectHint": "Question and topic marks",
  "dashboard.noSessionsYet": "No study sessions yet",
  "dashboard.studySessions": "study sessions",
  "dashboard.weeklyEmpty": "Study for a few minutes to see your weekly trend.",
  "dashboard.masteryEmpty": "Your subject mastery will appear here once you start studying.",
  "dashboard.whereLeftOff": "Continue where you left off",
  "dashboard.learningActivity": "Learning activity",
  "dashboard.study": "Study",
  "dashboard.passed": "passed",
  "dashboard.failed": "failed",
  "dashboard.understood": "understood",
  "dashboard.needsReview": "needs review",
  "dashboard.buildProgress":
    "Open a paper, mark questions, bookmark, and add review points to build your progress.",
  "dashboard.passedQuestions": "Passed questions",
  "dashboard.failedQuestions": "Failed questions",
  "dashboard.topicsUnderstood": "Topics understood",
  "dashboard.topicsNeedReview": "Topics need review",
  "library.descriptionFallback": "Your class and series",
  "library.empty": "No papers match your filters.",
  "library.protectedNotice":
    "Questions are opened inside the app only. Copying, downloads, and bulk viewing are disabled in the student flow.",
  "library.searchPlaceholder": "Search all papers by title, subject, or series...",
  "library.searchResults": "Search results",
  "library.noSearchResults": 'No papers match "{query}".',
  "library.title": "Papers",
  "courses.continueCourse": "Continue course",
  "courses.continueLearning": "Continue learning",
  "courses.description":
    "Topic-by-topic GCE lessons with worked examples and exam technique — built for your class and series.",
  "courses.emptyTitle": "No courses for your profile yet",
  "courses.emptyDescription":
    "Complete subject courses will appear here once they are published for your class, series, and subjects. Check back soon, or keep practising with papers in the meantime.",
  "courses.premiumDescription":
    "Upgrade to access full subject courses, lesson sequences, and guided revision.",
  "courses.premiumTitle": "Premium courses",
  "courses.searchPlaceholder": "Search course topics, subject, or lesson...",
  "courses.noSearchResults": 'No course topics match "{query}".',
  "courses.title": "Courses",
  "cheatsheets.description":
    "Fast GCE revision cards for formulas, definitions, exam traps, and last-minute practice.",
  "cheatsheets.emptyDescription":
    "Cheatsheets will appear here when revision cards match your class, series, language, and selected subjects.",
  "cheatsheets.emptyTitle": "No cheatsheets for your profile yet",
  "cheatsheets.premiumDescription":
    "Upgrade to access focused revision cards across your selected subjects.",
  "cheatsheets.premiumTitle": "Premium cheatsheets",
  "cheatsheets.searchPlaceholder": "Search cheatsheet topics, formulas, or subject...",
  "cheatsheets.noSearchResults": 'No cheatsheets match "{query}".',
  "cheatsheets.title": "Cheatsheets",
  "pricing.badge": "Free where it matters",
  "pricing.title": "Simple GCE revision pricing. Fair.",
  "pricing.description":
    "Free learners can preview selected Cameroon GCE papers. Premium unlocks protected O Level and A Level papers, topic courses, exam cheatsheets, AI-guided revision, tutoring, and deeper analytics.",
  "pricing.monthly": "Monthly",
  "pricing.yearly": "Yearly",
  "pricing.forever": "forever",
  "pricing.month": "month",
  "pricing.freePlanDescription": "Preview the platform before upgrading. No card needed.",
  "pricing.getStarted": "Get started",
  "pricing.recommended": "Recommended",
  "pricing.billedMonthly": "Billed monthly",
  "pricing.billedYearly": "Billed yearly",
  "pricing.payWithFapshi": "Pay with Fapshi",
  "pricing.paymentConfirmed": "Payment confirmed. Premium is now active on your account.",
  "pricing.paymentPending":
    "Payment is still pending. We will unlock Premium as soon as Fapshi confirms it.",
  "pricing.paymentNotConfirmed":
    "Payment has not been confirmed yet. If you paid, wait a moment and refresh.",
  "pricing.paymentCheckFailed": "Payment could not be checked right now. Please try again.",
  "pricing.paymentStartFailed":
    "Checkout could not be started right now. Please try again in a moment.",
  "pricing.feature": "Feature",
  "pricing.commonQuestions": "Common questions",
  "pricing.footer": "Made for Cameroon students.",
  "terms.title": "Terms of Service",
  "terms.introduction":
    "These Terms of Service govern your use of StudySpark, a platform for Cameroon GCE, BEPC, Probatoire, and Baccalaureat revision. By accessing or using the service, you agree to these terms. Effective date: 22 September 2025. Contact: support@studyspark.cm.",
  "terms.effective":
    "Effective 22 September 2025 · For Cameroon learners · Contact support@studyspark.cm",
  "terms.sections.1": "1. Acceptance and who can use StudySpark",
  "terms.sections.1.desc":
    "You must be at least 13 years old or have parent/guardian consent. StudySpark is built for learners in Cameroon preparing for GCE O Level, A Level, BEPC, Probatoire, Baccalauréat, and related series (C, D, A, TI, etc.). By creating an account or signing in with Google, email magic link, or password, you agree to these Terms and to our Privacy and Refund policies.",
  "terms.sections.2": "2. Accounts and security",
  "terms.sections.2.desc":
    "You are responsible for keeping your sign-in method confidential and for all activity under your account. Use a strong password, do not share codes, and notify us via the Support page if you suspect unauthorized access. We may ask you to verify email or re-authenticate before sensitive changes.",
  "terms.sections.3": "3. Acceptable use and protected content",
  "terms.sections.3.desc":
    "All papers, courses, cheatsheets, and AI-generated guidance are delivered in-app only. Copying, bulk scraping, downloading, PDF export, screen-recording for redistribution, or bypassing access controls is prohibited. Free accounts may preview 1–2 selected papers; unlimited protected papers, courses, cheatsheets, AI learning paths, and advanced search require Premium. We may rate-limit or suspend accounts that attempt to extract protected content.",
  "terms.sections.4": "4. Premium, pricing, and Fapshi payments",
  "terms.sections.4.desc":
    "Premium is FCFA 1,500 per month or FCFA 12,000 per year (billed as FCFA 1,500 × 12, showing ~33% saving). The only supported payment method is Fapshi at checkout (https://www.fapshi.com). Depending on Fapshi availability, you may pay with MTN Mobile Money, Orange Money, or other Fapshi-supported channels in Cameroon. No card is required. After you are redirected to Fapshi and pay, StudySpark confirms the transaction via Fapshi verification API and webhook. Premium activates only when Fapshi reports successful with the matching amount and transaction ID, and remains active until premiumUntil. Renewal is manual — we do not auto-charge; you start a new Fapshi checkout when you want to renew. Prices are shown in FCFA and may be updated with notice before renewal.",
  "terms.sections.5": "5. Intellectual property",
  "terms.sections.5.desc":
    "StudySpark content, including structured papers, topic courses, and cheatsheets, is protected by copyright and belongs to StudySpark or its licensors. You receive a personal, non-transferable licence to view content in-app for study purposes. You may not reproduce, distribute, sell, or create derivative works without explicit permission.",
  "terms.sections.6": "6. AI and analytics disclaimer",
  "terms.sections.6.desc":
    "AI features (personalized learning path, progress insight, paper formatting) use aggregated study signals — e.g., weakest subjects, counts of passed/failed/understood/review marks, and difficulty ranking — sent to our AI provider (OpenRouter/Gemini-compatible). We do not send full paper text or your email/name to the AI provider. AI output is assistive and may be inaccurate; always verify with your syllabus and teacher. If AI is unavailable, StudySpark falls back to a deterministic plan. Usage analytics via Vercel Analytics is anonymized: we track aggregate events (landing_view, paper_opened, checkpoint_marked, ai_action_used, checkout_started, etc.) without paper content, email, or user ID, debounced to avoid double counting.",
  "terms.sections.7": "7. Termination and liability",
  "terms.sections.7.desc":
    "We may suspend or terminate accounts for violation of these Terms, abuse of protected content, or fraud. StudySpark is provided on an as is basis without warranties. To the extent permitted by Cameroonian law, we exclude implied warranties of merchantability and fitness. Our liability is limited to the amount you paid for Premium in the last 3 months. We are not liable for exam outcomes, network interruptions, or Fapshi service delays.",
  "terms.sections.8": "8. Governing law and changes",
  "terms.sections.8.desc":
    "These Terms are governed by the laws of Cameroon. Disputes are subject to the courts of Yaoundé, Cameroon. We may update these Terms and will post the new effective date on this page; continued use after changes means acceptance. For questions, contact support@studyspark.cm or use the Support page.",
  "privacy.title": "Privacy Policy",
  "privacy.introduction":
    "This Privacy Policy explains how StudySpark collects, uses, shares, and protects your information. It covers account data, learning progress, analytics, and AI usage. Effective date: 22 September 2025. Contact: support@studyspark.cm.",
  "privacy.effective": "Effective 22 September 2025 · For Cameroon learners",
  "privacy.sections.1": "1. Information we collect",
  "privacy.sections.1.desc":
    "Account: email, display name, auth provider (Google/magic link/password), and Supabase user ID. Profile: language (English/French), education system (GCE/Francophone), class level, series, subjects, country/region/city, and optional browser location verification (latitude/longitude/timestamp) for leaderboards if you allow it. Learning progress: papers opened, scroll-depth context, structural questions marked as passed/failed, topic marks as understood/review/bookmark, streaks and freezes, study sessions and minutes, and paper completion signals. Preferences: theme and locale stored in localStorage. Payment metadata: billing interval, amount in FCFA, status, provider transaction ID, and timestamps — we do not store Mobile Money numbers, cards, or bank details; those are handled by Fapshi.",
  "privacy.sections.2": "2. How we use your information",
  "privacy.sections.2.desc":
    "We use your profile to filter papers, courses, and cheatsheets to your class/series/subjects and language. Learning progress powers your dashboard (streak, pass rate, mastery by subject, weekly performance), learning path, search ranking, and Premium gating. We may use anonymized, aggregated data to improve content coverage and reliability. We never sell your personal data.",
  "privacy.sections.3": "3. AI usage",
  "privacy.sections.3.desc":
    "When you request a learning path or progress insight, we send aggregated, non-identifying study signals to our AI provider (OpenRouter/Gemini-compatible via server-side keys): e.g., weakest subjects, difficulty ranking with counts of failed/slow questions, and next recommended papers. We do not send full paper content, emails, or names. The AI returns a 7-day plan or insight; if the provider times out or returns invalid JSON, we show a deterministic fallback built from your real signals. AI output may contain errors — treat it as study guidance, not guaranteed exam advice.",
  "privacy.sections.4": "4. Analytics",
  "privacy.sections.4.desc":
    "We use Vercel Analytics custom events, anonymized and debounced (1200 ms): landing_view, signup_start/complete, paper_opened (subject/level/locked only), checkpoint_marked, ai_action_used, search_used, premium_view, checkout_started, payment_success/failure/pending, and signin_error. No paper markdown, question text, document IDs, email, name, user ID, auth tokens, or payment secrets are sent. Analytics never blocks the app and is used only in aggregate to measure funnel and reliability.",
  "privacy.sections.5": "5. Third-party services",
  "privacy.sections.5.desc":
    "Fapshi (https://www.fapshi.com) processes all Premium payments; when you pay, Fapshi receives your phone/channel and transaction data under its own privacy policy and confirms via API/webhook with a secret. Supabase provides authentication and database storage (profile, progress, payments) under its privacy/security commitments. Vercel hosts the app and analytics. Our AI provider (OpenRouter/Gemini-compatible) processes only aggregated study prompts server-side.",
  "privacy.sections.6": "6. Retention, rights, and deletion",
  "privacy.sections.6.desc":
    "We retain your data while your account is active. You may request access, correction, or deletion at support@studyspark.cm or via the Support page. Deleting your account in Settings (type delete to confirm) removes your Supabase auth user and cascades to profile/progress via database rules. Payment transaction records may be retained for legal/accounting purposes. We handle requests within 30 days, and aim to reply to payment/refund queries within 48 hours. Storage follows Cameroonian data protection guidance and Supabase retention policies.",
  "privacy.sections.7": "7. Cookies, local storage, security, and children",
  "privacy.sections.7.desc":
    "We use browser localStorage for locale (studyspark.locale) and theme, plus Supabase auth cookies/tokens for sign-in. We do not use third-party advertising cookies. All Fapshi and Supabase secrets are server-side; client calls are authenticated with your Supabase access token. Transport is HTTPS. StudySpark is for ages 13+; we do not knowingly collect data from children under 13 without verifiable parental consent. If you believe a child provided data, contact us to remove it.",
  "refund.title": "Refund & Cancellation Policy",
  "refund.introduction":
    "This policy explains pricing, the sole payment method (Fapshi), cancellation, and refunds for StudySpark Premium. Effective date: 22 September 2025. Contact: support@studyspark.cm.",
  "refund.effective": "Effective 22 September 2025 · Premium via Fapshi · FCFA",
  "refund.sections.1": "1. Pricing and supported payment method",
  "refund.sections.1.desc":
    "Premium is FCFA 1,500/month (billed monthly) or FCFA 12,000/year (billed yearly — ~FCFA 1,000/month equivalent). The only supported payment method is Fapshi checkout. At checkout you are redirected to Fapshi; depending on what Fapshi offers in Cameroon you may see MTN Mobile Money, Orange Money, or other local channels. Prices are in FCFA. We verify every payment server-side via Fapshi status API and webhook (secret-verified) and only activate Premium when Fapshi reports successful for the matching amount and transaction ID. If Fapshi is pending, we poll briefly and show payment_pending; you can retry from Pricing or Support.",
  "refund.sections.2": "2. Cancellation",
  "refund.sections.2.desc":
    "Premium is not auto-renewed by us — you start a new Fapshi checkout when you want to extend. If you do not renew, your plan stays Premium until premiumUntil then returns to Free. To stop any future renewal attempt, simply do not start a new checkout. For help or to request deactivation before expiry, contact Support via the Support page or support@studyspark.cm with your transaction reference; we handle deactivation requests within 48 hours. No partial refunds for unused days after activation.",
  "refund.sections.3": "3. 7-day refund window",
  "refund.sections.3.desc":
    "If Premium does not meet your expectations, you may request a refund within 7 days of the initial purchase or of a renewal payment. Submit via the Support page with your email, transaction ID (shown in Settings → Payment history), and reason. We forward the request to Fapshi; eligibility, deductions, and timing are determined by Fapshi and the underlying Mobile Money provider. Refunds, when approved, go back via the original Fapshi channel.",
  "refund.sections.4": "4. Fapshi role and verification",
  "refund.sections.4.desc":
    "Fapshi is the payment processor operating in Cameroon (https://www.fapshi.com). StudySpark does not store your Mobile Money number, card, or bank details. Fapshi handles collection, confirmation, and refunds under its policies. We verify each transaction server-side with the provider transaction ID and amount check before extending premiumUntil. Webhooks are verified with FAPSHI_WEBHOOK_SECRET.",
  "refund.sections.5": "5. No refunds for",
  "refund.sections.5.desc":
    "No refunds after the 7-day window; for protected papers/courses/cheatsheets already accessed in the current period when the service was delivered as described; for voluntary downgrade from Premium to Free without a qualifying refund request; or for failed payments due to insufficient funds, wrong phone, or provider decline (failed/expired payments can be retried from Pricing or Settings → Payment history).",
  "refund.sections.6": "6. Contact and timelines",
  "refund.sections.6.desc":
    "For any payment, cancellation, or refund question, use the Support page or email support@studyspark.cm. Include your transaction reference if available — we attach your plan/level/subjects automatically in the Support form to help faster. We aim to reply to refund/cancellation requests within 48 hours and to resolve payment verifications within 1–2 business days, subject to Fapshi/provider processing times.",
  "pricing.feature.previewPapers": "1-2 free preview papers",
  "pricing.feature.unlimitedPapers": "Unlimited protected papers",
  "pricing.feature.protectedPapers": "Protected in-app papers",
  "pricing.feature.answers": "Free answers & explanations",
  "pricing.feature.practiceMode": "Practice mode",
  "pricing.feature.accessControl": "Class and series access control",
  "pricing.feature.streaks": "Daily streaks & basic stats",
  "pricing.feature.aiPaths": "AI-personalized learning paths",
  "pricing.feature.courses": "Full courses & video lessons",
  "pricing.feature.cheatsheets": "Exam cheatsheets",
  "pricing.feature.search": "Advanced full-text search",
  "pricing.feature.freezes": "Streak freezes (1/week)",
  "pricing.feature.support": "Priority support",
  "pricing.faq.free.q": "Can students use the basics free?",
  "pricing.faq.free.a":
    "Yes. Free learners can open one or two preview papers before upgrading. The full protected GCE learner experience is Premium.",
  "pricing.faq.cancel.q": "Can I cancel anytime?",
  "pricing.faq.cancel.a": "Of course. Cancel from settings — no calls, no friction.",
  "pricing.faq.mobileMoney.q": "Do you support mobile money?",
  "pricing.faq.mobileMoney.a":
    "Payments are built around Cameroon-friendly FCFA checkout through Fapshi, with mobile money support depending on the available Fapshi channels.",
  "pricing.faq.discount.q": "Is there a student discount?",
  "pricing.faq.discount.a":
    "Premium is already priced for students in Cameroon. Schools and study groups can request bulk pricing.",
  "notifications.description": "Account reminders and paper progress updates will appear here.",
  "notifications.markAllRead": "Mark all read",
  "notifications.loadError": "Notifications could not be loaded.",
  "notifications.loading": "Checking your latest learner updates...",
  "notifications.all": "All",
  "notifications.content": "Papers",
  "notifications.progress": "Progress",
  "notifications.streak": "Streaks",
  "notifications.membership": "Account",
  "notifications.new": "New",
  "notifications.markRead": "Mark read",
  "notifications.emptyGroupTitle": "No notifications in this group",
  "notifications.emptyGroupDescription":
    "Try another category or check back after your next study activity.",
  "notifications.emptyTitle": "No notifications yet",
  "notifications.emptyDescription":
    "You will only see real profile, paper, and account updates here.",
  "notifications.generated.newPaper.title": "New paper ready",
  "notifications.generated.newPaper.body": "{title} is available for {subject}.",
  "notifications.generated.weakSubject.title": "Weak subject reminder",
  "notifications.generated.weakSubject.body":
    "{subject} is at {score}% mastery. Revisit failed structural questions.",
  "notifications.generated.streak.title": "Restart your streak",
  "notifications.generated.streak.body":
    "Mark one structural question today to start a new streak.",
  "notifications.generated.premiumEnds.title": "Premium ends soon",
  "notifications.generated.premiumEndsToday.body":
    "Your Premium access ends today. Renew early if you want uninterrupted access.",
  "notifications.generated.premiumEnds.body":
    "Your Premium access ends in {days} day(s). Renew early if you want uninterrupted access.",
  "notifications.generated.paymentFailed.title": "Payment needs attention",
  "notifications.generated.paymentFailed.body":
    "Your last Premium payment did not complete. You can retry from the pricing page.",
  "settings.accountDeletion": "Account deletion",
  "settings.appearance": "Appearance",
  "settings.curriculumPath": "Curriculum path",
  "settings.displayName": "Display name",
  "settings.emailHint": "Managed by your sign-in provider",
  "settings.languageHint": "Controls interface and support messaging language",
  "settings.profile": "Profile",
  "settings.profileDescription": "Customize your learner identity and access.",
  "settings.saveProfile": "Save profile",
  "settings.title": "Settings",
  "settings.description": "Manage your profile, exam prep, and preferences.",
  "signin.agreement": "By continuing you agree to our terms and privacy policy.",
  "signin.continueEmail": "Continue with email",
  "signin.continueGoogle": "Continue with Google",
  "signin.emailAddress": "Email address",
  "signin.emailPlaceholder": "you@school.edu",
  "signin.magicLinkSending": "Sending magic link...",
  "signin.magicLinkSent": "Check your inbox for the sign-in link.",
  "signin.emailFailed":
    "Email sign-in failed. If magic links are disabled in your Supabase project, use the password option below.",
  "signin.passwordPlaceholder": "Password (min. 6 characters)",
  "signin.passwordWorking": "Working...",
  "signin.createPasswordAccount": "Create account with password",
  "signin.signInPassword": "Sign in with password",
  "signin.noAccount": "No account yet? Create one",
  "signin.hasAccount": "Already have an account? Sign in",
  "signin.accountCreated":
    "Account created. If email confirmation is required, check your inbox — otherwise you are signed in.",
  "signin.signedIn": "Signed in. Opening your dashboard...",
  "signin.confirmEmail":
    "Please confirm your email first — check your inbox for the confirmation link, then sign in again.",
  "signin.passwordFailed": "Password sign-in failed.",
  "signin.googleFailed": "Google sign-in failed.",
  "signin.notConfigured": "Supabase is not configured in this environment.",
  "signin.newHere": "New here?",
  "signin.brandBadge": "Synced & secure",
  "signin.brandText":
    "Sign in, create your study profile, and unlock only the structural papers that match your class, series, and subjects.",
  "signin.openingDashboard": "Opening your dashboard...",
  "signin.openingGoogle": "Opening Google...",
  "signin.openingProfile": "Opening profile setup...",
  "signin.passwordSummary": "Or sign in with email and password",
  "signin.setupProfile": "Set up your profile",
  "signin.subtitle":
    "Sign in to keep your streak, topic practice, and progress synced across all your devices.",
  "signin.title": "Welcome back.",
  "signin.or": "or",
  "onboarding.welcomeTitle": "Welcome to StudySpark",
  "onboarding.welcomeDescription": "Let's set up your study space. Takes 30 seconds.",
  "onboarding.nameLabel": "What should we call you?",
  "onboarding.namePlaceholder": "Your first name",
  "onboarding.languageTitle": "Choose your study language",
  "onboarding.languageDescription":
    "Choose your interface language and the Cameroon curriculum you follow.",
  "onboarding.englishInterface": "English interface",
  "onboarding.frenchInterface": "French interface",
  "onboarding.curriculumPath": "Curriculum path",
  "onboarding.gceHint": "Forms, O-Level, Lower Sixth, Upper Sixth",
  "onboarding.frHint": "Sixième to Terminale, BEPC, Probatoire, Bac",
  "onboarding.locationTitle": "Add your location",
  "onboarding.locationDescription":
    "This places you in the right country, regional, and local leaderboard.",
  "onboarding.country": "Country",
  "onboarding.region": "Region",
  "onboarding.city": "Town or city",
  "onboarding.cityPlaceholder": "Example: Douala, Yaounde, Buea",
  "onboarding.verifyLocation": "Verify with browser location",
  "onboarding.verifyingLocation": "Verifying location...",
  "onboarding.locationVerified": "Location verified",
  "onboarding.locationVerifiedHint":
    "Your device location was captured for leaderboard verification.",
  "onboarding.classTitle": "Choose your class",
  "onboarding.classDescriptionGce": "Select Ordinary or Advanced Level, then your class.",
  "onboarding.classDescriptionFr": "Select your cycle (Collège or Lycée), then your class.",
  "onboarding.subjectTitleGce": "Pick your subjects",
  "onboarding.subjectTitleFr": "Choisis ta filière",
  "onboarding.subjectDescriptionGce":
    "Choose your series and the subjects you want on your dashboard.",
  "onboarding.subjectDescriptionFr": "Choisis ta série et les matières pour ton tableau de bord.",
  "onboarding.useAnotherAccount": "Use another account",
  "onboarding.getStarted": "Get started",
  "onboarding.saving": "Saving...",
  "onboarding.selected": "selected",
  "support.title": "Support",
  "support.description": "Priority support is available to every signed-in learner.",
  "support.contactTitle": "Contact support",
  "support.categoryLabel": "What is your issue about?",
  "support.messageLabel": "Describe the problem",
  "support.messagePlaceholder": "Tell us what happened, what you expected, and what you tried...",
  "support.contextNote":
    "This information will be attached to help us respond faster. No private keys or tokens are included.",
  "support.sendEmail": "Send via email",
  "support.sendWhatsApp": "Send via WhatsApp",
  "support.sentNote":
    "Your message app should have opened with the request pre-filled. We reply within 24 hours.",
  "support.directEmail": "No app? Write directly to",
  "support.expectTitle": "What to expect",
  "support.expect1": "Login and Premium access issues: we aim to respond within 24 hours.",
  "support.expect2":
    "Payment problems: include your transaction reference if you have one — we resolve most within 48 hours.",
  "support.expect3": "Content issues (wrong paper, missing subject): reviewed within 3–5 days.",
  "support.quickLinksTitle": "Common help topics",
  "support.linkPayment": "Payment and Premium upgrade",
  "support.linkAccount": "Account and profile settings",
  "support.linkPapers": "Browse available papers",
  "support.linkSignIn": "Sign-in help",
  "support.subjectPlaceholder": "Subject",
  "support.sendRequest": "Send request",
  "support.emailOpened":
    "Your email app should have opened with the request pre-filled. We reply within 24 hours.",
  "support.noEmailApp": "No email app? Write to us directly at",
  "support.autoDetails":
    "Your plan, level, and subjects are attached automatically so we can help faster.",
} as const;

const fr: Partial<Record<TranslationKey, string>> = {
  "common.accountPayments": "Compte et paiements",
  "common.advancedSearch": "Recherche avancée",
  "common.availableNow": "disponibles maintenant",
  "common.bookmarks": "Favoris",
  "common.cancel": "Annuler",
  "common.cheatsheets": "Fiches de révision",
  "common.clearFilters": "Effacer les filtres",
  "common.clearSearch": "Effacer la recherche",
  "common.continue": "Continuer",
  "common.courses": "Cours",
  "common.dashboard": "Tableau de bord",
  "common.email": "E-mail",
  "common.free": "Gratuit",
  "common.language": "Langue",
  "common.learningPath": "Parcours d'apprentissage",
  "common.leaderboard": "Classement",
  "common.loading": "Chargement...",
  "common.notifications": "Notifications",
  "common.papers": "Épreuves",
  "common.premium": "Premium",
  "common.ready": "Prêt",
  "common.read": "lu",
  "common.search": "Rechercher",
  "common.searchResults": "Résultats de recherche",
  "common.settings": "Paramètres",
  "common.signOut": "Se déconnecter",
  "common.subjects": "Matières",
  "common.support": "Assistance",
  "common.viewPremium": "Voir Premium",
  "common.back": "Retour",
  "common.topic": "Thème",
  "common.studied": "Étudié",
  "common.courseTime": "Temps du cours",
  "common.sheet": "Fiche",
  "common.focus": "Objectif",
  "common.cheatsheet": "Fiche",
  "common.quickRevision": "Révision rapide",
  "common.clear": "Effacer",
  "app.checkingProfile": "Vérification de ton profil d'étude...",
  "app.openingSignIn": "Ouverture de la connexion...",
  "app.openingProfileSetup": "Ouverture de la configuration du profil...",
  "app.searchPlaceholder": "Rechercher...",
  "app.notificationsNew": "{count} nouveaux",
  "app.viewAllNotifications": "Voir toutes les notifications",
  "app.renewEarly": "Renouvelle tôt pour éviter une coupure.",
  "app.renewPremium": "Renouveler Premium",
  "app.adminPanel": "Panneau d'administration",
  "app.streak": "Série",
  "app.navigation": "Navigation",
  "app.upgradeToPremium": "Passer à Premium",
  "commandMenu.searchPlaceholder": "Rechercher des sujets, matières ou pages...",
  "commandMenu.empty": "Aucun résultat trouvé.",
  "commandMenu.pages": "Pages",
  "commandMenu.topics": "Sujets",
  "dashboard.analyticsTitle": "Analyses Premium de progression",
  "dashboard.analyticsDescription":
    "Passe à Premium pour débloquer les séries, le taux de réussite, le temps d'étude, la maîtrise et ton parcours personnalisé.",
  "dashboard.avgReadDepth": "Progression réelle",
  "dashboard.bookmarksHint": "favoris",
  "dashboard.continueReading": "Continuer la lecture",
  "dashboard.currentStreak": "Série actuelle",
  "dashboard.dailyGoal": "Objectif du jour",
  "dashboard.dailyGoalHint": "5 actions marquées",
  "dashboard.learningActionsHint": "questions/sujets marqués",
  "dashboard.noPaper": "Aucune épreuve publiée n'est encore disponible pour ton profil.",
  "dashboard.openLibrary": "Ouvrir les épreuves",
  "dashboard.paperActivity": "Activité récente",
  "dashboard.paperActivityDescription":
    "Tes dernières marques réussies, échouées, comprises et à revoir. Le défilement sert seulement de contexte.",
  "dashboard.papersOpened": "Questions marquées",
  "dashboard.questionsMarkedHint": "réussies ou échouées",
  "dashboard.readThrough": "lues jusqu'au bout",
  "dashboard.recommendedPaper": "Épreuve recommandée",
  "dashboard.reviewMarks": "points à revoir",
  "dashboard.startReading": "Commencer la lecture",
  "dashboard.startToday": "commence aujourd'hui",
  "dashboard.studySignals": "Signaux d'étude",
  "dashboard.studySignalsDescription": "Marques utiles ajoutées pendant ton étude.",
  "dashboard.studyTime": "Temps d'étude",
  "dashboard.topicsMarked": "Sujets marqués",
  "dashboard.topicsMarkedHint": "compris ou à revoir",
  "dashboard.weeklyPerformance": "Performance hebdomadaire",
  "dashboard.weeklyPerformanceHint": "Minutes étudiées par jour",
  "dashboard.masteryBySubject": "Maîtrise par matière",
  "dashboard.masteryBySubjectHint": "Questions et sujets marqués",
  "dashboard.noSessionsYet": "Aucune session pour le moment",
  "dashboard.studySessions": "sessions d'étude",
  "dashboard.weeklyEmpty": "Étudie quelques minutes pour voir ta tendance hebdomadaire.",
  "dashboard.masteryEmpty":
    "Ta maîtrise par matière apparaîtra ici quand tu commenceras à étudier.",
  "dashboard.whereLeftOff": "Reprendre là où tu t'es arrêté",
  "dashboard.learningActivity": "Activité d'apprentissage",
  "dashboard.study": "Étude",
  "dashboard.passed": "réussi",
  "dashboard.failed": "échoué",
  "dashboard.understood": "compris",
  "dashboard.needsReview": "à revoir",
  "dashboard.buildProgress":
    "Ouvre une épreuve, marque des questions, ajoute des favoris et des points à revoir pour construire ta progression.",
  "dashboard.passedQuestions": "Questions réussies",
  "dashboard.failedQuestions": "Questions échouées",
  "dashboard.topicsUnderstood": "Sujets compris",
  "dashboard.topicsNeedReview": "Sujets à revoir",
  "library.descriptionFallback": "Ta classe et ta série",
  "library.empty": "Aucune épreuve ne correspond à tes filtres.",
  "library.protectedNotice":
    "Les questions s'ouvrent uniquement dans l'application. La copie, les téléchargements et l'affichage massif sont désactivés pour les élèves.",
  "library.searchPlaceholder": "Rechercher une épreuve par titre, matière ou série...",
  "library.searchResults": "Résultats de recherche",
  "library.noSearchResults": 'Aucune épreuve ne correspond à "{query}".',
  "library.title": "Épreuves",
  "library.premiumBlurb": "Cette épreuve correspond à ton profil et se débloque avec Premium.",
  "library.unlock": "Débloquer",
  "library.percentRead": "{percent}% lu",
  "library.readThrough": "Terminée",
  "library.ready": "Prête",
  "library.protectedPaper": "Épreuve structurelle protégée",
  "document.backCourses": "Mes cours",
  "document.backTopics": "Mes épreuves",
  "document.backCheatsheets": "Mes fiches",
  "document.kindCourse": "Leçon de cours",
  "document.kindTextbook": "Chapitre de manuel",
  "document.kindCheatsheet": "Fiche de révision",
  "document.kindPaper": "Épreuve protégée",
  "document.fallbackTitle": "Document de cours",
  "document.loadError": "Le document n'a pas pu être chargé : {error}",
  "document.loading": "Chargement du document protégé...",
  "document.unavailable": "Document indisponible",
  "document.unavailableDescription":
    "Ce document n'est pas publié ou ne correspond pas à ta classe, ta série, ta langue et tes matières actuelles.",
  "document.premiumCourse": "Cours Premium",
  "document.premiumTextbook": "Manuel Premium",
  "document.premiumPaper": "Épreuve Premium",
  "document.lockedDescription":
    "Ce {kind} correspond à ta classe, ta série et tes matières, mais il est verrouillé sur le plan Gratuit. Les apprenants gratuits ne peuvent ouvrir que les premières épreuves d'aperçu.",
  "document.backTo": "Retour à {label}",
  "document.preparing": "Préparation du {kind} protégé...",
  "document.startQuestionFirst":
    "Commence d'abord cette question, puis marque-la comme réussie ou échouée.",
  "document.saveQuestionError": "Impossible d'enregistrer la progression de la question.",
  "document.saveTopicError": "Impossible d'enregistrer la progression du sujet.",
  "document.reportTitle": "Signaler un problème de contenu",
  "document.reportDescription":
    "Signale aux admins les mauvaises réponses, la mise en forme cassée, les erreurs de métadonnées ou les solutions manquantes.",
  "document.closeReport": "Fermer le signalement",
  "document.reportIssue": "Signaler un problème",
  "document.issueType": "Type de problème",
  "document.issueContentError": "Erreur de contenu",
  "document.issueFormatting": "Mise en forme",
  "document.issueWrongMetadata": "Métadonnées erronées",
  "document.issueMissingSolution": "Solution manquante",
  "document.issueCopyright": "Problème de droits d'auteur",
  "document.issueOther": "Autre",
  "document.questionLabel": "Question",
  "document.questionPlaceholder": "Exemple : 4",
  "document.topicSection": "Sujet ou section",
  "document.optional": "Facultatif",
  "document.reportBodyPlaceholder": "Décris ce qui ne va pas pour qu'un admin puisse le corriger.",
  "document.sending": "Envoi...",
  "document.sendReport": "Envoyer le signalement",
  "document.reportNotConfigured": "Le signalement de contenu n'est pas encore configuré.",
  "document.reportThanks": "Merci. Les admins de StudySpark examineront ce problème de contenu.",
  "document.reportSendError": "Impossible d'envoyer ce signalement.",
  "document.courseContents": "Contenu du cours",
  "document.units": "{count} unités",
  "document.readingProgress": "Progression de lecture",
  "document.topicUnderstanding": "Compréhension des sujets",
  "document.markEachTopic": "Marque chaque {kind} à côté de son titre",
  "document.topicUnderstandingDescription":
    "Les marques « Compris » et « À revoir » se trouvent désormais directement dans le contenu où tu étudies.",
  "document.understood": "Compris",
  "document.review": "À revoir",
  "document.unmarked": "Non marqué",
  "document.needReview": "À revoir",
  "document.studySession": "Séance d'étude",
  "document.trackQuietly": "Suis ce {kind} en douceur",
  "document.trackDescription":
    "StudySpark suit le temps de lecture, la profondeur de défilement et des points de contrôle utiles pour {title}.",
  "document.time": "Temps",
  "document.read": "Lecture",
  "document.saved": "Enregistré",
  "document.iUnderstandThis": "J'ai compris",
  "document.bookmark": "Signet",
  "document.resumeAt": "Reprendre à {percent}%",
  "document.savedConfirmation": "Enregistré. Ce {kind} compte désormais dans la progression.",
  "document.saveCheckpointError": "Impossible d'enregistrer ce point de contrôle.",
  "document.notMarked": "Non marqué",
  "document.start": "Commencer",
  "document.started": "Commencé",
  "document.passed": "Réussi",
  "document.failed": "Échoué",
  "courses.continueCourse": "Continuer le cours",
  "courses.continueLearning": "Continuer l'apprentissage",
  "courses.description":
    "Cours par thème avec exemples corrigés et méthode d'examen, adaptés à ta classe et ta série.",
  "courses.emptyTitle": "Aucun cours pour ton profil pour le moment",
  "courses.emptyDescription":
    "Les cours complets apparaîtront ici dès qu'ils seront publiés pour ta classe, ta série et tes matières. En attendant, continue avec les épreuves.",
  "courses.premiumDescription":
    "Passe à Premium pour accéder aux cours complets, aux séquences et à la révision guidée.",
  "courses.premiumTitle": "Cours Premium",
  "courses.searchPlaceholder": "Rechercher des thèmes, matières ou leçons...",
  "courses.noSearchResults": 'Aucun thème ne correspond à "{query}".',
  "courses.title": "Cours",
  "cheatsheets.description":
    "Fiches rapides pour formules, définitions, pièges d'examen et révision de dernière minute.",
  "cheatsheets.emptyDescription":
    "Les fiches apparaîtront ici quand elles correspondront à ta classe, ta série, ta langue et tes matières.",
  "cheatsheets.emptyTitle": "Aucune fiche pour ton profil pour le moment",
  "cheatsheets.premiumDescription":
    "Passe à Premium pour accéder aux fiches ciblées de tes matières.",
  "cheatsheets.premiumTitle": "Fiches Premium",
  "cheatsheets.searchPlaceholder": "Rechercher des fiches, formules ou matières...",
  "cheatsheets.noSearchResults": 'Aucune fiche ne correspond à "{query}".',
  "cheatsheets.title": "Fiches de révision",
  "pricing.badge": "Gratuit pour commencer",
  "pricing.title": "Un tarif simple pour réviser les examens. Clair.",
  "pricing.description":
    "Les élèves gratuits peuvent prévisualiser des épreuves sélectionnées. Premium débloque les épreuves protégées, les cours par thème, les fiches, le parcours IA, le tutorat et les analyses avancées.",
  "pricing.monthly": "Mensuel",
  "pricing.yearly": "Annuel",
  "pricing.forever": "à vie",
  "pricing.month": "mois",
  "pricing.freePlanDescription":
    "Découvre la plateforme avant de passer à Premium. Aucune carte requise.",
  "pricing.getStarted": "Commencer",
  "pricing.recommended": "Recommandé",
  "pricing.billedMonthly": "Facturé chaque mois",
  "pricing.billedYearly": "Facturé chaque année",
  "pricing.payWithFapshi": "Payer avec Fapshi",
  "pricing.paymentConfirmed": "Paiement confirmé. Premium est maintenant actif sur ton compte.",
  "pricing.paymentPending":
    "Le paiement est encore en attente. Premium sera activé dès que Fapshi confirme.",
  "pricing.paymentNotConfirmed":
    "Le paiement n'est pas encore confirmé. Si tu as payé, attends un moment puis actualise.",
  "pricing.paymentCheckFailed":
    "Nous ne pouvons pas vérifier le paiement maintenant. Réessaie dans un instant.",
  "pricing.paymentStartFailed":
    "Le paiement ne peut pas démarrer maintenant. Réessaie dans un instant.",
  "pricing.feature": "Fonctionnalité",
  "pricing.commonQuestions": "Questions fréquentes",
  "pricing.footer": "Créé pour les élèves du Cameroun.",
  "terms.title": "Conditions d'utilisation",
  "terms.introduction":
    "Les présentes conditions régissent votre utilisation de StudySpark, plateforme de révision GCE, BEPC, Probatoire et Baccalauréat au Cameroun. En créant un compte ou en vous connectant, vous acceptez ces conditions ainsi que les politiques de confidentialité et de remboursement. Entrée en vigueur : 22 septembre 2025. Contact : support@studyspark.cm.",
  "terms.effective":
    "En vigueur le 22 septembre 2025 · Pour les élèves du Cameroun · support@studyspark.cm",
  "terms.sections.1": "1. Acceptation et qui peut utiliser StudySpark",
  "terms.sections.1.desc":
    "Vous devez avoir au moins 13 ans ou le consentement d'un parent/tuteur. StudySpark est destiné aux élèves du Cameroun préparant le GCE O/A Level, BEPC, Probatoire, Baccalauréat et séries associées (C, D, A, TI...). En vous inscrivant via Google, lien magique ou mot de passe, vous acceptez ces Conditions.",
  "terms.sections.2": "2. Comptes et sécurité",
  "terms.sections.2.desc":
    "Vous gardes vos identifiants confidentiels et restez responsable de toute activité sous votre compte. Utilisez un mot de passe robuste, ne partagez pas vos codes et signalez tout accès suspect via la page Assistance. Nous pouvons demander une vérification d'e-mail avant les modifications sensibles.",
  "terms.sections.3": "3. Usage autorisé et contenu protégé",
  "terms.sections.3.desc":
    "Les sujets, cours, fiches et guidages IA s'ouvrent uniquement dans l'application. Copie, extraction massive, téléchargement, export PDF, enregistrement pour redistribution ou contournement des contrôles d'accès sont interdits. Les comptes gratuits prévisualisent 1–2 sujets sélectionnés ; l'accès illimité, les cours, fiches, parcours IA et recherche avancée nécessitent Premium. Nous pouvons limiter ou suspendre les comptes qui tentent d'extraire du contenu protégé.",
  "terms.sections.4": "4. Premium, tarifs et paiements Fapshi",
  "terms.sections.4.desc":
    "Premium coûte 1 500 FCFA par mois ou 12 000 FCFA par an (facturé 1 500 × 12, ~33% d'économie). Le seul moyen de paiement est Fapshi à la caisse (https://www.fapshi.com). Selon la disponibilité Fapshi, vous pouvez payer via MTN Mobile Money, Orange Money ou autres canaux Fapshi au Cameroun. Aucune carte n'est requise. Après redirection vers Fapshi, StudySpark confirme via l'API et le webhook Fapshi ; Premium s'active uniquement quand Fapshi confirme successful avec le bon montant et l'ID de transaction et reste actif jusqu'à premiumUntil. Le renouvellement est manuel — nous ne prélevons pas automatiquement ; vous relancez un paiement Fapshi quand vous voulez prolonger. Les prix sont en FCFA et peuvent évoluer avec préavis avant renouvellement.",
  "terms.sections.5": "5. Propriété intellectuelle",
  "terms.sections.5.desc":
    "Les contenus StudySpark (sujets structurés, cours, fiches) sont protégés par le droit d'auteur et appartiennent à StudySpark ou ses concédants. Vous recevez une licence personnelle non transférable pour consulter le contenu dans l'application à des fins d'étude uniquement. Reproduction, diffusion, vente ou œuvres dérivées interdites sans autorisation.",
  "terms.sections.6": "6. IA et analyses — avertissement",
  "terms.sections.6.desc":
    "Les fonctions IA (parcours personnalisé, insight de progression, mise en forme de sujet) envoient des signaux agrégés — matières faibles, nombre de questions réussies/échouées/comprises/à revoir, classement de difficulté — à notre fournisseur IA (compatible OpenRouter/Gemini) côté serveur. Nous n'envoyons pas le texte complet des sujets ni votre e-mail/nom. Les sorties IA sont indicatives et peuvent contenir des erreurs ; vérifiez avec votre programme et vos enseignants. En cas d'indisponibilité IA, un parcours déterministe basé sur vos vrais signaux est affiché. Les analyses Vercel Analytics sont anonymisées et limitées aux événements agrégés (landing_view, paper_opened, checkpoint_marked, ai_action_used, checkout_started, etc.) sans contenu ni identifiant.",
  "terms.sections.7": "7. Résiliation et responsabilité",
  "terms.sections.7.desc":
    "Nous pouvons suspendre ou résilier un compte en cas de violation des Conditions, d'abus de contenu protégé ou de fraude. StudySpark est fourni tel quel sans garanties. Dans la limite du droit camerounais, nous excluons les garanties implicites de commercialisation et d'adéquation. Notre responsabilité est limitée au montant payé pour Premium sur les 3 derniers mois. Nous ne sommes pas responsables des résultats d'examen, des coupures réseau ou des délais Fapshi.",
  "terms.sections.8": "8. Droit applicable et modifications",
  "terms.sections.8.desc":
    "Ces Conditions sont régies par les lois du Cameroun. Les litiges relèvent des tribunaux de Yaoundé. Nous pouvons mettre à jour ces Conditions et afficherons la nouvelle date d'effet sur cette page ; continuer à utiliser le service vaut acceptation. Contact : support@studyspark.cm ou page Assistance.",
  "privacy.title": "Politique de confidentialité",
  "privacy.introduction":
    "Cette politique explique comment StudySpark collecte, utilise, partage et protège vos informations : données de compte, progression, analyses et usage IA. Entrée en vigueur : 22 septembre 2025. Contact : support@studyspark.cm.",
  "privacy.effective": "En vigueur le 22 septembre 2025 · Pour les élèves du Cameroun",
  "privacy.sections.1": "1. Informations que nous collectons",
  "privacy.sections.1.desc":
    "Compte : e-mail, nom affiché, fournisseur d'authentification (Google/lien magique/mot de passe) et ID Supabase. Profil : langue, système éducatif (GCE/Francophone), classe, série, matières, pays/région/ville et vérification optionnelle de localisation navigateur (latitude/longitude/horodatage) pour les classements si vous l'autorisez. Progression : sujets ouverts, contexte de défilement, questions marquées réussies/échouées, sujets compris/à revoir/favoris, séries et gels, sessions et minutes d'étude. Préférences : thème et langue en localStorage. Paiement : intervalle, montant FCFA, statut, ID transaction fournisseur et horodatages — nous ne stockons pas les numéros Mobile Money, cartes ou coordonnées bancaires ; Fapshi les gère.",
  "privacy.sections.2": "2. Utilisation de vos informations",
  "privacy.sections.2.desc":
    "Votre profil filtre les sujets, cours et fiches selon votre classe/série/matières et langue. La progression alimente votre tableau de bord (série, taux de réussite, maîtrise par matière, performance hebdo), le parcours, le classement et l'accès Premium. Nous pouvons utiliser des données agrégées anonymisées pour améliorer la couverture et la fiabilité. Nous ne vendons jamais vos données personnelles.",
  "privacy.sections.3": "3. Usage de l'IA",
  "privacy.sections.3.desc":
    "Quand vous demandez un parcours ou un insight, nous envoyons des signaux agrégés non identifiants à notre fournisseur IA (compatible OpenRouter/Gemini côté serveur) : matières faibles, classement de difficulté avec comptes d'échecs/lenteurs et prochains sujets recommandés. Nous n'envoyons pas le texte complet des sujets, e-mails ou noms. L'IA renvoie un plan 7 jours ou un insight ; si le fournisseur expire ou renvoie un JSON invalide, un repli déterministe basé sur vos vrais signaux s'affiche. Les sorties IA peuvent être erronées — considérez-les comme guidage, pas comme garantie.",
  "privacy.sections.4": "4. Analyses",
  "privacy.sections.4.desc":
    "Nous utilisons les événements personnalisés Vercel Analytics, anonymisés et débouncés (1 200 ms) : landing_view, signup_start/complete, paper_opened (matière/niveau/verrouillé seulement), checkpoint_marked, ai_action_used, search_used, premium_view, checkout_started, payment_success/failure/pending, signin_error. Aucun contenu markdown, texte de question, ID document, e-mail, nom, ID utilisateur, token ou secret de paiement n'est envoyé. Les analyses ne bloquent jamais l'app et servent uniquement en agrégé.",
  "privacy.sections.5": "5. Services tiers",
  "privacy.sections.5.desc":
    "Fapshi (https://www.fapshi.com) traite tous les paiements Premium ; quand vous payez, Fapshi reçoit votre téléphone/canal et données de transaction selon sa politique et confirme via API/webhook avec secret. Supabase fournit l'authentification et la base de données. Vercel héberge l'app et les analyses. Notre fournisseur IA (compatible OpenRouter/Gemini) ne traite que les prompts agrégés côté serveur.",
  "privacy.sections.6": "6. Conservation, droits et suppression",
  "privacy.sections.6.desc":
    "Nous conservons vos données tant que le compte est actif. Vous pouvez demander accès, correction ou suppression à support@studyspark.cm ou via Assistance. Supprimer votre compte dans Paramètres (tapez delete) supprime votre utilisateur Supabase et cascade le profil/progression. Les enregistrements de transaction peuvent être conservés pour obligations légales. Nous répondons sous 30 jours, et visons 48 h pour les demandes paiement/remboursement. Stockage selon la réglementation camerounaise et les politiques Supabase.",
  "privacy.sections.7": "7. Cookies, stockage local, sécurité et enfants",
  "privacy.sections.7.desc":
    "Nous utilisons le localStorage pour la langue (studyspark.locale) et le thème, plus les cookies/tokens Supabase pour la connexion. Pas de cookies publicitaires tiers. Tous les secrets Fapshi/Supabase sont côté serveur ; les appels clients sont authentifiés avec votre token Supabase. Transport en HTTPS. StudySpark est dès 13 ans ; nous ne collectons pas sciemment de données d'enfants de moins de 13 ans sans consentement parental vérifiable.",
  "refund.title": "Politique de remboursement et d'annulation",
  "refund.introduction":
    "Cette politique explique les tarifs, le seul moyen de paiement (Fapshi), l'annulation et les remboursements Premium. Entrée en vigueur : 22 septembre 2025. Contact : support@studyspark.cm.",
  "refund.effective": "En vigueur le 22 septembre 2025 · Premium via Fapshi · FCFA",
  "refund.sections.1": "1. Tarifs et moyen de paiement supporté",
  "refund.sections.1.desc":
    "Premium coûte 1 500 FCFA/mois (facturé mensuellement) ou 12 000 FCFA/an (facturé annuellement — ~1 000 FCFA/mois équivalent). Le seul paiement supporté est Fapshi. À la caisse vous êtes redirigé vers Fapshi ; selon l'offre Fapshi au Cameroun vous verrez Mobile Money MTN, Orange Money ou autres canaux locaux. Prix en FCFA. Nous vérifions chaque paiement côté serveur via l'API Fapshi et le webhook (secret vérifié) et n'activons Premium que si Fapshi indique successful pour le bon montant et ID. En cas de pending, nous sondons brièvement et affichons payment_pending ; vous pouvez réessayer depuis Tarifs ou Assistance.",
  "refund.sections.2": "2. Annulation",
  "refund.sections.2.desc":
    "Premium n'est pas renouvelé automatiquement — vous relancez un paiement Fapshi quand vous voulez prolonger. Si vous ne renouvelez pas, Premium reste actif jusqu'à premiumUntil puis repasse Gratuit. Pour arrêter tout renouvellement, ne relancez pas de paiement. Pour une désactivation anticipée ou une aide, contactez l'Assistance via la page Assistance ou support@studyspark.cm avec votre référence ; traitement sous 48 h. Pas de remboursement partiel pour jours non utilisés après activation.",
  "refund.sections.3": "3. Fenêtre de remboursement 7 jours",
  "refund.sections.3.desc":
    "Si Premium ne vous convient pas, vous pouvez demander un remboursement sous 7 jours après l'achat initial ou un renouvellement. Envoyez via Assistance avec votre e-mail, ID transaction (visible dans Paramètres → Historique paiements) et motif. Nous transmettons à Fapshi ; éligibilité, retenues et délais dépendent de Fapshi et de l'opérateur Mobile Money. Les remboursements approuvés repartent via le canal Fapshi d'origine.",
  "refund.sections.4": "4. Rôle de Fapshi et vérification",
  "refund.sections.4.desc":
    "Fapshi est le processeur opérant au Cameroun (https://www.fapshi.com). StudySpark ne stocke pas votre numéro Mobile Money, carte ou banque. Fapshi gère l'encaissement, la confirmation et les remboursements selon ses politiques. Nous vérifions chaque transaction côté serveur avec l'ID fournisseur et le montant avant de prolonger premiumUntil. Les webhooks sont vérifiés avec FAPSHI_WEBHOOK_SECRET.",
  "refund.sections.5": "5. Non remboursable",
  "refund.sections.5.desc":
    "Pas de remboursement après 7 jours ; pour contenus protégés déjà consommés pendant la période quand le service a été fourni comme décrit ; pour rétrogradation volontaire Premium → Gratuit sans demande éligible ; ou pour paiements échoués faute de solde, mauvais numéro ou refus opérateur (échecs/expirés réessayables depuis Tarifs ou Paramètres → Historique).",
  "refund.sections.6": "6. Contact et délais",
  "refund.sections.6.desc":
    "Pour toute question paiement, annulation ou remboursement, passez par Assistance ou support@studyspark.cm. Joignez votre référence si possible — le formulaire joint automatiquement votre plan/classe/matières pour aider plus vite. Nous visons une réponse sous 48 h pour annulations/remboursements et 1–2 jours ouvrés pour vérifications, selon les délais Fapshi/opérateur.",
  "pricing.feature.previewPapers": "1 à 2 épreuves en aperçu gratuit",
  "pricing.feature.unlimitedPapers": "Épreuves protégées illimitées",
  "pricing.feature.protectedPapers": "Épreuves protégées dans l'application",
  "pricing.feature.answers": "Réponses et explications gratuites",
  "pricing.feature.practiceMode": "Mode entraînement",
  "pricing.feature.accessControl": "Accès selon la classe et la série",
  "pricing.feature.streaks": "Séries quotidiennes et statistiques de base",
  "pricing.feature.aiPaths": "Parcours d'apprentissage personnalisé par IA",
  "pricing.feature.courses": "Cours complets et leçons vidéo",
  "pricing.feature.cheatsheets": "Fiches de révision d'examen",
  "pricing.feature.search": "Recherche avancée dans tout le contenu",
  "pricing.feature.freezes": "Gel de série (1/semaine)",
  "pricing.feature.support": "Assistance prioritaire",
  "pricing.faq.free.q": "Les élèves peuvent-ils commencer gratuitement ?",
  "pricing.faq.free.a":
    "Oui. Les élèves gratuits peuvent ouvrir une ou deux épreuves d'aperçu avant de passer à Premium. L'expérience complète protégée reste Premium.",
  "pricing.faq.cancel.q": "Puis-je annuler à tout moment ?",
  "pricing.faq.cancel.a": "Oui. Tu peux annuler depuis les paramètres, simplement et sans appel.",
  "pricing.faq.mobileMoney.q": "Acceptez-vous Mobile Money ?",
  "pricing.faq.mobileMoney.a":
    "Les paiements utilisent une caisse FCFA adaptée au Cameroun via Fapshi, avec Mobile Money selon les canaux disponibles chez Fapshi.",
  "pricing.faq.discount.q": "Y a-t-il une réduction élève ?",
  "pricing.faq.discount.a":
    "Premium est déjà fixé pour les élèves au Cameroun. Les écoles et groupes d'étude peuvent demander un tarif groupé.",
  "notifications.description": "Tes rappels de compte et de progression apparaîtront ici.",
  "notifications.markAllRead": "Tout marquer comme lu",
  "notifications.loadError": "Les notifications n'ont pas pu être chargées.",
  "notifications.loading": "Vérification de tes dernières mises à jour...",
  "notifications.all": "Tout",
  "notifications.content": "Épreuves",
  "notifications.progress": "Progression",
  "notifications.streak": "Séries",
  "notifications.membership": "Compte",
  "notifications.new": "Nouveau",
  "notifications.markRead": "Marquer comme lu",
  "notifications.emptyGroupTitle": "Aucune notification dans cette catégorie",
  "notifications.emptyGroupDescription":
    "Essaie une autre catégorie ou reviens après ta prochaine activité.",
  "notifications.emptyTitle": "Aucune notification pour le moment",
  "notifications.emptyDescription":
    "Tu verras seulement les vraies mises à jour de profil, d'épreuves et de compte ici.",
  "notifications.generated.newPaper.title": "Nouvelle épreuve disponible",
  "notifications.generated.newPaper.body": "{title} est disponible en {subject}.",
  "notifications.generated.weakSubject.title": "Matière à renforcer",
  "notifications.generated.weakSubject.body":
    "{subject} est à {score}% de maîtrise. Reprends les questions échouées.",
  "notifications.generated.streak.title": "Relance ta série",
  "notifications.generated.streak.body":
    "Marque une question structurale aujourd'hui pour commencer une nouvelle série.",
  "notifications.generated.premiumEnds.title": "Premium se termine bientôt",
  "notifications.generated.premiumEndsToday.body":
    "Ton accès Premium se termine aujourd'hui. Renouvelle tôt pour éviter une coupure.",
  "notifications.generated.premiumEnds.body":
    "Ton accès Premium se termine dans {days} jour(s). Renouvelle tôt pour éviter une coupure.",
  "notifications.generated.paymentFailed.title": "Paiement à vérifier",
  "notifications.generated.paymentFailed.body":
    "Ton dernier paiement Premium n'a pas abouti. Tu peux réessayer depuis la page des tarifs.",
  "settings.accountDeletion": "Suppression du compte",
  "settings.appearance": "Apparence",
  "settings.curriculumPath": "Parcours scolaire",
  "settings.displayName": "Nom affiché",
  "settings.emailHint": "Géré par ton fournisseur de connexion",
  "settings.languageHint": "Contrôle l'interface et les messages d'assistance",
  "settings.profile": "Profil",
  "settings.profileDescription": "Personnalise ton identité d'élève et ton accès.",
  "settings.saveProfile": "Enregistrer le profil",
  "settings.title": "Paramètres",
  "settings.description": "Gère ton profil, ta préparation aux examens et tes préférences.",
  "signin.agreement":
    "En continuant, tu acceptes nos conditions et notre politique de confidentialité.",
  "signin.continueEmail": "Continuer avec e-mail",
  "signin.continueGoogle": "Continuer avec Google",
  "signin.emailAddress": "Adresse e-mail",
  "signin.emailPlaceholder": "toi@ecole.cm",
  "signin.magicLinkSending": "Envoi du lien magique...",
  "signin.magicLinkSent": "Vérifie ta boîte e-mail pour le lien de connexion.",
  "signin.emailFailed":
    "La connexion par e-mail a échoué. Si les liens magiques sont désactivés dans Supabase, utilise l'option mot de passe ci-dessous.",
  "signin.passwordPlaceholder": "Mot de passe (min. 6 caractères)",
  "signin.passwordWorking": "Traitement...",
  "signin.createPasswordAccount": "Créer un compte avec mot de passe",
  "signin.signInPassword": "Se connecter avec mot de passe",
  "signin.noAccount": "Pas encore de compte ? Crée-en un",
  "signin.hasAccount": "Tu as déjà un compte ? Connecte-toi",
  "signin.accountCreated":
    "Compte créé. Si la confirmation e-mail est requise, vérifie ta boîte — sinon tu es connecté.",
  "signin.signedIn": "Connecté. Ouverture du tableau de bord...",
  "signin.confirmEmail":
    "Confirme d'abord ton e-mail — vérifie ta boîte pour le lien de confirmation, puis reconnecte-toi.",
  "signin.passwordFailed": "La connexion par mot de passe a échoué.",
  "signin.googleFailed": "La connexion Google a échoué.",
  "signin.notConfigured": "Supabase n'est pas configuré dans cet environnement.",
  "signin.newHere": "Nouveau ici ?",
  "signin.brandBadge": "Synchronisé et sécurisé",
  "signin.brandText":
    "Connecte-toi, crée ton profil d'étude et débloque seulement les épreuves qui correspondent à ta classe, ta série et tes matières.",
  "signin.openingDashboard": "Ouverture du tableau de bord...",
  "signin.openingGoogle": "Ouverture de Google...",
  "signin.openingProfile": "Ouverture de la configuration du profil...",
  "signin.passwordSummary": "Ou se connecter avec e-mail et mot de passe",
  "signin.setupProfile": "Configurer ton profil",
  "signin.subtitle":
    "Connecte-toi pour synchroniser ta série, tes exercices par thème et ta progression sur tous tes appareils.",
  "signin.title": "Bon retour.",
  "signin.or": "ou",
  "onboarding.welcomeTitle": "Bienvenue sur StudySpark",
  "onboarding.welcomeDescription": "Configurons ton espace d'étude. Cela prend 30 secondes.",
  "onboarding.nameLabel": "Comment devons-nous t'appeler ?",
  "onboarding.namePlaceholder": "Ton prénom",
  "onboarding.languageTitle": "Choisis ta langue d'étude",
  "onboarding.languageDescription":
    "Choisis la langue de l'interface et le parcours scolaire camerounais que tu suis.",
  "onboarding.englishInterface": "Interface en anglais",
  "onboarding.frenchInterface": "Interface en français",
  "onboarding.curriculumPath": "Parcours scolaire",
  "onboarding.gceHint": "Forms, O-Level, Lower Sixth, Upper Sixth",
  "onboarding.frHint": "Sixième à Terminale, BEPC, Probatoire, Bac",
  "onboarding.locationTitle": "Ajoute ta localisation",
  "onboarding.locationDescription":
    "Cela te place dans le bon classement national, régional et local.",
  "onboarding.country": "Pays",
  "onboarding.region": "Région",
  "onboarding.city": "Ville",
  "onboarding.cityPlaceholder": "Exemple : Douala, Yaoundé, Bafoussam",
  "onboarding.verifyLocation": "Vérifier avec la localisation du navigateur",
  "onboarding.verifyingLocation": "Vérification en cours...",
  "onboarding.locationVerified": "Localisation vérifiée",
  "onboarding.locationVerifiedHint":
    "La localisation de ton appareil a été capturée pour vérifier le classement.",
  "onboarding.classTitle": "Choisis ta classe",
  "onboarding.classDescriptionGce": "Choisis Ordinary ou Advanced Level, puis ta classe.",
  "onboarding.classDescriptionFr": "Choisis ton cycle (Collège ou Lycée), puis ta classe.",
  "onboarding.subjectTitleGce": "Choisis tes matières",
  "onboarding.subjectTitleFr": "Choisis ta filière",
  "onboarding.subjectDescriptionGce":
    "Choisis ta série et les matières que tu veux voir sur ton tableau de bord.",
  "onboarding.subjectDescriptionFr": "Choisis ta série et les matières pour ton tableau de bord.",
  "onboarding.useAnotherAccount": "Utiliser un autre compte",
  "onboarding.getStarted": "Commencer",
  "onboarding.saving": "Enregistrement...",
  "onboarding.selected": "sélectionné(s)",
  "support.title": "Assistance",
  "support.description": "Une assistance prioritaire est disponible pour chaque élève connecté.",
  "support.contactTitle": "Contacter l'assistance",
  "support.categoryLabel": "Quel est ton problème ?",
  "support.messageLabel": "Décris le problème",
  "support.messagePlaceholder":
    "Explique ce qui s'est passé, ce que tu attendais et ce que tu as essayé...",
  "support.contextNote":
    "Ces informations seront jointes pour nous aider à répondre plus vite. Aucune clé privée ni token n'est inclus.",
  "support.sendEmail": "Envoyer par e-mail",
  "support.sendWhatsApp": "Envoyer par WhatsApp",
  "support.sentNote":
    "Ton application de messagerie devrait s'être ouverte avec la demande pré-remplie. Nous répondons sous 24 heures.",
  "support.directEmail": "Pas d'application ? Écris-nous directement à",
  "support.expectTitle": "Ce à quoi s'attendre",
  "support.expect1":
    "Problèmes de connexion et d'accès Premium : nous visons une réponse sous 24 heures.",
  "support.expect2":
    "Problèmes de paiement : inclure ta référence de transaction si tu l'as — la plupart des cas sont résolus sous 48 heures.",
  "support.expect3":
    "Problèmes de contenu (mauvaise épreuve, matière manquante) : traités sous 3 à 5 jours.",
  "support.quickLinksTitle": "Sujets d'aide fréquents",
  "support.linkPayment": "Paiement et mise à niveau Premium",
  "support.linkAccount": "Compte et paramètres du profil",
  "support.linkPapers": "Parcourir les épreuves disponibles",
  "support.linkSignIn": "Aide à la connexion",
  "support.subjectPlaceholder": "Sujet",
  "support.sendRequest": "Envoyer la demande",
  "support.emailOpened":
    "Ton application e-mail devrait s'ouvrir avec la demande préremplie. Nous répondons sous 24 heures.",
  "support.noEmailApp": "Pas d'application e-mail ? Écris-nous directement à",
  "support.autoDetails":
    "Ton plan, ta classe et tes matières sont ajoutés automatiquement pour accélérer l'aide.",
};

const dictionaries = { en, fr };

type I18nContextValue = {
  locale: Locale;
  setLocale: (locale: Locale) => void;
  t: (key: TranslationKey) => string;
};

const I18nContext = createContext<I18nContextValue | null>(null);

export function languageToLocale(language?: Language | null): Locale {
  return language === "french" ? "fr" : "en";
}

export function localeToLanguage(locale: Locale): Language {
  return locale === "fr" ? "french" : "english";
}

function detectInitialLocale(): Locale {
  if (typeof window === "undefined") return "en";
  const saved = window.localStorage.getItem(STORAGE_KEY);
  if (saved === "en" || saved === "fr") return saved;
  return window.navigator.language.toLowerCase().startsWith("fr") ? "fr" : "en";
}

export function I18nProvider({ children }: { children: ReactNode }) {
  const [locale, setLocaleState] = useState<Locale>(detectInitialLocale);

  const setLocale = useCallback((nextLocale: Locale) => {
    setLocaleState(nextLocale);
    window.localStorage.setItem(STORAGE_KEY, nextLocale);
  }, []);

  useEffect(() => {
    document.documentElement.lang = locale;
  }, [locale]);

  const t = useCallback(
    (key: TranslationKey) => dictionaries[locale][key] ?? dictionaries.en[key] ?? key,
    [locale],
  );

  const value = useMemo(() => ({ locale, setLocale, t }), [locale, setLocale, t]);

  return <I18nContext.Provider value={value}>{children}</I18nContext.Provider>;
}

export function useI18n() {
  const context = useContext(I18nContext);
  if (!context) throw new Error("useI18n must be used inside I18nProvider");
  return context;
}

export function useSyncLocaleFromProfile(language?: Language | null) {
  const { locale, setLocale } = useI18n();
  useEffect(() => {
    if (!language) return;
    if (typeof window !== "undefined" && window.localStorage.getItem(STORAGE_KEY)) return;
    const profileLocale = languageToLocale(language);
    if (profileLocale !== locale) setLocale(profileLocale);
  }, [language, locale, setLocale]);
}
