/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.*;
/**
 *
 * @author annis
 */
public class PendidikanAkhir {
    private int id_pendidikan;
    private int id_pendaftaran;
    private String sekolah;
    private String nama_sekolah;
    private String jurusan;
    private String kota;
    private String provinsi;
    private Double nilai_skhun;
    
    public PendidikanAkhir(int id_pendaftaran, int id_pendidikan, String sekolah, String nama_sekolah, String jurusan, String kota, String provinsi, Double nilai_skhun){
        this.id_pendaftaran = id_pendaftaran;
        this.id_pendidikan = id_pendidikan;
        this.sekolah = sekolah;
        this.nama_sekolah = nama_sekolah;
        this.jurusan = jurusan;
        this.kota = kota;
        this.provinsi = provinsi;
        this.nilai_skhun = nilai_skhun;
    }

    /**
     * @return the id_pendidikan
     */
    public int getId_pendidikan() {
        return id_pendidikan;
    }

    /**
     * @return the id_pendaftaran
     */
    public int getId_pendaftaran() {
        return id_pendaftaran;
    }

    /**
     * @return the sekolah
     */
    public String getSekolah() {
        return sekolah;
    }

    /**
     * @return the jurusan
     */
    public String getJurusan() {
        return jurusan;
    }

    /**
     * @return the kota
     */
    public String getKota_Sekolah() {
        return kota;
    }

    /**
     * @return the provinsi
     */
    public String getProvinsi() {
        return provinsi;
    }

    /**
     * @return the nilai_skhun
     */
    public Double getNilai_skhun() {
        return nilai_skhun;
    }
    
    public String getNama_Sekolah(){
        return nama_sekolah;
    }
    
//    public String toString(){
//        
//    }
}
