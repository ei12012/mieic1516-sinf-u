<nav role="navigation" class="navbar navbar-default  navbar-static-top">
   <div class="container container-fluid">
      <div class="navbar-header">
         <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
            <span class="sr-only">Toggle navigation</span>
         </button>
         <a href="<?php echo $BASE_URL; ?>" class="navbar-brand">
            <span class="glyphicon glyphicon-home"></span> RvVo
         </a>
      </div>

      <div id="navbarCollapse" class="collapse navbar-collapse">
         <ul class="nav navbar-nav">
            <li>
               <a href="<?php echo $BASE_URL; ?>pages/jogos.php">
                  <span class="glyphicon glyphicon-tower"></span> Jogos
               </a>
            </li>

            <li>
               <a href="<?php echo $BASE_URL; ?>pages/pesquisa.php">
                  <span class="glyphicon glyphicon-search"></span> Pesquisa
               </a>
            </li>

            <li>
               <a href="#" data-toggle="modal" data-target="#myModal">
                  <span class="glyphicon glyphicon-signal"></span> Informação
               </a>
            </li>

         </ul>

         <ul class="nav navbar-nav navbar-right">
            <?php
            if (isset($_SESSION["login"]))
            {
               ?>
               <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="#" >
                     <span class="glyphicon glyphicon-user"></span>
                     <?php
                     if ($_SESSION["login"]["tipo"] == 1)
                     {
                        ?>Administrador <b class="caret"></b>
                     </a>
                     <ul role="menu" class="dropdown-menu">
                        <li>
                           <a href="<?php echo $BASE_URL; ?>pages/tarefas.php">
                              <span class="glyphicon glyphicon-pushpin"></span> Tarefas
                           </a>
                        </li>
                        <?php
                     }
                     else
                     {
                        ?>
                        <?php echo $_SESSION["login"]["dados"]["nome"]?> <b class="caret"></b>
                     </a>

                     <ul role="menu" class="dropdown-menu">
                        <li>
                           <a href="<?php echo $BASE_URL; ?>pages/carrinho.php">
                              <span class="glyphicon glyphicon-shopping-cart"></span> Meu carrinho
                           </a>
                        </li>
                        <li>
                           <a href="<?php echo $BASE_URL; ?>pages/conta.php">
                              <span class="glyphicon glyphicon-edit"></span> Minha conta
                           </a>
                        </li>
                        <?php
                     }
                     ?>
                     <li class="divider"></li>
                     <li>
                        <a href="<?php echo $BASE_URL; ?>action/logout.php">
                           <span class="glyphicon glyphicon-off"></span> Terminar sessão
                        </a>
                     </li>
                  </ul>
               </li>
               <?php
            }
            else
            {
               ?>
               <li>
                  <a href="<?php echo $BASE_URL; ?>pages/acesso.php">
                     <span class="glyphicon glyphicon-user"></span> Acesso
                  </a>
               </li>
               <?php
            }
            ?>
         </ul>
      </div>
   </div>

   <div id="myModal" class="modal fade" role="dialog">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal">&times;</button>
               <h4 class="modal-title">
                  <span class="glyphicon glyphicon-signal"></span>
                  <span>Rede de venda de Videojogos online (RvVo)</span>
               </h4>
            </div>

            <div class="modal-body">
               <p>Última actualização: 11 de Outubro de 2015</p>
               <p>Telefone: +351 22 508 14 00</p>
               <p>Correio Eletrónico: admin@rvvo.com</p>
            </div>
         </div>
      </div>
   </div>
</nav>
