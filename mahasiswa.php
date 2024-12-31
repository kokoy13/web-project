<?php
    $aksi = isset($_GET['aksi']) ? $_GET['aksi'] : 'list';

    switch ($aksi) {
        case 'list':
?>

    <h3 class="mb-4">Daftar Mahasiswa</h3>
        <table class="table table-bordered table-striped" id="example">
           <thead>
            <tr>
                <th>No</th>
                <th>NIM</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Prodi</th>
                <th>Jekel</th>
                <th>Alamat</th>
            </tr>
        </thead>
            <?php 
                include('koneksi.php');
                $getData = mysqli_query($db,"SELECT * FROM mahasiswa JOIN prodi ON mahasiswa.prodi_id = prodi.id");
                $no = 1;
                while($arrData = mysqli_fetch_array($getData)){
            ?>
           <tbody>
           <tr>
                <td><?= $no ?></td>
                <td><?= $arrData['nim'] ?></td>
                <td><?= $arrData['nama'] ?></td>
                <td><?= $arrData['email'] ?></td>
                <td><?= $arrData['nama_prodi'] ?></td>
                <td><?= $arrData['jk'] ?></td>
                <td><?= $arrData['alamat'] ?></td>
            </tr>
            </tbody>
        <?php 
            $no++;
            } 
        ?>
    </table>

        <?php 
            if(isset($_POST['submit'])){
                include('koneksi.php');
                
                $nama = $_POST['nama'];
                $nim = $_POST['nim'];
                $jk = $_POST['jk'];
                $prodi = $_POST['prodi'];
                $hobis = $_POST['hobi'];
                $alamat = $_POST['alamat'];
                $email = $_POST['email'];
                $tgl = $_POST['tgl'];
                $bln = $_POST['bln'];
                $thn = $_POST['thn'];

                $JenisKelamin = $jk == 'L' ? 'Laki-Laki' : 'Perempuan';
                $jurusan;

                $tgl_lhr = $thn . '-' . $bln . '-' . $tgl;
                $hobby = implode(',', $hobis);

            }
        ?>

    </div>

<?php 
        break;
    }
?>