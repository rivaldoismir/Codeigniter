<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

        <?php if (in_groups('master')) : ?>
            <!-- ------- ------- Group Sidebar ------- ------- -->
            <?= $this->include('templates/groups/nav_master'); ?>
            <!-- ------- ------- ./ Group Sidebar ------- ------- -->
        <?php elseif (in_groups('helpdesk')) : ?>
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