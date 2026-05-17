# Používateľská príručka frontendu

Táto dokumentácia popisuje obrazovky webovej aplikácie ISIC Project a základný spôsob práce s nimi. Aplikácia slúži na správu rozvrhu, študentov, dochádzky a hardvérových čítačiek ISIC kariet.

Obrazovky sú rozdelené podľa roly používateľa:

- **Admin** spravuje učiteľské účty a hardvérové zariadenia.
- **Teacher** spravuje semester, rozvrhové jednotky, import študentov, dochádzku a svoje zariadenia.

## Prihlásenie

Po otvorení aplikácie sa zobrazí prihlasovací formulár. Používateľ zadá login a heslo, potom klikne na **Potvrdiť**.

![Prihlásenie](frontend-user-guide-images/01-login.png)

Ak sú údaje nesprávne, aplikácia zobrazí chybovú správu. Po úspešnom prihlásení aplikácia automaticky otvorí úvodnú obrazovku podľa roly používateľa.

## Admin

### Správa učiteľov a zariadení

Admin po prihlásení vidí prehľadový panel so štatistikami a zoznamom učiteľov. V hornej časti sú rýchle akcie:

- **Hardware konzola** otvorí správu zariadení.
- **Obnoviť** znovu načíta učiteľov a zariadenia.
- **Odhlásiť sa** ukončí reláciu.

![Admin panel](frontend-user-guide-images/02-admin-dashboard.png)

Karty v hornej časti zobrazujú počet učiteľov, počet zariadení, počet nepriradených čítačiek a počet online zariadení. Sekcia **Teacheri** obsahuje vyhľadávanie podľa mena, e-mailu alebo ISIC čísla.

### Vytvorenie učiteľa

Nového učiteľa admin vytvorí tlačidlom **Nový učiteľ** alebo **Otvoriť formulár**. Formulár vyžaduje meno, priezvisko, e-mail, heslo a ISIC číslo.

![Nový učiteľ](frontend-user-guide-images/03-admin-new-teacher.png)

Po vyplnení údajov treba kliknúť na **Vytvoriť**. ISIC číslo sa používa pri párovaní zariadení, preto je povinné.

### Úprava učiteľa

Pri existujúcom učiteľovi slúži tlačidlo **Upraviť** na otvorenie editačného formulára. Povinné ostávajú meno, priezvisko, e-mail a ISIC číslo. Heslo je voliteľné; vyplní sa iba vtedy, keď ho chce admin zmeniť.

![Úprava učiteľa](frontend-user-guide-images/04-admin-edit-teacher.png)

Zmeny sa uložia tlačidlom **Uložiť**. Tlačidlo **Zrušiť** zatvorí formulár bez uloženia.

### Odstránenie učiteľa

Tlačidlo **Odstrániť** otvorí potvrdenie. Admin musí odstránenie potvrdiť, aby sa predišlo náhodnému zmazaniu účtu.

![Odstránenie učiteľa](frontend-user-guide-images/05-admin-delete-teacher.png)

### Hardware konzola admina

V hardvérovej konzole admin vidí spoločný inventár zariadení. Zariadenia možno filtrovať podľa stavu **all**, **online** alebo **offline**.

![Admin hardware konzola](frontend-user-guide-images/06-admin-hardware.png)

Admin vidí priradené aj nepriradené čítačky v jednom zozname. Detail zariadenia sa otvorí kliknutím na konkrétnu položku v zozname.

### Detail zariadenia

Detail zariadenia obsahuje identifikátor zariadenia, online/offline stav, health stav, priradeného učiteľa, lokáciu a poslednú aktivitu. Pri offline zariadení sú live požiadavky vypnuté.

![Detail zariadenia](frontend-user-guide-images/07-admin-hardware-detail.png)

V spodnej časti sú sekcie:

- **Health** slúži na vyžiadanie a zobrazenie health payloadu.
- **Metrics** slúži na vyžiadanie a zobrazenie metrík.
- **Config** umožňuje vyžiadať konfiguráciu, upraviť JSON a publikovať konfiguráciu späť do zariadenia.

## Teacher

### Týždenný kalendár

Teacher po prihlásení vidí kalendár semestra. Horný panel obsahuje výber semestra, aktuálny týždeň a hlavné akcie.

![Kalendár učiteľa](frontend-user-guide-images/08-teacher-calendar.png)

Vľavo je zoznam týždňov. Kliknutím na týždeň sa načíta rozvrh a dochádzka pre daný týždeň. Stred obrazovky tvorí týždenná mriežka s dňami a časmi.

Horné akcie:

- **Pridať semester** vytvorí nový semester.
- **Odstrániť semester** odstráni vybraný semester po potvrdení.
- **Export dochádzky** exportuje dochádzku predmetu.
- **Import študentov** otvorí CSV import.
- **Pridať rozvrh. jednotka** vytvorí prednášku, cvičenie alebo laboratórium.
- **Zariadenia** otvorí hardvérovú obrazovku učiteľa.

### Vytvorenie semestra

Dialóg **Nový semester** slúži na zadanie názvu, začiatku a počtu týždňov. Koniec semestra aplikácia dopočíta podľa zadaného dátumu začiatku a počtu týždňov.

![Nový semester](frontend-user-guide-images/09-teacher-new-semester.png)

