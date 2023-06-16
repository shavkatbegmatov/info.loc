<?php

if (!isset($_SESSION)) {
	session_start();
}

require 'connect.php';

if ($member = R::findOne('member', 'login = ? and password = ?', [$_POST['login'], $_POST['password']])) {
    $_SESSION['auth']['id'] = $member['id'];
    $_SESSION['auth']['login'] = $member['login'];
    $_SESSION['auth']['branch'] = $member['branch'];
    $_SESSION['auth']['role'] = $member['role'];
} else {
    //echo 'Uncorrect login or password!';
}

header('Location: index.php');