<?php
class journal extends db{

    public function count_journal(){ 
        $query = $this->execute("SELECT * FROM `journal`", []);
        return $this->row_count();
    }

    public function view_all_journals(){ 
        $query = $this->execute("SELECT * FROM `journal` LEFT JOIN participant ON journal.journal_id=participant.journal_id", []);
        return $this->f_all();
    }

    public function view_specific_journal($journal_id){
    	$journal_id = DB::Validate($journal_id);
        $query = $this->execute("SELECT * FROM `journal` LEFT JOIN participant ON journal.journal_id=participant.journal_id WHERE journal.journal_id = ?", [$journal_id]);
        return $this->f_one();
    }


     public function add_journal($title,$abstract,$file,$pages,$authors,$fname,$lname,$email,$phone,$institution){ 
     	/**
		*
		*
		**/
        if (!$this->check_exisiting_name($fname, $lname, $title, $abstract)) {
            $now = date('Y-m-d');
            if ($query = $this->execute("INSERT INTO journal(`title`, `abstract`, `file`, `page_no`, `authors`, `email`, `phone`,`institution`, `upload_date`) VALUES (?,?,?,?,?,?,?,?,?)", [$title,$abstract,$file,$pages,$authors,$email,$phone,$institution,$now])) {
                $new_query = $this->execute("SELECT max(journal_id) FROM journal", []);
                $new_query = $new_query->fetchColumn();
                // var_dump($new_query);
                if ($query = $this->execute("INSERT INTO participant(`firstname`, `lastname`,`journal_id`, `date_created`) VALUES (?,?,?,?)", [strtolower($fname),strtolower($lname),$new_query,$now])) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        else {
            return false;
        }
    }

    public function check_exisiting_name($participant_fname, $participant_lname, $paper_title, $abstract)
    {
        $query = $this->execute("SELECT * FROM `journal` WHERE journal.title = ? OR journal.abstract = ?", [$paper_title, $abstract]);
        $result = $this->f_one() > 0;

        $query = $this->execute("SELECT * FROM `participant` WHERE participant.firstname = ? AND participant.lastname = ?", [$participant_fname, $participant_lname]);
        $presult = $this->f_one() > 0;

        if($result == true || $presult == true) {
            return true;
        }
        return false;
    }
    public function add_participant($fname,$lname){ 
     	/**
		*
		*
		**/
		$now = date('Y-m-d');
            if($query = $this->execute("INSERT INTO participant(`firstname`, `lastname`,`journal_id`, `date_created`) VALUES (?,?,?,?)", [strtolower($fname),strtolower($lname),0,$now])){
                return true;
            }
            else{
                return false;
            }
    }
    
    public function add_co_author($fname,$lname,$journal_id){ 
     	/**
		*
		*
		**/
		$now = date('Y-m-d');
            if($query = $this->execute("INSERT INTO participant(`firstname`, `lastname`,`journal_id`, `date_created`) VALUES (?,?,?,?)", [strtolower($fname),strtolower($lname),$journal_id,$now])){
                return true;
            }
            else{
                return false;
            }
    }
//------------- new upload --------------
    public function count_new_journal(){ 
        $query = $this->execute("SELECT * FROM `new_upload`", []);
        return $this->row_count();
    }

    public function add_new_journal_upload($participant_id,$file){ 
        /**
        *
        *
        **/
        $now = date('Y-m-d');
        if($query = $this->execute("INSERT INTO `new_upload` (`participant_id`, `file_name`,`view_status`, `date_upload_created`) VALUES (?,?,?,?)", [$participant_id,$file,0,$now])){
            return true;
        }
        else{
            return false;
        }
    }

    public function view_all_new_journals(){ 
        $admin = $this->execute("SELECT * FROM `new_upload` LEFT JOIN participant ON new_upload.participant_id = participant.participantid LEFT JOIN journal ON journal.journal_id=participant.journal_id ORDER BY new_upload_id ASC", []);
        return $this->f_all();
    }

    public function view_specific_new_journal($id){ 
        $id = DB::Validate($id);
        $admin = $this->execute("SELECT * FROM `new_upload` LEFT JOIN participant ON new_upload.participant_id = participant.participantid LEFT JOIN journal ON journal.journal_id=participant.journal_id WHERE new_upload.new_upload_id =? ORDER BY new_upload_id ASC", [$id]);
        return $this->f_one();
    }
    
    public function view_approved_papers(){ 
        $admin = $this->execute("SELECT * FROM `new_upload` LEFT JOIN participant ON new_upload.participant_id = participant.participantid LEFT JOIN journal ON journal.journal_id=participant.journal_id WHERE new_upload.view_status=? ORDER BY new_upload_id ASC", [1]);
        return $this->f_all();
    }

    public function count_approved_papers(){ 
        $admin = $this->execute("SELECT * FROM `new_upload` LEFT JOIN participant ON new_upload.participant_id = participant.participantid LEFT JOIN journal ON journal.journal_id=participant.journal_id WHERE new_upload.view_status=? ORDER BY new_upload_id ASC", [1]);
        return $this->row_count();
    }

    public function view_specific_approved_papers($id){ 
        $id = DB::Validate($id);
        $admin = $this->execute("SELECT * FROM `new_upload` LEFT JOIN participant ON new_upload.participant_id = participant.participantid LEFT JOIN journal ON journal.journal_id=participant.journal_id WHERE new_upload.new_upload_id =? AND new_upload.view_status=? ORDER BY new_upload_id ASC", [$id,1]);
        return $this->f_one();
    }

    public function search_by_title_author_institution($search_val){ 
        $search_val = DB::text_val($search_val);
        $admin = $this->execute("SELECT * FROM `new_upload` LEFT JOIN participant ON new_upload.participant_id = participant.participantid LEFT JOIN journal ON participant.journal_id = journal.journal_id WHERE new_upload.view_status=? AND MATCH(`journal`.`title`,`journal`.`authors`,`journal`.`institution`) AGAINST(? IN NATURAL LANGUAGE MODE)", [1,$search_val]);
        return $this->f_all();
    }

    public function delete_new_upload($upload_id){ 
        if($admin = $this->execute("DELETE FROM new_upload WHERE new_upload_id = ?", [$upload_id])){
            return true;
        }
        else{
            return false;
        }
    }
    //----------end upload----

    public function delete_journal($journal_id){ 
        if($admin = $this->execute("DELETE FROM journal WHERE journal_id = ?", [$journal_id])){
        	return true;
        }
        else{
        	return false;
        }
    }

    public function update_journal($journal_id,$view_status){ 
        if($admin = $this->execute("UPDATE new_upload SET `view_status` =? WHERE new_upload_id = ?", [$view_status,$journal_id])){
        	return true;
        }
        else{
        	return false;
        }
    }
    
    public function update_journal_title_etc($journal_id,$title,$abstract,$authors){ 
        if($admin = $this->execute("UPDATE journal SET `title` =?,`abstract` =?,`authors` =? WHERE journal_id = ?", [$title,$abstract,$authors,$journal_id])){
        	return true;
        }
        else{
        	return false;
        }
    }
    
     public function update_bulk($title,$abstract,$file,$pages,$authors,$fname,$lname,$email,$phone,$institution){ 
     	/**
		*
		*
		**/
		$now = date('Y-m-d');
        if($query = $this->execute("INSERT INTO journal(`title`, `abstract`, `file`, `page_no`, `authors`, `email`, `phone`,`institution`, `upload_date`) VALUES (?,?,?,?,?,?,?,?,?)", [$title,$abstract,$file,$pages,$authors,$email,$phone,$institution,$now])){
        	$new_query = $this->execute("SELECT max(journal_id) FROM journal", []);
            $new_query = $new_query->fetchColumn();
            // var_dump($new_query);
            if($query = $this->execute("INSERT INTO participant(`firstname`, `lastname`,`journal_id`, `date_created`) VALUES (?,?,?,?)", [strtolower($fname),strtolower($lname),$new_query,$now])){
                $query2 = $this->execute("SELECT participantid FROM `participant` ORDER BY participantid DESC", []);
                // var_dump($query2);
                $lastes_part_id = $this->f_one()->participantid;
                if($lastes_part_id){
                    SELF::add_new_journal_upload($lastes_part_id,$file);
                    return true;
                }
            }
            else{
                return false;
            }
        }
        else{
        	return false;
        }
    }

    //------------------------- certificate ----------------------
public function search_certificate($search_val){ 
        $search_val = htmlspecialchars($search_val);
        $admin = $this->execute("SELECT * FROM `participant` LEFT JOIN journal ON participant.journal_id = journal.journal_id WHERE MATCH(`firstname`,`lastname`) AGAINST(? IN NATURAL LANGUAGE MODE) AND payment_status=?", [$search_val,1]);
        return $this->f_all();
    }
}


