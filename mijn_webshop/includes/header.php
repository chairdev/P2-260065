<header>
    <h1>Re:Play Station</h1>
    <nav aria-label="Hoofdnavigatie">
        <ul>
            <li><a href="index.php">Producten</a></li>
            <li><a href="#">Over ons</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="cart.php">Winkelwagen (<?php echo array_sum(array_map('intval', $_SESSION['cart'] ?? [])); ?>)</a></li>
        </ul>
    </nav>
</header>