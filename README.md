### AstSBC

# Session Border Controller baseado em Digium™ Asterisk® Framework.

O AstSBC é um controlador sessões de borda SIP seguro criado para provedores de telefonia residenciais e empresariais de alto volume suportando até 2000 chamadas simultâneas por servidor.

# Visão Geral do Produto:

Um Session Border Controller é um dispositivo normalmente usado em redes VoIP para exercer controle sobre a sinalização e os fluxos de mídia envolvendo o estabelecimento, condução e finalização de chamadas telefônicas e sessões multimídia.

Em alguns casos não é possível ligar diretamente o SipProxy a provedores de serviço. Um dos casos mais comuns é o de operadoras que fornecem um cabo de rede com um único endereço IP para sinalização e mídia. Como no SipProxy a sinalização e a mídia ficam em servidores separados, não é possível a conexão. Em alguns casos também há a necessidade de transcodificar os codecs suportados pela operadora para os codecs disponíveis aos clientes. Os SBC são normalmente posicionados na interconexão entre redes de diferentes provedores para fazer o emparelhamento. Como em muitos casos os fornecedores de SIP trunking fornecem um único endereço IP para sinalização é mídia, é necessário um ponto de demarcação onde esta conexão possa ser terminada. Algumas traduções e conversões necessárias podem ser necessárias no AstSBC.

# Funções do AstSBC:

O AstSBC é um produto criado para permitir a interligação do Softswitch PBX IP com entroncamentos SIP fornecidas pelas principais operadoras no país. Principais funções do AstSBC:
1.	Ponto de demarcação do entroncamento SIP
2.	Ocultação de topologia
3.	Criptografia de sinalização e mídia TLS/SRTP
4.	Normalização SIP e manipulação dos cabeçalhos
5.	Transcodificação de mídia

# Capacidade Operacional e Especificações:
•	Processador Intel Xeon 3 Ghz
•	Até 4 interfaces gigabit Ethernet (opcional)
•	Placa de transcodificação p/ até 2000 sessões de transcoding (opcional)
•	Até 2000 sessões simultâneas com mídia (opcional)

Transcodificação G.711, GSM-FR, GMS-EFR, G.722.1 (HD Voice), AMR, G.723.1,AMR-WB (G.722.2), G.726, L16 (Linear 16K), G.729AB, iLBC	De 40 até 2000 chamadas simultâneas.

Interfaces Ethernet Adicionais: até 4 portas Ethernet Opcionais. Cada SIP Trunking deve ser conectado em uma porta SIP individual. No caso de muitos SIP trunks pode ser usado um switch com VLANs a frente do AstSBC.
Pedidos e Disponibilidade
O VR SBC é fornecido na forma de appliances, softappliances e licença de recursos.  Escolhemos de forma inteligente o hardware de forma a ter os recursos necessários mais importantes em cada appliance, por exemplo, mais disco e memória no VR e mais capacidade de rede nos media services. São basicamente quatro tipos de appliance com diferentes opções de licença de recursos.

Os appliances do AstSBC pode ser de qualquer fabricante do mercado brasileiro. O uso de softappliances (Virtualização, VMWare ou outro) também podem ser realizados, deve ser especificado o hardware para o softappliance com cautela devido alto processamento. Todo o acesso do usuário ao appliance e softappliance se dá através da interface gráfica (em desenvolvimento).

•	Softswitch ToIP CL5 / CL4 (para 500.000 minutos/mês) em desenvolvimento
•	Media Services (Media Server, Media Relay Server) em desenvolvimento
•	Proxy (Proxy para 5, 10 e 25 milhões de minutos) em desenvolvimento
•	Recorder (Media Services com Gravação de chamadas) em desenvolvimento
•	AstSBC (Até 2000 sessões simultâneas).

Atualmente o projeto faz uso do Digium™ Asterisk® Framework. Mas já estamos estudando para fazer o mesmo em OpenSIPs ou Kamalio.

# Team AstSBC.

