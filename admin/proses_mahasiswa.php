<?php
    if($_GET['proses'] == 'insert'){
        if(isset($_POST['submit'])){
            include('../koneksi.php');
            
            $nama = $_POST['nama'];
            $nim = $_POST['nim'];
            $jk = $_POST['jenis_kelamin'];
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


            $insert = mysqli_query($db,"INSERT INTO mahasiswa(nim,nama,tanggal_lahir,jenis_kelamin,email,alamat,prodi_id,hobi) VALUES ('$nim','$nama','$tgl_lhr','$jk','$email','$alamat','$prodi','$hobby')");
            if($insert){
                echo("<script>window.location='index.php?p=mhs'</script>");
            }

        }
    }
    if($_GET['proses'] == 'delete'){
        include('../koneksi.php');
        $hapus = mysqli_query($db, "DELETE FROM mahasiswa WHERE nim = $_GET[nim]");

        if($hapus){
            header("location:index.php?p=mhs");
        }
    }
    if($_GET['proses'] == 'update'){
        if(isset($_POST['submit'])){
            include('../koneksi.php');
            
            $nama = $_POST['nama'];
            $nim = $_POST['nim'];
            $jk = $_POST['jenis_kelamin'];
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


            $update = mysqli_query($db,"UPDATE mahasiswa SET 
                nama='$nama',
                tanggal_lahir='$tgl_lhr',
                jenis_kelamin='$jk',
                email='$email',
                alamat='$alamat',
                prodi_id='$prodi',
                hobi='$hobby'
                WHERE nim='$nim'");
            if($update){
                echo("<script>window.location='index.php?p=mhs'</script>");
            }else {
                echo "Error: " . mysqli_error($db);
            }

        }
    }
