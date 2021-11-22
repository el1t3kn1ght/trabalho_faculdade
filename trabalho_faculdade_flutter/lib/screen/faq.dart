import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('F.A.Q'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpansionTile(
                  title: Text(
                    'Necessitou nossa ajuda pra que?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Caso ocorra qualquer  infelicidade com você ou o seu carro, é necessário abrir um chamado pra que possamos lhe atender e descobrir como poderíamos ajuda-lo',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Pra quem ligar?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Ligue imediatamente para a nossa seguradora, que na hora mesmo iremos tirar todas as dúvidas  do cliente e iremos lhe passar o passo a passo sobre o que fazer',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Qual é o numero da seguradora?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '(31) 3318-8360',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Quas ações devo fazer, e qual oficina devo encaminhar? ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Deve abrir um protocolo em nosso site ou fazer uma ligação pra nossa seguradora, iremos encaminhar seu veículo até uma oficina mais próxima para examiná-lo, e sem preocupações porque continuaremos a monitorar o seu veículo e o cliente também terá todas as acões que serão feitar no automovél',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Como solicitar transporte extra? ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Ligue para o nosso atendimento ao cliente, e você será encaminhado a falar com um de nossos funcionários, assim você explicará tudo esclarecido e por fim mandar sua localizacãos e seus dados pessoais, e por fim, iremos confirmar que é permitido o liberamento do transporte extra',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Como solicitar o guincho?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Clique na opção “solicitar socorro”, disponível na parte inferior da tela. Preencha as informações solicitadas (tipo de serviço, localização, endereço de destino, referência do veículo, pontos de referência e telefone do local onde está o veículo), e pronto, seu guincho já estará à caminho',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Como fazer um boletim de ocorrência?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Você deve acionar a seguradora com qualquer problema que teve em seu veículo, registre todas as informações e por fim fazer um B.O',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Oque fazer com sites de terceiros? ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'O site oficinal de nossa seguradora nunca irá pedir informações aleatórias ao nosso cliente, garantimos a segurança de tudo, teremos o esclarecimento de todos os problemas na hora pra não haver conflitos futuros',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Como acompanhar os serviços a serem feito no carro?   ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Temos a opção de "meu veículo" no nosso site, e o acompanhamento dele é atualizado a cada 3 horas no dia , iremos deixar tudo informado ao proprietário e caso tenha alguma dúvida, é só nos contactar',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Como solicitar um carro reserva?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Para que o segurado tenha direito ao carro reserva, é uma exigência de todas as locadoras que o condutor principal tenha, no mínimo, 1 ano de habilitação, seja maior de 18 anos e possua um cartão de crédito ou cheque para deixar como caução no ato da retirada do veículo',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'Qual é minha franquia? ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Seu valor fica definido na apólice do seguro contratado, como um custo fixo ou percentual, e pode ser verificado em nosso site',
                        style: TextStyle(fontSize: 18, height: 1.4),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
