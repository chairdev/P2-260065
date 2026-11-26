<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mega Man Battle Network 6 | Re:Play Station</title>
    <link rel="stylesheet" href="css/style.css?v=<?= filemtime(__DIR__ . '/css/style.css') ?>">
</head>
<body>
    <div id="container">
        <?php
            include "includes/db.php";
            include "includes/header.php";
    
            // Get id parameter from URL
            $id = $_GET['id'] ?? null;

            $product = $pdo->query("SELECT * FROM producten WHERE id = $id")->fetch();
        ?>

        <main class="detail-page">
            <a class="back-link" href="index.php">&larr; Terug naar alle producten</a>

            <article class="product-detail">
                <div class="product-image-panel">
                    <?php

                        if ($product) {
                            echo '<img src="images/' . $product['afbeelding'] . '" alt="' . $product['naam'] . '">';
                            echo '<span class="condition-badge">' . $product['conditie'] . '</span>';
                        }
                    ?>
                </div>

                <div class="product-info">
                    <?php
                        if ($product) {
                            echo '<p class="eyebrow">' . $product['platform'] . ' &middot; ' . $product['uitgever'] . '</p>';
                            echo '<h2>' . $product['naam'] . '</h2>';
                            echo '<p class="detail-price">&euro; ' . number_format($product['prijs'], 2, ',', '.') . '</p>';
                            echo '<p class="intro">' . $product['uitgebreide_omschrijving'] . '</p>';
                            
                             echo '<dl class="product-specs">
                                <div>
                                    <dt>Platform</dt>
                                    <dd>' . $product['platform'] . '</dd>
                                </div>
                                <div>
                                    <dt>Uitgever</dt>
                                    <dd>' . $product['uitgever'] . '</dd>
                                </div>
                                <div>
                                    <dt>Regio</dt>
                                    <dd>' . $product['regio'] . '</dd>
                                </div>
                            </dl>';
                            }
                    ?>

                    <div class="purchase-area">
                        <?php
                        // Check if the product exists and display stock status and button accordingly
                            if($product) {
                                $vooraad = $product['voorraad'];
                                if ($vooraad > 0) {
                                    echo '<p class="stock-status"><span aria-hidden="true"></span> Op voorraad (' . $vooraad . ' beschikbaar)</p>';
                                    echo '<button type="button">Toevoegen aan winkelmand</button>';
                                } else {
                                    echo '<p class="stock-status out-of-stock"><span aria-hidden="true"></span> Niet op voorraad</p>';
                                }
                            }
                        ?>
                    </div>
                </div>
            </article>

            <section class="description">
                <h2>Over dit product</h2>
                <?php
                    if ($product) {
                        echo '<p>' . $product['omschrijving'] . '</p>';
                    }
                ?>
            </section>
        </main>

        <footer>
            &copy; 2026 Re:Play Station
        </footer>
    </div>
</body>
</html>