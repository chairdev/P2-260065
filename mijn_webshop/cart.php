<?php
session_start();
require __DIR__ . '/includes/db.php';

$cart = $_SESSION['cart'] ?? [];
$products = $pdo->query('SELECT id, naam, prijs, afbeelding, voorraad FROM producten')->fetchAll(PDO::FETCH_UNIQUE);
$cart = array_intersect_key($cart, $products);

function AddToCart($id) {
    global $cart, $products;
    // Check if the product exists and if the quantity in the cart is less than the available stock
    if (isset($products[$id]) && ($cart[$id] ?? 0) < $products[$id]['voorraad']) {
        $cart[$id] = ($cart[$id] ?? 0) + 1;
    }
}

function UpdateCart($quantities) {
    global $cart, $products;
    foreach ($cart as $id => $quantity) {
        // Ensure the quantity is a non-negative number and does not exceed available stock
        $quantity = max(0, (int) ($quantities[$id] ?? 0));
        $cart[$id] = min($quantity, (int) $products[$id]['voorraad']);

        // If the quantity is 0, remove the product from the cart
        if ($cart[$id] === 0) {
            unset($cart[$id]);
        }
    }
}

function RemoveFromCart($id) {
    global $cart;
    unset($cart[$id]);
}

function ClearCart() {
    global $cart;
    $cart = [];
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action'] ?? '';
    switch ($action) {
        case 'add':
            AddToCart((int) ($_POST['product_id'] ?? 0));
            break;
        case 'update':
            UpdateCart($_POST['quantities'] ?? []);
            break;
        case 'remove':
            RemoveFromCart((int) ($_POST['product_id'] ?? 0));
            break;
        case 'clear':
            ClearCart();
            break;
        default:
            $action = '';
    }

    $_SESSION['cart'] = $cart;
    // Redirect to avoid form resubmission
    header('Location: cart.php');
    exit;
}

$_SESSION['cart'] = $cart;
$total = 0;
?>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Winkelwagen | Re:Play Station</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div id="container">
        <?php require __DIR__ . '/includes/header.php'; ?>

        <main class="cart-page">
            <h2>Winkelwagen</h2>

            <?php if (!$cart) { ?>
                <p>Je winkelwagen is nog leeg.</p>
                <a class="cart-continue" href="index.php">Bekijk onze producten</a>
            <?php } else { ?>
                <form action="cart.php" method="post">
                    <input type="hidden" name="action" value="update">
                    <div class="cart-items">
                        <?php foreach ($cart as $id => $quantity) {
                            $product = $products[$id];
                            $lineTotal = (float) $product['prijs'] * $quantity;
                            $total += $lineTotal;
                        ?>
                            <article class="cart-item">
                                <img src="images/<?php echo htmlspecialchars($product['afbeelding'] ?? '', ENT_QUOTES, 'UTF-8'); ?>" alt="">
                                <div class="cart-item-info">
                                    <h3><?php echo htmlspecialchars($product['naam'], ENT_QUOTES, 'UTF-8'); ?></h3>
                                    <p>&euro; <?php echo number_format($product['prijs'], 2, ',', '.'); ?> per stuk</p>
                                </div>
                                <label class="cart-quantity">
                                    Aantal
                                    <input type="number" name="quantities[<?php echo (int) $id; ?>]" min="0" max="<?php echo (int) $product['voorraad']; ?>" value="<?php echo (int) $quantity; ?>">
                                </label>
                                <p class="cart-line-total">&euro; <?php echo number_format($lineTotal, 2, ',', '.'); ?></p>
                                <button class="cart-remove" type="submit" form="remove-<?php echo (int) $id; ?>">Verwijderen</button>
                            </article>
                        <?php } ?>
                    </div>
                    <div class="cart-actions">
                        <button type="submit">Winkelwagen bijwerken</button>
                        <a class="cart-continue" href="index.php">Verder winkelen</a>
                    </div>
                </form>

                <?php foreach ($cart as $id => $quantity) { ?>
                    <form id="remove-<?php echo (int) $id; ?>" action="cart.php" method="post" hidden>
                        <input type="hidden" name="action" value="remove">
                        <input type="hidden" name="product_id" value="<?php echo (int) $id; ?>">
                    </form>
                <?php } ?>

                <p class="cart-total">Totaal: &euro; <?php echo number_format($total, 2, ',', '.'); ?></p>
                <form action="cart.php" method="post">
                    <input type="hidden" name="action" value="clear">
                    <button class="cart-remove" type="submit">Winkelwagen leegmaken</button>
                </form>
            <?php } ?>
        </main>

        <?php require __DIR__ . '/includes/footer.php'; ?>
    </div>
</body>
</html>
