<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminKelasJamController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "kelas_jam";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Id Kelas","name"=>"Id_Kelas","join"=>"kelas,Nama"];
			$this->col[] = ["label"=>"Id Jadwal","name"=>"Id_Jadwal","join"=>"jam,Jam"];
			$this->col[] = ["label"=>"Hari","name"=>"Hari"];
			$this->col[] = ["label"=>"Dosen, Matakuliah","name"=>"id_dos_mat","callback"=>function($row) {
				if(!empty($row->id_dos_mat)){
					$dosmat=DB::table('dos_mat')->find($row->id_dos_mat);
					$dosen=DB::table('dosen')->find($dosmat->Id_Dosen);
					$matkul=DB::table('matkul')->find($dosmat->Id_Matkul);
					return $dosen->Nama.", ".$matkul->Nama;
				}
				return '';
				}];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Id Kelas','name'=>'Id_Kelas','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'kelas,Nama'];
			$this->form[] = ['label'=>'Id Jadwal','name'=>'Id_Jadwal','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'jam,Jam'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Id Kelas','name'=>'Id_Kelas','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'kelas,Nama'];
			//$this->form[] = ['label'=>'Id Jadwal','name'=>'Id_Jadwal','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'jam,Jam'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();
	        $this->addaction[] = [
				'label'=>'Kosong',
				'url'=>('#')."[Id_Kelas]",
				'color'=>'success',
				'showIf'=>"[id_dos_mat] == null",
			];

	        $this->addaction[] = [
				'label'=>'Terisi',
				'url'=>('#'),
				'color'=>'danger',
				'showIf'=>"[id_dos_mat] != null and [id_dos_mat] != ".$_GET['id'],
			];

	        $this->addaction[] = [
				'label'=>'Diambil',
				'url'=>('#'),
				'color'=>'info',
				'showIf'=>"[id_dos_mat] != null and [id_dos_mat] == ".$_GET['id'],
			];


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
			$this->button_selected = array();
			$JatahSKS=DB::table('dos_mat')->find($_GET['id']);
			$JumSKS=DB::table('kelas_jam')->where('id_dos_mat',$_GET['id'])->count();
			if($JatahSKS->SKS > $JumSKS){
				$this->button_selected[] = ['label'=>'Ambil Jadwal','icon'=>'fa fa-check','name'=>'ambil|'.$_GET['id']];
			}
			$this->button_selected[] = ['label'=>'Hapus','icon'=>'fa fa-remove','name'=>'hapus|'.$_GET['id']];
	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
			//Your code here
			$button_name=explode('|',$button_name);
			$data=$button_name[1];
			$button_name=$button_name[0];
			if($button_name == 'ambil') {
				$JatahSKS=DB::table('dos_mat')->find($data);
				$JumSKS=DB::table('kelas_jam')->where('id_dos_mat',$data)->count()+count($id_selected);
				// BISI ERROR KASIH KOMEN AJA
				$JumSKS*=2;
				// 
				if($JatahSKS->SKS < $JumSKS){
					return CRUDBooster::redirect(url('admin/kelas_jam?id='.$data),"Melebihi Jumlah SKS", 'warning');
					exit();
				}
				$cekKelas=DB::table('kelas_jam')->whereIn('id',$id_selected)->where('id_dos_mat','!=','0')->count();
				if($cekKelas == 0)
					DB::table('kelas_jam')->whereIn('id',$id_selected)->update(['id_dos_mat'=>$data]);
				else{
					return CRUDBooster::redirect(url('admin/kelas_jam?id='.$data),"Kelas Sudah Diambil Sebelumnya", 'danger');
					exit();
				}
			}
			if($button_name == 'hapus') {
				DB::table('kelas_jam')->whereIn('id',$id_selected)->where('id_dos_mat',$data)->update(['id_dos_mat'=>null]);
			}
			$dos_mat=DB::table('dos_mat')->find($data);
			$JumSKSDiambil=DB::table('dos_mat')->select(DB::RAW('sum(SKS) as jumlah_sks'))->where('Id_Dosen',$dos_mat->Id_Dosen)->first();
			DB::table('dosen')->where('id',$dos_mat->Id_Dosen)->update(['jumlah_sks_diambil'=>$JumSKSDiambil->jumlah_sks]);
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}