<?php 
    require('./includes/config.php');
    $cards = mysqli_query($conn, 'SELECT * FROM cards WHERE type="characters"');
    ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="./css/style.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@100;300&display=swap" rel="stylesheet" />
        <title>Genshin Impact Guide</title>
    </head>
    <body>
        <?php $page='characters'; include('./includes/navbar.php');?>
        <div class="content container-fluid pt-3">
            <div class="sub-menu mb-3">
                <div class="d-flex">
                    <div class="mx-2"><img src="./images/icons/Element_Electro.png" id="electro" /></div>
                    <div class="mx-2"><img src="./images/icons/Element_Geo.png" id="geo" /></div>
                    <div class="mx-2"><img src="./images/icons/Element_Hydro.png" id="hydro" /></div>
                    <div class="mx-2"><img src="./images/icons/Element_Pyro.png" id="pyro" /></div>
                    <div class="mx-2"><img src="./images/icons/Element_Anemo.png" id="anemo" /></div>
                    <div class="mx-2"><img src="./images/icons/Element_Cryo.png" id="cryo" /></div>
                    <div class="d-flex ml-auto">
                        <div class="mr-2 mt-1">Search for a character...</div>
                        <div class="">
                            <div class="input-group">
                                <input type="text" class="form-control" id="character-search" />
                                <div class="input-group-append">
                                    <div class="input-group-text"><i class="fa fa-search"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="cards-area"></div>
        </div>
        <div class="modal fade" id="card-modal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header p-0">
                        <h5 class="modal-title"></h5>
                    </div>
                    <div class="modal-body p-0"></div>
                </div>
            </div>
        </div>
    </body>
</html>
<script src="./js/script.js"></script>
<script>
    <?php
        $all = [];
        while($card = mysqli_fetch_assoc($cards)){
          $data = array( 'name'=> $card['name'], 'image'=> $card['image'], 'filters' => json_decode($card['filters']));
          array_push($all, $data);
        }
        echo 'const all='.json_encode($all).';';
        ?>
    showCards(all);
</script>

