<!-- Hero -->
   <!--<img src="<?php echo base_url() ?>assets/images/banner.png" alt="" class="hero-img" />-->


  <!-- Hero -->
   <!--<img src="<?php echo base_url() ?>assets/images/banner.png" alt="" class="hero-img" /> -->

  <!-- Main -->
<main>
  <section class="advert section">
    <div class="advert-center container">
      <div class="advert-box">
        <div class="dotted">
          <div class="content">
            <h2>
              Girls <br />
              Clothing
            </h2>
            <h4>Worlds Best Brands</h4>
          </div>
        </div>
        <img src="<?php echo base_url()?>assets/images/advert1.png" alt="">
      </div>

      <div class="advert-box">
        <div class="dotted">
          <div class="content">
            <h2>
              Summer <br />
              Clothing
            </h2>
            <h4>Worlds Best Brands</h4>
          </div>
        </div>
        <img src="<?php echo base_url()?>assets/images/advert2.png" alt="">
      </div>

      <div class="advert-box">
        <div class="dotted">
          <div class="content">
            <h2>
              Boys <br />
              Clothing
            </h2>
            <h4>Worlds Best Brands</h4>
          </div>
        </div>
        <img src="<?php echo base_url()?>assets/images/advert3.png" alt="">
      </div>
    </div>
  </section>

  <section class="section featured">
    <div class="title">
      <h1>Latest Products</h1>
    </div>

    <div class="product-center container">
      <?php foreach ($pakaian_anak_anak as $brg) : ?>
      <div class="product">
        <div class="product-header">
        <img src="<?php echo base_url().'/uploads/'.$brg->gambar ?>" alt="...">
          <ul class="icons">
            <a href="<?php echo base_url('dashboard/tambah_ke_keranjang/'. $brg->id_brg) ?>"><span><i class="bx bx-shopping-bag"></i></span></a>
            <a href="<?php echo base_url('dashboard/detail/'. $brg->id_brg) ?>"><span><i class="bx bx-search"></i></span></a>
          </ul>
        </div>
        <div class="product-footer">
          <a href="<?php echo base_url('dashboard/detail/'. $brg->id_brg) ?>"><h3><?php echo $brg->nama_brg ?></h3></a>
          <div class="rating">
                      <small><?php echo $brg->keterangan ?></small><br>

          </div>
          <h4 class="price">Rp. <?php echo number_format($brg->harga),',','.'    ?></h4>
        </div>
      </div>
      <?php endforeach; ?>
    </div>
  </section>  
</div>


