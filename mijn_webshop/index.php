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
       <?php
            require __DIR__ . '/includes/header.php';
            require __DIR__ . '/includes/db.php';

            $producten = $pdo->query("SELECT * FROM producten")->fetchAll();
        ?>

        <main>
            <h2>Onze producten</h2>
                <div class="product-grid">
                    <?php foreach ($producten as $product) { ?>
                        <div class="product-card">
                            <img src="images/<?php echo $product['afbeelding']; ?>" alt="<?php echo $product['naam']; ?>">
                            <h2><?php echo $product['naam']; ?></h2>
                            <p class="price">&euro; <?php echo number_format($product['prijs'], 2, ',', '.'); ?></p>
                            <a href="detail.php?id=<?php echo $product['id']; ?>">Bekijk</a>
                        </div>
                    <?php } ?>
                </div>
        </main>

        <?php require __DIR__ . '/includes/footer.php'; ?>
    </div>
</body>
</html>