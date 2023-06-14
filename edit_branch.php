<?php

session_start();

require 'connect.php';

if (isset($_SESSION['auth'])) {
    // if ($_SESSION['auth']['role'] == 'moderator') {
    //     header('Location: moderator_dashboard.php');
    // }
} else {
    header('Location: index.php');
}

if (!empty($_GET['id']) && !empty($_POST)) {
    $branch = R::load('branch', $_GET['id']);

    $branch['code'] = $_POST['code'];
    $branch['name'] = $_POST['name'];

    R::store($branch);

    header('Location: admin_dashboard.php');
}

$branch = R::findOne('branch', 'id = ?', [$_GET['id']]);

?>

<script src="assets/jquery_3.6.4.min.js"></script>
<script src="assets/semantic.min.js"></script>
<link rel="stylesheet" href="assets/semantic.min.css" />

<div class="ui container">
    <br>
    <form class="ui form" action="edit_branch.php?id=<?php echo $_GET['id']; ?>" method="POST">
        <h1>Изменить филиал</h1>
        <div class="field">
            <label>Код</label>
            <input name="code" value="<?php echo $branch['code']; ?>">
        </div>
        <div class="field">
            <label>Название</label>
            <input name="name" value="<?php echo $branch['name']; ?>">
        </div>
        <button class="ui blue button" type="submit">Отправить</button>
    </form>
</div>