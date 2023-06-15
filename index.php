<?php

if (!isset($_SESSION)) {
    session_start();
} 

require 'connect.php';

$contacts = R::findAll('contact');

if (isset($_SESSION['auth'])) {
    if ($_SESSION['auth']['role'] == 'admin') {
        header('Location: admin_dashboard.php');
    } else if ($_SESSION['auth']['role'] == 'moderator') {
        header('Location: moderator_dashboard.php');
    } else if ($_SESSION['auth']['role'] == 'user') {
        header('Location: index.php');
    } else {
        exit();
    }

}

$branches = R::findAll('branch', 'type = ?', ['03']);
$contacts = R::findAll('contact');

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Phone</title>

        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <style>
            * {
                box-sizing: border-box;
            }
            body {
                margin: 0px;
                background: black;
                overflow: hidden;
            }
            .step {
                width: 100%;
                height: 100vh;
                transform: translateX(100vw);
                transition: 0.3s ease-in-out;
                background-size: 100% !important;
                overflow: scroll;
            }
            .step-curtain {
                content: '';
                display: flex;
                flex-direction: column;
                padding-top: 100px;
                width: 100%;
                /* height: 100%; */
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: rgba(0, 0, 0, 0.65);
            }
            .step-1 {
                background: url(bg.jpg);
            }
            .step-2 {
                background: url(bg2.jpg);
            }
            .step-3 {
                background: url(bg3.jpg);
            }
            .step-4 {
                background: url(bg2.jpg);
            }
            .step-5 {
                background: url(bg.jpg);
            }
            .header {
                font-size: 0.85rem;
                line-height: 36px;
                text-transform: uppercase;
                font-family: 'Montserrat', sans-serif;
                font-weight: 400;
                letter-spacing: 5px;
                color: white;

                text-align: center;
            }
            .buttons {
                text-align: center;
            }
            .button {
                cursor: pointer;
                border-radius: 0px;
                Text-decoration: none;
                padding: 12px 18px;
                font-size: 12px;
                line-height: 19px;
                Text-transform: uppercase;
                font-family: 'Montserrat', sans-serif;
                font-weight: 400;
                letter-spacing: 3px;
                transition: all .2s ease-in-out;
                border: solid 2px #fff;
                background: transparent;
                color: #fff !important;
            }
            .sel-button {
                margin: 10px;
            }
            .input {
                width: 325px;
                outline: none;
                border-radius: 0px;
                padding: 12px 18px;
                font-size: 12px;
                line-height: 19px;
                text-transform: uppercase;
                font-family: 'Montserrat', sans-serif;
                font-weight: 400;
                letter-spacing: 3px;
                transition: all .2s ease-in-out;
                border: solid 2px #fff;
                background: #fff;
                color: black;
            }
            .searchInput {
                border-radius: 10px;
            }
            .button:hover {
                border:solid 2px #fff;
                background: #fff;
                color: #1f1f1f !important;
            }

            .button:not(:last-child) {
                margin-right: 8px;
            }
            .top-absolute {
                position: absolute;
                width: 100%;
                display: flex;
                justify-content: space-between;
                z-index: 1;
                top: 0px;
                left: 0px;
                padding: 24px;
                background-color: black;

            }
            .table {
                table-layout: fixed;
                width: 100%;
                min-width: 1125px;
                font-family: 'Montserrat', sans-serif;
                border-collapse: collapse;
                text-align: center;
                border-spacing: 0;
                background-color: rgba(0, 0, 0, 0.65);
            }
            .table td, .table th {
                padding: 12px 16px;
                Text-align: left;
                color: #fff;
            }
            .table tr:not(.table-head) {
                background: transparent;
                border-bottom: 1px solid #fff;
                width: 540px;
            }
            .table-head {
                font-size: 12px;
                line-height: 19px;
                text-transform: uppercase;
                font-family: 'Montserrat', sans-serif;
                font-weight: 400;
                letter-spacing: 2px;
                background: linear-gradient(90deg, #d53369 0%, #daae51 100%) !important;
            }
            .table th {
                padding-top: 12px;
                padding-bottom: 12px;
                background: transparent;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="top-absolute">
            <img src="qqb_logo_5.png" height=50 />
            <div>
                <button class="button" onclick="loadStep(1)">Bosh sahifa</button>
                <button class="button" onclick="loadStep(step - 1)">Ortga</button>
                
            </div>
            <input class="input searchInput" placeholder="Qidirish...">
            <button class="button" onclick="loadStep(5)">Tizimga kirish</button>
        </div>
        <div class="step step-1">
            <div class="step-curtain">
                <h1 class="header"></h1>
                <?php $ff = 1; ?>
                <div class="buttons" id="step-1-buttons">
                    <?php foreach ($branches as $branch): ?>
                        <button class="button sel-button" onclick="nextStep(`<?php echo $branch['code']; ?>`, 2, `<?php echo $branch['name']; ?>`)"><?php echo $branch['name']; ?></button>
                        <?php if ($ff++ == 7) echo "<br>"; ?>
                    <?php endforeach; ?>
                    <br>
                    <br>
                    <div style="overflow-x: auto;">
                        <table class="table">
                            <tr class="table-head">
                                <th>Id</th>
                                <th>Ism</th>
                                <th>Familiya</th>
                                <th>Otasining ismi</th>
                                <th>BXO kodi</th>
                                <th>Lavozimi</th>
                                <th>Ichki nomeri</th>
                                <th>Korporativ nomeri</th>
                                <th>Shaxsiy nomeri</th>
                            </tr>
                            <?php foreach ($contacts as $contact): ?>
                                <tr>
                                    <td><?php echo $contact['id']; ?></td>
                                    <td><?php echo $contact['first_name']; ?></td>
                                    <td><?php echo $contact['last_name']; ?></td>
                                    <td><?php echo $contact['middle_name']; ?></td>
                                    <td><?php echo $contact['parent']; ?></td>
                                    <td><?php echo $contact['position']; ?></td>
                                    <td><?php echo $contact['tel_in']; ?></td>
                                    <td><?php echo $contact['tel_corp']; ?></td>
                                    <td><?php echo $contact['tel_out']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="step step-2">
            <div class="step-curtain">
                <h1 class="header" id="step-2-header">Tanlang</h1>
                <div class="buttons" id="step-2-buttons">
                </div>
                <br>
                <div class="buttons">
                    <table class="table table-contacts">
                        <thead>
                            <tr class="table-head">
                                <th>Id</th>
                                <th>Ism</th>
                                <th>Familiya</th>
                                <th>Otasining ismi</th>
                                <th>BXO kodi</th>
                                <th>Lavozimi</th>
                                <th>Ichki nomeri</th>
                                <th>Korporativ nomeri</th>
                                <th>Shaxsiy nomeri</th>
                            </tr>
                        </thead>
                        <tbody id="step-2-table"></tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="step step-3">
            <div class="step-curtain">
                <h1 class="header" id="step-3-header">Choose your branch</h1>
                <div class="buttons" id="step-3-buttons">
                </div>
                <br>
                <div class="buttons">
                    <table class="table table-contacts">
                        <thead>
                            <tr class="table-head">
                                <th>Id</th>
                                <th>Ism</th>
                                <th>Familiya</th>
                                <th>Otasining ismi</th>
                                <th>BXO kodi</th>
                                <th>Lavozimi</th>
                                <th>Ichki nomeri</th>
                                <th>Korporativ nomeri</th>
                                <th>Shaxsiy nomeri</th>
                            </tr>
                        </thead>
                        <tbody id="step-3-table"></tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="step step-4">
            <div class="step-curtain">
                <h1 class="header" id="step-4-header">Table</h1>
                <div class="buttons">
                    <table class="table table-contacts">
                        <thead>
                            <tr class="table-head">
                                <th>Id</th>
                                <th>Ism</th>
                                <th>Familiya</th>
                                <th>Otasining ismi</th>
                                <th>BXO kodi</th>
                                <th>Lavozimi</th>
                                <th>Ichki nomeri</th>
                                <th>Korporativ nomeri</th>
                                <th>Shaxsiy nomeri</th>
                            </tr>
                        </thead>
                        <tbody id="step-4-table"></tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="step step-5">
            <div class="step-curtain">
                <h1 class="header">Tizimga kirish</h1>
                <div class="buttons">
                    <form action="auth.php" method="POST">
                        <input class="input" name="login"><br><br>
                        <input type="password" class="input" name="password"><br><br>
                        <button class="button">Login</button>
                    </form>
                </div>
            </div>
        </div>

        <script src="assets/jquery_3.6.4.min.js"></script>

        <script>
            let step = 1;

            function loadStep(load_step) {
                if (load_step == 0) {
                    load_step = 1;
                }
                step = load_step;
                if (load_step == 1) {
                    $('.step-2').css('transform', 'translateX(100vw)');
                    $('.step-3').css('transform', 'translateX(100vw)');
                    $('.step-4').css('transform', 'translateX(100vw)');
                    $('.step-5').css('transform', 'translateX(100vw)');
                    setTimeout(function(){
                        $('.step-2').hide();
                        $('.step-3').hide();
                        $('.step-4').hide();
                        $('.step-5').hide();
                        $('.step-1').show();
                        $('.step-1').css('transform', 'translateX(0px)');
                    }, 300);

                    bread = 'Asosiy';
                } else if (load_step == 2) {
                    $('.step-1').css('transform', 'translateX(100vw)');
                    $('.step-3').css('transform', 'translateX(100vw)');
                    $('.step-4').css('transform', 'translateX(100vw)');
                    $('.step-5').css('transform', 'translateX(100vw)');
                    setTimeout(function(){
                        $('.step-1').hide();
                        $('.step-3').hide();
                        $('.step-4').hide();
                        $('.step-5').hide();
                        $('.step-2').show();
                        $('.step-2').css('transform', 'translateX(0px)');
                    }, 300);
                } else if (load_step == 3) {
                    $('.step-1').css('transform', 'translateX(100vw)');
                    $('.step-2').css('transform', 'translateX(100vw)');
                    $('.step-4').css('transform', 'translateX(100vw)');
                    $('.step-5').css('transform', 'translateX(100vw)');
                    setTimeout(function(){
                        $('.step-1').hide();
                        $('.step-2').hide();
                        $('.step-4').hide();
                        $('.step-5').hide();
                        $('.step-3').show();
                        $('.step-3').css('transform', 'translateX(0px)');
                    }, 300);
                } else if (load_step == 4) {
                    $('.step-1').css('transform', 'translateX(100vw)');
                    $('.step-2').css('transform', 'translateX(100vw)');
                    $('.step-3').css('transform', 'translateX(100vw)');
                    $('.step-5').css('transform', 'translateX(100vw)');
                    setTimeout(function(){
                        $('.step-1').hide();
                        $('.step-2').hide();
                        $('.step-3').hide();
                        $('.step-5').hide();
                        $('.step-4').show();
                        $('.step-4').css('transform', 'translateX(0px)');
                    }, 300);
                } else if (load_step == 5) {
                    $('.step-1').css('transform', 'translateX(100vw)');
                    $('.step-2').css('transform', 'translateX(100vw)');
                    $('.step-3').css('transform', 'translateX(100vw)');
                    $('.step-4').css('transform', 'translateX(100vw)');
                    setTimeout(function(){
                        $('.step-1').hide();
                        $('.step-2').hide();
                        $('.step-3').hide();
                        $('.step-4').hide();
                        $('.step-5').show();
                        $('.step-5').css('transform', 'translateX(0px)');
                    }, 300);
                }
            }

            let bread = 'Asosiy';

            loadStep(1);

            function nextStep(info, next_step, text) {
                let header = document.getElementById('step-' + next_step + '-header');
                header.innerHTML = bread + ' > ' + text;
                bread = bread + ' > ' + text;

                $.ajax({
                    url: 'get_branches.php?data=' + info,
                    type: 'GET',
                    success: function(data) {
                        let result = JSON.parse(data);

                        let buttons = document.getElementById('step-' + next_step + '-buttons');

                        buttons.innerHTML = '';

                        Object.entries(result).forEach(([key, value]) => {
                            let button = document.createElement('button');
                            button.innerHTML = value.name;
                            button.setAttribute('class', 'button');
                            button.setAttribute('onclick', 'nextStep("' + value.code + '", ' + (next_step + 1) + ', "' + value.name + '")');
                            buttons.appendChild(button);
                        });
                    }
                });

                console.log(info);

                $.ajax({
                    url: 'get_contacts.php?data=' + info,
                    type: 'GET',
                    success: function(data) {
                        let result = JSON.parse(data);

                        console.log(result);

                        let resultArray = Object.entries(result);

                        let table = document.querySelector('#step-' + next_step + '-table');

                        table.innerHTML = '';

                        resultArray.forEach(([key, value]) => {
                            let el = `  <tr>
                                            <td>${value.id}</td>
                                            <td>${value.first_name}</td>
                                            <td>${value.last_name}</td>
                                            <td>${value.middle_name}</td>
                                            <td>${value.parent}</td>
                                            <td>${value.position}</td>
                                            <td>${value.tel_in}</td>
                                            <td>${value.tel_corp}</td>
                                            <td>${value.tel_out}</td>
                                        </tr>`;
                            table.innerHTML = table.innerHTML + el;
                        });
                    }
                });

                step++;

                loadStep(step);
            }

            $(document).ready(function(){
                $(".searchInput").on("keyup", function() {
                    let value = $(this).val().toLowerCase();
                    $(".table tr:not(.table-head)").filter(function() {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                    });
                });
            });
        </script>
    </body>
</html>