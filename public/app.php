<?php

require_once("../includes/initialize.php");

global $session;

if(!$session->is_logged_in())
{
    redirect_to("index.php");
}
else
{
    if($session->user_level > 1)
    {
        redirect_to("mobile_website/categories.php");
    }
}

$group = Group::get_by_id($session->user_group_id);

if($group == null)
{
    die("Group: " . $group_id . " does not exists.");
}

?>
<!DOCTYPE HTML>
<html>
<head>

    <meta charset="UTF-8" />
	<meta name="Oliver Martinez" content="BundledFun" />
	<title>BundledFun</title>

    <link href="css/fonts.css" rel="stylesheet"/>
    <link href="css/app.css" rel="stylesheet"/>
    <link href="css/south-street/jquery-ui-1.9.0.custom.css" rel="stylesheet" media="screen" />
    <link href="css/ui.jqgrid.css" rel="stylesheet" media="screen" />
    <style>
        .ui-tooltip {
            border: 1px solid white;
            background: #388EFF;
            color: #FFFFFF;
        }
    </style>

</head>

<body>

    <div id="main_container">
        <section id="main_section">
            <section id="main_content">

                <ul id="nav-bar">
                    <li><a href="upload_questions.php" title="This is where you can upload and manage question files." >Question Files</a></li>
                    <li><a href="upload_users.php" title="This is where you can upload and manage user's files." >User Files</a></li>
                    <li><a href="mobile_website/categories.php" title="This link will take you to the page where you can test your quiz.">Quiz Page</a></li>
                    <li><a href="logout.php" >Logout</a></li>
                </ul>
                
                <div id="tabs">
                    <ul>
                        <?php

                        if($session->user_level == 0)
                        {
                            echo '<li id="groups-tab"><a href="groups.php"><span>Groups</span></a></li>';
                        }

                        ?>
                        <li><a href="users.php" title="Shows you the users from your group.<br/> This is also the place where you can manage your users."><span>Users</span></a></li>
                        <li><a href="questions.php" title="Shows you the questions from your group.<br/> This is also the place where you can manage your questions."><span>Questions</span></a></li>
                        <li><a href="scores.php" title="Shows you the scores from your users.<br/> This is also the place where you can manage scores from your users."><span>Scores</span></a></li>
                    </ul>
                </div>
                
            </section>
            
        </section>
    </div>

    <script src="js/jquery-1.8.2.js"></script>
    <script src="js/jquery-ui-1.9.0.custom.js"></script>
    <script src="js/i18n/grid.locale-en.js"></script>
    <script src="js/jquery.jqGrid.min.js"></script>
    <script src="js/jquery.printPage.js"></script>
    <script src="js/jquery.qrcode.min.js"></script>
    <script src="js/printElement.js"></script>
  
    <script>

    $(function() {
        $( document ).tooltip({
            position: 
            {
                my: "center top",
                at: "center bottom+5",
            },
            show: 
            {
                effect: "slideDown",
                delay: 1500
            },
            hide: 
            {
                delay: 0
            }
        });
    });

    $('#tabs').tabs({
        load: function(event, ui) 
        {
            $(ui.panel).delegate('a', 'click', function(event) 
            {
                $(ui.panel).load(this.href);
                event.preventDefault();
            });
        }
    });

    $(".btnPrint").printPage();

    </script>

</body>
</html>