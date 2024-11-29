<%-- Document : imprimir-apr Created on : 13 de nov. de 2024, 16:46:54 Author : zorinportable --%>
    <%@page import="java.time.LocalDate" %>
        <%@page import="java.sql.*" %>
            <%@page contentType="text/html" pageEncoding="UTF-8" %>
                <!DOCTYPE html>
                <html lang="pt-BR">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Relatório de Permissão de Trabalho - Indústria</title>
                    <link rel="stylesheet" href="w3.css" />
                </head>

                <body class="w3-container">

                    <h1>Relatório de Permissão de Trabalho - Indústria</h1>
                    <table class="w3-table-all w3-border">
                        <tr>
                            <td class="w3-border">
                                Departamento: <%%>
                            </td>
                            <td class="w3-border">
                                Data: <%%>
                            </td>
                        </tr>
                        <tr>
                            <td class="w3-border">
                                Hora de ínicio: <%%>
                            </td>
                            <td class="w3-border">
                                Equipamento / Local: <%%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <spam> Descrição da atividade: <%%>
                                </spam>
                            </td>
                        </tr>
                    </table>
                    <h2>SEÇÃO DE BAIXO RISCO</h2>
                    <table class="w3-table-all">
                        <tr>
                            <th class="w3-border">Item</th>
                            <th class="w3-border">Resposta</th>

                        </tr>
                        <tr>
                            <td class="w3-border">As áreas afetadas foram notificadas?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">As ferramentas manuais disponíveis estão em condições de uso?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Todos os riscos identificados estão contemplados na APR?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">A área está limpa, foi isolada e ou sinalizada?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Foi realizado o controle das energias perigosas conforme procedimento
                                de LOTO e foi realizado o teste de energia ZERO nos equipamentos?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Os EPI's estaõ em boas condições e conforme descritos na APR?</td>
                            <td class="w3-border"></td>
                        </tr>
                        <tr>
                            <td class="w3-border">Os executantes foram orientados sobre os acessos a chuveiro e
                                lava-olhos de emergência e comunicação de emergência?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">É necessário o preechimento de outro documento?</td>
                            <td class="w3-border"></td>

                        </tr>
                    </table>
                    <!-- áreas classificadas -->
                    <h2>SEÇÃO DE ALTO RISCO</h2>
                    <h3>ÁREAS CLASSIFICADAS</h3>
                    <H5><strong>* Nota, essa seção é aplicavel para o caso de serviços em que exiga a possibilidade de
                            geração de fagulha/faisca ou outra ignição com potencial de explosao.</strong></H5>
                    <table class="w3-table-all">
                        <tr>
                            <th class="w3-border">Item</th>
                            <th class="w3-border">Resposta</th>

                        </tr>
                        <tr>
                            <td class="w3-border">Todos os executantes são autorizados?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Existe a presença de atmosfera com gases, vapores, poeiras ou
                                fibras gerando risco de explosividade na execução da atividade?
                                Obs: Caso a resposta seja positiva, é necessário eliminar a
                                possibilidade de centelhas durante a execução da atividade ou
                                garantir a ausência da atmosfera explosiva durante todo o tempo de
                                execução da tarefa, conforme determina NBR IEC 60079-17.</td>
                            <td class="w3-border"></td>

                        </tr>

                        <tr>
                            <td class="w3-border">O sistema está completamente drenado, purgado e limpo?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">O monitoramento atmosférico dos gases e vapores foi realizado?</td>
                            <td class="w3-border">_____%</td>

                        </tr>
                        <tr>
                            <td class="w3-border">O sistema de combate a incêndio está disponível e funcionando
                                adequadamente?</td>
                            <td class="w3-border"></td>

                        </tr>
                    </table>
                    <!-- Trabalho com eletricidade -->
                    <h3>TRABALHO COM ELETRICIDADE</h3>
                    <table class="w3-table-all">
                        <tr>
                            <th class="w3-border">Item</th>
                            <th class="w3-border">Resposta</th>

                        </tr>
                        <tr>
                            <td class="w3-border">Ferramentas são isoladas para a voltagem requerida?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Em caso de acidente ou incêndio, os colaboradores sabem como deverão
                                agir?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">O equipamento está aterrado?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Há extintor de fácil acesso?</td>
                            <td class="w3-border"></td>

                        </tr>
                    </table>


                    <!-- Serviço a quente -->
                    <h3>SERVIÇO A QUENTE</h3>
                    <table class="w3-table-all">
                        <tr>
                            <th class="w3-border">Item</th>
                            <th class="w3-border">Resposta</th>

                        </tr>
                        <tr>
                            <td class="w3-border">Há necessidade da presença de um brigadista de emergência ou vigilante
                                de emergência acompanhando a execução do trabalho?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">O sistema de combate incêndio (extintor, hidrantes, etc.) está
                                adequado ao tipo de serviço e disponível no local?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">As pessoas estão protegidas contra a radiação com barreiras de
                                proteção?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">É necessário uma ventilação/exaustão?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Foi verificado na esmerilhadeira/lixadeira as condições da coifa de
                                segurança, do rebolo, cabo de alimentação, disco adequado ao serviço?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Foi verificado no conjunto oxiacetilênico e GLP, reguladores de
                                pressão, manômetros, válvulas unidirecionais, dispositivo contra retrocesso de chama,
                                ajuste de abraçadeiras das mangueiras, acendedor de fricção, cilindros na posição
                                vertical, mangueiras sem emendas, ausência de graxa e óleo nos equipamentos?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Foi verificado na máquina de solda as condições do cabo de
                                alimentação?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">A peça a ser soldada está ligada ao pólo de retorno (terra) da máquina
                                de solda?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">Bandejas de cabos elétricos, tubulações de fibra de vidro e painéis
                                estão protegidos?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">As aberturas em pisos, paredes, portas e drenos foram fechadas,
                                cobertas ou protegidas?</td>
                            <td class="w3-border"></td>

                        </tr>
                        <tr>
                            <td class="w3-border">As mangueiras, extensões e fios elétricos estão protegidos contra
                                tráfego de veículos e de pessoas, quedas de objetos, contato com água, superfícies
                                aquecidas ou substâncias químicas?</td>
                            <td class="w3-border"></td>

                        </tr>
                    </table>
                    <!-- serviço em altura -->
                    <h2>TRABALHO EM ALTURA</h2>
                    <table class="w3-table-all">
                        <tr>
                            <th class="w3-border">Item</th>
                            <th class="w3-border">Resposta</th>
                           
                        </tr>
                        <tr>
                            <td class="w3-border">Foi revista a hierarquia de proteção contra queda e selecionado o modo
                                mais seguro para o desempenho da atividade?</td>
                            <td class="w3-border"></td>
                            
                        </tr>
                        <tr>
                            <td class="w3-border">A pessoa de contato (vigilante de emergência) sabe o modo de
                                comunicação em caso de emergência?</td>
                            <td class="w3-border"></td>
                           
                        </tr>
                        <tr>
                            <td class="w3-border">Foi verificado a possibilidade de o usário estar 100% conectado ao ponto de ancoragem e o mesmo foi roientado</td>
                            <td class="w3-border"></td>
                            
                        </tr>
                        <tr>
                            <td class="w3-border">O ponto de ancoragem (não projetado) suportará 2.268kg?</td>
                            <td class="w3-border"></td>
                            
                        </tr>
                        <tr>
                            <td class="w3-border">O Executante está utilizando os EPI's necessários para trabalho em
                                altura?</td>
                            <td class="w3-border"></td>
                            
                        </tr>
                        <tr>
                            <td class="w3-border">O ponto de ancoragem (projetado) foi aprovado por um profissional
                                legalmente habilitado?</td>
                            <td class="w3-border"></td>
                           
                        </tr>
                        <tr>
                            <td class="w3-border">O sistema de retenção foi ajustado de modo a evitar que o executante
                                tenha uma queda livre maior que 1,80m?</td>
                            <td class="w3-border"></td>
                           
                        </tr>
                        <tr>
                            <td class="w3-border">Em caso de queda o talabarte/travaquedas foi instalado de modo que o
                                usuário não possa bater contra instalações/equipamentos abaixo ou dos lados (efeito
                                pêndulo)?</td>
                            <td class="w3-border"></td>
                            
                        </tr>
                        <tr>
                            <td class="w3-border">Todos os equipamentos usados na retenção de quedas foram inspecionados
                                conforme plano de inspeção e estão aprovados?</td>
                            <td class="w3-border"></td>
                            
                        </tr>
                    </table>

                    <h2>Itens a serem verificados no fechamento da permissão</h2>
                    <table>
                        <tr>
                            <th>Item</th>
                            <th>Sim</th>
                            <th>N/A</th>
                        </tr>
                        <tr>
                            <td class="w3-border"> O local e ou equipamento de trabalho está limpo e organizado?</td>
                            <td class="w3-border"></td>
                            <td class="w3-border"></td>
                        </tr>
                        <tr>
                            <td class="w3-border">Ferramentas, objetos, resíduos foram guardados e ou destinados
                                corretamente?</td>
                            <td class="w3-border"></td>
                            <td class="w3-border"></td>
                        </tr>
                        <tr>
                            <td class="w3-border">O escopo de trabalho foi concluído atendendo aos requisitos de Saúde,
                                Segurança, Meio Ambiente e Qualidade?</td>
                            <td class="w3-border"></td>
                            <td class="w3-border"></td>
                        </tr>
                        <tr>
                            <td class="w3-border">As proteções de máquinas (rotativas, elétricas, etc.) foram
                                recolocadas?</td>
                            <td class="w3-border"></td>
                            <td class="w3-border"></td>
                        </tr>
                        <tr>
                            <td class="w3-border">O local ou equipamento está operacional após a conclusão do serviço?
                            </td>
                            <td class="w3-border"></td>
                            <td class="w3-border"></td>
                        </tr>
                    </table>

                    <h2>Assinaturas</h2>
                    <p>Emitente: <span>____________________</span></p>
                    <p>Ass.: <span>____________________</span></p>
                    <p>Resp. pela Execução: <span>____________________</span></p>
                    <p>Ass.: <span>____________________</span></p>
                    <p>Nome: <span>____________________</span></p>
                    <p>Data: <span>____________________</span></p>
                    <p>Hora: <span>____________________</span></p>

                    <h2>Telefones de Emergência</h2>
                    <ul>
                        <li>Ramal de Emergência: 2001</li>
                        <li>Ambulatório Médico: 2044</li>
                        <li>Depto de Q - SSMA: 2040</li>
                    </ul>

                </body>

                </html> ```html