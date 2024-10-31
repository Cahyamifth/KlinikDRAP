<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-primary elevation-4" style="background-color: #17a2b8;">

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <a href="<?php echo base_url(); ?>index.php/dashboard" class="nav-link"><b>Klinik Dokter Anita Purba</b></a>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="<?php echo base_url(); ?>index.php/dashboard" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>    
          <li class="nav-item menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Data
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/suplier/data" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Suplier</p>
                </a>
              </li>
              <?php if($level == 'pemilik') { ?>
              <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/obat/data" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Obat</p>
                </a>
              </li>
              <?php } ?>
              <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/laporan/obatmasuk" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Obat Masuk</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/laporan/obatkeluar" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Data Obat Keluar</p>
                </a>
              </li>
            </ul>
          </li>
          <?php if($level == 'pemilik') { ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Transaksi
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/transaksi/obatmasuk" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Obat Masuk</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/transaksi/obatkeluar" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Obat Keluar</p>
                </a>
              </li>
            </ul>
          </li>
          <?php } ?>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cog"></i>
              <p>
                Pengaturan
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/pengaturan/profile" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Profile</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url(); ?>index.php/pengaturan/ubahpassword" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ubah Password</p>
                </a>
              </li>
            </ul>
            <li class="nav-item">
            <a href="<?php echo base_url(); ?>index.php/auth/logout" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Logout
              </p>
            </a>
          </li>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>