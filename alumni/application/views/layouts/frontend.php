<html>
	<head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <title><?php echo $title; ?></title>
        <!-- Favicon-->
        <link rel="icon" href="<?php echo base_url('assets'); ?>/favicon.ico" type="image/x-icon">

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  		<link href="<?php echo base_url('assets/frontend'); ?>/css/materialize.min.css"  media="screen,projection" type="text/css" rel="stylesheet" />
  		<link href="<?php echo base_url('assets/frontend'); ?>/css/aos.css" type="text/css" rel="stylesheet" />
  		<link href="<?php echo base_url('assets/frontend'); ?>/css/main.css"  type="text/css" rel="stylesheet" />
          <link href="<?php echo base_url('assets/frontend'); ?>/css/carousel.css" type="text/css" rel="stylesheet" />  
        <?php if (isset($_partial_css)) {
    echo $_partial_css;
} ?>
          
	</head>	
  	<body>  		
  		<div class="navbar-fixed">
			<nav>
		    	<div class="nav-wrapper teal">
		    		<div class="container">
			      		<ul id="nav-mobile" class="hide-on-med-and-down">
					        <li><?php echo anchor('main', '<i class="material-icons">school</i>'); ?></li>
					        <li><?php echo anchor('main/lulusan', 'Data Alumni'); ?></li>
                            <li><?php echo anchor('main/kegiatan', 'Kegiatan'); ?></li>                            
					        <li><?php echo anchor('main/about', 'Tentang Aplikasi'); ?></li>
                            <li><?php echo anchor('main/loker', 'Lowongan'); ?></li>
                            <li><?php echo anchor('auth/login', 'Login'); ?></li>
		      			</ul>
		      		</div>
		    	</div>
		  	</nav>
		</div>		
		<?php 
        if (isset($_view) && $_view) {
            $this->load->view($_view);
        }
    ?> 
        
		<script src="<?php echo base_url('assets/frontend'); ?>/js/jquery-3.2.1.min.js" type="text/javascript"></script>
		<script src="<?php echo base_url('assets/frontend'); ?>/js/materialize.min.js" type="text/javascript"></script>
		<script src="<?php echo base_url('assets/frontend'); ?>/js/aos.js" type="text/javascript"></script>
		<script src="<?php echo base_url('assets/frontend'); ?>/js/main.js" type="text/javascript"></script>
        <?php if ($this->uri->segment(2) == null):?>
            <script src="<?php echo base_url('assets/frontend'); ?>/js/carousel.js" type="text/javascript"></script>
        <?php endif; ?>
        
        <?php if (isset($_partial_js)) {
        echo $_partial_js;
    } ?>
    </body>
    
 </html>