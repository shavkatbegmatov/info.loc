<?php

if (!isset($_SESSION)) {
	session_start();
} 

require 'rb.php';

R::setup('mysql:host=localhost;dbname=qqbphone;charset=utf8', 'root', '');
R::freeze(true);