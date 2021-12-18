<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>Home</h2>
        </div>
        <?php if (isset($message)) {
    echo '<div class="alert bg-teal alert-dismissible" role="alert" id="flash-msg">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					'.$message.'
			    </div>';
}?>
    
    <div class="row">

                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="info-box bg-blue hover-expand-effect">
                        <div class="icon">
                            <i class="material-icons">face</i>
                        </div>
                        <div class="content">
                            <div class="text">TOTAL ALUMNI</div>
                            <div class="number count-to" data-from="0" data-to="125" data-speed="1000" data-fresh-interval="20"><?php echo $count_alumni; ?></div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="info-box-4 bg-red hover-zoom-effect">
                        <div class="icon">
                            <i class="material-icons col-white">today</i>
                        </div>
                        <div class="content">
                            <div class="text">HARI & TANGGAL SEKARANG</div>                            
                            <div class="number" id="date"></div>
                            <script>
                                var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
                                var date = new Date();
                                var weekday = new Array(7);
                                weekday[0] = "Minggu";
                                weekday[1] = "Senin";
                                weekday[2] = "Selasa";
                                weekday[3] = "Rabu";
                                weekday[4] = "Kamis";
                                weekday[5] = "Jum'at";
                                weekday[6] = "Sabtu";

                                var nowadays = weekday[date.getDay()];
                                var day = date.getDate();
                                var month = date.getMonth();
                                var year = date.getFullYear();
                                
                                document.getElementById("date").innerHTML =" " + nowadays + ", " + day + " " + months[month] + " " + year ;
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <div class="info-box-4 bg-blue hover-zoom-effect">
                        <div class="icon">
                            <i class="material-icons col-white">access_time</i>
                        </div>
                        <div class="content">
                            <div class="text">WAKTU SEKARANG</div>                            
                            <div class="number" id="time"></div>
                            
                        </div>
                    </div>
                </div>
                
                
                
                
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>
                               Hi! Welcome To Hogwarts School!! <?php echo humanize($is_user->first_name);?>!
                            </h2></strong>                         
                        </div>
                        <div class="body">
                            <p class="lead">
                                Anda saat ini sedang berada di halaman <i><?php echo humanize($group);?>..</i>
                            </p> 
                            <p><i>
                                Segala aktifitas yang anda lakukan akan saya pantau, mohon gunakan aplikasi ini dengan bijaksana.
                            </p></i>
                            <p><strong>
                            Hogwarts adalah salah satu sekolah sihir terbaik dunia yang berada di Inggris, tepatnya di Skotlandia 
                            yang berfungsi melatih anak-anak yang berumur mulai 11 hingga 18 tahun yang memiliki kemampuan sihir 
                            untuk menjadi para penyihir yang berkualitas. Hogwarts didirikan sekitar abad millenium yaitu sekitar 
                            tahun 1000M oleh empat penyihir hebat bernama Godric gryffindor, Salazar Slytherin, Rowena Ravenclaw, 
                            dan Helga Hufflepuff. Nama-nama mereka kemudian dijadikan sebagai nama asrama murid-murid Hogwarts yang 
                            memiliki kepribadian yang sesuai dengan keempat pendiri tersebut. Slogan Hogwarts adalah draco dormiens 
                            nunquam titillandus (bahasa Latin) yang secara harafiah berarti “seekor naga tidur jangan digelitiki/dipermainkan” 
                            atau di Indonesia lebih sering diterjemahkan sebagai “jangan mengganggu naga yang sedang tidur”.</p></strong>
                            <p class ="right"><i>
                            Hormat saya,                
                            Annisa.
                            </i>
                            </p>  
                            
                                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
</section>
    