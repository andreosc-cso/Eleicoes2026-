# Portal Eleitoral do Estado do Rio de Janeiro (Eleições 2022 & 2026)

Dashboard analítico e plataforma de inteligência eleitoral desenvolvida com a base de dados oficial do **Tribunal Superior Eleitoral (TSE)** para o **Estado do Rio de Janeiro**.

---

## 📌 Funcionalidades Principais

1. **Filtro de Eleição (2022 x 2026)**:
   - Alterne instantaneamente entre as **Eleições 2022 (Resultados Oficiais Homologados pelo TSE)** e as **Eleições 2026 (Projeções e Cenários Oficiais)** através do seletor no cabeçalho ou no painel de filtros.
   - Seus filtros territoriais (Município, Zona Eleitoral, Bairro ou Local de Votação) são **preservados** ao alternar de eleição, permitindo comparar imediatamente o desempenho eleitoral do mesmo reduto entre 2022 e 2026.

2. **Cargos Disponíveis**:
   - **Eleições 2022**:
     - Presidente da República (Votação apurada no Estado do Rio de Janeiro - 1º e 2º Turno: Jair Bolsonaro, Lula, Simone Tebet, Ciro Gomes, etc.)
     - Governador do Estado (Cláudio Castro, Marcelo Freixo, Rodrigo Neves, Paulo Ganime, etc.)
     - Senador da República (Romário, Alessandro Molon, Daniel Silveira, Clarissa Garotinho, André Ceciliano, Cabo Daciolo, etc.)
     - Deputado Federal (Daniela do Waguinho, General Pazuello, Talíria Petrone, Dr. Luizinho, Altineu Côrtes, Tarcísio Motta, Lindbergh Farias, etc.)
     - Deputado Estadual / ALERJ (Márcio Canella, Douglas Ruas, Renata Souza, Rosenverg Reis, Dr. Serginho, Guilherme Delaroli, Rodrigo Bacellar, etc.)
   - **Eleições 2026**:
     - Governador do Estado (Douglas Ruas, Eduardo Paes, Anthony Garotinho, etc.)
     - Senador da República (2 vagas: Carlos Portinho, Dr. Serginho, Benedita da Silva, Pedro Paulo, etc.)
     - Deputado Federal
     - Deputado Estadual

3. **Pesquisa Territorial e Granularidade Máxima**:
   - **92 Municípios** do Estado do Rio de Janeiro (Capital, Baixada Fluminense, Região Metropolitana, Norte, Noroeste, Região Serrana, Região dos Lagos, Sul Fluminense e Costa Verde).
   - **165 Zonas Eleitorais**.
   - **1.689 Bairros / Localidades**.
   - **5.034 Locais de Votação** (escolas, colégios estaduais/municipais, CIEPs e faculdades).

4. **Ferramentas Analíticas**:
   - **Dashboard Territorial**: Métricas em tempo real (votos no recorte, % de representatividade, principal reduto por bairro e por escola).
   - **Top 10 Gráficos Interativos**: Maiores bairros e maiores locais de votação de cada candidato ou cargo.
   - **Comparador Eleitoral**: Compare dois ou mais candidatos lado a lado por município ou bairro.
   - **Ranking Geral Estadual**: Lista completa e classificatória de todos os concorrentes.
   - **Caderno de Pesquisas**: Salve consultas de diferentes candidatos e bairros e baixe uma **planilha única consolidada no Excel**.
   - **Exportações Prontas**: Baixe relatórios em formato CSV/Excel com formatação brasileira e compatibilidade nativa com Microsoft Excel e Power BI.

---

## 🚀 Como Executar o Portal no seu Computador

O portal é totalmente independente e funciona sem necessidade de instalar programas externos:

### Opção 1: Abrir Diretamente no Navegador
- Dê um duplo clique no arquivo **`abrir_site.bat`**.
- O dashboard será aberto imediatamente no seu navegador padrão (Google Chrome, Microsoft Edge, Firefox, etc.).

### Opção 2: Servidor Local (Recomendado para Redes Locais ou Equipes)
- Dê um duplo clique no arquivo **`iniciar_servidor_local.bat`**.
- Um servidor web ultrarrápido será iniciado em `http://localhost:8080/`.
- Permite que outros computadores e tablets na mesma rede Wi-Fi/local também acessem o dashboard.

---

## 📁 Estrutura de Arquivos

```
📂 Portal_Eleicoes_RJ/
├── index.html                  # Interface gráfica, motor de busca e gráficos
├── dados_dashboard_2022.js     # Base oficial do TSE para as Eleições 2022
├── dados_dashboard_2026.js     # Base oficial de projeções para as Eleições 2026
├── abrir_site.bat              # Atalho direto para abrir no navegador
├── iniciar_servidor_local.bat  # Servidor web local via PowerShell (porta 8080)
└── README.md                   # Documentação técnica e analítica do projeto
```

---

## 🏛️ Fonte e Metodologia
- **Dados Oficiais 2022**: Tribunal Superior Eleitoral (TSE) - Dados Abertos e Resultados Homologados de Apuração.
- **Georreferenciamento Territorial**: Cadastro Eleitoral do Tribunal Regional Eleitoral do Rio de Janeiro (TRE-RJ).
