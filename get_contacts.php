<?php

require 'connect.php';


if (R::findOne('branch', 'code = ?', [$_GET['data']])['type'] == '03') {
    $branches = R::findAll('branch', 'parent = ?', [$_GET['data']]);

    $array = [];
    
    foreach ($branches as $branch) {
        $type_five_branches = R::findAll('branch', 'parent = ?', [$branch['code']]);

        foreach ($type_five_branches as $type_five_branch) {
            if (R::findAll('contact', 'parent = ?', [$type_five_branch['code']])) {
                $array_tmp = R::findAll('contact', 'parent = ?', [$type_five_branch['code']]);

                $array = array_merge($array, $array_tmp);
            }
        }
    }
} else if (R::findOne('branch', 'code = ?', [$_GET['data']])['type'] == '04') {
    $branches = R::findAll('branch', 'parent = ?', [$_GET['data']]);

    $array = [];

    foreach ($branches as $branch) {
        if (R::findAll('contact', 'parent = ?', [$branch['code']])) {
            $array_tmp = R::findAll('contact', 'parent = ?', [$branch['code']]);

            $array = array_merge($array, $array_tmp);
        }
    }
} else if (R::findOne('branch', 'code = ?', [$_GET['data']])['type'] == '05') {
    $array = [];

    if (R::findAll('contact', 'parent = ?', [$_GET['data']])) {
        $array_tmp = R::findAll('contact', 'parent = ?', [$_GET['data']]);

        $array = array_merge($array, $array_tmp);
    }
}


echo json_encode($array);