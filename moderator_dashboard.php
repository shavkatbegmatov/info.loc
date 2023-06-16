<?php

if (!isset($_SESSION)) {
	session_start();
}

require 'connect.php';

if (isset($_SESSION['auth'])) {
    if ($_SESSION['auth']['role'] == 'admin') {
        header('Location: admin_dashboard.php');
    }
} else {
    header('Location: index.php');
}

if (!empty($_POST)) {
    if ($_POST['post_type'] == 'branch') {
        $branch = R::dispense('branch');
        if ($_POST['type'] == '04') {
            $parent = $_SESSION['auth']['branch'];
        } else {
            $parent = $_POST['parent'];
        }
        if ($check_unique = R::findOne('branch', 'code = ?', [$parent])) {
            if ($check_isset = R::findOne('branch', 'code = ?', [$parent])) {
                if ($_POST['type'] == '05' and $check_isset['type'] == '03') {
                    echo 'Parent\'s type is not valid!';
                } else {
                    $parent_branch = R::findOne('branch', 'code = ?', [$parent]);
                    if ($_POST['type'] == '05' and $parent_branch['parent'] != $_SESSION['auth']['branch']) {
                        echo 'You don\'t have permission for this! 2';
                    } else {
                        

                        $branch['name'] = $_POST['name'];
                        $branch['type'] = $_POST['type'];
                        $branch['parent'] = $parent;
                
                    
                        if ($_POST['type'] != '05') {
                            $branch['code'] = $_POST['code'];
                        } else {
                            $random_code = '5' . rand(0, 9) . rand(0, 9) . rand(0, 9) . rand(0, 9);
                    
                            if (!$check_unique = R::findOne('branch', 'code = ?', [$random_code])) {
                                $branch['code'] = $random_code;
                            }
                        }
                    
                        R::store($branch);
                    }
                }
    
            } else {
                echo 'Parent not exists!';
            }
        } else {
            echo 'This code already taken!';
        }
    } else if ($_POST['post_type'] == 'contact') {
        $contact = R::dispense('contact');

        $contact['first_name'] = $_POST['first_name'];
        $contact['middle_name'] = $_POST['middle_name'];
        $contact['last_name'] = $_POST['last_name'];
        $contact['parent'] = $_POST['parent'];
        $contact['position'] = $_POST['position'];
        $contact['tel_in'] = $_POST['tel_in'];
        $contact['tel_corp'] = $_POST['tel_corp'];
        $contact['tel_out'] = $_POST['tel_out'];

        R::store($contact);
    }
}


if ($_SESSION['auth']['branch'] == '11037') {
    $filial = 'Департамент';
    $otdel = 'Управление';
} else {
    $filial = 'Филиал';
    $otdel = 'Отдел';
}

?>

<script src="assets/jquery_3.6.4.min.js"></script>
<script src="assets/semantic.min.js"></script>
<link rel="stylesheet" href="assets/semantic.min.css" />

