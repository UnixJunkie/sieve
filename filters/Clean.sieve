#*************************************************************************************#
#                                                                                     #
# Sieve definitions to clean up molecular structures without imposing drug-like rules #
#                                                                                     #
# Tested on sieve v3.0.0                                                              #
#                                                                                     #
#*************************************************************************************#

#
# ALLOWED ELEMENTS
#
ONLY_ELEMENTS       H C N O F S Cl Br I Si B P

#
# ALLOWED FUNCTIONAL GROUPS
#
FRAGMENT    Carboxylate                     [C,c,#1]C(=O)[O-,OH1]                           0   2
FRAGMENT    Ester                           [C,c,#1][C;!R](=O)[O;!R][C,c,#1]                0   3   



#
# UNWANTED FUNCTIONAL GROUPS
#
FRAGMENT    Acetal                          [O;X2][CH1][O;X2]                               0   0
FRAGMENT    Acyclic-NCN                     [N;X3;!R][C;X4;!R][N;X3;!R]                     0   0
FRAGMENT    AcylCyanide                     [C;X3](=O)C#N                                   0   0
FRAGMENT    AcylHalide                      [C;X3](=O)[F,Cl,Br,I]                           0   0
FRAGMENT    AcylImidazole                   [C;X3](=O)n1ccnc1                               0   0
FRAGMENT    AcylSulfide                     [C;X3](=O)[S;X2]                                0   0
FRAGMENT    AcylTriazole                    [C;X3](=O)n1nncc1                               0   0
FRAGMENT    Aldehyde                        [CH1;X3]=O                                      0   0
FRAGMENT    Aldoxime                        [CH1;X3]=N[OH1]                                 0   0
FRAGMENT    AlkylHalide_1                   [C;X4;!a][Cl,Br,I]                              0   0
FRAGMENT    AlkylHalide_2                   [C;X3;!a][Cl,Br,I]                              0   0
FRAGMENT    AlkylHalide_3                   [C;!a]([F,Cl,Br,I])[C;!a]([F,Cl,Br,I])          0   0
FRAGMENT    Allene                          [C;X3]=C=[C;X3]                                 0   0
FRAGMENT    Aminal                          [N;X3][CH0][N;X3]                               0   0
FRAGMENT    Anhydride                       [C;X3](=O)O[C;X3]=O                             0   0
FRAGMENT    Anionic-C                       [C-,c-]                                         0   0
FRAGMENT    Azide                           [N;X2]=[N+]=[N-]                                0   0
FRAGMENT    Aziridine                       C1NC1                                           0   0
FRAGMENT    Azo                             [N;X2]=[N;X2]                                   0   0
FRAGMENT    AzoCarbonyl_Beta                [N;X2]=NC[C;X3]=O                               0   0
FRAGMENT    AzoCyanamide                    [N;X2]=NC#N                                     0   0
FRAGMENT    Azoxy                           [N;X2]=[N+;X3][O-]                              0   0
FRAGMENT    Bunte                           SS(=O)(O)O                                      0   0
FRAGMENT    Carbamate                       [N;X3]C(=O)O[C,c]                               0   0
FRAGMENT    CarbamicAcid                    [N;X3]C(=O)[OH1,O-]                             0   0
FRAGMENT    CarbodiImide                    N=C=N                                           0   0
FRAGMENT    Carbonate                       [O;X2]C(=O)[O;X2]                               0   0
FRAGMENT    Cationic-Br                     [Br+]                                           0   0
FRAGMENT    Cationic-C                      [C+,c+]                                         0   0
FRAGMENT    Cationic-Cl                     [Cl+]                                           0   0
FRAGMENT    Cationic-I                      [I+]                                            0   0
FRAGMENT    Cationic-O                      [O+,o+]                                         0   0                      
FRAGMENT    Cationic-P                      [P+]                                            0   0
FRAGMENT    Cationic-S                      [S+]                                            0   0
FRAGMENT    Chloramine                      [N;X3](Cl)                                      0   0
FRAGMENT    Cyanate                         O=C=N                                           0   0
FRAGMENT    Cyanohydrin                     N#C[C;X4][OH1]                                  0   0
FRAGMENT    Diazo                           [C;X3]=[N+]=[N-]                                0   0
FRAGMENT    Diazonium                       [N+]#N                                          0   0
FRAGMENT    Dichloramine                    [N;X3](Cl)Cl                                    0   0
FRAGMENT    Disulfide                       [S;X2][S;X2]                                    0   0
FRAGMENT    Dithioacetal                    [S;X2][CH1][S;X2]                               0   0
FRAGMENT    Epoxide                         C1OC1                                           0   0
FRAGMENT    Enamine                         [C;X3]=[C;X3][N;X3]                             0   0
FRAGMENT    EnolEther                       [C;X3]=[C;X3][OH0;X2]                           0   0
FRAGMENT    HaloAmine                       [F,Cl,Br,I]N                                    0   0
FRAGMENT    HaloAmine_Alfa                  [F,Cl,Br,I]CN                                   0   0  
FRAGMENT    HaloAmine_Beta                  [F,Cl,Br,I]CCN                                  0   0
FRAGMENT    HaloAlkene                      [F,Cl,Br,I]C=[C;X3]                             0   0
FRAGMENT    HaloCarbamate                   [F,Cl,Br,I]C(=O)[N;X3]                          0   0
FRAGMENT    HaloCarbonate                   [F,Cl,Br,I]C(=O)[O;X2]                          0   0
FRAGMENT    HaloCarbonyl                    [F,Cl,Br,I]C=O                                  0   0
FRAGMENT    HaloCarbonyl_Alfa               [F,Cl,Br,I]CC=O                                 0   0
FRAGMENT    HaloCarbonyl_Beta               [F,Cl,Br,I]CCC=O                                0   0
FRAGMENT    HaloMethylEther                 [F,Cl,Br,I]C[OH0;X2]                            0   0
FRAGMENT    HaloMethylThioether             [F,Cl,Br,I]C[SH0;X2]                            0   0
FRAGMENT    HaloPyrimidine                  [F,Cl,Br,I]c1ncccn1                             0   0
FRAGMENT    HaloSulfide                     [F,Cl,Br,I][S;X2]                               0   0
FRAGMENT    HaloSulfide_Alfa                [F,Cl,Br,I]C[S;X2]                              0   0
FRAGMENT    HaloSulfide_Beta                [F,Cl,Br,I]CC[S;X2]                             0   0
FRAGMENT    HemiAcetal                      [O;X2][CH1][OH]                                 0   0
FRAGMENT    HemiAminal                      [N;X3][CH0][OH1]                                0   0
FRAGMENT    HemiKetal                       [O;X2][CH0][OH1]                                0   0
FRAGMENT    Hydrazide                       [N;X3][N;X3][$(S=O),$(C=O),$(C=S)]              0   0
FRAGMENT    Hydrazine                       [N;X3][N;X3]                                    0   0
FRAGMENT    Hydrazone                       [N;X3]N=[C;X3]                                  0   0
FRAGMENT    Hydroxylamine                   [N;X3][OH1]                                     0   0
FRAGMENT    Hydroxytriazolester             C(=O)On1nncc1                                   0   0
FRAGMENT    Imidoyl                         [N+]=C[N-]                                      0   0
FRAGMENT    Imine                           [N;X2]=[C;X3]                                   0   0
FRAGMENT    Iodoso                          O=I                                             0   0
FRAGMENT    Iodoxy                          O=I=O                                           0   0
FRAGMENT    IsoCyanate                      N=C=O                                           0   0
FRAGMENT    IsoNitrile                      [N+;X2]#[C-]                                    0   0
FRAGMENT    IsoThiocyanate                  N=C=S                                           0   0
FRAGMENT    Ketal                           [O;X2]C([C,c])([C,c])[O;X2]                     0   0
FRAGMENT    Ketene                          C=C=O                                           0   0
FRAGMENT    Ketoxime                        [C;X3]=N[OH1]                                   0   0
FRAGMENT    Lactone                         [O;R][C;R](=O)[C;!c]                            0   0
FRAGMENT    LawessonsReagent                [C,c]P(=S)(S)S                                  0   0
FRAGMENT    MichaelAcceptor                 C=CC=O                                          0   0
FRAGMENT    N-Halide                        N[F,Cl,Br,I]                                    0   0
FRAGMENT    Nitrate_1                       [O;X2][N+]([O-])=O                              0   0
FRAGMENT    Nitrate_2                       [O;X2]N(=O)=O                                   0   0
FRAGMENT    Nitro_1                         [N+;X3]([O-])=O                                 0   0
FRAGMENT    Nitro_2                         [N;X3](=O)=O                                    0   0
FRAGMENT    Nitroso                         [N;X2]=O                                        0   0
FRAGMENT    N-Methoyl                       [O;!R][C;!R][N;!R]                              0   0
FRAGMENT    NOxide_1                        nO                                              0   0
FRAGMENT    NOxide_2                        [N+;X4][O-]                                     0   0
FRAGMENT    NOxide_3                        [N;X4]=O                                        0   0
FRAGMENT    Oxalyl                          O=[c,C][c,C]=O                                  0   0
FRAGMENT    Oxaziridine                     C1NO1                                           0   0
FRAGMENT    Oxetane                         C1OCC1                                          0   0
FRAGMENT    P-Halide                        P[F,Cl,Br,I]                                    0   0
FRAGMENT    Pentafluorophenylester          C(=O)Oc1c(F)c(F)c(F)c(F)c1F                     0   0
FRAGMENT    Perhaloketone                   O=CC([F,Br,Cl,I])([F,Br,Cl,I])[F,Br,Cl,I]       0   0
FRAGMENT    Peroxide                        [O;X2][O;X2]                                    0   0
FRAGMENT    Phosphine                       [PH1,PH2,PH3;X3]                                0   0
FRAGMENT    Phosphinite_1                   [O;X2][P;X3]                                    0   0
FRAGMENT    Phosphonite_2                   [O;X2][P;X3][O;X2]                              0   0
FRAGMENT    Phosphite                       [O;X2][P;X3]([O;X2])[O;X2]                      0   0
FRAGMENT    PhosphineOxide                  [P;X4](=O)                                      0   0
FRAGMENT    Phosphinate                     [P;X4](=O)[O;X2]                                0   0
FRAGMENT    Phosphonate                     [P;X4](=O)([O;X2])[O;X2]                        0   0
FRAGMENT    Phosphate                       [P;X4](=O)([O;X2])([O;X2])[O;X2]                0   0
FRAGMENT    Phosphorane                     [P;X5]                                          0   0
FRAGMENT    Polyene                         [C;!R]=[C;!R][C;!R]=[C;!R]                      0   0
FRAGMENT    QuatenaryAmmonium               [N+;X4]                                         0   0
FRAGMENT    QuatenaryNitrogenCarbonyl_Beta  O=CCC[NH0;+;X4]                                 0   0
FRAGMENT    SchiffBase                      [C,c]N=[C;X3]                                   0   0
FRAGMENT    SCN2                            SC(N)N                                          0   0
FRAGMENT    S-Halides                       [S;X2][F,Cl,Br,I]                               0   0
FRAGMENT    SulfenicAcid                    [S;X2][OH1,O-]                                  0   0
FRAGMENT    SulfenicEster                   [S;X2]O[C,c]                                    0   0
FRAGMENT    SulfinicAcid                    [S;X3](=O)[OH1,O-]                              0   0
FRAGMENT    SulfinicEster                   [S;X3](=O)O[C,c]                                0   0
FRAGMENT    SulfinylImine                   [S;X3](=O)[N;X2]=[C;X3]                         0   0
FRAGMENT    SulfinylHalide                  [S;X3](=O)[F,Cl,Br,I]                           0   0
FRAGMENT    SulfinylNitrile                 [S;X3](=O)C#N                                   0   0
FRAGMENT    SulfinylThio                    [S;X3](=O)S                                     0   0
FRAGMENT    SulfonicAcid                    [!N][S;X4](=O)(=O)[O-,OH1]                      0   0
FRAGMENT    SulfonicEster                   [!N][S;X4](=O)(=O)O[C,c]                        0   0
FRAGMENT    Sulfone                         [!N][S;X4](=O)(=O)[!N]                          0   0
FRAGMENT    SulfonImine                     [S;X4](=O)(=N)                                  0   0
FRAGMENT    SulfonylAnhydride               [S;X4](=O)(=O)O[S;X4](=O)=O                     0   0
FRAGMENT    Sulfoxide                       [!N][S;X3](=O)[!N]                              0   0
FRAGMENT    TerminalVinyl                   [C;X3]=[CH2]                                    0   0
FRAGMENT    Thietane                        C1SCC1                                          0   0
FRAGMENT    ThiIrane                        C1SC1                                           0   0
FRAGMENT    ThioAmide                       [C;X3](=S)[N;X3]                                0   0
FRAGMENT    ThioAcetal                      [O;X2][CH1][S;X2]                               0   0
FRAGMENT    ThioCarbamate                   [N;X3]C(=S)[O;X2]                               0   0
FRAGMENT    ThioEster-01                    [O;X2][C;X3](=S)                                0   0
FRAGMENT    ThioEster-02                    [S;X2][C;X3](=O)                                0   0
FRAGMENT    ThioKetal                       [S;X2][CH0][S;X2]                               0   0
FRAGMENT    Thiol                           [C,c][SH1]                                      0   0
FRAGMENT    Thion                           [C;X3]=S                                        0   0
FRAGMENT    ThioUrea                        [NH1,NH2]C(=S)[NH1,NH2]                         0   0
FRAGMENT    Triazene                        [N;X3]N=[N;X2]                                  0   0
FRAGMENT    Triflate                        OS(=O)(=O)C(F)(F)F                              0   0
FRAGMENT    Urea                            [NH1,NH2]C(=O)[NH1,NH2]                         0   0



#
# UNWANTED MOIETIES
#
FRAGMENT    Adamantane                      C1C2CC3CC1CC(C2)C3                              0   0
FRAGMENT    Aminotriazole                   [$(Nc1ncnn1),$(Nc1nc(N)nn1)]                    0   0
FRAGMENT    Aniline                         [NH2]c1ccccc1                                   0   0
FRAGMENT    Aryl-4H-Pyridine                c1ccccc1C2=CCN(*)CC2                            0   0
FRAGMENT    Barbitarate                     O=C1NC(=O)CC(=O)N1                              0   0
FRAGMENT    Benzodioxolane                  a1aaa2O[CH2]Oa2a1                               0   0
FRAGMENT    Benzylhalogenide                [Cl,Br,I]Cc1ccccc1                              0   0
FRAGMENT    Clozapine                       CN1CCN(CC1)C2=Nc3cc(Cl)ccc3Nc4ccccc42           0   0
FRAGMENT    DeltaLactam                     N1C(=O)[CH1][CH1]1                              0   0
FRAGMENT    Dioxine                         O1c2ccccc2Oc3ccccc13                            0   0
FRAGMENT    Dibenzofurane                   O1c2ccccc2c3ccccc13                             0   0
FRAGMENT    Hydantoin                       [NH1]1C(=O)[NH1]C(=O)C1                         0   0
FRAGMENT    Naphthylamine_1                 Nc1cccc2ccccc21                                 0   0
FRAGMENT    Naphthylamine_2                 Nc1ccc2ccccc2c1                                 0   0
FRAGMENT    PosChargedNHeterocycle          [a;R][n;+](A)[a;R]                              0   0
FRAGMENT    Psoralen                        O=C1C=Cc2cc3C=COc3cc2O1                         0   0
FRAGMENT    Quinone                         O=C1C=CC(=O)C=C1                                0   0



#
# PROTECTING GROUPS
#
FRAGMENT    tBOC                            O=COC([CH3])([CH3])[CH3]                        0   0
FRAGMENT    CBZ                             NC(=O)OCc1ccccc1                                0   0
FRAGMENT    Fmoc                            NC(=O)OCC1c2ccccc2c3ccccc31                     0   0
FRAGMENT    TBDMS                           CO[Si]([CH3])([CH3])C([CH3])([CH3])[CH3]        0   0
FRAGMENT    TBDPS                           CO[Si](c1ccccc1)(c1ccccc1)C([CH3])([CH3])[CH3]  0   0
FRAGMENT    TIPS                            CO[Si]([CH]([CH3])[CH3])([CH]([CH3])[CH3])[CH1]([CH3])[CH3] 0   0
FRAGMENT    TMS                             CO[Si]([CH3])([CH3])[CH3]                       0   0
