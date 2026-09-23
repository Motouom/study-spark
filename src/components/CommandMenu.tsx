import { useNavigate } from "@tanstack/react-router";
import {
  CommandDialog,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
  CommandSeparator,
} from "@/components/ui/command";
import {
  Settings,
  Sparkles,
  Brain,
  Flame,
  PlayCircle,
  BookMarked,
  Search,
  LifeBuoy,
  ShieldCheck,
  Library,
} from "lucide-react";
import { useStudyProfile } from "@/hooks/use-study-profile";
import { useStudyContent } from "@/hooks/use-study-content";
import { useI18n } from "@/lib/i18n";
import { isPremiumActive } from "@/lib/premium";
import { NAV } from "@/lib/app-nav";

export default function CommandMenu({
  open,
  setOpen,
  isAdmin,
}: {
  open: boolean;
  setOpen: (v: boolean) => void;
  isAdmin: boolean;
}) {
  const navigate = useNavigate();
  const { t } = useI18n();
  const { profile } = useStudyProfile();
  const content = useStudyContent(open ? profile : null, { includeContent: false });
  const searchTopics = content.topics;
  const go = (path: string) => {
    setOpen(false);
    // Small timeout so dialog close animation doesn't fight navigation
    setTimeout(() => navigate({ to: path }), 0);
  };
  return (
    <CommandDialog open={open} onOpenChange={setOpen}>
      <CommandInput placeholder={t("commandMenu.searchPlaceholder")} />
      <CommandList>
        <CommandEmpty>{t("commandMenu.empty")}</CommandEmpty>
        <CommandGroup heading={t("commandMenu.pages")}>
          {NAV.map((n) => (
            <CommandItem key={n.to} onSelect={() => go(n.to)}>
              <n.icon className="mr-2 h-4 w-4" />
              {t(n.labelKey)}
            </CommandItem>
          ))}
          <CommandItem onSelect={() => go("/settings")}>
            <Settings className="mr-2 h-4 w-4" /> {t("common.settings")}
          </CommandItem>
          <CommandItem onSelect={() => go("/pricing")}>
            <Sparkles className="mr-2 h-4 w-4" /> {t("app.upgradeToPremium")}
          </CommandItem>
          <CommandItem onSelect={() => go("/learning-path")}>
            <Brain className="mr-2 h-4 w-4" /> {t("common.learningPath")}
          </CommandItem>
          {isPremiumActive(profile) && (
            <CommandItem onSelect={() => go("/streak")}>
              <Flame className="mr-2 h-4 w-4" /> {t("app.streak")}
            </CommandItem>
          )}
          <CommandItem onSelect={() => go("/courses")}>
            <PlayCircle className="mr-2 h-4 w-4" /> {t("common.courses")}
          </CommandItem>
          <CommandItem onSelect={() => go("/cheatsheets")}>
            <BookMarked className="mr-2 h-4 w-4" /> {t("common.cheatsheets")}
          </CommandItem>
          <CommandItem onSelect={() => go("/search")}>
            <Search className="mr-2 h-4 w-4" /> {t("common.advancedSearch")}
          </CommandItem>
          <CommandItem onSelect={() => go("/support")}>
            <LifeBuoy className="mr-2 h-4 w-4" /> {t("common.support")}
          </CommandItem>
          {isAdmin && (
            <CommandItem onSelect={() => go("/control-panel-9k3x")}>
              <ShieldCheck className="mr-2 h-4 w-4" /> {t("app.adminPanel")}
            </CommandItem>
          )}
        </CommandGroup>
        <CommandSeparator />
        <CommandGroup heading={t("commandMenu.topics")}>
          {searchTopics.slice(0, 8).map((topic) => (
            <CommandItem
              key={topic.id}
              onSelect={() => go("/library")}
              value={`${topic.title} ${topic.subject}`}
            >
              <Library className="mr-2 h-4 w-4" />
              <span className="flex-1">{topic.title}</span>
              <span className="text-xs text-muted-foreground">{topic.subject}</span>
            </CommandItem>
          ))}
        </CommandGroup>
      </CommandList>
    </CommandDialog>
  );
}
