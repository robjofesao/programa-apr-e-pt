-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: parbd
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apr_reg`
--

DROP TABLE IF EXISTS `apr_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apr_reg` (
  `cod_apr` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_atividade_apr` text DEFAULT NULL,
  `setor_apr` text DEFAULT NULL,
  `data_abertura_apr` text DEFAULT NULL,
  `colab_proprios` text DEFAULT NULL,
  `colab_terceiros` text DEFAULT NULL,
  `tipo_serv_mov_cargas` text DEFAULT NULL,
  `tipo_serv_eletricos` text DEFAULT NULL,
  `tipo_serv_mecanicos` text DEFAULT NULL,
  `tipo_serv_a_quente` text DEFAULT NULL,
  `tipo_serv_limpeza` text DEFAULT NULL,
  `tipo_serv_operacao` text DEFAULT NULL,
  `tipo_serv_altura` text DEFAULT NULL,
  `tipo_serv_espaco_conf` text DEFAULT NULL,
  `tipo_serv_outroser` text DEFAULT NULL,
  `riscos_ava_corte_oxi` text DEFAULT NULL,
  `riscos_ava_corpo_estranho` text DEFAULT NULL,
  `riscos_ava_ruido` text DEFAULT NULL,
  `riscos_ava_perf_maos` text DEFAULT NULL,
  `riscos_ava_queda_mesmo_niv` text DEFAULT NULL,
  `riscos_ava_queda_obj` text DEFAULT NULL,
  `riscos_ava_mont_andaime` text DEFAULT NULL,
  `riscos_ava_trab_altura` text DEFAULT NULL,
  `riscos_ava_queimadura` text DEFAULT NULL,
  `riscos_ava_sinistro_trans` text DEFAULT NULL,
  `riscos_ava_icamento` text DEFAULT NULL,
  `riscos_ava_espaco_conf` text DEFAULT NULL,
  `riscos_ava_iluminacao` text DEFAULT NULL,
  `riscos_ava_lesao_pe_mao` text DEFAULT NULL,
  `riscos_ava_calor_excessivo` text DEFAULT NULL,
  `riscos_ava_poeiras_part` text DEFAULT NULL,
  `riscos_ava_manu_prod_quim` text DEFAULT NULL,
  `riscos_ava_proj_mat_inca` text DEFAULT NULL,
  `riscos_ava_lambada_mangueira` text DEFAULT NULL,
  `riscos_ava_escav_demol` text DEFAULT NULL,
  `riscos_ava_limp_man_equip_eletricos` text DEFAULT NULL,
  `riscos_ava_mant_limp_squip_mec` text DEFAULT NULL,
  `riscos_ava_solda_contam` text DEFAULT NULL,
  `riscos_ava_limp_alta_temp` text DEFAULT NULL,
  `riscos_ava_desm_mont_estru` text DEFAULT NULL,
  `riscos_ava_sopragem_linha` text DEFAULT NULL,
  `riscos_ava_limp_lixadeira` text DEFAULT NULL,
  `riscos_ava_romp_adut` text DEFAULT NULL,
  `riscos_ava_comissionamento` text DEFAULT NULL,
  `riscos_ava_acop_tub_sub` text DEFAULT NULL,
  `riscos_ava_desabamento` text DEFAULT NULL,
  `riscos_ava_avaliacao_riscos` text DEFAULT NULL,
  `riscos_ava_animais_peconhe` text DEFAULT NULL,
  `recomendacoes_complementares` text DEFAULT NULL,
  `reuniao_serv_1` text DEFAULT NULL,
  `reuniao_serv_2` text DEFAULT NULL,
  `reuniao_serv_3` text DEFAULT NULL,
  `reuniao_serv_4` text DEFAULT NULL,
  `reuniao_serv_5` text DEFAULT NULL,
  `reuniao_serv_6` text DEFAULT NULL,
  `data_reuniao` text DEFAULT NULL,
  `componentes_mat_1` text DEFAULT NULL,
  `componentes_mat_2` text DEFAULT NULL,
  `componentes_mat_3` text DEFAULT NULL,
  `componentes_mat_4` text DEFAULT NULL,
  `componentes_mat_5` text DEFAULT NULL,
  `componentes_mat_6` text DEFAULT NULL,
  `componentes_mat_7` text DEFAULT NULL,
  `componentes_mat_8` text DEFAULT NULL,
  `componentes_mat_9` text DEFAULT NULL,
  `componentes_mat_10` text DEFAULT NULL,
  `componentes_mat_11` text DEFAULT NULL,
  `componentes_mat_12` text DEFAULT NULL,
  `componentes_nome_1` text DEFAULT NULL,
  `componentes_nome_2` text DEFAULLOCK TABLES `apr_reg` WRITE;
