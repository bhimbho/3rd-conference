<?php 
/**
 * 
 */
class participant extends db
{
	/**
		ADD participant functions
	**/
	public function add_participant($part_fullname,$institution,$paper_title,$author,$file_url,$abstract, $pages)
	{
		$query = $this->execute("INSERT INTO `participant`(`p_fullname`, `p_insitution`, `paper_title`, `author`, `file_url`, `abstract`, `pages`) VALUES (?,?,?,?,?)", [$part_fullname,$institution,$paper_title,$author,$file_url,$abstract, $pages]);
        return $this->$this->f_all();
	}
	
	public function massive__participant_upload($firstname, $lastname, $journal_id=0, $payment_status=1)
	{
		$query = $this->execute("INSERT INTO `participant`(`firstname`, `lastname`, `journal_id`, `payment_status`,`date_created`) VALUES (?,?,?,?,?)", [$firstname, $lastname, $journal_id=0, $payment_status=1, date('Y-m-d')]);
        return ($query)? true:false;
	}

	/**
		get all participant functions
	**/
	public function all_participants()
	{
		$query = $this->execute("SELECT * FROM `participant` LEFT JOIN journal ON participant.journal_id = journal.journal_id ORDER BY `participantid` DESC", []);
        return $this->f_all();
	}
	/**
		view participant
	**/
	public function view_participant($participant_id)
	{
		$query = $this->execute("SELECT * FROM `participant` WHERE `participant_id`=?", [$participant_id]);
        return $this->$this->f_one();
	}
	
	public function update_payment_status($participant_id)
	{
		$query = $this->execute("UPDATE `participant` SET payment_status=? WHERE `participantid`=?", [1,$participant_id]);
        return ($query)? true:false;
	}
	
	/**
		delete participant
	**/
	public function delete_participant($participant_id)
	{
		$query = $this->execute("DELETE FROM `participant` WHERE `participantid`=?", [$participant_id]);
        return ($query)? true:false;
	}
	
		public function all_participants_journal()
	{
		$query = $this->execute("SELECT * FROM `participant` LEFT JOIN journal  ON participant.journal_id = journal.journal_id ORDER BY `participantid` DESC", []);
        return $this->f_all();
	}
}
?>