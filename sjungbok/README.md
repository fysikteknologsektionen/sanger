# Encyclopedia Gasquica: Fysikteknologsektionens sjungbok

<img src="https://www.ftek.se/wp-content/uploads/2016/10/framsida.png" alt="Omslag" width="20%" />

## Innehållsförteckning
- [Senaste versionen](#senaste-versionen)
- [Trycka boken](#trycka-boken)
- [Göra ändringar](#göra-ändringar)
  * [Synka Overleaf med GitHub](#synka-overleaf-med-github)
- [Kompilera ny version](#kompilera-ny-version)
  * [Digital bok](#digital-bok)
  * [Tryckbar bok](#tryckbar-bok)
  * [Ladda upp ny version](#ladda-upp-ny-version)

# Senaste versionen
Ladda ner senaste versionen av sjungboken:
- [Digital version](https://github.com/Fysikteknologsektionen/Sjungbok/raw/master/sjungboken.pdf)
- [Tryck-version (A6)](https://github.com/Fysikteknologsektionen/Sjungbok/raw/master/sjungboken-print.pdf)
- [Omslag för tryck (A6)](https://github.com/Fysikteknologsektionen/Sjungbok/raw/master/framsida-print.pdf)

# Trycka boken
Använd den [senaste versionen](#senaste-versionen) av sjungboken. Filerna `framsida-print.pdf` och `sjungboken-print.pdf` ska skickas till tryckeriet. Dessa filer är separata i A6-format och har inga interna länkar, därför får de inte förväxlas med den digitala versionen.

# Göra ändringar
Det finns olika sätt att göra ändringar i sjungboken (ordnat utifrån smidighet):
- [Kontakta Sångförmännen direkt](mailto:sangforman@ftek.se) och skriv vilka ändringar du vill göra.
- Gör en fork av projektet, gör dina ändringar direkt på GitHub och skapa en pull request. Observera att om du vill göra ändringar i låttexter skall detta göras i [Sångtexter-repot](https://github.com/Fysikteknologsektionen/Sangtexter), inte här.

**OBS** Ändringar skall inte göras i Overleaf-projektet.

## Synka Overleaf med GitHub 
Detta projekt är kopplat med ett [Overleaf-projekt](https://www.overleaf.com/read/bpwsgqxjvjqs) som behöver synkas manuellt med GitHub vid ändringar. Denna synkning måste göras innan [kompilering](#kompilera-ny-version).
1. Välj GitHub i sidomenyn och välj *Pull changes from GitHub* om det finns tillgängliga ändringar.

**OBS** Då ändringar ej skall göras i Overleaf bör du aldrig välja *Push changes to GitHub*.

# Kompilera ny version
1. Öppna [Overleaf-projektet](https://www.overleaf.com/read/bpwsgqxjvjqs).
2. Följ instruktionerna för en [digital bok](#digital-bok) eller [tryckbar bok](#tryckbar-bok).

## Digital bok
3. Välj `sjungboken.tex` och kompilera och spara filen som `sjungbok.pdf`.
4. (Frivilligt) Kompilera en ny framsida
    1. Välj `framsida.tex` och kompilera. Spara ner denna fil som `framsida-print.pdf`.
    2. Öppna `framsida-print.pdf` och skriv ut den till en PDF i A4-format (skala upp den så att inga vita kanter syns). Namnge den `framsida.pdf`.
5. Slå ihop `framsida.pdf` och `sjungbok.pdf` i ett program som tillåter detta (rekommendation: [prövoversionen av Adobe Acrobat DC](https://acrobat.adobe.com/se/sv/free-trial-download.html)). Gör detta med högsta upplösning och välj att behålla bokmärken. Bokmärken brukar försvinna vid tjänster som slår ihop PDF:er på webben så undvik detta.
6. Vid ihopslagningen skapas ett toppbokmärke för framsidan och ett toppbokmärke för själva boken som innehåller kapitlens bokmärken. Flytta ut bokmärkena för kapitlena till toppnivån och ta bort de två urspprungliga bomärkena så att endast kapitlen är kvar. Om inte bokmärkena var kvar så måste du se till att ställa in rätt inställningar i steg 6.
7. Spara filen som `sjungboken.pdf`.

## Tryckbar bok
3. Välj `sjungboken-print.tex` och kompilera. Spara filen som `sjungboken-print.pdf`.
4. (Frivilligt) Välj `framsida.tex` och kompilera. Spara ner denna fil som `framsida-print.pdf`.

Dessa två filer är nu tryckklara.

## Ladda upp ny version
De nya filerna måste laddas upp. Lättast är att skicka de fyra filerna till [sångförmännen](mailto:sangforman@ftek.se) som kan ladda upp dem på GitHub.
