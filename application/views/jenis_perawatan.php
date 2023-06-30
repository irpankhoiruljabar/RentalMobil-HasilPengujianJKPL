<div class="card">
    <div class="card-header">
        <a href="<?= base_url('jenis_perawatan/tambah') ?>" class="btn btn-primary btn-sm">Tambah <i
                class="fas fa-plus"></i></a>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <table class="table table-bordered table-striped">
            <thead>

                <tr class="text-center">
                    <th>#</th>
                    <th>Nama</th>
                    <th>Action</th>
                </tr>
            </thead>
            <?php $no = 1;
            foreach ($jenis_perawatan as $jns) : ?>
            <tbody>
                <tr class="text-center">
                    <td><?= $no++ ?></td>
                    <td><?= $jns->nama ?></td>
                    <td>
                        <button data-toggle="modal" data-target="#edit<?= $jns->id ?>" class="btn btn-warning btn-sm"><i
                                class="fas fa-edit"></i></button>
                        <a href="<?= base_url('jenis_perawatan/delete/' . $jns->id) ?>" class="btn btn-danger btn-sm"><i
                                class="fas fa-trash"></i></a>
                    </td>
                </tr>
            </tbody>
            <?php endforeach
            ?>
        </table>
    </div>
</div>

<!-- Button trigger modal -->


<!-- Modal -->
<?php foreach ($jenis_perawatan as $jns) : ?>
<div class="modal fade" id="edit<?= $jns->id ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Edit Data Jenis Perawatan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="<?= base_url('jenis_perawatan/edit/' . $jns->id) ?>" method="POST">
                    <div class="card-body">
                        <div class="form-group">

                            <div class="form-group">
                                <label>Nama</label>
                                <input type="text" name="nama" class="form-control" value="<?= $jns->nama ?>">
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<?php endforeach ?>