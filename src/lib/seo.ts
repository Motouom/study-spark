export const SITE_URL = "https://study-spark-237.vercel.app";
export const SITE_NAME = "StudySpark";
export const OG_IMAGE_URL = `${SITE_URL}/og-image.png`;

export const DEFAULT_SEO_TITLE = "StudySpark - Cameroon GCE revision, past questions, and progress";

export const DEFAULT_SEO_DESCRIPTION =
  "StudySpark helps Cameroonian Form 3, Form 4, Form 5, Lower Sixth, and Upper Sixth students practise GCE O Level and A Level subjects with protected papers, topic courses, cheatsheets, and progress tracking.";

export function canonicalUrl(path = "/") {
  return `${SITE_URL}${path === "/" ? "" : path}`;
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
        price: "1500",
        priceCurrency: "XAF",
        priceSpecification: {
          "@type": "UnitPriceSpecification",
          price: "1500",
          priceCurrency: "XAF",
          billingDuration: "P1M",
        },
      },
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
      highPrice: "12000",
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
          price: "1500",
          priceCurrency: "XAF",
          availability: "https://schema.org/InStock",
          url: canonicalUrl("/pricing"),
        },
      ],
    },
  };
}
