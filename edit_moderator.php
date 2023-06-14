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

if (!empty($_GET['id']) && !empty($_POST)) {
    $moderator = R::load('member', $_GET['id']);

    $moderator['login'] = $_POST['login'];
    $moderator['password'] = $_POST['password'];
    $moderator['branch'] = $_POST['branch'];

    R::store($moderator);

    header('Location: admin_dashboard.php');
}

$moderator = R::findOne('member', 'id = ?', [$_GET['id']]);

?>

<script src="assets/jquery_3.6.4.min.js"></script>
<script src="assets/semantic.min.js"></script>
<link rel="stylesheet" href="assets/semantic.min.css" />

<div class="ui container">
    <br>
    <form class="ui form" action="edit_moderator.php?id=<?php echo $_GET['id']; ?>" method="POST">
        <h1>Изменить модератора</h1>
        <div class="field">
            <label>Логин</label>
            <input name="login" value="<?php echo $moderator['login']; ?>">
        </div>
        <div class="field">
            <label>Пароль</label>
            <input name="password" value="<?php echo $moderator['password']; ?>">
        </div>
        <div class="field">
            <label>Филиал модератора</label>
            <select class="ui selection dropdown" name="branch">
                <?php $branches = R::findAll('branch', 'type = ?', ['03']); ?>
                <?php foreach ($branches as $branch): ?>
                    <option value="<?php echo $branch['code']; ?>" <?php if ($moderator['branch'] == $branch['code']) { echo 'selected'; } ?>><?php echo $branch['name']; ?> (<?php echo $branch['code']; ?>)</option>
                <?php endforeach; ?>
            </select>
        </div>
        <button class="ui blue button" type="submit">Отправить</button>
    </form>
</div>

<script>
    $('.selection').dropdown();
</script>