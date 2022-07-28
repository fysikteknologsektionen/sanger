# Sånger

Detta projekt innehåller

- [Sånghäftet](./sanghafte/) – en LaTeX-mall
- [Sjungboken](./sjungbok/) – också en LaTeX-mall samt förkompilerade versioner av sjungboken
- [Sångtexter](./texter/) – texter som kan användas i sånghäftet och sjungboken

## Sånghäftet

För att använda sånghäftesmallen, skapa först en kopia av [Overleaf-projektet](https://www.overleaf.com/read/xndwjtmxmdnz) till ditt eget Overleafkonto. Om du inte ser *Copy Project* i sidomenyn, kontrollera att du är inloggad.

### Göra sånghäftet

I din kopia av Overleaf-projektet bör du i dokumentets meny välja att kompilera `sanghafte/main.tex` om det inte redan är förvalt. Det är också i detta dokument du redigerar för att ändra innehållet i sånghäftet:

1. Ändra titel, värdar, meny o.s.v. i `sanghafte/main.tex`.
1. Ändra logga genom att ladda upp en egen fil till `sanghafte/logo.png`.
1. Justera storleken på loggan. Till exempel genom att skriva `0.8\textwidth` för att få bredden på loggan till 80% av textbredden.
1. Välj om du vill gömma melodiraden under varje sångtitel genom att avkommentera motsvarande kommando.
1. För att lägga in en sång så skriver du `\inputsong{filnamn}` där filnamnet går att hitta i mappen [`texter`](./texter/). Ordningen på sångerna här bestämmer ordningen i själva sånghäftet.
1. Lägg in `\newpage` om en rubrik fastnar på föregående sida.

### Skriva ut sånghäftet
1. Kompilera `sanghafte/main.tex` och spara PDF-filen.
1. Skriv ut *ett* exemplar av den nya PDF-filen i dubbelsidigt A4 (med vändning längs långsidan) och kolla om det ser bra ut.
1. Kopiera upp dubbelsidigt genom att välja "2 sides → 2 sides" i kopieringsmenyn. (Glöm inte heller att kopiera i färg om du skrev ut i färg.)
1. Vik (och eventuellt häfta) dina sånghäften.
1. Ha en lyckad sittning!

## Sjungboken

Sjungboken finns tillgänglig som pdf här:

- [Digital version](./sjungbok/sjungboken.pdf)
- [Tryck-version (A6)](./sjungbok/sjungboken-print.pdf)
- [Omslag för tryck (A6)](./sjungbok/framsida-print.pdf)

För instruktioner i hur sjungboksmallen avänds, se READMEn i [sjungbok](./sjungbok).

## Ändringar och tillägg

Det finns olika sätt att göra ändringar (ordnat utifrån smidighet):

- [Skicka ändrigsförslag direkt till Sångförmännen](mailto:sangforman@ftek.se)
- Gör en fork av projektet och skapa en pull-request, se [GitHubs dokumentation](https://docs.github.com/en/get-started/quickstart/contributing-to-projects)

**OBS** Ändringar skall inte göras i Overleaf-projektet.

## För sångförmän

## Synka Overleaf med GitHub

Detta projekt är kopplat med ett [Overleaf-projekte](https://www.overleaf.com/read/xndwjtmxmdnz) som behöver synkas manuellt med GitHub vid ändringar.

1. Välj GitHub i sidomenyn och välj _Pull changes from GitHub_ om det finns tillgängliga ändringar.

**OBS** Då ändringar ej skall göras i Overleaf bör du aldrig välja _Push changes to GitHub_.
