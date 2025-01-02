<?php
    include('koneksi.php');
    include('query.php');
    
    function setContent(){
        $contain = [
            "title" => getTitle(),
            "tableheader" => getTableHeader(),
            "tablecontent" => getTableContent()
        ];
        return $contain;
    }

    function getTitle(){
        $title = $_GET['p'] == 'mhs'?'Mahasiswa':ucfirst($_GET['p']);
        return $title;
    }

    function getTableContent(){
        $fields = getTableHeader();
        $row = [];
        foreach($fields as $field){
            $row[] = $field['COLUMN_NAME'];
        }
        $fields = implode(',',$row);
        $page = lcfirst(getTitle());
        $content = query("SELECT $fields FROM $page");

        return $content;
    }

    function getTableHeader(){
        global $db;
        $page = getTitle();
        $tableName = lcfirst($page);
        $amount = query("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME = '$tableName' 
                AND TABLE_SCHEMA = 'TRPL2B' 
                AND COLUMN_NAME NOT IN('prodi_id')");
        return $amount;        
    }
?>