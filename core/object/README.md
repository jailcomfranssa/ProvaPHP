roduto pt = repositorio.localizarProdutos(nomeproduto);
		
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

	
	public static void transferirConta(int id_mesaorigem, int id_mesadestino) throws Exception {
		
		
		Conta contaO = new Conta();
		Conta contaD = new Conta();
		
		contaO.getProdutos();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		Mesa mesaorigem = repositorio.localizarMesa(id_mesaorigem);
		Mesa Mdestino = repositorio.localizarMesa(id_mesadestino);
		
		if(mesaorigem == null) 
			throw new Exception ("Mesa nao existe");
		
		Mdestino.setGarcom(mesaorigem.getGarcom()); 
		Mdestino.setConta(mesaorigem.getConta());
		
		Mdestino.setOcupada(true);
		
		Conta c = new Conta(Mdestino);
		Mdestino.setOcupada(true);
		Mdestino.adicionar(c);
		repositorio.addConta(c);
		repositorio.remover(mesaorigem);	

			
	 }
	
//******************Fechar Conta*********************************************************	
	
	public static void fecharConta(int idmesa) throws Exception {
		Mesa m = repositorio.localizarMesa(idmesa);
		//Conta c = new Conta();
		if(m == null)
			throw new Exception("Mesa nao existe");
		if(m.isOcupada()== false)
			throw new Exception("Mesa nao esta ocupada");
		SimpleDateFormat fb = new SimpleDateFormat("dd/mm/yyyy");
		Date dta =  new Date();
		m.getUltimaConta().setDtfechamento(fb.format(dta));
	
		m.setOcupada(false);
	}
	
	
		
//******************Calcular Gorjeta*********************************************************	
	
	public static double calcularGorjeta(String apelido) throws Exception {
		double total = 0;
		Garcom g =repositorio.localizarGarcom(apelido);
		if(g== null) {
			throw new Exception("Garcom nao existe");
			
		}
		for (int i = 0; i < g.getMesas().size(); i++) {
			total = g.getMesas().get(i).getConta().get(i).getTotal();
			
		}
		
		return total;
		
	}
		


}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ������^����������7�m�w�o_���������������q��c�������o�������[I���yo|��������������{������~�����������������������������������石��z��m�������������_����������y����?�����4�����������������}'��8�����տ��U�_���7�]�����%�Ͻ����{���|��y^������{������ߙc��������?�˿��}���_�׿���������������?�����>�����������n�����Q�z���ٜ���߿����������_ҿ�������?���������Ϻ��W�����So������������?��ۖ������?���������H����_���{����??ֽy�{��{��s��������?����{=�������_����������w�������������L���������ߝ��;����9���������������-�������}��_����������������ݿ��߿��������m���+k�����������߻��������������;���|n�����������=���߿����g����������ݝ=1������������������������������9~�������?�����/��O;���������n\����������n|W������������}���Nu�g�������������������������������������w�������������;�9������������_��������֏����߿�&�{�_��������������u�>_��{����F��������|�g���S���