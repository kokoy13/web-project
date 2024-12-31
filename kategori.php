
<?php
        $aksi=isset($_GET['aksi']) ? $_GET['aksi'] : 'list';
        switch($aksi){
            case 'list':
    ?>

<h3 class="mb-4">Daftar Kategori</h3>
    <table class="table table-bordered table-striped" id="example">
        <thead>
        <tr>
            <th>id</th>
            <th>Nama kategori</th>
        </tr>
            </thead>

            <tbody>
        <?php 
            include('koneksi.php');
            $getData = mysqli_query($db,"SELECT * FROM kategori");
            $no = 1;
            while($kategori = mysqli_fetch_array($getData)){
        ?>
            <tr>
                <td><?= $kategori['id'] ?></td>
                <td><?= $kategori['nama_kategori'] ?></td>
            </tr>
        <?php 
            $no++;
            } 
        ?>
        </tbody>
    </table>
    <?php
    break;

    case 'input':
        ?>
        <div class="row justify-content-center  py-5">    
        <form action="proses_kategori.php?proses=insert" method="post" class="col-md-4">
        <h3 class="mb-5">Form Prodi</h3>
            <div class="mb-3 pb-3">
                <label for="nama_kategori" class="form-label">Nama kategori</label>
                <input type="text" name="nama_kategori" class="form-control" id="nama_kategori" required autofocus>
            </div>
            <button type="submit" class="btn btn-primary" name="submit">Simpan</button>
            <button type="reset" class="btn btn-warning">Reset</button>
        </form>

        

    </div>
        <?php
            break;

            case 'edit':
                ?>

<?php
        include('../koneksi.php');
        $getData = mysqli_query($db,"SELECT * FROM prodi WHERE id = $_GET[id_edit]");
        $no = 1;
        
        $prodi = mysqli_fetch_array($getData);

    ?>


    <div class="row justify-content-center  py-5">    
        <form action="" method="post" class="col-md-4">
        <h3 class="mb-5">Edit Prodi</h3>
            <div class="mb-3 pb-3">
                <label for="id" class="form-label">Id</label>
                <input type="number" name="" class="form-control" id="id" required autofocus value="<?= $kategori['id'] ?>" disabled>
                <input type="hidden" name="id" class="form-control" id="id" required autofocus value="<?= $prodi['id'] ?>">
            </div>
            <div class="mb-3 pb-3">
                <label for="nama_kategori" class="form-label">Nama kategori</label>
                <input type="text" name="nama_kategori" class="form-control" id="nama_kategori" value="<?= $kategori['nama_kategori'] ?>" required autofocus>
            </div>
            <button type="submit" class="btn btn-warning" name="submit">Update</button>
            
        </form>

        <?php 
            if(isset($_POST['submit'])){
                include('../koneksi.php');
                
                $id = $_POST['id'];
                $nama_kategori = $_POST['nama_kategori'];


                $update = mysqli_query($db,"UPDATE kategori SET 
                    nama_kategori='$nama_kategori'
                    WHERE id='$id'");
                if($update){
                    echo("<script>window.location='index.php?p=kategori'</script>");
                }else {
                    echo "Error: " . mysqli_error($db);
                }

            }
        ?>

    </div>
    
                <?php
                break;
        }
   ?>
   
   
