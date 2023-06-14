<?php

session_start();

require 'connect.php';

if (isset($_SESSION['auth'])) {
    if ($_SESSION['auth']['role'] == 'moderator') {
        header('Location: moderator_dashboard.php');
    }
} else {
    header('Location: index.php');
}

if (!empty($_GET['id'])) {
    $moderator = R::load('member', $_GET['id']);

    R::trash($moderator);
}

header('Location: admin_dashboard.php');

?>