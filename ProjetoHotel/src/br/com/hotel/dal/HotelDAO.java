package br.com.hotel.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.hotel.model.EHotel;
import br.com.senai.util.Conexao;

public class HotelDAO {

	private Connection connection;

	public HotelDAO() {

		connection = Conexao.getConnection();

	}

	public void cadastrar(EHotel h) {

		String sql = "INSERT INTO hotel (nome,rua,quadra,lote, bairro, cidade, estado, descricao, classificacao, numero) values (?,?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setString(1, h.getNome());
			ps.setString(2, h.getRua());
			ps.setString(3, h.getQudra());
			ps.setString(4, h.getLote());
			ps.setString(5, h.getBairro());
			ps.setString(6, h.getCidade());
			ps.setString(7, h.getEstado());
			ps.setString(8, h.getDescricao());
			ps.setInt(9, h.getClassificacao());
			ps.setInt(10, h.getNumero());

			ps.execute();
			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}// fim do metodo cadastrar

	public void alterar(EHotel h) {
		String sql = "UPDATE hotel SET nome=?,rua=?,quadra=?,lote=?,bairro=?,cidade=?,estado=?,descricao=?,classificacao=?,numero=? WHERE codhote=?";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setString(1, h.getNome());
			ps.setString(2, h.getRua());
			ps.setString(3, h.getQudra());
			ps.setString(4, h.getLote());
			ps.setString(5, h.getBairro());
			ps.setString(6, h.getCidade());
			ps.setString(7, h.getEstado());
			ps.setString(8, h.getDescricao());
			ps.setInt(9, h.getClassificacao());
			ps.setInt(10, h.getNumero());

			ps.execute();
			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// fim do metodo alterar

	public void deletar(EHotel h) {
		String sql = "DELETE FROM hotel WHERE codhotel=?";

		try {
			PreparedStatement ps = connection.prepareStatement(sql);

			ps.setLong(1, h.getCodhotel());

			ps.execute();
			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		}
	}// fim do metodo deletar

	public List<EHotel> listarTodos() {
		String sql = "SELECT * FROM hotel";
		List<EHotel> list = new ArrayList<>();

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				EHotel h = new EHotel();

				h.setCodhotel(rs.getLong("codhotel"));
				h.setNome(rs.getString("nome"));
				h.setRua(rs.getString("rua"));
				h.setQudra(rs.getString("quadra"));
				h.setLote(rs.getString("lote"));
				h.setBairro(rs.getString("bairro"));
				h.setCidade(rs.getString("cidade"));
				h.setEstado(rs.getString("estado"));
				h.setDescricao(rs.getString("descricao"));
				h.setClassificacao(rs.getInt("classificacao"));
				h.setNumero(rs.getInt("numero"));

				list.add(h);
			} // fim do while

			ps.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // fim do try/catch
		return list;
	}// fim do metodo listarTodos

	public EHotel pesquisarHotelCod(String nome) {
		String sql = "SELECT * FROM hotel WHERE nome=?";
		EHotel h = null;

		try {
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, nome);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				h = new EHotel();

				h.setCodhotel(rs.getLong("codhotel"));
				h.setNome(rs.getString("nome"));
				h.setRua(rs.getString("rua"));
				h.setQudra(rs.getString("quadra"));
				h.setLote(rs.getString("lote"));
				h.setBairro(rs.getString("bairro"));
				h.setCidade(rs.getString("cidade"));
				h.setEstado(rs.getString("estado"));
				h.setDescricao(rs.getString("descricao"));
				h.setClassificacao(rs.getInt("classificacao"));
				h.setNumero(rs.getInt("numero"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return h;

	}// fim do metodo pesquisarClienteCod

}
