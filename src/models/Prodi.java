/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author annis
 */
public class Prodi {
    private int id_prodi;
    private String nama_prodi;
    private int id_fakultas;
    
    public Prodi(int id_prodi, String nama_prodi, int id_fakultas){
        this.id_prodi = id_prodi;
        this.nama_prodi = nama_prodi;
        this.id_fakultas = id_fakultas;
    }

    /**
     * @return the id_prodi
     */
    public int getId_prodi() {
        return id_prodi;
    }

    /**
     * @return the nama_prodi
     */
    public String getNama_prodi() {
        return nama_prodi;
    }

    /**
     * @return the id_fakultas
     */
    public int getId_fakultas() {
        return id_fakultas;
    }
}
