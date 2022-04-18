<?php 
/**
 * 
 */
class speakers extends db
{
	public function count_speakers(){ 
        $query = $this->execute("SELECT * FROM `speakers`", []);
        return $this->row_count();
    }
	/**
		ADD speakers functions
	**/
	public function add_speakers($name,$institution,$picture,$profile,$type,$order)
	{
		$query = $this->execute("INSERT INTO `speakers`(`name`, `institution`, `picture`, `profile`, `type`,`speaker_order`) VALUES (?,?,?,?,?,?)", [$name,$institution,$picture,$profile,$type,$order]);
        return ($query)? true : false;
	}

	/**
		get all speakers functions
	**/
	public function all_speakers_limit()
	{
		$query = $this->execute("SELECT * FROM `speakers` ORDER BY `speaker_order` ASC LIMIT 4", []);
        return $this->f_all();
	}

	public function all_speakers()
	{
		$query = $this->execute("SELECT * FROM `speakers` ORDER BY `speaker_order` ASC", []);
        return $this->f_all();
	}
	/**
		view speaker
	**/
	public function view_speaker($name)
	{
		$query = $this->execute("SELECT * FROM `speakers` WHERE `name` LIKE ?", ['%'.$this->text_val($name).'%']);
        return $this->f_one();
	}
	/**
		delete speaker
	**/
	public function delete_speaker($speaker_id)
	{
		$query = $this->execute("DELETE FROM `speakers` WHERE `speaker_id`=?", [$speaker_id]);
        return ($query)? true : false;
	}

	/**
	 * Update Speaker Profile
	 */
	public function update_speaker($speaker_id, $name, $type, $institution, $order, $profile, $pic)
	{
		$query = $this->execute("UPDATE `speakers` SET `name` = ?, `type` = ?, `institution` = ?, `speaker_order` = ?, `profile` = ?, `picture` = ? WHERE `speaker_id`=?", [$name, $type, $institution, $order, $profile, $pic, $speaker_id]);
        return ($query)? true : false;
	}
}
?>