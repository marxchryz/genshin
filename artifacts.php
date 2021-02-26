<?php
    require('./includes/config.php');
    ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="./css/style.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src=https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/js/jquery.dataTables.min.js></script>
        <script src=https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/js/dataTables.bootstrap4.min.js></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@100;300&display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet">
        <title>Genshin Impact Guide</title>
    </head>
    <body>
        <?php $page='artifacts'; include('./includes/navbar.php');?>
        <div class="content container-fluid pt-3">
            <div class=container>
                <table cellspacing=0 class="table" id="artifacts-table" width=100%>
                <thead>
                    <tr>
                        <th colspan=2>Artifact Set</th>
                        <th>Max Rarity</th>
                        <th>2-Piece Bonus</th>
                        <th>4-Piece Bonus</th>
                        <th>Location</th>
                    </tr>
                </thead>
                <tfoot>
                <tbody>
                    <?php
                        $res = mysqli_query($conn, "SELECT * FROM artifacts ORDER BY artifact");
                        while($row = mysqli_fetch_assoc($res)):?>
                    <tr>
                        <td><img class="artifact" src="<?=$row['image']?>"></td>
                        <td class="artifacts" data="<?=$row['image']?>"><?=$row['artifact']?></td>
                        <td class="rarity"><?=$row['rarity']?></td>
                        <td><?=$row['two-piece']?></td>
                        <td><?=$row['four-piece']?></td>
                        <td><?=$row['location']?></td>
                    </tr>
                    <?php endwhile;?>
                    </tfoot>
                </tbody>
            </div>
        </div>
    </body>
</html>
<script>
    $(function() {
      try{
        $('#artifacts-table').DataTable({paging: false, info: false});
      }catch(err){
    
      }
      $('.rarity').each(function(){
        rarity = this.innerText;
        this.innerText = '';
        for(i = 0; i < rarity; i++){
          this.innerHTML += '<img class="star" src="./images/icons/star.png">'
        }
      })
    });
</script>
<script src="./js/script.js"></script>

