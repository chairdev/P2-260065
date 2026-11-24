<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Re:Play Station</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div id="container">
        <?php require __DIR__ . '/includes/header.php'; ?>

        <main>
            <h2>Bestellen</h2>
            <div class="veld">
                <label for="voornaam">Voornaam</label>
                <input type="text" id="voornaam" name="voornaam" placeholder="Bijvoorbeeld: Sanne" required>
            </div>

            <div class="veld">
                <label for="achternaam">Achternaam</label>
                <input type="text" id="achternaam" name="achternaam" required>
            </div>

            <div class="veld">
                <label for="email">E-mailadres</label>
                <input type="email" id="email" name="email" placeholder="Bijvoorbeeld: sanne@example.com" required>
            </div>
            <div class="veld">
                <label for="adres">Adres</label>
                <input type="text" id="adres" name="adres" placeholder="Hoofdstraat 123" required>
            </div>
            <div class="veld">
                <label for="postcode">Postcode</label>
                <input type="text" id="postcode" name="postcode" placeholder="1234 AB" required>
            </div>
            <div class="veld">
                <label for="plaats">Plaats</label>
                <input type="text" id="plaats" name="plaats" placeholder="Amsterdam" required>
            </div>
            <div class="veld">
                <label for="land">Land</label>
                <input type="text" id="land" name="land" placeholder="Nederland" required>
            </div>
            <div class="veld">
                <label for="telefoon">Telefoon</label>
                <input type="tel" id="telefoon" name="telefoon" placeholder="0612345678" required>
            </div>
            <div class="veld">
                <label for="opmerkingen">Opmerkingen</label>
                <textarea id="opmerkingen" name="opmerkingen" placeholder="Graag inpakken als cadeau."></textarea>
            </div>
        </main>

        <footer>
            &copy; 2026 Re:Play Station
        </footer>
    </div>
</body>
</html>