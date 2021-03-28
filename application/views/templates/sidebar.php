 <!-- Hero -->
 <body>
  <!-- Header -->
  <header id="home" class="header">
    <!-- Navigation -->
    <nav class="nav">
      <div class="navigation container">
        <div class="logo">
          <h1>Codevo</h1>
        </div>

        <div class="menu">
          <div class="top-nav">
            <div class="logo">
              <h1>Codevo</h1>
            </div>
            <div class="close">
              <i class="bx bx-x"></i>
            </div>
          </div>


          <ul class="nav-list ">
            <li class="nav-item">
              <a href="<?php echo base_url('index.php') ?>" class="nav-link scroll-link">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Product</a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="<?php echo base_url('kategori/pakaian_pria') ?>">Pakaian Pria</a>
                <a class="dropdown-item" href="<?php echo base_url('kategori/pakaian_wanita') ?>">Pakaian Wanita</a>
                <a class="dropdown-item" href="<?php echo base_url('kategori/pakaian_anak_anak') ?>">Pakaian Anak</a>
              </div>
            </li>
            <li class="nav-item">
              <a href="#about" class="nav-link scroll-link">About</a>
            </li>
            <li class="nav-item">
              <a href="#contact" class="nav-link scroll-link">Contact</a>

              <li class="nav-item">
                <div class="navbar">
                  <ul class="nav navbar-nav navbar-right">
                    <li>
                      <?php
                      $keranjang = '<i class="bx bx-shopping-bag"></i></a>' .$this->cart->total_items(). 'items'
                      ?>

                      <?php echo anchor('dashboard/detail_keranjang', $keranjang) ?>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>


          <div class="cart-icon">
            <ul class="nav navbar-nav navbar-right">
              <li>
                <?php
                $keranjang = '<i class="bx bx-shopping-bag"></i></a>' .$this->cart->total_items(). 'items'
                ?>

                <?php echo anchor('dashboard/detail_keranjang', $keranjang) ?>
              </li>
            </ul>
          </div>

          <div class="hamburger">
            <i class="bx bx-menu"></i>
          </div>
        </div>
      </nav>
      <div class="topbar-divider d-none d-sm-block"></div>

      <ul class="nav navbar-nav navbar-right">
        <?php if($this->session->userdata('username')) { ?>
          <li><div><?php echo $this->session->userdata('username') ?></div></li>
          <li class="ml-2"><?php echo anchor('auth/logout', 'Logout') ?></li>
        <?php } else { ?>
         <li><?php echo anchor('auth/login', 'Login') ?></li>

       <?php   } ?>

     </ul>
     <div class="hero-content">
      <h2><span class="discount">70% </span> SALE OFF</h2>
      <h1>
        <span>Summer Vibes</span>
        <span>mode on</span>
      </h1>
      <a class="btn" href="#">shop now</a>
    </header>

