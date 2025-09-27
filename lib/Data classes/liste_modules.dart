import 'package:appli_paf/Data%20classes/data_classes.dart';

List<Module> listeModules = [
  Module(
    code: 100548,
    plan: "ENS",
    titre: "EXER - EXERCER SON MÉTIER D'ENSEIGNANT",
    dispoCode: "25A0090293",
    dispoTitre: "EXER09 @ AUTONOMIE ET APPRENTISSAGE",
    theme: "Formation des enseignants",
    public:
        "Tout public, particulièrement néo-contractuels, contractuels, néo-titulaires, enseignants titularisés depuis quelques années",
    objectifs:
        "La formation alternera entre théories et pratiques afin, que par une analyse réflexive de pratique, chacun puisse dégager les leviers à confirmer ou à exploiter.",
    contenu:
        "Meirieu explique que l’autonomie s’apprend dans un cadre exigeant. Analyse des postures et gestes professionnels favorisant l’autonomie, climat de classe et motivation.",
    duree: 7,
    effectif: 20,
    abonnement: "Non",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Session présentielle",
            modalite: "Présentiel",
            duree: 4,
            finInscriptions: DateTime(2026, 1, 10),
            lienInscriptions: "https://inscriptions.exemple/module100548/g1s1",
          ),
          Session(
            numero: 2,
            titre: "Session distancielle",
            modalite: "Visio",
            duree: 3,
            finInscriptions: DateTime(2026, 2, 1),
            lienInscriptions: "https://inscriptions.exemple/module100548/g1s2",
          ),
        ],
      ),
    ],
  ),
  Module(
    code: 101155,
    plan: "ENS",
    titre: "EXER - EXERCER SON MÉTIER D'ENSEIGNANT",
    dispoCode: "25A0090293",
    dispoTitre: "EXER09 @ AUTONOMIE ET APPRENTISSAGE",
    theme: "Formation des enseignants",
    public:
        "Tout public, particulièrement néo-contractuels, contractuels, néo-titulaires, enseignants titularisés depuis quelques années",
    objectifs:
        "La formation alternera entre théories et pratiques afin que chacun puisse dégager les leviers à confirmer ou à exploiter.",
    contenu:
        "Approfondissement des postures et gestes professionnels. Focus sur l’autonomie des élèves et rôle du cadre exigeant.",
    duree: 33,
    effectif: 20,
    abonnement: "Non",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Module asynchrone",
            modalite: "En ligne asynchrone",
            duree: 6,
            finInscriptions: DateTime(2026, 1, 15),
            lienInscriptions: "https://inscriptions.exemple/module101155/g1s1",
          ),
        ],
      ),
      Groupe(
        numeroGroupe: 2,
        sessions: [
          Session(
            numero: 1,
            titre: "Visio de suivi",
            modalite: "Visio",
            duree: 3,
            finInscriptions: DateTime(2026, 1, 30),
            lienInscriptions: "https://inscriptions.exemple/module101155/g2s1",
          ),
        ],
      ),
    ],
  ),

  Module(
    code: 100548,
    plan: "ENS",
    titre: "EXER - EXERCER SON MÉTIER D'ENSEIGNANT",
    dispoCode: "25A0090293",
    dispoTitre: "EXER09 @ AUTONOMIE ET APPRENTISSAGE",
    theme: "Formation des enseignants",
    public:
        "Tout public, particulièrement néo-contractuels, contractuels, néo-titulaires, enseignants titularisés depuis quelques années",
    objectifs:
        "La formation alternera entre théories et pratiques afin, que par une analyse réflexive de pratique, chacun puisse dégager les leviers à confirmer ou à exploiter.",
    contenu:
        "Meirieu explique que l’autonomie s’apprend dans un cadre exigeant. Analyse des postures et gestes professionnels favorisant l’autonomie, climat de classe et motivation.",
    duree: 7,
    effectif: 20,
    abonnement: "Non",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Session présentielle",
            modalite: "Présentiel",
            duree: 3,
            finInscriptions: DateTime(2026, 1, 10),
            lienInscriptions: "https://inscriptions.exemple/module100548/g1s1",
          ),
          Session(
            numero: 2,
            titre: "Session distancielle",
            modalite: "Visio",
            duree: 4,
            finInscriptions: DateTime(2026, 2, 1),
            lienInscriptions: "https://inscriptions.exemple/module100548/g1s2",
          ),
        ],
      ),
    ],
  ),

  // === Module 2 (existant) ===
  Module(
    code: 101155,
    plan: "ENS",
    titre: "EXER - EXERCER SON MÉTIER D'ENSEIGNANT",
    dispoCode: "25A0090293",
    dispoTitre: "EXER09 @ AUTONOMIE ET APPRENTISSAGE",
    theme: "Formation des enseignants",
    public:
        "Tout public, particulièrement néo-contractuels, contractuels, néo-titulaires, enseignants titularisés depuis quelques années",
    objectifs:
        "La formation alternera entre théories et pratiques afin que chacun puisse dégager les leviers à confirmer ou à exploiter.",
    contenu:
        "Approfondissement des postures et gestes professionnels. Focus sur l’autonomie des élèves et rôle du cadre exigeant.",
    duree: 33,
    effectif: 20,
    abonnement: "Non",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Module asynchrone",
            modalite: "En ligne asynchrone",
            duree: 5,
            finInscriptions: DateTime(2026, 1, 15),
            lienInscriptions: "https://inscriptions.exemple/module101155/g1s1",
          ),
        ],
      ),
      Groupe(
        numeroGroupe: 2,
        sessions: [
          Session(
            numero: 1,
            titre: "Visio de suivi",
            modalite: "Visio",
            duree: 3,
            finInscriptions: DateTime(2026, 1, 30),
            lienInscriptions: "https://inscriptions.exemple/module101155/g2s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 3 ===
  Module(
    code: 101200,
    plan: "PEDA",
    titre: "PÉDA - PÉDAGOGIE DIFFÉRENCIÉE",
    dispoCode: "25A0090450",
    dispoTitre: "PÉDA01 @ DIFFÉRENCIER LES APPRENTISSAGES",
    theme: "Pédagogie et différenciation",
    public: "Enseignants du second degré, CPE",
    objectifs:
        "Apprendre à adapter les parcours pour répondre aux besoins variés des élèves.",
    contenu:
        "Analyse de cas concrets, ateliers pratiques de conception de séquences différenciées, travail collaboratif sur l'évaluation inclusive.",
    duree: 12,
    effectif: 25,
    abonnement: "Oui",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Atelier présentiel",
            modalite: "Présentiel",
            duree: 6,
            finInscriptions: DateTime(2026, 3, 1),
            lienInscriptions: "https://inscriptions.exemple/module101200/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 4 ===
  Module(
    code: 101201,
    plan: "NUM",
    titre: "NUM - ENSEIGNER AVEC LE NUMÉRIQUE",
    dispoCode: "25A0090460",
    dispoTitre: "NUM01 @ USAGES DU NUMÉRIQUE EN CLASSE",
    theme: "Numérique éducatif",
    public: "Tout public",
    objectifs:
        "Découvrir et expérimenter des outils numériques pour enrichir les pratiques pédagogiques.",
    contenu:
        "Focus sur ENT, applications collaboratives, capsules vidéo, quiz interactifs. Réflexion sur les plus-values et les limites.",
    duree: 9,
    effectif: 30,
    abonnement: "Oui",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Formation hybride",
            modalite: "Présentiel + Distanciel",
            duree: 3,
            finInscriptions: DateTime(2026, 2, 20),
            lienInscriptions: "https://inscriptions.exemple/module101201/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 5 ===
  Module(
    code: 101202,
    plan: "CLIM",
    titre: "CLIM - CLIMAT SCOLAIRE ET BIEN-ÊTRE",
    dispoCode: "25A0090470",
    dispoTitre: "CLIM01 @ CLIMAT DE CLASSE",
    theme: "Vie scolaire",
    public: "Enseignants, CPE, AED",
    objectifs:
        "S'outiller pour améliorer le climat scolaire et renforcer le bien-être des élèves.",
    contenu:
        "Travaux sur la gestion des conflits, la communication non-violente, la coopération et la médiation.",
    duree: 10,
    effectif: 20,
    abonnement: "Non",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Atelier présentiel",
            modalite: "Présentiel",
            duree: 10,
            finInscriptions: DateTime(2026, 3, 5),
            lienInscriptions: "https://inscriptions.exemple/module101202/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 6 ===
  Module(
    code: 101203,
    plan: "LANG",
    titre: "LANG - PRATIQUES DE L'ORAL EN LANGUES",
    dispoCode: "25A0090480",
    dispoTitre: "LANG01 @ L’ORAL EN CLASSE DE LANGUES",
    theme: "Langues vivantes",
    public: "Professeurs de langues vivantes",
    objectifs:
        "Développer l'oralité chez les élèves et diversifier les situations d'apprentissage.",
    contenu:
        "Jeux de rôle, débats, enregistrements audio, évaluation de l’oral selon le CECRL.",
    duree: 8,
    effectif: 15,
    abonnement: "Oui",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Visio pratique",
            modalite: "Distanciel",
            duree: 3,
            finInscriptions: DateTime(2026, 2, 15),
            lienInscriptions: "https://inscriptions.exemple/module101203/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 7 ===
  Module(
    code: 101204,
    plan: "DIR",
    titre: "DIR - PILOTAGE D'ÉQUIPE",
    dispoCode: "25A0090490",
    dispoTitre: "DIR01 @ LE MANAGEMENT DANS L’ÉDUCATION",
    theme: "Pilotage et management",
    public: "Chefs d'établissement, adjoints, inspecteurs",
    objectifs:
        "Renforcer les compétences en management collaboratif et pilotage pédagogique.",
    contenu:
        "Analyse des styles de leadership, pilotage de projet, accompagnement des équipes, gestion de crise.",
    duree: 15,
    effectif: 18,
    abonnement: "Non",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Séminaire présentiel",
            modalite: "Présentiel",
            duree: 3,
            finInscriptions: DateTime(2026, 4, 1),
            lienInscriptions: "https://inscriptions.exemple/module101204/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 8 ===
  Module(
    code: 101205,
    plan: "SANTÉ",
    titre: "SANTÉ - SANTÉ ET ÉDUCATION",
    dispoCode: "25A0090500",
    dispoTitre: "SANTÉ01 @ ÉDUCATION À LA SANTÉ",
    theme: "Éducation à la santé",
    public: "Enseignants de SVT, CPE",
    objectifs:
        "Renforcer l'éducation à la santé et aux comportements responsables.",
    contenu:
        "Prévention des conduites à risques, nutrition, sommeil, sensibilisation aux addictions.",
    duree: 6,
    effectif: 25,
    abonnement: "Oui",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Atelier visio",
            modalite: "Distanciel",
            duree: 4,
            finInscriptions: DateTime(2026, 3, 10),
            lienInscriptions: "https://inscriptions.exemple/module101205/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 9 ===
  Module(
    code: 101206,
    plan: "INCL",
    titre: "INCL - INCLUSION SCOLAIRE",
    dispoCode: "25A0090510",
    dispoTitre: "INCL01 @ ACCOMPAGNER LES ÉLÈVES À BESOINS PARTICULIERS",
    theme: "Inclusion scolaire",
    public: "Enseignants, AESH",
    objectifs:
        "Adapter ses pratiques pour favoriser l'inclusion de tous les élèves.",
    contenu:
        "Zoom sur les troubles DYS, TSA, TDAH. Ateliers de conception de supports accessibles.",
    duree: 12,
    effectif: 20,
    abonnement: "Oui",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Stage présentiel",
            modalite: "Présentiel",
            duree: 12,
            finInscriptions: DateTime(2026, 3, 20),
            lienInscriptions: "https://inscriptions.exemple/module101206/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 10 ===
  Module(
    code: 101207,
    plan: "HIST",
    titre: "HIST - ENSEIGNER L’HISTOIRE AUTREMENT",
    dispoCode: "25A0090520",
    dispoTitre: "HIST01 @ HISTOIRE ET MÉMOIRE",
    theme: "Sciences humaines",
    public: "Enseignants d’histoire-géographie",
    objectifs:
        "Renouveler les approches pédagogiques en histoire et développer l’esprit critique.",
    contenu:
        "Exploitation des archives, analyse d’images, travail sur la mémoire collective et ses enjeux.",
    duree: 14,
    effectif: 20,
    abonnement: "Non",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Atelier présentiel",
            modalite: "Présentiel",
            duree: 12,
            finInscriptions: DateTime(2026, 3, 25),
            lienInscriptions: "https://inscriptions.exemple/module101207/g1s1",
          ),
        ],
      ),
    ],
  ),

  // === Module 11 ===
  Module(
    code: 101208,
    plan: "SCI",
    titre: "SCI - SCIENCES ET EXPÉRIMENTATION",
    dispoCode: "25A0090530",
    dispoTitre: "SCI01 @ DÉMARCHE EXPÉRIMENTALE",
    theme: "Sciences et techniques",
    public: "Enseignants de physique-chimie, SVT, technologie",
    objectifs:
        "Mettre en œuvre des démarches expérimentales et renforcer l’autonomie scientifique des élèves.",
    contenu:
        "Ateliers pratiques en laboratoire, utilisation des outils numériques de simulation, évaluation par projet.",
    duree: 16,
    effectif: 15,
    abonnement: "Oui",
    groupes: [
      Groupe(
        numeroGroupe: 1,
        sessions: [
          Session(
            numero: 1,
            titre: "Stage pratique",
            modalite: "Présentiel",
            duree: 4,
            finInscriptions: DateTime(2026, 4, 5),
            lienInscriptions: "https://inscriptions.exemple/module101208/g1s1",
          ),
        ],
      ),
    ],
  ),
];
