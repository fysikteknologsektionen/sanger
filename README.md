# Sånger

Detta repo innehåller

- [Sånghäftet](./sanghafte/) – en LaTeX-mall
- [Sjungboken](./sjungbok/) – också en LaTeX-mall samt förkompilerade versioner av sjungboken
- [Sångtexter](./texter/) – texter som kan användas i sånghäftet och sjungboken

## Sånghäftet

För att använda sånghäftesmallen, skapa först en kopia av [Overleaf-projektet](https://www.overleaf.com/read/hfrdcszwfcsy) till ditt eget Overleafkonto.

I din kopia av Overleaf-projektet bör du i dokumentets meny välja att kompilera `sanghafte/main.tex` om det inte redan är förvalt. Det är också i detta dokument du redigerar för att ändra innehållet i sånghäftet:

1. Ändra titel, värdar, meny o.s.v. i `sanghafte/main.tex`
1. Ändra logga genom att ladda upp en egen fil till `sanghafte/logo.png`
1. Lägg in dina låtar i ordning med `\inputsong{...}` (vilka sånger som finns tillgängliga ser du i mappen [`texter`](./texter/))
1. Lägg in `\newpage` om en rubrik fastnar på föregående sida
1. Kompilera!
1. Skriv ut (dubbelsidigt längsmed långsidan)!

## Sjungboken

Sjungboken finns tillgänglig som pdf här:

- [Digital version](./sjungbok/sjungboken.pdf)
- [Tryck-version (A6)](./sjungbok/sjungboken-print.pdf)
- [Omslag för tryck (A6)](./sjungbok/framsida-print.pdf)

För instruktioner i hur sjungboksmallen avänds, se READMEn i [sjungbok](./sjungbok#readme).

## Ändringar och tillägg

Det finns olika sätt att göra ändringar (ordnat utifrån smidighet):

- [Skicka ändrigsförslag direkt till Sångförmännen](mailto:sangforman@ftek.se)
- Gör en fork av projektet och skapa en pull-request, se [GitHubs dokumentation](https://docs.github.com/en/get-started/quickstart/contributing-to-projects)

   1. Skapa en fork av [fysikteknologsektionen/sanger](https://github.com/fysikteknologsektionen/sanger) till din egen användare <div><img src="https://upload.wikimedia.org/wikipedia/commons/3/38/GitHub_Fork_Button.png" width="12%"></div>
   2. Klona din fork till ett lokalt repo med `git clone https://github.com/MinAnvändare/sanger`. OBS: Ändra `MinAnvändare` till ditt GitHub-användarnamn!
   3. Gör förändringarna
   4. `git add -A`
   5. `git commit -m "skriv ett commitmeddelande"`
   6. `git pull`
   7. `git push`
   8. [Skapa en pull-request](https://docs.github.com/articles/creating-a-pull-request) från din fork till [fysikteknologsektionen/sanger](https://github.com/fysikteknologsektionen/sanger) <div><img src="https://docs.github.com/assets/cb-26570/images/help/pull_requests/pull-request-start-review-button.png" width="40%"></div>
   9. Vänta på att infoansvarig godkänner (mergear) din pull-request

**OBS** Ändringar skall inte göras i Overleaf-projektet.

## För sångförmän

## Synka Overleaf med GitHub

Detta projekt är kopplat med ett [Overleaf-projekte](https://www.overleaf.com/read/hfrdcszwfcsy) som behöver synkas manuellt med GitHub vid ändringar.

1. Välj GitHub i sidomenyn och välj _Pull changes from GitHub_ om det finns tillgängliga ändringar.

**OBS** Då ändringar ej skall göras i Overleaf bör du aldrig välja _Push changes to GitHub_.