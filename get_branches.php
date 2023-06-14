<?php

require 'connect.php';

$data = R::findAll('branch', 'parent = ?', [$_GET['data']]);

echo json_encode($data);