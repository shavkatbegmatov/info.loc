<?php

if (!isset($_SESSION)) {
	session_start();
}

unset($_SESSION['auth']);

header('Location: index.php');