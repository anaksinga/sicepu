<?php

class Ahli_waris_model extends CI_Model
{
    public function insert_p_surat($data)
    {
        $query= $this->db->insert('ahli_waris',$data);
        if($query){
            return true;
            return $query;
        }else{
            return false;
        }
    }

    public function findById($id_ahli_waris)
    {
        $query = $this->db->get_where('ahli_waris', ['id_ahli_waris' => $id_ahli_waris])->row_array();
        return $query;
    }

    public function showById($id_ahli_waris)
    {
        $this->db->select('*');
        $this->db->join('nomor_pendaftaran','nomor_pendaftaran.nomor_ktp=ahli_waris.nomor_ktp');
        $query = $this->db->get_where('ahli_waris', ['id_ahli_waris' => $id_ahli_waris])->row_array();
        return $query;
    }
}
