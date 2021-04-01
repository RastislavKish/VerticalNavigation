# VerticalNavigation

Navigácia v mriežkach na Android zariadeniach bola vždy komplikovaná. Bez ohľadu na to, či hráte partiu šachu alebo jednoducho hľadáte ikonu na pracovnej ploche, nijaký z čítačov obrazoviek v súčasnosti nedokáže preniesť focus na položku priamo pod alebo nad aktuálne zameranou.

To je dosť výrazný problém. Napríklad pri spomínanom hraní šachu, jednoduché prejdenie z políčka C3 na C4 alebo C2 vyžaduje nie jedno, no rovno 8 švihnutí. Prejdenie z políčka A1 na H8 zaberie namiesto 14 švihnutí 63, pričom ak si svoj cieľ používateľ počas cesty rozmyslí, musí sa prešvihať všetkými políčkami nazad, aby sa dostal na pôvodnú pozíciu.

To je nie len vyčerpávajúce a časovo náročné, no tiež to kompletne narúša obraz o situácii, ktorý sa snaží rozloženie mriežky poskytnúť.

Projekt VerticalNavigation rieši tento problém. Pozostáva z dvoch pluginov, ktoré dokopy umožňujú čítaču obrazovky navigovať na prvok priamo nad alebo pod práve zameraným.

## Zostavenie

Príprava balíčkov zo zdrojových kódov by mala byť jednoduchým procesom:
1. Naklonujte repozitár, či už cez webové rozhranie GitHubu, alebo príkazom:\
```git clone https://github.com/RastislavKish/VerticalNavigation```
2. Pre "kompiláciu" pluginov, jednoducho zbaľte obsah ich priečinkov (NavigateDown, NavigateUp) do .zip archívu. Príponu zmeňte na .ppk, názov daný súboru bude použitý ako názov pluginu.

Každý release na GitHube taktiež obsahuje už predpripravené .ppk súbory, ktoré si môžete priamo stiahnuť a použiť.

## Inštalácia a použitie

Po tom, čo ste získali súbory pluginov, stačí ich skopírovať do Vášho zariadenia, nájsť pomocou ľubovoľného správcu súborov a otvoriť pomocou JSR. Zobrazí sa dialóg žiadajúci o potvrdenie inštalácie. Po jeho odsúhlasení by príslušný plugin mal byť nainštalovaný a pripravený na použitie.

Potom už môžete priradiť doplnkom gestá:
1. Otvorte aplikáciu Jieshuo a prejdite do ponuky Všeobecné nastavenia.
2. Uistite sa, že je začiarknuté políčko Používať voliteľné gestá.
3. Prejdite do ponuky Nastavenie voliteľných gest a nájdite gesto, ktoré chcete použiť pre navigáciu nadol (napríklad švihnutie dole).
4. Po potvrdení vyberte zo zoznamu priradenie pluginu, a nájdite doplnok NavigateDown, respektíve názov, ktorý ste použili pre navigáciu nadol.
5. Zopakujte od kroku 3 pre pohyb nahor (odporúčané gesto je švihnutie nahor).

Pokiaľ používate schémy gest, môžete upravovať priamo tie.

## Známe obmedzenia

Primárnym cieľom VerticalNavigation bolo sprístupnenie hier založených na princípe mriežky či šachovnice, čo sa aj podarilo. Pokiaľ ide o všeobecné použitie, doplnky majú dve výrazné obmedzenia:
* Neobsahujú mechanizmus pre automatické scrollovanie, kvôli čomu sú ťažko využiteľné, ak je časť mriežky či napríklad zoznamu mimo obrazovky.
* Nemožno ich použiť pre navigáciu v tabuľkách na webe, nakoľko štruktúry tabuliek sú komplikovanejšie než štruktúry mriežok a vyžadujú si špeciálny prístup.

Oba tieto nedostatky sú známe, ich odstránenie je predmetom budúcich aktualizácií.