<div class="ui container">

    <br>

    <div class="ui relaxed grid">
        <div class="eight wide column">
            <a href="auth_logout.php" class="ui red button">Покинуть</a>
        </div>
        <div class="eight wide column">
            <h1>Ваш филиал: <?php echo R::findOne('branch', 'code = ?', [$_SESSION['auth']['branch']])['name']; ?></h1>
        </div>
    </div>



    <br>

    <div class="ui two column very relaxed grid">
        <div class="column">
            <form class="ui form" style="width: 500px;" action="moderator_dashboard.php" method="POST">
                <h1>Добавить <?php echo $filial; ?></h1>
                <input type="hidden" name="post_type" value="branch">
                <div class="field">
                    <label>Тип</label>
                    <select class="ui selection dropdown" name="type" onchange="changeDetect()" id="type_select">
                        <option value="04"><?php echo $filial; ?></option>
                        <option value="05"><?php echo $otdel; ?></option>
                    </select>
                </div>
                <div  class="field" id="parent">
                    <label><?php echo $filial; ?></label>
                    <?php $branches = R::findAll('branch', 'parent = ?', [$_SESSION['auth']['branch']]); ?>
                    <select class="ui selection dropdown" name="parent" id="parent_select">
                        <?php foreach ($branches as $branch): ?>
                            <option value="<?php echo $branch['code']; ?>"><?php echo $branch['name']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div  class="field" id="code">
                    <label>Код</label>
                    <input name="code">
                </div>
                <div  class="field">
                    <label>Названия</label>
                    <input name="name">
                </div>
                <button class="ui blue button" type="submit">Отправить</button>
            </form>
            <table class="ui celled table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Тип</th>
                        <th>Код</th>
                        <th>Названия</th>
                        <th>Родитель. код</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $branches = R::findAll('branch', 'parent = ? and type = ?', [$_SESSION['auth']['branch'], '04']); ?>
                    <?php foreach ($branches as $branch): ?>
                        <tr>
                            <td><?php echo $branch['id']; ?></td>
                            <td><?php echo $branch['type']; ?></td>
                            <td><?php echo $branch['code']; ?></td>
                            <td><?php echo $branch['name']; ?></td>
                            <td><?php echo $branch['parent']; ?></td>
                            <td>
                                <div class="ui vertical buttons">
                                    <a class="ui red mini button" href="delete_branch.php?id=<?php echo $branch['id']; ?>">Удалить</a>
                                    <a class="ui mini button" href="edit_branch.php?id=<?php echo $branch['id']; ?>">Изменить</a>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <div class="column">
            <form class="ui form" style="width: 500px;" action="moderator_dashboard.php" method="POST">
                <h1>Добавить контакт</h1>
                <input type="hidden" name="post_type" value="contact">
                <div  class="field" id="parent_branch">
                    <label><?php echo $filial; ?></label>
                    <?php $branches = R::findAll('branch', 'parent = ? and type = ?', [$_SESSION['auth']['branch'], '04']); ?>
                    <select class="ui selection dropdown" name="parent_branch" id="parent_branch_select" onchange="func();">
                        <option value="">Выберите</option>
                        <?php foreach ($branches as $branch): ?>
                            <option value="<?php echo $branch['code']; ?>"><?php echo $branch['name']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div  class="field" id="parent_otdel">
                    <label><?php echo $otdel; ?></label>
                    <?php $branches = R::findAll('branch', 'type = ?', ['05']); ?>
                    <select class="ui selection dropdown" name="parent" id="parent_otdel_select">
                        <option value="" class="">Выберите</option>
                        <?php foreach ($branches as $branch): ?>
                            <option value="<?php echo $branch['code']; ?>" class="<?php echo $branch['parent']; ?>"><?php echo $branch['name']; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <div class="field" id="code">
                    <label>Имя</label>
                    <input name="first_name">
                </div>
                <div class="field">
                    <label>Фамилия</label>
                    <input name="last_name">
                </div>
                <div class="field">
                    <label>Отчество</label>
                    <input name="middle_name">
                </div>
                <div class="field">
                    <label>Должность</label>
                    <input name="position">
                </div>
                <div class="field">
                    <label>Внут. номер</label>
                    <input name="tel_in">
                </div>
                <div class="field">
                    <label>Корп. номер</label>
                    <input name="tel_corp">
                </div>
                <div class="field">
                    <label>Номер</label>
                    <input name="tel_out">
                </div>
                
                <button class="ui blue button" type="submit">Отправить</button>
            </form>
        </div>
    </div>
</div>


<script>
let parent = document.getElementById('parent');

parent.style.display = 'none';

function changeDetect() {
    let select_value = document.getElementById('type_select').value;
    let code = document.getElementById('code');
    
    if (select_value == '05') {
        code.style.display = 'none';
        parent.style.display = 'block';
    } else {
        code.style.display = 'block';
        parent.style.display = 'none';
    }
}

function func() {
    let select_value = $('#parent_branch_select option:selected').val();
    $('#parent_otdel_select option:not(.' + select_value + ')').remove();

    //alert('#parent_otdel_select option:not(.' + select_value + ')');
}

$('.selection').dropdown();
</script>