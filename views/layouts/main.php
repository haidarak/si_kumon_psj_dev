<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\components\widgets\Flash;
use app\components\widgets\Title;

AppAsset::register($this);

/* @var $user \app\models\User */
$user = Yii::$app->user->identity;

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue fixed sidebar-mini">
<?php $this->beginBody() ?>
<div class="wrapper">
    <header class="main-header">
        <a href="<?= Url::to() ?>" class="logo">
            <span class="logo-mini"><b>A</b>LT</span>
            <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<?= Url::to("@web/{$user->picture}") ?>" class="user-image" alt="User Image">
                            <span class="hidden-xs"><?= $user->realname ?></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="<?= Url::to("@web/{$user->picture}") ?>" class="img-circle" alt="User Image">
                                <p>
                                    <?= $user->realname ?>
                                </p>
                            </li>
        
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <aside class="main-sidebar">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="<?= Url::to("@web/{$user->picture}") ?>" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p><?= $user->realname ?></p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <?= $this->render('/layouts/menu')?>
        </section>
    </aside>
    <!-- =============================================== -->
    <div class="content-wrapper">
        <section class="content-header clearfix" >
            <?= Title::widget([
                'header' => isset($this->params['header']) ? $this->params['header'] : '',
                'description' => isset($this->params['description']) ? $this->params['description'] : ''
            ]) ?>
            <?= Breadcrumbs::widget([
                'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : []
            ]) ?>
        </section>
        <section class="content">
            <?= Flash::widget() ?>
            <?= $content ?>
        </section>
    </div>
    <footer class="main-footer">
        <div class="pull-right hidden-xs"><?= Yii::powered() ?></div>
        <strong>Copyright &copy; <?= date('Y') ?> <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
        reserved.
    </footer>
    <!-- =============================================== -->
    <?= $this->render('/layouts/sidebar') ?>
</div>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
