/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author annis
 */
public class Fakultas {
    private int id_fakultas;
    private String namaFakultas;
    
    public Fakultas(int id_fakultas, String namaFakultas){
        this.id_fakultas = id_fakultas;
        this.namaFakultas = namaFakultas;
    }

    /**
     * @return the id_fakultas
     */
    public int getId_fakultas() {
        return id_fakultas;
    }

    /**
     * @return the nama_fakultas
     */
    public String getNamaFakultas() {
        return namaFakultas;
    }
}
