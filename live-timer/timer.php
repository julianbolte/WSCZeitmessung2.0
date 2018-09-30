<?php
$ready = isset($_GET['address_start']) && isset($_GET['address_ziel']);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Liver Timer</title>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="styles/general-style.css">
    <link type="text/css" rel="stylesheet" href="styles/clock-style.css">
    <link type="text/css" rel="stylesheet" href="styles/settings-style.css">
</head>

<body>
    <span class="data" id="addresses" data-address-start="<?php if($ready) echo $_GET['address_start']; ?>" data-address-ziel="<?php if($ready) echo $_GET['address_ziel']; ?>"></span>
    <div class="content-wrapper">
        <?php if($ready) require_once 'clock.php'; ?>
    </div>
    <?php if($ready) require_once 'settings.php'; ?>
</body>

</html>
