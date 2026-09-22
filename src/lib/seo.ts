export const SITE_URL = "https://study-spark-237.vercel.app";
export const SITE_NAME = "StudySpark";
export const OG_IMAGE_URL = `${SITE_URL}/og-image.png`;

export const DEFAULT_SEO_TITLE = "StudySpark - Cameroon GCE revision, past questions, and progress";

export const DEFAULT_SEO_DESCRIPTION =
  "StudySpark helps Cameroonian Form 3, Form 4, Form 5, Lower Sixth, and Upper Sixth students practise GCE O Level and A Level subjects with protected papers, topic courses, cheatsheets, and progress tracking.";

export const FRENCH_SEO_TITLE =
  "StudySpark - Révision BEPC, Probatoire et Baccalauréat au Cameroun";

export const FRENCH_SEO_DESCRIPTION =
  "StudySpark aide les élèves du Cameroun à préparer le BEPC, le Probatoire et le Baccalauréat avec des sujets protégés, des cours par thème, des fiches de révision et un suivi de progression.";

export function canonicalUrl(path = "/") {
  return `${SITE_URL}${path === "/" ? "" : path}`;
}

export function alternateLinks(path = "/", frenchPath = "/fr") {
  return [
    { rel: "alternate", hrefLang: "en-CM", href: canonicalUrl(path) },
    { rel: "alternate", hrefLang: "fr-CM", href: canonicalUrl(frenchPath) },
    { rel: "alternate", hrefLang: "x-default", href: canonicalUrl(path) },
  ];
}

export function educationalAppSchema() {
  return {
    "@context": "https://schema.org",
    "@type": "SoftwareApplication",
    name: SITE_NAME,
    applicationCategory: "EducationalApplication",
    operatingSystem: "Web, Android, iOS",
    url: SITE_URL,
    image: OG_IMAGE_URL,
    description: DEFAULT_SEO_DESCRIPTION,
    inLanguage: ["en-CM", "fr-CM"],
    audience: {
      "@type": "EducationalAudience",
      educationalRole: "student",
      audienceType: "Cameroon secondary school and GCE candidates",
    },
    educationalLevel: [
      "Form 3",
      "Form 4",
      "Form 5",
      "Lower Sixth",
      "Upper Sixth",
      "Troisième",
      "Première",
      "Terminale",
      "BEPC",
      "Probatoire",
      "Baccalauréat",
      "GCE Ordinary Level",
      "GCE Advanced Level",
    ],
    learningResourceType: [
      "Structural papers",
      "Past question practice",
      "Revision courses",
      "Exam cheatsheets",
      "Progress tracking",
    ],
    areaServed: {
      "@type": "Country",
      name: "Cameroon",
    },
    offers: [
      {
        "@type": "Offer",
        name: "Free preview",
        price: "0",
        priceCurrency: "XAF",
      },
      {
        "@type": "Offer",
        name: "StudySpark Premium",
        price: "500",
        priceCurrency: "XAF",
        priceSpecification: {
          "@type": "UnitPriceSpecification",
          price: "500",
          priceCurrency: "XAF",
          billingDuration: "P1M",
        },
      },
    ],
  };
}

export function frenchEducationalAppSchema() {
  return {
    ...educationalAppSchema(),
    name: "StudySpark Cameroun",
    url: canonicalUrl("/fr"),
    description: FRENCH_SEO_DESCRIPTION,
    inLanguage: "fr-CM",
    audience: {
      "@type": "EducationalAudience",
      educationalRole: "student",
      audienceType: "Élèves francophones du secondaire au Cameroun",
    },
    learningResourceType: [
      "Sujets d'examen",
      "Préparation BEPC",
      "Préparation Probatoire",
      "Préparation Baccalauréat",
      "Cours par thème",
      "Fiches de révision",
      "Suivi de progression",
    ],
  };
}

export function pricingSchema() {
  return {
    "@context": "https://schema.org",
    "@type": "Product",
    name: "StudySpark Premium",
    image: OG_IMAGE_URL,
    description:
      "Premium Cameroon GCE revision access with protected papers, topic courses, exam cheatsheets, AI-guided learning paths, and progress analytics.",
    brand: {
      "@type": "Brand",
      name: SITE_NAME,
    },
    offers: {
      "@type": "AggregateOffer",
      priceCurrency: "XAF",
      lowPrice: "0",
      highPrice: "5000",
      offerCount: 2,
      offers: [
        {
          "@type": "Offer",
          name: "Free preview",
          price: "0",
          priceCurrency: "XAF",
          availability: "https://schema.org/InStock",
          url: canonicalUrl("/pricing"),
        },
        {
          "@type": "Offer",
          name: "Premium monthly",
          price: "500",
          priceCurrency: "XAF",
          availability: "https://schema.org/InStock",
          url: canonicalUrl("/pricing"),
        },
      ],
    },
  };
}

export function frenchPricingSchema() {
  return {
    ...pricingSchema(),
    name: "StudySpark Premium Cameroun",
    description:
      "Accès premium pour la révision BEPC, Probatoire et Baccalauréat au Cameroun avec sujets protégés, cours par thème, fiches de révision et parcours guidé.",
    offers: {
      ...pricingSchema().offers,
      offers: [
        {
          "@type": "Offer",
          name: "Aperçu gratuit",
          price: "0",
          priceCurrency: "XAF",
          availability: "https://schema.org/InStock",
          url: canonicalUrl("/fr/tarifs"),
        },
        {
          "@type": "Offer",
          name: "Premium mensuel",
          price: "500",
          priceCurrency: "XAF",
          availability: "https://schema.org/InStock",
          url: canonicalUrl("/fr/tarifs"),
        },
      ],
    },
  };
}
