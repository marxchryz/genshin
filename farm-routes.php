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
        <?php $page='routes'; include('./includes/navbar.php');?>
        <div class="content container-fluid pt-3 pb-3">
            <div class="container">
                <div class="card farm-routes-menu">
                    <div class="card-title py-2 px-4">Choose farming route:</div>
                    <div class="py-2 px-4">
                        <div class="row">
                            <div class="col text-center"><img src="./images/icons/meat.png" id="meat"><br>Meat</div>
                            <div class="col text-center"><img src="./images/icons/crab.png" id="crab"><br>Crab</div>
                            <div class="col text-center"><img src="./images/icons/bamboo shoot.png" id="bamboo"><br>Bamboo Shoot</div>
                            <div class="col text-center"><img src="./images/icons/insignia.png" id="insignia"><br>Insignia</div>
                            <div class="col text-center"><img src="./images/icons/arrowhead.png" id="arrowhead"><br>Arrowhead</div>
                            <div class="col text-center"><img src="./images/icons/small lamp grass.png" id="small-lamp-grass"><br>Small Lamp Grass</div>
                            <div class="col text-center"><img src="./images/icons/jueyun chili.png" id="jueyun"><br>Jueyun Chili</div>
                        </div>
                        <div class="row">
                            <div class="col text-center"><img src="./images/icons/valberry.png" id="valberry"><br>Valberry</div>
                            <div class="col text-center"><img src="./images/icons/dandelion seeds.png" id="dandelion"><br>Dandelion Seeds</div>
                            <div class="col text-center"><img src="./images/icons/violetgrass.png" id="violetgrass"><br>Violetgrass</div>
                            <div class="col text-center"><img src="./images/icons/qingxin flower.png" id="qingxin"><br>Qingxin Flower</div>
                            <div class="col text-center"><img src="./images/icons/philanemo mushroom.png" id="philanemo"><br>Philanemo Mushroom</div>
                            <div class="col text-center"><img src="./images/icons/starconch.png" id="starconch"><br>Starconch</div>
                            <div class="col text-center"><img src="./images/icons/loach pearl.png" id="loach-pearl"><br>Loach Pearl</div>
                        </div>
                        <div class="row">
                            <div class="col text-center"><img src="./images/icons/crystal core.png" id="crystal-core"><br>Crystal Core</div>
                            <div class="col text-center"><img src="./images/icons/noctilucous jade.png" id="noctilucous"><br>Noctilucous Jade</div>
                            <div class="col text-center"><img src="./images/icons/crystal chunk.png" id="crystal-chunk"><br>Crystal Chunk</div>
                            <div class="col text-center"><img src="./images/icons/magic crystal.png" id="magic-crystal"><br>Magic Crystal</div>
                            <div class="col text-center"><img src="./images/icons/cor lapis.png" id="cor-lapis"><br>Cor Lapis</div>
                            <div class="col text-center"><img src="./images/icons/artifacts.png" id="artifacts"><br>Artifacts</div>
                            <div class="col text-center"><img src="./images/icons/elite boss.png" id="elite-boss"><br>Elite Boss</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="routes-modal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header p-0">
                        <h5 class="modal-title"></h5>
                    </div>
                    <div class="modal-body p-0">
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<script src="./js/script.js"></script>

