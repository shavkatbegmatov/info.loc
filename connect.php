<?php

session_start();

require 'rb.php';

R::setup('mysql:host=localhost;dbname=qqbphone;charset=utf8', 'root', 'root');
R::freeze(true);