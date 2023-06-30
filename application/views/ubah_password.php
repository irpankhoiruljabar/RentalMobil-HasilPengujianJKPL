<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ubah Password</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="<?= base_url('asset/template') ?>/https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url('asset/template') ?>/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="<?= base_url('asset/template') ?>/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- AdminLTE style -->
    <link rel="stylesheet" href="<?= base_url('asset/template') ?>/dist/css/adminlte.min.css">
</head>

<body class="hold-transition login-page bg-primary">
    <div class="login-box">
        <div class="login-logo">
            <a href="<?= base_url('asset/template') ?>/index2.html"><b>Rental</b>MOBIL</a>
        </div>
        <!-- /.login-logo -->
        <div class="card">
            <div class="card-body login-card-body">
                <p class="login-box-msg">Ubah Password</p>

                <form action="<?= base_url('login/simpan_password') ?>" method="post">
                    <input type="hidden" name="email" value="<?= $email ?>">
                    <div class="form-group">
                        <label for="password">Password Baru:</label>

                        <input type="password" class="form-control" name="password" id="password" required>
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Konfirmasi Password Baru:</label>

                        <input type="password" class="form-control" name="confirm_password" id="confirm_password"
                            required>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block">Simpan Password</button>
                        </div>
                    </div>
                </form>

            </div>
            <!-- /.login-card-body -->
        </div>
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="<?= base_url('asset/template') ?>/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?= base_url('asset/template') ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url('asset/template') ?>/dist/js/adminlte.min.js"></script>
</body>







</html>