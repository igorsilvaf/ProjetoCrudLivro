	create table tipoproduto(
	idtipoproduto serial primary key,
		descricao varchar(40),     
			);
	create table unidademedida(
	idunidademedida serial primary key,
		descricao varchar(40),
		sigla varchar(5),
			);
	create table produto(
		idproduto serial primary key,
		nomeproduto varchar(40),
		ultimoprecopago numeric,
		saldoatual numeric,
		idunidademedida int not null,
		idtipoproduto int not null,
		constraint fktipoproduto foreign key (idtipoproduto) references tipoproduto(idtipoproduto),
		constraint fkunidadade foreign key (idunidademedida) references unidademedida(idunidademedida)
							);
		create table tipomovimento(
		idtipomovimento serial primary key,
		descricao varchar(40),
				);
		create table funcionario(
		idfuncionario serial primary key,
		nomefuncionario varchar(40),
						);	

create table movimentoestoque(
	idmovimento serial primary key ,
	entradaSaida varchar(1),
	documento varchar(40),
	data varchar(15),
	quantidade NUMERIC,
	valormovimento numeric,		
	idfuncionario int not null,
	idtipomovimento int not null,
	idproduto int not null , 
	constraint fkfuncionario FOREIGN key (idfuncionario) references funcionario(idfuncionario),
	constraint fktipomovimento foreign key (idtipomovimento) references tipomovimento(idtipomovimento),
	constraint fkproduto foreign key (idproduto) references produto(idproduto)
		 
		);			


	
	
