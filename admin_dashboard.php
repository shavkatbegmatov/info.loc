<?php

if (!isset($_SESSION)) {
    session_start();
}

require 'connect.php';

if (isset($_SESSION['auth'])) {
    if ($_SESSION['auth']['role'] == 'moderator') {
        header('Location: moderator_dashboard.php');
    }
} else {
    header('Location: index.php');
}

if (!empty($_POST)) {
    if ($_POST['post_type'] == 'branch') {
        $branch = R::dispense('branch');
        $branch['code'] = $_POST['code'];
        $branch['name'] = $_POST['name'];
        $branch['type'] = '03';
        $branch['parent'] = '01037';

        R::store($branch);
    } else if ($_POST['post_type'] == 'member') {
        $member = R::dispense('member');
        $member['login'] = $_POST['login'];
        $member['password'] = $_POST['password'];
        $member['branch'] = $_POST['branch'];
        $member['role'] = 'moderator';

        R::store($member);
    }
}

$branches = R::findAll('branch', 'type = ?', ['03']);
$members = R::findAll('member', 'role = ?', ['moderator']);

?>

<script src="assets/jquery_3.6.4.min.js"></script>
<script src="assets/semantic.min.js"></script>
<link rel="stylesheet" href="assets/semantic.min.css" />

<div class="ui container">

    <br>

    <a class="ui red button" href="auth_logout.php">Покинуть</a>

    <br>
    <br>

    <div class="ui two column very relaxed grid">
        <div class="column">
            <form class="ui form" action="admin_dashboard.php" method="POST">
                <h1>Добавить региональ. филиал</h1>
                <input type="hidden" name="post_type" value="branch">
                <div class="field">
                    <label>Код</label>
                    <input name="code">
                </div>
                <div class="field">
                    <label>Названия</label>
                    <input name="name">
                </div>
                <button class="ui blue button" type="submit">Отправить</button>
            </form>
            <table class="ui celled table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Код</th>
                        <th>Названия</th>
						<th>Действия</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($branches as $branch): ?>
                        <tr>
                            <td><?php echo $branch['id']; ?></td>
                            <td><?php echo $branch['code']; ?></td>
                            <td><?php echo $branch['name']; ?></td>
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
            <form class="ui form" action="admin_dashboard.php" method="POST">
                <h1>Добавить модератора</h1>
                <input type="hidden" name="post_type" value="member">
                <div class="field">
                    <label>Логин</label>
                    <input name="login">
                </div>
                <div class="field">
                    <label>Пароль</label>
                    <input name="password">
                </div>
                <div class="field">
                    <label>Филиал модератора</label>
                    <select class="ui selection dropdown" name="branch">
                        <?php $branches = R::findAll('branch', 'type = ?', ['03']); ?>
                        <?php foreach ($branches as $branch): ?>
                            <option value="<?php echo $branch['code']; ?>"><?php echo $branch['name']; ?> (<?php echo $branch['code']; ?>)</option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <button class="ui blue button" type="submit">Отправить</button>
            </form>
            <table class="ui celled table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Логин</th>
                        <th>Пароль</th>
                        <th>Филиал модератора</th>
                        <th>Действия</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $moderators = R::findAll('member', 'role = ?', ['moderator']); ?>
                    <?php foreach ($moderators as $moderator): ?>
                        <tr>
                            <td><?php echo $moderator['id']; ?></td>
                            <td><?php echo $moderator['login']; ?></td>
                            <td>••••••</td>
                            <td><?php echo R::findOne('branch', 'code = ?', [$moderator['branch']])['name']; ?></td>
                            <td>
                                <div class="ui vertical buttons">
                                    <a class="ui red mini button" href="delete_moderator.php?id=<?php echo $moderator['id']; ?>">Удалить</a>
                                    <a class="ui mini button" href="edit_moderator.php?id=<?php echo $moderator['id']; ?>">Изменить</a>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    $('.selection').dropdown();
</script>