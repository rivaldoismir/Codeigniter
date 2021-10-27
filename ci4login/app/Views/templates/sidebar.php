<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

        <!-- ------- ------- General ------- ------- -->
        <li class="nav-item mb-3">
            <a href="#" class="nav-link">
                <i class="nav-icon fas fa-user-cog"></i>
                <p>
                    User Settings
                    <i class="fas fa-angle-left right"></i>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="<?= base_url('user'); ?>/profile" class="nav-link">
                        <i class="fas fa-id-card nav-icon"></i>
                        <p>My Profile</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<?= base_url('user'); ?>/chngpass" class="nav-link">
                        <i class="fas fa-cog nav-icon"></i>
                        <p>Ganti Password</p>
                    </a>
                </li>
            </ul>
        </li>
        <!-- ------- ------- ./ General ------- ------- -->

        <?php if (in_groups('master')) : ?>
            <!-- ------- ------- Group Sidebar ------- ------- -->
            <?= $this->include('templates/groups/nav_master'); ?>
            <!-- ------- ------- ./ Group Sidebar ------- ------- -->
        <?php else : ?>
            <!-- ------- ------- Group Sidebar ------- ------- -->
            <?= $this->include('templates/groups/nav_helpdesk'); ?>
            <!-- ------- ------- ./ Group Sidebar ------- ------- -->
        <?php endif; ?>


        <!-- ------- ------- General ------- ------- -->
        <li class="nav-item mt-3">
            <a href="<?= base_url('logout'); ?>" class="nav-link">
                <i class="fas fa-sign-out-alt nav-icon"></i>
                <p>Logout</p>
            </a>
        </li>
        <!-- ------- ------- ./ General ------- ------- -->


    </ul>
</nav>