Po vyplnení údajov treba kliknúť na **Vytvoriť**. Nový semester sa následne zobrazí vo výbere semestrov.

### Pridanie rozvrhovej jednotky

Rozvrhová jednotka môže byť opakujúca sa alebo jednorazová. Formulár obsahuje názov predmetu, čas začiatku a konca, typ hodiny, miestnosť, farbu, opakovanie a dni v týždni.

![Pridanie rozvrhovej jednotky](frontend-user-guide-images/10-teacher-schedule-entry.png)

Po vytvorení sa jednotka zobrazí v kalendári. Kliknutie na voľné miesto v kalendári môže predvyplniť deň a čas novej jednotky.

### Import študentov

Import študentov sa používa na nahratie CSV súboru k vybranému predmetu. Najprv treba vybrať predmet a následne presunúť CSV súbor do importnej zóny alebo kliknúť na výber súboru.

![Import študentov](frontend-user-guide-images/11-teacher-import-students.png)

Odkaz **Stiahnuť vzor** stiahne ukážkový CSV súbor v očakávanom formáte.

### Export dochádzky

Dialóg exportu umožňuje vybrať predmet a exportovať jeho dochádzku vo formáte CSV.

![Export dochádzky](frontend-user-guide-images/12-teacher-export-attendance.png)

Po kliknutí na **Exportovať CSV** prehliadač stiahne súbor s dochádzkou.

### Kalendár s rozvrhovou jednotkou

Ak má vybraný týždeň rozvrhovú jednotku, zobrazí sa priamo v časovej mriežke. Karta hodiny obsahuje názov predmetu a typ hodiny.

![Kalendár s hodinou](frontend-user-guide-images/13-teacher-calendar-with-lesson.png)

Kliknutím na kartu hodiny sa otvorí detail udalosti s dochádzkou študentov.

### Detail udalosti a dochádzka

Bočný panel detailu udalosti zobrazuje predmet, typ hodiny, dátum, čas, opakovanie a zoznam študentov. Učiteľ tu vie meniť stav dochádzky jednotlivých študentov.

![Detail udalosti](frontend-user-guide-images/14-teacher-event-panel.png)

Dostupné akcie:

- **Zmena udalosti** otvorí formulár úpravy rozvrhovej jednotky.
- **Export študentov** exportuje zoznam študentov predmetu.
- Vyhľadávacie pole filtruje študentov podľa mena alebo identifikátora.
- Ikona filtra otvorí filter podľa stavu dochádzky.
- Ikona maximalizácie otvorí širší prehľad predmetu naprieč týždňami.

### Zmena stavu dochádzky

Pri každom študentovi je rozbaľovacie menu so stavom dochádzky. Učiteľ môže nastaviť hodnoty **Prítomný**, **Neprítomný**, **Náhrada** alebo **Ospravedlnený**.

![Zmena stavu dochádzky](frontend-user-guide-images/15-teacher-status-menu.png)

Zmena sa uloží priamo po výbere novej hodnoty.

### Filter študentov

Filter umožňuje obmedziť zoznam študentov podľa aktuálneho stavu dochádzky. Po výbere stavu treba kliknúť na **Potvrdiť**.

![Filter študentov](frontend-user-guide-images/16-teacher-filter-modal.png)

Tlačidlo **Zrušiť** zavrie filter bez zmeny.

### Prehľad predmetu

Maximalizovaný prehľad predmetu zobrazuje študentov v riadkoch a týždne v stĺpcoch. Učiteľ tak vidí dochádzku predmetu naprieč celým semestrom.

![Prehľad predmetu](frontend-user-guide-images/17-teacher-subject-overview.png)

V tomto zobrazení možno meniť stavy dochádzky podobne ako v bočnom paneli. Prehľad obsahuje aj akcie na úpravu udalosti, export študentov a odstránenie predmetu.

### Hardware obrazovka učiteľa

Teacher hardware obrazovka slúži na párovanie a kontrolu čítačiek priradených učiteľovi. V hornej časti je zobrazený aktívny ISIC učiteľa a stručné pravidlá párovania.

![Teacher hardware](frontend-user-guide-images/18-teacher-hardware.png)

Učiteľ môže zariadenie priradiť dvoma spôsobmi:

- spustiť párovanie vo webe a následne naskenovať svoj teacher ISIC na zariadení,
- naskenovať teacher ISIC priamo na čítačke bez predchádzajúceho kliknutia vo webe.

Po úspešnom párovaní sa zariadenie zobrazí v zozname **Moje zariadenia**. Detail priradeného zariadenia potom umožní kontrolovať health a metrics dáta.

## Odhlásenie

Odhlásenie je dostupné v hornej časti admin obrazoviek a ako ikonové tlačidlo v kalendári učiteľa. Po odhlásení sa používateľ vráti na prihlasovaciu obrazovku.

## Poznámky k práci s aplikáciou

- Zmeny dochádzky sa ukladajú priamo pri výbere nového stavu.
- Offline zariadenia nevedia odpovedať na live požiadavky, preto sú niektoré tlačidlá vypnuté.
- CSV import vyžaduje správny formát súboru; najbezpečnejšie je vychádzať zo vzoru dostupného v importnom dialógu.
- Ak sa zoznamy alebo stavy neaktualizujú, použite tlačidlo **Obnoviť**.
