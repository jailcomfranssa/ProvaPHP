Produto(int idmesa, String nomeproduto) throws Exception {
		Conta c = repositorio.localizarConta(idmesa);
		Mesa mesa = repositorio.localizarMesa(idmesa);
		Conta conta = mesa.getUltimaConta();
		if(conta == null) {
			throw new Exception("Crie uma conta Para Mesa:"+idmesa);
		}
		Produto pt = repositorio.localizarProdutos(nomeproduto);
		
		if(pt == null) {
			throw new Exception("Produto nao cadastrado ");
		}
		
		
		mesa.getUltimaConta().adicionar(pt);
		
	}
	
//******************Cancelar Conta*********************************************************	
	
	
	public static void cancelarConta(int idmesa) throws Exception{
		
		Mesa m = repositorio.localizarMesa(idmesa);
		Conta c = repositorio.localizarConta(idmesa);
		if(m != null) {
			if(c != null) {
				repositorio.remover(c);
				m.setOcupada(false);
				m.remover(c);
			}else {
				throw new Exception("Conta nao existe na mesa");
			}
			
		}
		
	}
	
	
	
//******************Transferir Conta*********************************************************	

	
	public static void transf