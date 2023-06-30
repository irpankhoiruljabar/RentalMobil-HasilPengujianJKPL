<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lupa Password</title>

    <!-- CSS -->
    <link rel="stylesheet" href="<?= base_url('asset/template') ?>/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="<?= base_url('asset/template') ?>/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('asset/template') ?>/dist/css/adminlte.min.css">
</head>

<body class="hold-transition login-page bg-primary">
    <div class="login-box">
        <div class="login-logo">
            <a href="<?= base_url('asset/template') ?>/index2.html"><b>Rental</b>MOBIL</a>
        </div>
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Lupa Password</p>

                <form action="<?= base_url('login/reset_password') ?>" method="post">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Email" name="email">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block">Reset Password</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script src="<?= base_url('asset/template') ?>/plugins/jquery/jquery.min.js"></script>
    <script src="<?= base_url('asset/template') ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url('asset/template') ?>/dist/js/adminlte.min.js"></script>
</body>

</html>
