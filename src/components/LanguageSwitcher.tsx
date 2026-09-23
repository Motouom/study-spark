import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { useI18n, type Locale, localeToLanguage } from "@/lib/i18n";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useCallback } from "react";

export function LanguageSwitcher({ className }: { className?: string }) {
  const { locale, setLocale, t } = useI18n();
  const { profile, saveProfile } = useStudyProfile();

  const handleLanguageChange = useCallback(
    async (value: Locale) => {
      setLocale(value);
      if (profile && saveProfile) {
        const nextLanguage = localeToLanguage(value);
        if (nextLanguage !== profile.language) {
          try {
            await saveProfile({ ...profile, language: nextLanguage });
          } catch (error) {
            console.error("Failed to update profile language", error);
          }
        }
      }
    },
    [locale, profile, saveProfile, setLocale],
  );

  return (
    <Select value={locale} onValueChange={handleLanguageChange}>
      <SelectTrigger className={className} aria-label={t("common.language")}>
        <SelectValue />
      </SelectTrigger>
      <SelectContent>
        <SelectItem value="en">English</SelectItem>
        <SelectItem value="fr">Français</SelectItem>
      </SelectContent>
    </Select>
  );
}
