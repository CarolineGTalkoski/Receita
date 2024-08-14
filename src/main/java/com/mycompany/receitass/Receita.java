/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.receitass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class Receita {
    
    private int id;
    private String nome;
    private String descricao;
    private int tempo;
    private int porcoes;
    private String ingredientes;
    private String preparo;
    
    public Receita(String nome, String descricao, int tempo, int porcoes, String ingredientes, String preparo){
        this.nome = nome;
        this.descricao = descricao;
        this.tempo = tempo;
        this.porcoes = porcoes;
        this.ingredientes = ingredientes;
        this.preparo = preparo;
}
    public Receita() {
        this.nome = "";
        this.descricao = "";
        this.tempo = 0;
        this.porcoes = 0;
        this.ingredientes = "";
        this.preparo = "";
    }

    //Método para salvar a receita no banco e dados
    
    public boolean salvar(){
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "INSERT INTO receitas (nome, descricao, tempo_preparo, porcoes, ingredientes, preparo) VALUES (?, ?, ?, ?, ?, ?)";
                
        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getDescricao());
            ps.setInt(3, getTempo());
            ps.setInt(4, getPorcoes());
            ps.setString(5, getIngredientes());
            ps.setString(6, getPreparo());
            
            int rowsUpdate = ps.executeUpdate();
            return rowsUpdate > 0;
        }   catch (SQLException e) {
            e.printStackTrace();
            
            return false;
            
        } finally {
            try {
                if (ps != null) {
                    ps.close();}
                
                if (conn != null) {
                    conn.close();}
                
            } catch (SQLException e) {
                e.printStackTrace();
            }  
        }
    }
    
     // Método para retornar todas as receitas do banco de dados
    public static List<Receita> getAllReceitas() {
        List<Receita> receitas = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM receitas";

        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Receita receita = new Receita("","",0,0,"","");
                
                receita.setId(rs.getInt("id"));
                receita.setNome(rs.getString("nome"));
                receita.setDescricao(rs.getString("descricao"));
                receita.setTempo(rs.getInt("tempo_preparo"));
                receita.setPorcoes(rs.getInt("porcoes"));
                receita.setIngredientes(rs.getString("ingredientes"));
                receita.setPreparo(rs.getString("preparo"));
                receitas.add(receita);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return receitas;
    }
    
    
    //Método para atualizar um registro na tabela
    public boolean atualizar(){
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "UPDATE `receitas` SET `nome` = ?, `descricao` = ?, `tempo_preparo` = ?, `porcoes` = ?, `ingredientes` = ?, `preparo` = ? WHERE `receitas`.`id` = ?";
                
        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, getNome());
            ps.setString(2, getDescricao());
            ps.setInt(3, getTempo());
            ps.setInt(4, getPorcoes());
            ps.setString(5, getIngredientes());
            ps.setString(6, getPreparo());
            ps.setInt(7, getId());
            
            int rowsInserted = ps.executeUpdate();
            return rowsInserted > 0;
        }   catch (SQLException e) {
            e.printStackTrace();
            
            return false;
            
        } finally {
            try {
                if (ps != null) {
                    ps.close();}
                
                if (conn != null) {
                    conn.close();}
                
            } catch (SQLException e) {
                e.printStackTrace();
            }  
        }
    }
    
    
    public boolean deletar(){
        Connection conn = null;
        PreparedStatement ps = null;
        String sql = "DELETE FROM `receitas`WHERE `receitas`.`id` = ?";
                
        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, getId());
            
            int rowsDelete = ps.executeUpdate();
            return rowsDelete > 0;
        }   catch (SQLException e) {
            e.printStackTrace();
            
            return false;
            
        } finally {
            try {
                if (ps != null) {
                    ps.close();}
                
                if (conn != null) {
                    conn.close();}
                
            } catch (SQLException e) {
                e.printStackTrace();
            }  
        }
    }
    
    
     // Método para retornar todas as receitas do banco de dados
    public static List<Receita> getReceita(int id) {
        List<Receita> receitas = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM receitas where id=?";

        try {
            conn = dbUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                Receita receita = new Receita("","",0,0,"","");
                
                receita.setId(rs.getInt("id"));
                receita.setNome(rs.getString("nome"));
                receita.setDescricao(rs.getString("descricao"));
                receita.setTempo(rs.getInt("tempo_preparo"));
                receita.setPorcoes(rs.getInt("porcoes"));
                receita.setIngredientes(rs.getString("ingredientes"));
                receita.setPreparo(rs.getString("preparo"));
                receitas.add(receita);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return receitas;
    }

    
    
    public int getId() {return id;}
    public void setId (int id) {this.id = id;}
    
    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return the tempo
     */
    public int getTempo() {
        return tempo;
    }

    /**
     * @param tempo the tempo to set
     */
    public void setTempo(int tempo) {
        this.tempo = tempo;
    }

    /**
     * @return the porcoes
     */
    public int getPorcoes() {
        return porcoes;
    }

    /**
     * @param porcoes the porcoes to set
     */
    public void setPorcoes(int porcoes) {
        this.porcoes = porcoes;
    }

    /**
     * @return the ingredientes
     */
    public String getIngredientes() {
        return ingredientes;
    }

    /**
     * @param ingredientes the ingredientes to set
     */
    public void setIngredientes(String ingredientes) {
        this.ingredientes = ingredientes;
    }

    /**
     * @return the preparo
     */
    public String getPreparo() {
        return preparo;
    }

    /**
     * @param preparo the preparo to set
     */
    public void setPreparo(String preparo) {
        this.preparo = preparo;
    }
}



    

