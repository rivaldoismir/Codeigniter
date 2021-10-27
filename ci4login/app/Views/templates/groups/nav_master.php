<li class="nav-item">
    <a href="#" class="nav-link">
        <i class="nav-icon fas fa-tasks"></i>
        <p>
            User Management
            <i class="fas fa-angle-left right"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="<?= base_url('master'); ?>" class="nav-link">
                <i class="fas fa-users nav-icon"></i>
                <p>User List</p>
            </a>
        </li>
    </ul>
</li>

<li class="nav-header">Menu Helpdesk</li>
<!-- ------- ------- Group Sidebar ------- ------- -->
<?= $this->include('templates/groups/nav_helpdesk'); ?>
<!-- ------- ------- ./ Group Sidebar ------- ------- -->