/*!40000 ALTER TABLE `apr_reg` DISABLE KEYS */;
INSERT INTO `apr_reg` VALUES (3,'remendo de tubulação','1','2024-11-14','colab_proprios','colab_terceiros','tipo_serv_mov_cargas','tipo_serv_eletricos','tipo_serv_mecanicos','tipo_serv_a_quente','tipo_serv_limpeza','tipo_serv_operacao','tipo_serv_altura','tipo_serv_espaco_conf','tipo_serv_espaco_conf','riscos_ava_corte_oxi','riscos_ava_corpo_estranho','riscos_ava_ruido','riscos_ava_perf_maos','riscos_ava_queda_mesmo_niv','riscos_ava_queda_obj','riscos_ava_mont_andaime','riscos_ava_trab_altura','riscos_ava_queimadura','riscos_ava_sinistro_trans','riscos_ava_icamento','riscos_ava_espaco_conf','riscos_ava_iluminacao','riscos_ava_lesao_pe_mao','riscos_ava_calor_excessivo','riscos_ava_poeiras_part','riscos_ava_manu_prod_quim','riscos_ava_proj_mat_inca','riscos_ava_lambada_mangueira','riscos_ava_escav_demol','riscos_ava_limp_man_equip_eletricos','riscos_ava_mant_limp_squip_mec','riscos_ava_solda_contam','riscos_ava_limp_alta_temp','riscos_ava_desm_mont_estru','riscos_ava_sopragem_linha','riscos_ava_limp_lixadeira','riscos_ava_romp_adut','riscos_ava_comissionamento','riscos_ava_acop_tub_sub','riscos_ava_desabamento','riscos_ava_avaliacao_riscos','riscos_ava_animais_peconhe','recomendações complementares','nao','nao','nao','nao','nao','sim','2024-11-14','1','3','5','7','9','11','13','15','17','19','21','23','2','4','6','8','10','12','14','16','18','20','22','24','resp area','resp exec','rep cont','sst','sol serv','medida_controle_corte_oxicorte','medida_controle_corpo_estranho','medida_controle_ruido','medida_controle_perf_maos','medida_controle_queda_mesmo_niv','medida_controle_queda_obj','medida_controle_mont_andaime','medida_controle_trab_altura','medida_controle_queimadura','medida_controle_sinistro_trans','medida_controle_icamento','medida_controle_espaco_conf','medida_controle_iluminacao','medida_controle_lesao_pe_mao','medida_controle_calor_excessivo','medida_controle_poeiras_part','medida_controle_manu_prod_quim','medida_controle_proj_mat_inca','medida_controle_lambada_mangueira','medida_controle_escav_demol','medida_controle_limp_man_equip_eletricos','medida_controle_mant_limp_squip_mec','medida_controle_solda_contam','medida_controle_limp_alta_temp','medida_controle_desm_mont_estru','medida_controle_sopragem_linha','medida_controle_limp_lixadeira','medida_controle_romp_adut','medida_controle_comissionamento','medida_controle_acop_tub_sub',']medida_controle_desabamento','medida_controle_avaliacao_riscos','medida_controle_animais_peconhe'),(4,'Limpeza de APV','1','2025-01-08','Colaboradores Proprios','Colaboradores Terceiros','tipo_serv_mov_cargas',NULL,'tipo_serv_mecanicos',NULL,'tipo_serv_limpeza',NULL,'tipo_serv_altura','','','riscos_ava_corte_oxi','riscos_ava_corpo_estranho',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'riscos_ava_sinistro_trans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'riscos_ava_escav_demol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'riscos_ava_acop_tub_sub',NULL,NULL,NULL,'','sim','sim','sim','sim','sim','sim','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Instalação de bombas','2','2025-01-07','Proprios','Terceirizados','Serviço com movimentação de cargas','Serviços elétricos','Serviços mecânicos','Serviço a quente','Serviço de limpeza','Serviço de operação','Serviço em altura','Serviço em espaço confinado','Serviço em espaço confinado','Corte com oxicorte','Corpo estranho nos olhos','Ruído intermitente / continuo','Corte com perfuração nas mãos','Queda no mesmo nível / com diferença de nível abaixo de 2Mt','Queda de objetos','Montagem / desmontagem de andaime','Trabalho em altura acima de 2Mt','Queimadura','Sinistro de trânsito ou atropelamento','Içamento e/ou tombamento de carga','Trabalho em espaço confinado','Iluminação Deficiente','Lesão nas mãos/pés por queda de objeto','Calor excessivo','Poeiras, Particulados, fuligem','Manuseio de produtos químicos/agentes químicos','Projeção de material incandescente','Lambada por estouro de mangueira','Escavação e/ou demolição','Limpeza e manutenção de equipamentos elétricos','Manutenção e limpeza de equipamentos mecânicos','Solda em ambientes contaminados','Limpeza em ambientes de alta temperatura','Desmontagem/montagem de estrutura equipamento/acessório','Sopragem de linha','Limpeza mecânica com lixadeira','Rompimento de adutora','Comissionamento (partida/checagem de equipamentos)','Acoplamento de tubulação no subsolo','Desabamento/rompimento de estrutura','Avaliação de riscos ou inicio de atividade','Presença de animais ou insetos peçonhentos','','sim','sim','sim','sim','sim','sim','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Fazer check list e corrigir ou substituir os itens com defeitos ou danificados','Utilizar os óculos de segurança e EPI\'s básicos','Utilizar o protetor auricular tipo plug / concha / espuma e os EPI\'s básicos','Utilizar luvas de segurança contra agentes mecânicos','Andar com atenção, inspecionar visualmente os locais de trabalho','Andar com atenção em escadarias, pisos inferiores e superiores, utilizar o capacete de ','Avaliar: os riscos da área, piso de sustentação do andaime, fixação do andaime, instalação da escada, e isolamento de área','Utilizar: cinto de segurança paraquedista/linha de vida ou trava-queda, verificar o ponto de\r\n                        fixação dos mosquetões. Realizar: aferição de pressão, abertura de PT.','Utilizar luva de raspa/couro, óculos de segurança lente nº 05, avental de couro/raspa, manga\r\n                        de couro/raspa, perneira de couro/raspa','Realizar isolamento de área, com fitas zebradas/barreiras/cones e/ou cavaletes','Isolamento de área, verificar os olhais, pontos de pega na carga, condições climáticas,\r\n                        consultar operação do equipamento de guinda/tombar','Verificar concentração dos gases com aparelho medidor, usar ventilação para retirada dos\r\n                        gases, abrir PET, aferição de pressão','Instalar refletores blindados de 12v e/ou 24v, e/ou utilizar lanternas','Respeitar sinalizações, avisos estabelecidos nas áreas','Utilizar Epi retardante ao calor (conjunto aluminizado)','Utilizar respirador com filtro químico ou mecânico','Utilizar luvas de seg. conta agentes químicos, óculos de seg. ampla-visão, conjunto de seg.\r\n                        impermeável, botina de borracha, respirador','Utilizar anteparos/bloqueios na trajetória de saída da projeção','Verificar estado das mangueiras e ou conexões','Avaliação do terreno ou área edificada','Desenergizar, bloqueio de alimentação, aterramento, bloqueio individual','Desenergizar, bloqueio de alimentação, bloqueio individual','Limpeza do ambiente, bloqueio de linha, abrir portas de visitas','Consultar operador C.O.E. verificar pressão negativa, utilizar EPI\'s adequados','Desligamento hidráulico, desligamento elétrico, bloqueio (LOTO)','Comunicação previa, sinalização e evacuação da área, consultar comitê de operações de\r\n                        segurança','Fazer check list, utilizar os EPI\'s adequados','Comunicar operador para desligamento das bombas, sinalizar a área','Comunicação previa, consulta ao comitê sobre a operação e adotar medidas de segurança','Manter borda da escavação de 1,5 metros, proteger a escavação contra entrada de águas\r\n                        superficiais e desviar trafego',']Evacuar pessoas, isolar a área, manter isolamento, agir conforme orientações de\r\n                        segurança','Abrir PT (permissão de Trabalho)','Trabalhar com atenção, contatar o setor de meio-ambiente, usar os EPI\'s adequados');
/*!40000 ALTER TABLE `apr_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_reg`
--

DROP TABLE IF EXISTS `pet_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_departamento` text DEFAULT NULL,
  `pet_equip_local` text DEFAULT NULL,
  `data_abertura` date DEFAULT NULL,
  `hora_abertura` time DEFAULT NULL,
  `desc_det_serv` text DEFAULT NULL,
  `local_esp_serv` text DEFAULT NULL,
  `oxigenio_1` text DEFAULT NULL,
  `gases_vap_tox_1` text DEFAULT NULL,
  `inflamaveis_1` text DEFAULT NULL,
  `poeiras_fum_nev_1` text DEFAULT NULL,
  `oxigenio_2` text DEFAULT NULL,
  `gases_vap_tox_2` text DEFAULT NULL,
  `inflamaveis_2` text DEFAULT NULL,
  `poeiras_fum_nev_2` text DEFAULT NULL,
  `areas_insp_isol` text DEFAULT NULL,
  `bloq_trav_et` text DEFAULT NULL,
  `vent_exaust` text DEFAULT NULL,
  `treinamento` text DEFAULT NULL,
  `equip_aprov` text DEFAULT NULL,
  `epi_aprov` text DEFAULT NULL,
  `cinto_linha_trab` text DEFAULT NULL,
  `purga_lav` text DEFAULT NULL,
  `isolamento` text DEFAULT NULL,
  `iluminacao` text DEFAULT NULL,
  `comunicacao` text DEFAULT NULL,
  `extintores` text DEFAULT NULL,
  `cinto_resgate` text DEFAULT NULL,
  `equip_mov_vert` text DEFAULT NULL,
  `perm_a_quente` text DEFAULT NULL,
  `pet_proced_emerg_resg` text DEFAULT NULL,
  `pressao_arterial_1` text DEFAULT NULL,
  `matricula_colab_1` text DEFAULT NULL,
  `nome_colab_1` text DEFAULT NULL,
  `pressao_arterial_2` text DEFAULT NULL,
  `matricula_colab_2` text DEFAULT NULL,
  `nome_colab_2` text DEFAULT NULL,
  `pressao_arterial_3` text DEFAULT NULL,
  `matricula_colab_3` text DEFAULT NULL,
  `nome_colab_3` text DEFAULT NULL,
  `pressao_arterial_4` text DEFAULT NULL,
  `matricula_colab_4` text DEFAULT NULL,
  `nome_colab_4` text DEFAULT NULL,
  `pressao_arterial_5` text DEFAULT NULL,
  `matricula_colab_5` text DEFAULT NULL,
  `nome_colab_5` text DEFAULT NULL,
  `pressao_arterial_6` text DEFAULT NULL,
  `matricula_colab_6` text DEFAULT NULL,
  `nome_colab_6` text DEFAULT NULL,
  `pressao_arterial_7` text DEFAULT NULL,
  `matricula_colab_7` text DEFAULT NULL,
  `nome_colab_7` text DEFAULT NULL,
  `pressao_arterial_8` text DEFAULT NULL,
  `matricula_colab_8` text DEFAULT NULL,
  `nome_colab_8` text DEFAULT NULL,
  `pressao_arterial_v1` text DEFAULT NULL,
  `matricula_colab_v1` text DEFAULT NULL,
  `nome_colab_v1` text DEFAULT NULL,
  `pressao_arterial_v2` text DEFAULT NULL,
  `matricula_colab_v2` text DEFAULT NULL,
  `nome_colab_v2` text DEFAULT NULL,
  `pet_info_adicionais` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_reg`
--

/*!40000 ALTER TABLE `pet_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pt_reg`
--

DROP TABLE IF EXISTS `pt_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pt_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_departamento` text DEFAULT NULL,
  `pt_equip_local` text DEFAULT NULL,
  `data_abertura_pt` date DEFAULT NULL,
  `hora_abertura_pt` time DEFAULT NULL,
  `areas_afetadas` text DEFAULT NULL,
  `riscos_identificados_apr` text DEFAULT NULL,
  `feito_loto` text DEFAULT NULL,
  `chuveiros_emergencia` text DEFAULT NULL,
  `ferramentas_manuais` text DEFAULT NULL,
  `area_limpa` text DEFAULT NULL,
  `epis_na_apr` text DEFAULT NULL,
  `outros_doc_naoplica` text DEFAULT NULL,
  `outros_doc_pet` text DEFAULT NULL,
  `outros_doc_icamento` text DEFAULT NULL,
  `ac_exrc_aut` text DEFAULT NULL,
  `ac_atmosfera_explosiva` text DEFAULT NULL,
  `ac_sistema_limpo` text DEFAULT NULL,
  `ac_monit_gases` text DEFAULT NULL,
  `ac_hid_ext` text DEFAULT NULL,
  `eletric_ferr_isol` text DEFAULT NULL,
  `eletric_aterrado` text DEFAULT NULL,
  `eletric_caso_incend` text DEFAULT NULL,
  `eletric_ext_facil` text DEFAULT NULL,
  `ser_quent_presenca_brig` text DEFAULT NULL,
  `ser_quent_vent` text DEFAULT NULL,
  `ser_quent_conj_oxi` text DEFAULT NULL,
  `ser_quent_band_prot` text DEFAULT NULL,
  `ser_quent_sist_comb` text DEFAULT NULL,
  `ser_quent_esmer_lix` text DEFAULT NULL,
  `ser_quent_maq_solda` text DEFAULT NULL,
  `ser_quent_nome_brigadista` text DEFAULT NULL,
  `ser_quent_mang_fios` text DEFAULT NULL,
  `ta_hier_prot` text DEFAULT NULL,
  `ta_ponto_anc_n_proj` text DEFAULT NULL,
  `ta_ponto_proj` text DEFAULT NULL,
  `ta_todos_equip` text DEFAULT NULL,
  `ta_verif_100` text DEFAULT NULL,
  `ta_andaime` text DEFAULT NULL,
  `ta_pessoa_contato` text DEFAULT NULL,
  `ta_exec_uso_epi` text DEFAULT NULL,
  `ta_efeito_pendulo` text DEFAULT NULL,
  `ta_aferir_pressao` text DEFAULT NULL,
  `tpq_kit_vaz` text DEFAULT NULL,
  `tpq_tanq_desp` text DEFAULT NULL,
  `tpq_chuv_hid` text DEFAULT NULL,
  `tpq_mang_engate` text DEFAULT NULL,
  `tpq_carreta_travada` text DEFAULT NULL,
  `tpq_mot_equip` text DEFAULT NULL,
  `ted_eng_ins` text DEFAULT NULL,
  `ted_riscos_sub` text DEFAULT NULL,
  `ted_evit_desmo` text DEFAULT NULL,
  `ted_aval_pet` text DEFAULT NULL,
  `ted_dist_bate` text DEFAULT NULL,
  `ted_ilum_suf` text DEFAULT NULL,
  `ted_escor_parede` text DEFAULT NULL,
  `ted_trans_int` text DEFAULT NULL,
  `th_col_ori_risco` text DEFAULT NULL,
  `th_esp_conf` text DEFAULT NULL,
  `tale_analisado_riscos` text DEFAULT NULL,
  `tale_met_descont` text DEFAULT NULL,
  `tale_bloqueio_dupl` text DEFAULT NULL,
  `tale_serv_linha_perig` text DEFAULT NULL,
  `tmic_tabela_equip` text DEFAULT NULL,
  `tmic_check_list_ins` text DEFAULT NULL,
  `tmic_isolada_sinaliza` text DEFAULT NULL,
  `tmic_cond_climat` text DEFAULT NULL,
  `tmic_olhais_pontos` text DEFAULT NULL,
  `tmic_guind_patolado` text DEFAULT NULL,
  `tmic_raio_lanca` text DEFAULT NULL,
  `epi_mascara_filtro` text DEFAULT NULL,
  `epi_mascara_solda` text DEFAULT NULL,
  `epi_respirador_aut` text DEFAULT NULL,
  `epi_protetor_facial` text DEFAULT NULL,
  `epi_bota_pvc` text DEFAULT NULL,
  `epi_avental` text DEFAULT NULL,
  `epi_luva_raspa` text DEFAULT NULL,
  `epi_luva_pvc_borracha` text DEFAULT NULL,
  `epi_luva_termica` text DEFAULT NULL,
  `epi_luva_cobertura` text DEFAULT NULL,
  `epi_luva_vaqueta` text DEFAULT NULL,
  `epi_luva_couro` text DEFAULT NULL,
  `epi_luva_baixa_volt` text DEFAULT NULL,
  `epi_luva_alta_volt` text DEFAULT NULL,
  `epi_mangas_isol` text DEFAULT NULL,
  `epi_balaclava` text DEFAULT NULL,
  `epi_vestimenta_2` text DEFAULT NULL,
  `epi_vest_risco_4` text DEFAULT NULL,
  `epi_cinto_duplo` text DEFAULT NULL,
  `epi_botina_s_biq` text DEFAULT NULL,
  `epi_conj_imperm` text DEFAULT NULL,
  `epi_oculos_ampla` text DEFAULT NULL,
  `epi_corda_nylon` text DEFAULT NULL,
  `epi_outros` text DEFAULT NULL,
  `resp_area_setor` text DEFAULT NULL,
  `resp_execucao` text DEFAULT NULL,
  `resp_emissao` text DEFAULT NULL,
  `pt_nome_1` text DEFAULT NULL,
  `pt_empresa_1` text DEFAULT NULL,
  `pt_pa_1` text DEFAULT NULL,
  `pt_nome_2` text DEFAULT NULL,
  `pt_empresa_2` text DEFAULT NULL,
  `pt_pa_2` text DEFAULT NULL,
  `pt_nome_3` text DEFAULT NULL,
  `pt_empresa_3` text DEFAULT NULL,
  `pt_pa_3` text DEFAULT NULL,
  `pt_nome_4` text DEFAULT NULL,
  `pt_empresa_4` text DEFAULT NULL,
  `pt_pa_4` text DEFAULT NULL,
  `pt_nome_5` text DEFAULT NULL,
  `pt_empresa_5` text DEFAULT NULL,
  `pt_pa_5` text DEFAULT NULL,
  `pt_nome_6` text DEFAULT NULL,
  `pt_empresa_6` text DEFAULT NULL,
  `pt_pa_6` text DEFAULT NULL,
  `pt_nome_7` text DEFAULT NULL,
  `pt_empresa_7` text DEFAULT NULL,
  `pt_pa_7` text DEFAULT NULL,
  `pt_nome_8` text DEFAULT NULL,
  `pt_empresa_8` text DEFAULT NULL,
  `pt_pa_8` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pt_reg`
--

/*!40000 ALTER TABLE `pt_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'parbd'
--
