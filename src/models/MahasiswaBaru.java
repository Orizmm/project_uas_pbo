/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.Date;
import java.util.*;

/**
 *
 * @author LENOVO
 */
public class MahasiswaBaru {
    private int id_pendaftaran;
    private int id_fakultas;
    private int id_prodi;
    private int nisn;
    private String nama;
    private String alamat;
    private String jk;
    private String kota;
    private Date tgl_lahir;
 
    public MahasiswaBaru(int id_pendaftaran, int id_fakultas, int id_prodi, int nisn, String nama,String jk, Date tgl_lahir, String kota, String alamat  ){
        this.id_pendaftaran = id_pendaftaran;
        this.id_fakultas = id_fakultas;
        this.id_prodi = id_prodi;
        this.nisn = nisn;
        this.nama = nama;
        this.alamat = alamat;
        this.jk = jk;
        this.kota = kota;
        this.tgl_lahir = tgl_lahir;
    }

    /**
     * @return the id_pendaftaran
     */
    public int getId_pendaftaran() {
        return id_pendaftaran;
    }

    /**
     * @return the id_fakultas
     */
    public int getId_fakultas() {
        return id_fakultas;
    }

    /**
     * @return the id_prodi
     */
    public int getId_prodi() {
        return id_prodi;
    }

    /**
     * @return the nisn
     */
    public int getNisn() {
        return nisn;
    }

    /**
     * @return the nama
     */
    public String getNama() {
        return nama;
    }

    /**
     * @return the alamat
     */
    public String getAlamat() {
        return alamat;
    }

    /**
     * @return the jk
     */
    public String getJk() {
        return jk;
    }
    public String getKota() {
        return kota;
    }
    /**
     * @return the tgl_lahir
     */
    public Date getTgl_lahir() {
        return tgl_lahir;
    }
    
    @Override
    public String toString(){
        return nama;
    }
}
