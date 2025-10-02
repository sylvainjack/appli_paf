class Module {
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    return other is Module && other.code == code;
  }

  @override
  int get hashCode => code.hashCode;
  final String code;
  final String plan;
  final String theme;
  final String titre;
  final String dispoCode;
  final String dispoTitre;
  final String public;
  final String objectifs;
  final String contenu;
  final String duree;
  final String effectif;
  final String abonnement;
  final bool discipline;
  final List<String> tags;
  //final List<Groupe> groupes;

  const Module({
    required this.code,
    required this.plan,
    required this.theme,
    required this.titre,
    required this.dispoCode,
    required this.dispoTitre,
    required this.public,
    required this.objectifs,
    required this.contenu,
    required this.duree,
    required this.effectif,
    required this.abonnement,
    required this.discipline,
    required this.tags,
    // required this.groupes,
  });

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'plan': plan,
      'theme': theme,
      'titre': titre,
      'dispoCode': dispoCode,
      'dispoTitre': dispoTitre,
      'public': public,
      'objectifs': objectifs,
      'contenu': contenu,
      'duree': duree,
      'effectif': effectif,
      'abonnement': abonnement,
      'discipline': discipline,
      'tags': tags,
    };
  }

  factory Module.fromJson(Map data) {
    // List tGroupes = data['groupes'];
    return Module(
      code: data['code'],
      plan: data['plan'],
      theme: data['theme'],
      titre: data['titre'],
      dispoCode: data['dispoCode'],
      dispoTitre: data['dispoTitre'],
      public: data['public'],
      objectifs: data['objectifs'],
      contenu: data['contenu'],
      duree: data['duree'],
      effectif: data['effectif'],
      abonnement: data['abonnement'],
      discipline: data['discipline'],
      tags: data['tags'],
    );
  }
}

List<Module> listeModules = [
  Module(
      code: "100566",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Webinaire informatif certification complémentaire en Arts",
      dispoCode: "25A0090303",
      dispoTitre: "ACL_03 @ WEBINAIRE INFORMATIF CERTIFICATIONS ARTS",
      public:
          "Enseignants prioritairement du 2nd degré. Toutes disciplines concernées.",
      objectifs:
          "Les certifications complémentaires en arts (histoire de l'art, danse, théâtre, cinéma audiovisuel et arts du cirque) permettent d'attester de compétences dans ce domaine et offre l'opportunité d'en acquérir d'autres. Prenant appui sur les programmes mobilisant des expériences professionnelles et convoquant une expertise scientifique plus ou moins étayée et étoffée, il s'agit d'accompagner les préparationnaires dans leur démarche qu'il s'agisse de la construction de progressive du rapport dactylographié et de l'épreuve orale. Plusieurs points seront abordés et notamment des réflexions didactiques et pistes pédagogiques en lien avec les projets envisagés, connaissance des acteurs institutionnels et des ressources régionales.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE  Cette formation a pour objectif d'accompagner les candidats qui s'engagent dans la préparation de la certification complémentaire Arts avec cinq options : arts du cirque, cinéma et audiovisuel, danse, histoire de l'art, théâtre.  Un premier temps commun aux enseignement artistiques (octobre 2025) abordera les exigences et attendues de cette épreuve certificative.",
      duree: "2",
      effectif: "60",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100566/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100606",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "La Fabrique à spectacle de musiques actuelles",
      dispoCode: "25A0090327",
      dispoTitre: "ACL_01 @ LA FABRIQUE DU SPECTACLE VIVANT",
      public:
          "Enseignants du second degré, référents culture, professeurs documentalistes",
      objectifs:
          "Découvrir les rouages de la mise en place d'un concert de musiques actuelles, de sa commande à sa représentation sur scène. Utiliser les ressources culturelles et pédagogiques autour du spectacle vivant pour concevoir des actions culturelles à destination des élèves, les piloter et les animer.  Découvrir un dispositif d'éducation artistique et culturelle en lien avec les musiques actuelles.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE  Durant ce stage, l'enseignant se familiarisera avec les notions élémentaires permettant de réaliser un spectacle par le biais notamment de rencontres avec les professionnels de production d'une SMAC (scène de musiques actuelles). Tout en découvrant les missions et les spécificités de l'Aéronef, ce stage permettra aux stagiaires de mettre en valeur une prestation artistique en décryptant les artifices du spectacle vivant à travers ses aspects divers (techniques, logistiques et organisationnels). Les stagiaires auront aussi l'occasion de tester et de réfléchir aux supports pédagogiques qui accompagnent la réception du spectacle vivant par les publics scolaires. Visite de la structure culturelle, découverte du dispositif EAC Aéro Teenage Tour.",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100606/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100609",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Pratiquer autrement le musée",
      dispoCode: "25A0090330",
      dispoTitre: "ACL_09 @ OBJECTIF 100% EAC (INTERDEGRÉ)",
      public:
          "Les collègues du premier degré, de collège et de lycée (général et technologique) sans distinction.  L'interdisciplinarité est encouragée, c'est pourquoi toutes les matières sont susceptibles d'être concernées. Pas de pré-requis.",
      objectifs:
          "Expérimenter des façons originales de pratiquer un musée, voici l'objectif de ce stage qui se déroulera au musée de Flandre de Cassel.  publics scolaires par des pratiques plus diversifiées. Favoriser la coopération entre les stagiaires pour construire un parcours sensoriel amenant à une meilleure compréhension des œuvres.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE En présence de deux médiatrices et du professeur missionné, les stagiaires pourront explorer plusieurs ateliers leur permettant d'appréhender une œuvre autrement : laisser leur place aux cinq sens, oser la méditation, pratiquer le jeu, autant de pistes pour une pratique renouvelée du musée. En amont, une visio présentera la structure et ses collections, afin de laisser toute la place aux ateliers durant la demi-journée en présentiel.      Distanciel 1 h  En fin d'après-midi, la visio doit permettre de présenter la structure du musée de Flandre, son histoire, ses collections et ses propositions pour le public scolaire.    Présentiel 3,5 h  Un mercredi après-midi, le temps en présentiel doit permettre de réellement expérimenter d'autres pratiques du musée : construction d'un parcours sensoriel amenant à une meilleure compréhension de l'œuvre ; yoga et méditation ; pratique du jeu.",
      duree: "5",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100609/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100875",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre:
          "Sites patrimoniaux et mémoire des grands conflits mondiaux BASSIN 10",
      dispoCode: "25A0090442",
      dispoTitre: "ACL_10 - MÉMOIRE ET EAC (INTERDEGRÉ)",
      public:
          "Enseignants du premier et du second degré (collège - lycée général et technologique - lycée professionnel)  A périmètre restreint (Bassin 10)",
      objectifs:
          "Comprendre le contexte historique de la présence des cimetières du Commonwealth en France. Acquérir des méthodes pour visiter et analyser un cimetière de la CWGC avec des élèves. Développer des compétences pour interpréter les informations contenues sur les pierres tombales. Identifier le potentiel pédagogique des cimetières de proximité pour l'enseignement des guerres mondiales. Analyser la vision commémorative des pays du Commonwealth et les nationalités représentées dans leurs cimetières. Comprendre les enjeux de la construction contemporaine de cimetières militaires. Découvrir des activités pédagogiques adaptées aux programmes scolaires. Découvrir les métiers de la CWGC et leurs liens avec le parcours avenir des élèves.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Faire des sites de mémoire de la CWGC, commission de sépultures de guerre du Commonwealth, des lieux d'apprentissage concrets : c'est l'objectif de cette formation qui se déroulera à Beaurains et dans un cimetière militaire du secteur d'Arras. Comprendre les enjeux commémoratifs et les parcours de soldats via l'étude des tombes. Apprendre à visiter et à analyser les sites et à les utiliser comme supports d'apprentissage. Découvrir les métiers présentés au centre des visiteurs de Beaurains, offrant des perspectives pour le parcours avenir des élèves. En amont, une phase de préparation en distanciel permettra de contextualiser la visite et de présenter l'organisation de la formation.",
      duree: "5",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100875/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100876",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre:
          "Explorer les usages de l'IA dans la création artistique contemporaine : enjeux, pratiques et pédagogie",
      dispoCode: "25A0090443",
      dispoTitre: "ACL_11 - EAC ET IA (INTERDEGRÉ)",
      public: "PV- Interdegré - enseignants soucieux de questionner l'usage de l'IA dans leur enseignement, aucun pré-requis",
      objectifs: "Explorer l'usage de l'IA dans la création artistique à travers l'exposition Panorama 27 ; analyser les enjeux artistiques et sociétaux liés à l'utilisation des IA ; expérimenter les potentialités créatives de l'IA lors d'un atelier animé par un artiste de Fresnoy ; développer une posture critique et éclairée sur l'usage de l'IA en art ; identifier des pistes pédagogiques pour intégrer l'IA en classe et questionner les élèves son son utilisation ; découvrir les ressources du Fresnoy pour accompagner des projets éducatifs autour de l'IA",
      contenu: "AUTRE CONTENU ARTS ET PATRIMOINE Cette formation propose d'explorer l'usage de l'IA dans l'art, d'en analyser les enjeux, d'expérimenter ses potentialités à travers un atelier et d'identifier des pistes pédagogiques pour l'intégrer en classe. Les stagiaires découvrent l'exposition Panorama 27 au Fresnoy, à Tourcoing à travers un parcours dédié à l'usage de l'IA dans la création artistique. Cette succession d'œuvres numériques invite à réfléchir aux enjeux artistiques et sociétaux liés à ces technologies émergentes. Pour approfondir cette exploration, un artiste du Fresnoy anime un atelier sur les potentialités créatives de l'IA. L'objectif est de développer une approche critique et éclairée de son utilisation en art. Enfin, l'enseignant missionné propose des pistes pédagogiques pour intégrer l'IA en classe.",
      duree: "6",
      effectif: "15",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100876/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: ["IA"]),
  Module(
      code: "101397",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Enseigner les CPS avec le théâtre",
      dispoCode: "25A0090327",
      dispoTitre: "ACL_01 @ LA FABRIQUE DU SPECTACLE VIVANT",
      public:
          "Enseignants du second degré, référents culture, professeurs documentalistes",
      objectifs:
          "En accompagnement des compétences du nouveau socle, le stage propose de former les enseignants à intégrer des pratiques de théâtre pour accompagner le développement des compétences psychosociales des élèves. L'empathie, le travail de groupe, la gestion des émotions sont des constituants essentiels de la création du spectacle vivant et du théâtre. Il s'agit de solliciter le corps et la parole de chacun, de favoriser l'inscription de chacun dans des processus collaboratifs pour imaginer, créer et réfléchir ensemble. La conscience de ce qu'on fait doit aller avec la conscience de soi. La bienveillance accompagnera le travail de création collective dans des pratiques de formation transférables à la classe comme à l'atelier. La réflexion sur l'évaluation trouvera également sa place.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Il s'agit de pratiquer le théâtre avec un artiste et une compagnie dont les choix de textes, de thématiques et de pratiques répondent aux nouvelles exigences du socle. Les exercices pratiqués en atelier permettent d'apprendre comment favoriser le développement de l'élève en tant que futur citoyen, conscient de lui-même et prenant en compte les autres dans ses démarches créatives. Les exercices pourront être réinvestis en classe ou dans les projets menés par les enseignants. La visio en amont visera à présenter la problématique choisie avec l'artiste et les axes de travail qui seront mis en oeuvre ensuite en présentiel. Elle sera aussi l'occasion de faire le point sur les textes de théâtre contemporain qui peuvent accompagner un travail avec les élèves autour des compétences psychosociales.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101397/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101400",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Découvrir la scène contemporaine",
      dispoCode: "25A0090327",
      dispoTitre: "ACL_01 @ LA FABRIQUE DU SPECTACLE VIVANT",
      public:
          "Enseignants du second degré, référents culture, professeurs documentalistes",
      objectifs:
          "Découvrir le travail et l'univers de création d'un grand metteur en scène contemporain par la rencontre et la pratique.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Rencontrer et échanger avec un metteur en scène et écrivain de théâtre en création. Assister à un temps de répétition. Pratiquer un atelier de théâtre avec l'artiste.",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101400/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101412",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "PATRIMOINE RÉGIONAL ET MONDIAL",
      dispoCode: "25A0090330",
      dispoTitre: "ACL_09 @ OBJECTIF 100% EAC (INTERDEGRÉ)",
      public:
          "Tout public et toutes disciplines. Les professeurs des écoles primaires, de collèges et de lycées.",
      objectifs:
          "Faire connaître et appréhender le Patrimoine régional à l'échelle mondiale. Croiser, par la visite d'un lieu régional inscrit sur la liste du patrimoine mondial de l'UNESCO, la notion de gestion et des usages. Répondre aux compétences des programmes de l'école primaire, du collège et du lycée en utilisant le Patrimoine régional et mondial à travers la vision de projets en lien avec le Parcours éducatif. Concevoir, mettre en œuvre ces projets pour les insérer dans les programmes des différentes disciplines.",
      contenu:
          "PATRIMOINE ET RICHESSES CULTURELLES Le patrimoine régional s'inscrit désormais à l'échelle mondiale et répond à des valeurs universelles et exceptionnelles. Comment aider les professeurs à mieux cerner la question de la patrimonialisation ? Comment s'élabore un dossier d'inscription à la liste du Patrimoine mondial de l'UNESCO ? Quels en sont les enjeux politiques, économiques et sociaux ? Entre témoignages des acteurs des biens inscrits et réflexions sur le devenir de ces biens seront abordés plusieurs patrimoines régionaux inscrits : les beffrois, le Bassin minier, le réseau Vauban. Un temps sera consacré aux activités sur le patrimoine mondial de l'UNESCO. Le stage est accessible à tous, de l'école au lycée, quelle que soit la matière enseignée, pour nourrir des projets allant de la sensibilisation à la spécialité.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101412/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101413",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Danser et prendre soin",
      dispoCode: "25A0090330",
      dispoTitre: "ACL_09 @ OBJECTIF 100% EAC (INTERDEGRÉ)",
      public:
          "Ouvert à tous les enseignants du premier ou du second degré, quelle que soit la discipline.",
      objectifs:
          "Savoir mettre un corps (son corps) en état d'écoute. Ressentir l'écoute au sein d'un groupe et développer la confiance entre participants. Amener les participant.e.s à éprouver la rencontre grâce aux techniques d'improvisation. Favoriser l'affirmation de soi par la pratique de la danse, en appliquant des principes de bienveillance et de respect mutuel. Veiller à la notion de consentement dans un atelier de pratique artistique. Travailler en partenariat avec une structure culturelle pour mener un projet danse dans son établissement.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Cette formation prévoit d'observer comment la pratique de la danse invite à prendre soin des autres. En portant une attention particulière au corps, à sa posture, à ses déplacements, à l'espace, la danse permet d'entrer en relation avec le monde. Les stagiaires seront invités à explorer des techniques de relaxation pour prendre confiance et tourner le regard vers l'autre. Ils participeront à des ateliers pour transformer les gestes simples du quotidien en gestes dansés. Ils seront immergés dans le processus de création de la pièce Between de Sylvain Groud, chorégraphe et directeur du CCN de Roubaix. Ils prolongeront ces expériences sensibles en échangeant avec l'artiste et l'enseignante missionnée au Ballet du Nord, qui présenteront un projet EAC mené en établissement scolaire.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101413/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101414",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "La Fabrique d'un spectacle lyrique",
      dispoCode: "25A0090330",
      dispoTitre: "ACL_09 @ OBJECTIF 100% EAC (INTERDEGRÉ)",
      public:
          "Enseignants de toute discipline du premier et second degré, référents culture, professeurs documentalistes",
      objectifs:
          "Découverte de la physiologie de la voix. Ateliers de pratique avec la mise en œuvre d'exercices sur l'échauffement, de la voix, le travail sur le souffle et l'utilisation de sa voix dans la gestion de classe. Mise à disposition des stagiaires à l'issue de la formation d'une boîte à outils numérique. Découverte de projets EAC initiés par l'Atelier lyrique de Tourcoing autour de la voix.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE La voix est le premier outil de travail de l'enseignant. A l'heure actuelle, un enseignant sur deux éprouve des troubles vocaux lors de sa carrière. L'Atelier Lyrique de Tourcoing vous proposera, lors de ce temps de formation, un condensé de trucs et astuces pour prévenir plutôt que guérir ses petites cordes vocales ! Cela sera aussi l'occasion de découvrir l'univers de l'Atelier Lyrique de Tourcoing via une visite de la structure culturelle et de la découverte d'une production en cours.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101414/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101427",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Adage pour les débutants",
      dispoCode: "25A0090669",
      dispoTitre: "ACL_12 @ ADAGE VISIOS FLASH",
      public:
          "Tous les enseignants et membres de la communauté    éducative qui mènent des actions EAC.",
      objectifs: "Mieux utiliser ADAGE",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Découvrir l'application ADAGE (Application Dédiée A   la Généralisation de l'EAC) et ses potentialités, en   particulier pour les enseignants et autres   personnels qui mènent des projets en EAC. Prendre en   main immédiatement la plateforme. Interagir avec les   formateurs et les autres stagiaires.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101427/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101428",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Projet EAC et ADAGE",
      dispoCode: "25A0090669",
      dispoTitre: "ACL_12 @ ADAGE VISIOS FLASH",
      public:
          "Tous les enseignants et membres de la communauté  éducative qui mènent des actions EAC.",
      objectifs: "Mieux utiliser ADAGE",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Découvrir la plateforme ADAGE (Application dédiée à   la généralisation de l'EAC) et plus particulièrement   : les appels à projets, les dispositifs, les   partenaires et les offres pass Culture. Inscrire son   projet EAC sur ADAGE au bénéfice des élèves et de   l'établissement. Identifier les personnes ressources   de la DRAEAC.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101428/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101429",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Projet musique et ADAGE",
      dispoCode: "25A0090669",
      dispoTitre: "ACL_12 @ ADAGE VISIOS FLASH",
      public:
          "Tous les enseignants et membres de la communauté  éducative qui mènent des actions EAC.",
      objectifs:
          "Découvrir la plateforme ADAGE (Application dédiée à la généralisation de l'EAC) et plus particulièrement : les appels à projets en éducation musicale et chant choral, les dispositifs, les partenaires et les offres pass Culture. Inscrire son projet EMCC sur ADAGE au bénéfice des élèves et de l'établissement. Identifier les personnes ressources de la DRAEAC.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Mieux utiliser ADAGE et mieux connaître le fonctionnement de la part collective du pass Culture au service de l'EMCC (éducation musicale et chant choral).",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101429/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101431",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Visio Flash Danse : rencontrer",
      dispoCode: "25A0090669",
      dispoTitre: "ACL_12 @ ADAGE VISIOS FLASH",
      public:
          "Enseignants de premier et du second degré, de toutes disciplines, intéressés pour mener un projet danse avec leurs élèves.",
      objectifs:
          "Développer le rapport aux œuvres dans la pratique de la danse en milieu scolaire. Aiguiser le regard critique et accompagner l'expérience de spectateur des élèves. Étendre l'utilisation d'ADAGE pour découvrir des partenaires cultures et des dispositifs. Construire et mettre en œuvre des projets en partenariat avec des artistes et des structures culturelles. Faire des projets EAC un levier pour la réussite des élèves.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Cette formation propose de réunir des collègues qui souhaitent favoriser la rencontre de leurs élèves avec des œuvres chorégraphiques. Ce premier rendez-vous, programmé en décembre et qui pourra être complété par deux autres dans l'année, abordera le spectacle chorégraphique comme support pour préparer les élèves à danser, pour nourrir leur pratique, pour aiguiser leur regard critique et élargir leurs représentations de la danse contemporaine. Les stagiaires pourront découvrir des ressources pour accompagner l'acquisition d'une culture chorégraphique et échanger avec un médiateur culturel pour envisager des rencontres avec des artistes et des lieux de diffusion",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101431/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101441",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Visio Flash Danse : faire danser",
      dispoCode: "25A0090669",
      dispoTitre: "ACL_12 @ ADAGE VISIOS FLASH",
      public:
          "Enseignants de premier et du second degré, de toutes disciplines, intéressés pour mener un projet danse avec leurs élèves.",
      objectifs:
          "Développer la pratique de la danse en milieu scolaire. Développer l'utilisation d'ADAGE pour découvrir un dispositif, pour répondre à un appel à projets et pour recenser les actions menées avec ses élèves. Sensibiliser à la pédagogie de projet mené en partenariat avec un artiste ou une structure culturelle. Faire des projets EAC un levier pour la réussite des élèves.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Cette formation propose de réunir des collègues qui souhaitent faire danser leurs élèves. Elle présentera des exemples de dispositifs nationaux ou académiques d'éducation artistique et culturelle en lien avec le champ chorégraphique. Les stagiaires pourront échanger avec un ou plusieurs porteurs de projets, avoir des exemples de mise en œuvre, découvrir des ressources pour lever certaines appréhensions ou dépasser certaines difficultés à développer la danse à l'école. Ce rendez-vous, programmé en février-mars, pourra prolonger une première visio de décembre sur le rapport aux œuvres chorégraphiques, mais il est possible de participer à ce module sans ce pré-requis.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101441/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101444",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Visio Flash Danse : valoriser un projet",
      dispoCode: "25A0090669",
      dispoTitre: "ACL_12 @ ADAGE VISIOS FLASH",
      public:
          "Tous les enseignants et membres de la communauté  éducative qui mènent des actions EAC.",
      objectifs:
          "Développer la pratique de la danse en milieu scolaire. Développer l'utilisation d'ADAGE pour recenser les actions menées avec ses élèves et compléter des bilans. Sensibiliser à la pédagogie de projet mené en partenariat avec des artistes ou des structures culturelles. Faire des projets EAC un levier pour la réussite des élèves. Développer le lien avec les familles.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Cette formation propose de réunir des collègues qui souhaitent valoriser un projet danse mené avec leurs élèves. Elle présentera des exemples de traces possibles pour finaliser ou rendre compte d'expériences menées. Les stagiaires pourront échanger avec des porteurs de projets ou des médiateurs culturels. Ce rendez-vous, programmé en mai 2026, pourra prolonger deux premières visios qui auront eu lieu en décembre sur le rapport aux œuvres chorégraphiques et en mars sur la pratique de la danse, mais il est possible de participer à ce module sans ces pré-requis.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101444/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101445",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Danse et expérience de l&#8217;altérité",
      dispoCode: "25A0090328",
      dispoTitre: "ACL_08 @ DISPOSITIFS EAC (PUBLIC VOLONTAIRE)",
      public:
          "Enseignants du second degré, toutes disciplines confondues, personnels de la communauté éducative qui souhaitent   amener leurs élèves à rencontrer le spectacle vivant, et plus particulièrement, la création chorégraphique dans le   cadre d'un projet EAC.",
      objectifs:
          "Vivre en acte des démarches de création artistique. Développer la pratique artistique en classe et l'articuler avec des visées éducatives ancrées sur l'expérience de l'altérité. Partager des connaissances en culture chorégraphique et en pédagogie de projet, formaliser des contenus d'enseignement et diffuser des ressources pour enrichir les projets danse en milieu scolaire dans sa dimension artistique. Accompagner les enseignants dans la mise en œuvre de projets chorégraphiques menés en partenariat avec des artistes et des professionnels de la culture.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Ce stage prévoit de partir à la rencontre de la danse contemporaine en découvrant la démarche de création de Bruno Pradet, chorégraphe de la compagnie Vilcanota, pour son dernier spectacle, « De loin, si près », programmé le mardi 03 février 2026 au Bateau Feu, scène nationale de Dunkerque. En participant à un temps de pratique, les stagiaires pourront traverser des expériences sensibles : ateliers d'improvisation guidée, expérimentations dansées pour incarner différents états de corps. En complément de cet atelier, ils pourront échanger avec l'artiste intervenant sur son expérience de danseur interprète dans une pièce de groupe qui explore la place de l'individu dans le collectif. Il s'agira aussi d'apporter des références de culture chorégraphique en lien avec cette thématique.",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101445/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101448",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "LP et EAC, un pari gagnant !",
      dispoCode: "25A0090328",
      dispoTitre: "ACL_08 @ DISPOSITIFS EAC (PUBLIC VOLONTAIRE)",
      public:
          "Tout enseignant de lycée professionnel des disciplines générales et professionnelles.",
      objectifs:
          "Échanger et mutualiser des modalités de mise en œuvre de projets EAC, y compris en interdisciplinarité. Co-construire des projets avec des partenaires culturels et artistiques. Viser le 100% EAC.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Ce module a pour vocation de concevoir un projet EAC pour les élèves de lycée professionnel de toutes spécialités en s'appuyant sur les spécificités des disciplines générales et professionnelles. Il s'appuie également sur les modalités pédagogiques spécifiques au LP et leur lien avec le Parcours d'Éducation Artistique et Culturelle.  Ensuite, il s'agit de dresser un bilan des projets EAC menés, d'identifier les leviers et les freins. Enfin, les enseignants s'approprient les possibilités d'inscription des classes aux dispositifs académiques, régionaux et nationaux.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101448/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101449",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Patrimoine(s) et jeu théâtral",
      dispoCode: "25A0090328",
      dispoTitre: "ACL_08 @ DISPOSITIFS EAC (PUBLIC VOLONTAIRE)",
      public: "PV. Enseignants de toutes disciplines de collège et lycée",
      objectifs:
          "Former les enseignants à appréhender autrement le patrimoine (lieux, bâtiments, œuvres). Aborder la question du matériel et de l'immatériel. Donner des outils concrets de travail avec les élèves (pratique du jeu théâtral avec une compagnie professionnelle).",
      contenu:
          "CINEMA, DANSE, THEATRE Inventer, en s'appropriant par la visite et en pratiquant le théâtre, de nouvelles approches et de nouvelles médiations autour du patrimoine et des lieux patrimoniaux.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101449/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101450",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Participer au festival Sériea mania",
      dispoCode: "25A0090328",
      dispoTitre: "ACL_08 @ DISPOSITIFS EAC (PUBLIC VOLONTAIRE)",
      public:
          "Professeurs de différentes disciplines (de collège, lycées GT et lycées professionnels)",
      objectifs:
          "Appréhender et exploiter en classe les séries et le festival.",
      contenu:
          "AUTRE CONTENU NUMERIQUE ET SYSTEMES D'INFORMATION Les stagiaires vivront 4 temps autour du Festival Séries Mania : une visio d'1h30 pour introduire les spécificités du langage sériel et cinématographique. Une journée d'immersion avec projections de pilotes, échanges avec les équipes. Un troisième temps comprendra plusieurs modalités d'intervention : apports théoriques sur les démarches d'analyse filmique en lien avec des objectifs littéraires, historiques, économiques, présentations de pratiques pédagogiques et restitution de travaux d'élèves, des échanges entre formateurs et stagiaires ainsi qu'un travail en petits groupes pour élaborer des séquences pédagogiques autour d'une notion, d'une compétence transversale ou de l'apport d'un festival comme levier didactique.  La dernière étape à distance sera dédiée au partage d'un retour sur expérience pour impulser une dynamique collaborative en vue de prolongements dans les classes ou dans le cadre de projets culturels plus larges.",
      duree: "12",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101450/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101451",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Créer une fiction radiophonique",
      dispoCode: "25A0090328",
      dispoTitre: "ACL_08 @ DISPOSITIFS EAC (PUBLIC VOLONTAIRE)",
      public:
          "Enseignants de tous niveaux et de toutes disciplines ; personnels de vie scolaire",
      objectifs:
          "Suivre avec un artiste et un intervenant EMI tout le processus de création et de réalisation d'un podcast intégrant la fiction dans la démarche de production. Former les enseignants par des pratiques d'oral et de théâtre à créer des podcasts, des enregistrements sonores avec les élèves.",
      contenu:
          "CINEMA, DANSE, THEATRE Découvrir le matériel nécessaire à la création de podcast et en apprendre l'usage en visio et en présentiel avec le CLEMI et un artiste. Faire de la pratique de théâtre et d'oral en s'appuyant sur l'écrit pour créer une fiction sonore. Pratiquer les techniques d'enregistrement et de montage pour finaliser la fiction.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101451/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101452",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Acteur du livre en classe",
      dispoCode: "25A0090328",
      dispoTitre: "ACL_08 @ DISPOSITIFS EAC (PUBLIC VOLONTAIRE)",
      public:
          "Public volontaire.  Enseignants de toutes disciplines ayant une appétence pour la littérature française et étrangère et l'univers du livre,  dans son enseignement et souhaitant connaître et rencontrer les acteurs du Livre de notre région.",
      objectifs:
          "Apprendre à connaître et à pratiquer les dispositifs LIVRE et LECTURE. Rencontrer les acteurs du livre et de la lecture des HDF, partenaires privilégiés. Connaître les éditeurs des HDF et mettre en lien leurs publications avec les enseignements. Enrichir son enseignement en proposant des activités créatives, en offrant la possibilité de faire intervenir en classe des professionnels du livre, notamment des auteurs. Encourager la pratique de la lecture et de l'écriture",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Conférences, ateliers et forum avec des professionnels des Hauts-de-France (auteurs, éditeurs, libraires et médiathécaires,  associations du livre et de la lecture, partenaires territoriaux et DRAC).",
      duree: "6",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101452/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101453",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Le carnaval, un patrimoine riche d'enseignement",
      dispoCode: "25A0090328",
      dispoTitre: "ACL_08 @ DISPOSITIFS EAC (PUBLIC VOLONTAIRE)",
      public:
          "Enseignants et CPE des collèges et lycées publics autour du bassin 5",
      objectifs:
          "Utiliser le carnaval, patrimoine immatériel, comme entrée originale dans les programmes scolaires. Faire de cet événement une occasion de réfléchir à nos pratiques citoyennes. Ouvrir tous les enseignements sur l'extérieur en construisant des partenariats. Travailler la créativité des élèves en étudiant un patrimoine toujours vivant.  Construire un projet en EAC.",
      contenu:
          "PATRIMOINE ET RICHESSES CULTURELLES Les élèves du Dunkerquois connaissent le carnaval et y participent peut-être aussi, tout comme leurs enseignants. Il est d'ailleurs possible qu'ils s'y croisent le temps des manifestations. Cependant, l'événement est rarement l'occasion d'une réflexion en classe sur ses origines, son sens, ses règles, et il est tout aussi rarement choisi comme entrée possible pour traiter les programmes. Ainsi, les élèves n'ont pas toujours conscience de prendre part à un patrimoine toujours vivant, fort de valeurs partagées. Cette formation a pour but d'apporter aux enseignants des pistes de réflexion pour entrer de manière originale dans les programmes scolaires et de rendre au carnaval son épaisseur historique et sociale. Elle revient sur les notions fondamentales de la construction de projet.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101453/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101545",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre:
          "Mémoire et transmission des idées et des techniques à travers les œuvres du Louvre-Lens",
      dispoCode: "25A0090442",
      dispoTitre: "ACL_10 - MÉMOIRE ET EAC (INTERDEGRÉ)",
      public: "Enseignants du premier et second degré",
      objectifs:
          "Comprendre comment le patrimoine artistique se lègue et s'enseigne en prenant appui sur l'histoire des collections du Louvre-Lens.   S'emparer du patrimoine enseignable et de son évolution chronologique. Analyser la transmission des connaissances et des savoir-faire artistiques s'articulant autour des notions de continuité, d'adaptation et de rupture. Mettre en lumière la diversité des médiums artistiques. Évoquer les lieux et modes de transmission artistique et leur impact. Étudier les contextes géographiques de la transmission.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE A partir d'une sélection d'œuvres du musée du Louvre-Lens (galerie du temps et possiblement galerie des expositions temporaires), les stagiaires découvriront l'évolution des pratiques artistiques et s'interrogeront sur la transmission des connaissances et des savoir-faire. La mise en relation d'œuvres au médiums variés permettra de montrer que la transmission des idées et des techniques s'articule autour des notions de continuité, d'adaptation et de rupture. Les œuvres étudiées donneront également l'occasion d'évoquer les lieux (ateliers, académies), des modes (oralité, livres, copie d'après modèle) et les espaces (bassin méditerranéen, Italie) de la transmission artistique.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101545/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101546",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Climat, mémoire et adaptation",
      dispoCode: "25A0090442",
      dispoTitre: "ACL_10 - MÉMOIRE ET EAC (INTERDEGRÉ)",
      public: "Enseignants du premier et second degré",
      objectifs:
          "Observer et analyser les effets du changement climatique sur les territoires ; comprendre les dynamiques d'adaptation des espaces bâtis et non bâtis dans une perspective historique et prospective ; interroger la mémoire des lieux comme outil de compréhension des transformations environnementales ; étudier les réponses collectives des communautés pour construire une résilience durable ; développer des démarches pédagogiques interdisciplinaires autour de ces enjeux ; accueillir les participants sur des lieux significatifs de la thématique, avec des intervenants professionnels, des ressources pédagogiques et des exercices in situ.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Ce stage propose aux enseignants d'appréhender le changement climatique à travers l'observation des territoires et de leur évolution, en croisant approches sensibles, scientifiques et historiques. En analysant, à Roubaix et à Saint-Omer, la mémoire des lieux et les transformations des espaces bâtis ou non bâtis, passées et actuelles, les participants réfléchiront aux adaptations possibles face aux enjeux environnementaux présents et futurs. Il s'agira également d'étudier comment les communautés se souviennent et s'adaptent aux changements climatiques pour construire une résilience durable.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101546/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101548",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "L'invisible dans l'image au CRP",
      dispoCode: "25A0090443",
      dispoTitre: "ACL_11 - EAC ET IA (INTERDEGRÉ)",
      public:
          "PV- Interdegré - enseignants soucieux de questionner l'usage de l'IA dans leur enseignement, aucun pré-requis",
      objectifs: "Comprendre les formes nouvelles de présentations, d'installations originales des images, poussant le regardeur à se questionner sur leur substance et les conditions de leurs apparitions. Tester en atelier des dispositifs de visualisation expérimentale convoquant l'empreinte, la mémoire, la rémanence; en associant l'usage de l'intelligence artificielle. Lors de la visite de l'exposition « La fouille des images », acquérir des repères, outils et méthodes de production en photographie pour développer un regard critique ; expérimenter des dispositifs innovants autour de l'image ; échanger entre enseignants sur les usages pédagogiques des images ; interroger l'usage de l'intelligence artificielle , la mémoire visuelle et les conditions d'apparition des images.",
      contenu: "AUTRE CONTENU ARTS ET PATRIMOINE Ce module interrogera les mécanismes de perception des images à travers les notions d'images rémanentes, de mémoire visuelle et des apports des neurosciences. Il explorera les conditions d'apparition des images et les processus cognitifs qui influencent leur lecture et leur persistance dans nos mémoires. Lors de ce stage au CRP à Douchy-les-Mines, les enseignants rencontreront l'artiste Lucien Bitaux et découvriront son travail exposé qui explore l'invisible dans l'image. Ils participeront à un atelier de création d'images mêlant pratiques artistiques et expérimentations avec ChatGPT. Ce temps permettra d'interroger les usages de l'IA en éducation, de prendre du recul sur ses apports et ses limites et de réfléchir à sa place dans le processus de création.",
      duree: "3",
      effectif: "20",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101548/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: ["IA"]),
  Module(
      code: "101559",
      plan: "ENS",
      theme: "ACTIONS CULTURELLES",
      titre: "Théâtre et intelligence artificielle",
      dispoCode: "25A0090443",
      dispoTitre: "ACL_11 - EAC ET IA (INTERDEGRÉ)",
      public:
          "PV - enseignants soucieux de questionner l'usage de l'IA dans leur enseignement, aucun pré-requis",
      objectifs: "Le stage se propose d'offrir une réflexion sur notre société et son rapport à l'IA au quotidien à travers le théâtre.Les élèves et les enseignants sont confrontés quotidiennement à l'irruption de l'IA dans nos pratiques de recherches, d'expression et même de création artistique. Le théâtre comme miroir de la société et expression artistique s'est emparé de la place de l'IA dans nos vies et dans notre rapport à l'art. Le stage s'orientera vers une mise à distance de l'importance de l'IA dans notre monde contemporain et dans un travail de pratique théâtrale destiné à alimenter une réflexion sur ce nouveau champ de l'expression humaine.",
      contenu: "AUTRE CONTENU ARTS ET PATRIMOINE En visio, aborder ce qu'est l'IA aujourd'hui dans la création artistique puis découvrir le travail d'une artiste, Magalie Desbazeille, compagnie ASAP, qui offre une réflexion sur les usages du numérique et de l'IA dans nos sociétés à travers ses spectacles performances IA-53 recettes et IA, 45 recettes . Cette artiste a travaillé en amont de sa création avec l'université de Grenoble.  En présentiel, pratiquer avec elle lors d'un atelier et, à travers des exercices de théâtre, inventer nos propres discours sur l'IA en jeu et les confronter avec ceux de l'artiste.",
      duree: "5",
      effectif: "20",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101559/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: ["IA"]),
  Module(
      code: "100398",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Formation au CAEIMer",
      dispoCode: "25A0090243",
      dispoTitre: "IDIS04 - FORMATION AU CAEIMER",
      public:
          "Enseignants du second degré préparant à la   certification CAEIMer",
      objectifs: "Développer la culture scientifique et technique   maritime.",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR ACCULTURATION AU MONDE DE LA MER  Lors de ce stage, les enseignants renforceront   leur culture pour se préparer éventuellement au   CAEIMer et pour mieux former les élèves à la   préparation aux BIMer",
      duree: "24",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100398/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100449",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre:
          "Comment passer du corps réel au corps représenté?  Corps à corps. Accompagner les acteurs de l&#8217;éducation et de médiation culturelle pour préparer le public scolaire aux spectacles vivants   Réflexions croisées.",
      dispoCode: "25A0090260",
      dispoTitre: "IDIS03 - CORPS ET SENSIBILITES A L'EPREUVE",
      public:
          "Public cible : Enseignants formateurs en arts plastiques, visuels, théâtre, danse, cirque.  Priorité aux coordonnateurs, formateurs et chargés de mission en structure",
      objectifs:
          "Valeurs de la République et nudité dans les oeuvres   d'art en contexte scolaire : construction d'une   première base d'outillage intellectuel.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Durée : 6H   Public cible : Intercatégoriel : CPE ; chefs   d'établissement.  La mission émancipatrice de l'École est de permettre aux élèves de découvrir et rencontrer le patrimoine et la création artistiques. Ce patrimoine et cette création conservent au nu la place qu'il a depuis l'Antiquité dans l'art.   Cependant, les sensibilités ont changé : les réactions négatives et parfois vives d'élèves et de familles face à la présence des corps nus dans   les oeuvres d'art désarçonnent professeurs et chefs d'établissements, voire, dans certains cas, les intervenants artistiques en milieu scolaire et   les représentants des structures culturelles partenaires.   Quelles réponses ? Quelles limites et quels cadres ?",
      duree: "6",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100449/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101104",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Enseigner la Shoah par l'image",
      dispoCode: "25A0090536",
      dispoTitre: "IDIS10 - ENSEIGNER LA SHOAH PAR L'IMAGE",
      public:
          "Enseignants du primaire et du secondaire, toutes matières confondues",
      objectifs:
          "-comprendre le contexte dans lequel ont été produites les images montrées aux élèves lors des séances de cours sur le génocide des Juifs  -être capable d'opérer un choix pertinent  -Mettre en œuvre des projets interdisciplinaires au sein des établissements",
      contenu:
          "AUTRE CONTENU SCIENCES HUMAINES, SOCIALES ET DROIT Les images sont omniprésentes dans l'enseignement de la Shoah qu'il s'agisse de photographies, de dessins, de tableaux ou bien encore d'œuvres cinématographiques. Opérer un choix face une production pléthorique n'est pas toujours aisé. Ce stage se propose d'analyser les différents types d'images à notre disposition (photographies, œuvres cinématographiques, œuvres d'arts, dessins), d'étudier le contexte dans lequel elles ont été produites et de voir celles qui semblent les pertinentes à utiliser dans l'enseignement du génocide des Juifs d'Europe. Organisé conjointement avec le Mémorial de la Shoah et la Coupole, le stage mêle interventions de spécialistes de la question et propositions pédagogiques.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101104/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101105",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Sciences et Histoire, il y a 80 ans, la bombe atomique",
      dispoCode: "25A0090537",
      dispoTitre: "IDIS11 - SC ET HIST IL Y 80 ANS LA BOMBE ATOMIQUE",
      public:
          "Enseignants du secondaire (collèges et lycées) d'histoire-géographie, de sciences (Sciences Physiques, Sciences de la vie et de la Terre)",
      objectifs:
          "Mettre en œuvre des projets interdisciplinaires au sein des établissements (Sciences/Histoire)  Maitriser les savoirs disciplinaires  Travailler avec ses élèves dans une structure extérieure, La Coupole",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Le 16 juillet 1945, à Los Alamos, au Nouveau Mexique, avait lieu la première explosion atomique. Apogée du programme Manhattan, cette date marque l'entrée dans l'âge nucléaire.  Ce stage pluridisciplinaire (Histoire/Géographie, Sciences Physiques, SVT) animé par les trois professeurs missionnés à la Coupole se propose à partir de la muséographie du Centre d'Histoire d'expliquer le contexte dans lequel ont été développées et utilisées les premières bombes atomiques (Little Boy et Fat Man) et de comprendre leur fonctionnement. Seront également abordées les conséquences de l'utilisation de telles armes à la fois sur l'espèce humaine, la faune et la flore (radiations nucléaires) mais aussi sur le plan géopolitique avec le développement des bombardiers à long rayon d'action et des ICBM.",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101105/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101411",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre:
          "participer à une conférence de consensus avec les élèves de l'option DGEMC",
      dispoCode: "25A0090663",
      dispoTitre: "IDIS18 - ENSEIGNER EN DGEMC",
      public:
          "Professeurs en charge de l'option DGEMC (Ce stage de niveau 2 s'adresse notamment mais non exclusivement aux professeurs ayant suivi la formation  Ethique et santé en DGMC  en 2024-25)",
      objectifs:
          "Accompagner des professeurs dans la construction de projets classes qui consisteraient à participer avec un groupe classe à une conférence de consensus.  Cet événement a pour objectif de faire réfléchir les élèves de DGEMC à l'apport de différentes disciplines (science politique, médecine, droit...) autour d'un sujet multidisciplinaire et ancré dans le réel.  Un webinaire en amont en début d'année précisera le cadre et les finalités de ce projet pédagogique, en vue de préparer les classes impliqués. Les classes volontaires préparent un sujet et des argumentations en vue de participer à la conférence de consensus.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE Participer à une conférence de consensus avec les élèves de l'option DGEMC.  Chaque année, l'Espace de réflexion éthique régional Hauts-de-France organise une conférence de consensus inspirée du fonctionnement des jurys citoyens. Les élèves endossent pour un sujet donné le rôle d'expert dans une discipline. Après avoir mené une analyse approfondie en amont, ces derniers présentent leurs conclusions le jour de la conférence au CHU devant un jury et un public, répondant ainsi aux questions soulevées. Ce type d'exercice permet de faire ressortir de manière très concrète les forces d'une formation pluridisciplinaire dans l'argumentation juridique.",
      duree: "5",
      effectif: "10",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101411/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101436",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre:
          "Éthique, droit et déontologie. L'exemple du traitement du handicap.",
      dispoCode: "25A0090660",
      dispoTitre: "IDIS17 - FONDAMENTAUX DU DROIT POUR DGEMC",
      public:
          "professeurs en charge de l&#8217;enseignement « Droit et grands enjeux du monde contemporain ».",
      objectifs:
          "Actualiser des connaissances juridiques en lien avec le programme de DGEMC et plus largement dans le cadre de la réflexion sur l'inclusion.   Apporter des clés d'analyse sur la question du handicap et son traitement par la société, les sciences sociales et médico-sociales.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE La question du handicap est à la croisée de la médecine, du droit, de l'économie et de la philosophie.Une approche éthico-juridique de la question permettra de faire le point sur le traitement de la question du point de vue des droits de la personne mais aussi de l'accès aux soins. On pourra également interroger l'approche des philosophies du soin très représentées aujourd'hui, à la lumière par exemple du type de rationalité à l'œuvre au sein des comités d'éthique.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101436/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101437",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Le droit de l'environnement",
      dispoCode: "25A0090660",
      dispoTitre: "IDIS17 - FONDAMENTAUX DU DROIT POUR DGEMC",
      public:
          "professeurs en charge de l&#8217;enseignement « Droit et grands enjeux du monde contemporain ».",
      objectifs:
          "Actualiser le traitement juridique des questions environnementales contemporaines.   Mobiliser des concepts et procédures juridiques présentés dans la partie I en articulation avec des questions de la partie II du programme DGEMC.   Découvrir ou approfondir le monde du droit à travers ses acteurs.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE Les ressources naturelles constituent-elles un bien commun? Comment des notions désormais habituellement mobilisées dans le début public comme celle d'écocide, comme le principe de pollueurs-payeurs, de précaution, de non régression ..., sont-elles fondées? En quoi la question du droit de l'environnement est-elle emblématique des problématiques du droit international?   Autant de questions que la notion de droit de l'environnement peut soulever à l'heure de l'affaire du siècle .",
      duree: "2",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101437/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101438",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Les métiers du droit",
      dispoCode: "25A0090660",
      dispoTitre: "IDIS17 - FONDAMENTAUX DU DROIT POUR DGEMC",
      public:
          ", professeurs en charge de l&#8217;enseignement « Droit et grands enjeux du monde contemporain ».",
      objectifs:
          "Actualiser des connaissances juridiques en lien avec le programme de DGEMC. Mobiliser des concepts et procédures juridiques présentés dans la partie I en articulation avec des questions de la partie II du programme DGEMC.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE Rencontre, présentation et témoignage de professionnels du droit.",
      duree: "2",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101438/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101439",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Le droit à l'épreuve de l'intelligence artificielle",
      dispoCode: "25A0090660",
      dispoTitre: "IDIS17 - FONDAMENTAUX DU DROIT POUR DGEMC",
      public:
          "professeurs en charge de l&#8217;enseignement « Droit et grands enjeux du monde contemporain ».",
      objectifs:
          "Actualiser les connaissances sur le traitement juridiques des questions de sécurité numérique, de propriété économique et intellectuelle, de responsabilité induites par les nouveaux développements de l'intelligence artificielle.    Mobiliser des concepts et procédures juridiques présentés dans la partie I en articulation avec des questions de la partie II du programme DGEMC.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE Les derniers développements de l'intelligence artificielle (robots conversationnels, algorithmes, systèmes d'aides à la décision...) modifient profondément nos environnements professionnels et culturels, notamment celui des métiers du droit, et interrogent les réponses juridiques apportées jusqu'à présent à des questions comme celles de la propriété artistique, intellectuelle, économique, ou de la responsabilité juridique.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101439/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101531",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre:
          "Partenariat HLP  Actualité d&#8217;André Malraux en lien avec l&#8217;enseignement Humanités, littérature, philosophie  Conférence B",
      dispoCode: "25A0090704",
      dispoTitre: "IDIS19 - APPROCHE CULTURELLE PARTE. RECHERCHE HLP",
      public:
          "(Type de public, discipline(s), niveau, pré requis, profil, &#8230;)  professeurs de lettres, professeurs de philosophie",
      objectifs:
          "Actualiser les connaissances, appréhender la riche variété d'un corpus, étayer la coopération entre les deux disciplines à la lumière  d'un corpus partagé, réfléchir sur la diversités des supports pour appréhender une œuvre protéiforme.",
      contenu:
          "AUTRE CONTENU SCIENCES HUMAINES, SOCIALES ET DROIT On interrogera l'actualité de la recherche universitaire sur les lectures et relectures de l'œuvre de Malraux. On mettra en évidence  l'intérêt d'un corpus à la croisée des deux disciplines, littérature et philosophie, et ses articulations nombreuses avec les entrées du  programme d'Humanité, littérature, philosophie (Création, ruptures, continuité; histoire et violence; les représentations du monde,  les pouvoirs de la parole). On interrogera la pertinence des conceptions de l'art, de la culture, de l'histoire qui sous-tendent une  œuvre originale et protéiforme.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101531/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101539",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Le tragique et la création chez Malraux",
      dispoCode: "25A0090704",
      dispoTitre: "IDIS19 - APPROCHE CULTURELLE PARTE. RECHERCHE HLP",
      public:
          "(Type de public, discipline(s), niveau, pré requis, profil, &#8230;) Professeurs de lettres, professeurs de philosophie",
      objectifs:
          "Actualiser les connaissances, appréhender la riche variété d'un corpus, étayer la coopération entre les deux disciplines à la lumière d'un corpus partagé, réfléchir sur la diversités des supports pour appréhender une œuvre protéiforme.",
      contenu:
          "AUTRE CONTENU SCIENCES HUMAINES, SOCIALES ET DROIT Cette déclinaison académique du plan national de formation permet de mettre en évidence l'intérêt d'un corpus à la croisée des deux disciplines, littérature et philosophie, et ses articulations nombreuses avec les entrées du programme d'Humanité, littérature, philosophie (Création, ruptures, continuité; histoire et violence; les représentations du monde, les pouvoirs de la parole). Le rapport à l'art de cette figure controversée, à la lumière de ses engagements et aventures politiques comme de ses positions muséologiques novatrices, témoigne d'un rapport vivant à la culture et d'une conception originale de la fonction éducatrice de l'art et de la littérature, entre institution de la mémoire et rencontre vive avec les œuvres.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101539/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101541",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Laboratoire de l'écrit : écrire avec Malraux",
      dispoCode: "25A0090711",
      dispoTitre: "IDIS21 - ENSEIGNER EN HLP",
      public: "professeurs de lettres et de philosophie",
      objectifs:
          "Inscrire dans la durée un échange de pratiques avec retour de transpositions en classe  s'approprier un corpus  varier les modalités d'entraînement à l'essai  Mettre les ressources d'un corpus et de textes longs au service de l'entraînement des compétences d'interprétation et de rédaction de l'essai  articuler les compétences de l'oral et de l'écrit  enrichir le parcours EAC de l'élève  nouer des partenariats",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE Présentation des corpus et des enjeux d'un laboratoire de l'écrit : implication de l'élève en HLP, approche active des humanités,  propositions didactiques sur Malraux : parcours de lecture longue, exploitation de la variété du corpus : un exemple de laboratoire  des formes. Varier les écrits : de l'invention à l'essai. Compétences orales.  modalité : présentations et Ateliers  présentiel dans un lieu d'intérêt culturel (comme le PBA de Lille par exemple)  restitution et échanges (2x 1h) « Laboratoire de l'écrit et implication de l'élève dans l'essai en HLP",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101541/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101591",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Ville et Révolution(s) Industrielle(s)",
      dispoCode: "25A0090728",
      dispoTitre: "IDIS02 @ VILLE ET REVOLUTION(S) INDUSTRIELLE(S)",
      public: "public enseignants 2nd degré",
      objectifs:
          "Comprendre le lien entre les révolutions industrielles et les structures de la ville à travers les fonctions de cette dernière : travailler,  habiter, se récréer, se déplacer.  Comment l'architecture et l'urbanisme sont le moyen de traduire des utopies, des aspirations sociétales et sociales.  Quelle est l'interaction entre progrès techniques, savoir scientifiques, structure de la cité et aspirations humaines ?",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Interroger le lien entre structure de villes et progrès techniques.  Découvrir de nouveaux types de bâtiments répondant aux attentes écologiques, énergétiques et sociétales du moment.  Aborder éléments et principes qui permettent de concevoir l'avenir des villes.  Les journées s'articulent autour de temps de visite (Nord), d'apports théoriques, de témoignages de professionnels et d'exercices pratiques.  Ce stage, ouvert aux enseignants de toutes disciplines, sert de ressource pour des projets interdisciplinaires autour de l'urbanisme, l'énergie en ville et la mobilité.",
      duree: "11",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101591/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102766",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Actualité d'un concept juridique",
      dispoCode: "25A0090660",
      dispoTitre: "IDIS17 - FONDAMENTAUX DU DROIT POUR DGEMC",
      public:
          ", professeurs en charge de l&#8217;enseignement « Droit et grands enjeux du monde contemporain ».",
      objectifs:
          "Actualiser des connaissances juridiques en lien avec le programme de DGEMC. Mobiliser des concepts et procédures juridiques présentés dans la partie I en articulation avec des questions de la partie II du programme DGEMC.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE On présentera le traitement juridique d'une situation à fort enjeu social, politique ou économique en actualisant l'état du droit sur la question.",
      duree: "2",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102766/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102773",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Droit, éthique et santé : dons de tissus et d'organes",
      dispoCode: "25A0090663",
      dispoTitre: "IDIS18 - ENSEIGNER EN DGEMC",
      public: "professeurs de DGEMC, de SMS, de SVT",
      objectifs:
          "Développer les compétences psychosociales des participants autour d'un sujet de société sensible.  Comprendre les enjeux scientifiques et techniques liés aux greffes. (implication de l'IA...)  Acquérir les connaissances nécessaires pour argumenter et expliquer les objectifs de la greffe.   sensibiliser aux filières et métiers liés à la santé.   Découvrir et s'approprier plus facilement l'univers du monde hospitalier.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE Dans le cadre d'un partenariat avec le CHU de Lille et la coordination du prélèvement d'organes et de tissus, la formation permettra aux enseignants de monter en compétences autour du dons d'organes et de tissus (connaissances scientifiques, contraintes techniques, aspects philosophiques, mode de communication et questionnement éthique associé). La connaissance des filières et des métiers est également envisagée associé à la découverte du milieu hospitalier.",
      duree: "6",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102773/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102774",
      plan: "ENS",
      theme: "ACTIONS INTERDISCIPLINAIRES",
      titre: "Travailler autrement en DGEMC : OSER LES ETUDES SUIVIES",
      dispoCode: "25A0090663",
      dispoTitre: "IDIS18 - ENSEIGNER EN DGEMC",
      public: "professeurs de DGEMC",
      objectifs:
          "Accompagner l'élève dans le choix du sujet. Lecture du programme, notions qui seront travaillées dans le sujet (en lien avec un glossaire DGEMC en ligne sur l'ENT).  Accompagner l'élève dans ses recherches. Chercher, élaborer une bibliographie, des annexes, garder la trace (carnet de bord dématérialisé).  Accompagner l'élève dans l'argumentation écrite.  Accompagner l'élève à transcrire oralement son argumentation (dans le cadre d'une parole engagée et personnelle, comme au Grand oral) et à s'auto-évaluer. Emmener l'ensemble du groupe dans une écoute active.",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE La pratique des études suivies constitue une piste et une recommandation pour favoriser une démarche de recherche chez l'élève en classe de DGEMC.   Même si ce dispositif n'est pas pratiqué par tous les collègues et n'est pas obligatoire, il constitue une entrée privilégiée dans une dynamique de projet et de construction de l'autonomie de l'élève. Il appelle également une réflexion sur la maîtrise de la langue écrite et orale.  Comment mettre en œuvre et inscrire des études suivies dans la temporalité de l'année ? Quelle évaluation ? Comment accompagner l'élève de la constitution du dossier à sa soutenance?   Trois temps de formation à distance stratégiquement espacés dans l'année permettront d'outiller et d'échanger témoignages sur les pratiques et retours d'expériences .",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102774/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100620",
      plan: "ENS",
      theme: "ALLEMAND",
      titre:
          "L'intelligence artificielle au service des professeurs et du cours d&#8217;allemand",
      dispoCode: "25A0090339",
      dispoTitre: "ALD_04 @ L'IA, NOUVEL ASSISTANT DU PROF D'ALLEMAND",
      public: "Professeurs d'allemand",
      objectifs: "- Sensibiliser les professeurs d'allemand à   l'utilisation éthique et responsable de l'IA  - Concevoir des séances avec l'IA  - Entraîner aux différentes activités langagières   avec l'IA  - Différencier avec l'IA",
      contenu: "ALLEMAND Cette formation s'inscrit dans un temps long et se   déclinera sur deux années. Le premier volet de la   formation visera à acculturer les professeurs   d'allemand à l'utilisation de l'intelligence   artificielle. Comment s'emparer de l'IA pour   concevoir des séances et entraîner aux différentes   activités langagières ? Comment gagner du temps   dans la mise en œuvre de la différenciation   pédagogique ? La formation donnera des clés aux   enseignants pour apprivoiser l'IA et en faire un   véritable assistant qui leur permettra de   développer chez leurs élèves des compétences   citoyennes et langagières.",
      duree: "6",
      effectif: "20",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100620/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: ["IA"]),
  Module(
      code: "100621",
      plan: "ENS",
      theme: "ALLEMAND",
      titre:
          "Différents moments pour prendre la parole pour différents objectifs",
      dispoCode: "25A0090340",
      dispoTitre: "ALD_05 - QUELS MOMENTS POUR L'ORAL DES ELEVES ?",
      public: "Professeurs d'allemand",
      objectifs:
          "Identifier différents moments de prise de parole   possible des élèves en classe et analyser comment   ils peuvent faire progresser les élèves, mieux   programmer ces moments d'oral dans son cours",
      contenu:
          "ALLEMAND Rituels, échauffement, réactivation, répétition,   imitation, restitution, mise en forme, échanges,   etc. les moments d'une prise de parole des élèves   dans une séance sont nombreux. Pourtant, les   élèves peinent souvent à produire un oral assez   fluide et correct.  Le stage permettra de mieux comprendre la fonction   de ces différents moments et les conditions pour   les rendre efficaces, selon les niveaux visés du   CECRL. Il s'intéressera aussi aux conditions de   mise en œuvre, aux appuis, aux exercices   nécessaires, notamment phonologiques ainsi qu'à la   préparation possible à la maison.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100621/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100622",
      plan: "ENS",
      theme: "ALLEMAND",
      titre:
          "Comprendre et mettre en œuvre les nouveaux programmes d'allemand (6e, 5e, 2nde, Première)",
      dispoCode: "25A0090341",
      dispoTitre: "ALD_06 - COMPRENDRE LES NOUVEAUX PROGRAMMES",
      public: "Professeurs d'allemand",
      objectifs:
          "- Comprendre les points clés des nouveaux programmes pour 2025-2026 (6e et 2nde), anticiper ceux pour 2026-2027 (5e, Première et Terminale) et comprendre comment les différentes parties s'articulent   - A partir d'exemples, proposer une mise en œuvre en classe",
      contenu:
          "ALLEMAND Si les nouveaux programmes ne sont pas une révolution, leur présentation révèle une exigence accrue pour les acquis des élèves. Comment comprendre les différentes parties du programme et la manière dont elles s'articulent ? Comment s'emparer des nouveaux axes d'étude ? Comment optimiser la longueur des séquences tout en construisant des compétences linguistiques solides ? Que devient l'approche actionnelle ? Le stage permettra aux professeurs de collège et   de lycée de partir d'exemples concrets en classe et de les discuter.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100622/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100625",
      plan: "ENS",
      theme: "ALLEMAND",
      titre:
          "Apports universitaires sur les objets d&#8217;étude des nouveaux programmes",
      dispoCode: "25A0090343",
      dispoTitre: "ALD_08 @ OBJETS D'ETUDE DES NOUVEAUX PROGRAMMES",
      public: "Professeurs d'allemand",
      objectifs:
          "L'entrée culturelle des nouveaux programmes est   réaffirmée à travers des axes et des objets   d'études. Ce webinaire permettra de mieux les   appréhender par un apport scientifique   universitaire et par la proposition de quelques   documents en rapport.",
      contenu:
          "ALLEMAND Webinaire avec apport universitaire pour mieux   comprendre l'objet d'étude, proposition de   documents didactisables en rapport avec le sujet,   échanges avec l'expert.",
      duree: "2",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100625/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100658",
      plan: "ENS",
      theme: "ALLEMAND",
      titre:
          "L'intelligence artificielle au service des professeurs et du cours d&#8217;allemand - distanciel",
      dispoCode: "25A0090339",
      dispoTitre: "ALD_04 @ L'IA, NOUVEL ASSISTANT DU PROF D'ALLEMAND",
      public: "Professeurs d'allemand",
      objectifs: "- Sensibiliser les professeurs d'allemand à   l'utilisation éthique et responsable de l'IA  - Concevoir des séances avec l'IA  - Entraîner aux différentes activités langagières   avec l'IA  - Différencier avec l'IA",
      contenu: "ALLEMAND Cette formation s'inscrit dans un temps long et se   déclinera sur deux années. Le premier volet de la   formation visera à acculturer les professeurs   d'allemand à l'utilisation de l'intelligence   artificielle. Comment s'emparer de l'IA pour   concevoir des séances et entraîner aux différentes   activités langagières ? Comment gagner du temps   dans la mise en œuvre de la différenciation   pédagogique ? La formation donnera des clés aux   enseignants pour apprivoiser l'IA et en faire un   véritable assistant qui leur permettra de   développer chez leurs élèves des compétences   citoyennes et langagières.",
      duree: "1",
      effectif: "20",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100658/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: ["IA"]),
  Module(
      code: "101177",
      plan: "ENS",
      theme: "ANGLAIS",
      titre:
          "Conférence sur un oeuvre littéraire du programme limitatif de LLCER anglais",
      dispoCode: "25A0090577",
      dispoTitre: "AGL_01 @ CONSTRUIRE DES SAVOIRS DISCIPLINAIRES",
      public: "Professeurs d'anglais intéressés par les œuvres   littéraires",
      objectifs:
          "Se former aux outils méthodologiques permettant   d'opérer des choix pédagogiques à partir de   l'analyse fine de supports divers et variés.   Accompagner les élèves à se construire des repères   structurants du monde anglophone. Etablir des liens   avec l'enseignement supérieur.",
      contenu:
          "ANGLAIS Distanciel 2h   Intervention d'un universitaire et/ou formateur sur le   contexte, la découverte et l'analyse de passages   emblématiques d'une oeuvre  littéraire du programme limitatif de LLCER anglais de   première et/ou terminale.",
      duree: "2",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101177/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101178",
      plan: "ENS",
      theme: "ANGLAIS",
      titre:
          "Conférence sur une oeuvre cinématographique du programme limitatif de spécialité LLCER AMC",
      dispoCode: "25A0090577",
      dispoTitre: "AGL_01 @ CONSTRUIRE DES SAVOIRS DISCIPLINAIRES",
      public: "Professeurs d'anglais intéressés par le cinéma",
      objectifs:
          "Connaissance d'une oeuvre du programme limitatif du   cycle Tle  Mobilisation d'outils d'analyse filmique en perspective   des préparations du cours de spécialité  Articulation avec la mise en oeuvre en classe",
      contenu:
          "ANGLAIS Distanciel 2h   Intervention d'un universitaire et/ou formateur sur le   contexte, la découverte et l'analyse de passages   emblématiques d'une oeuvre  cinématographique du programme limitatif de LLCER   anglais de première et/ou terminale.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101178/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101179",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "Stratégies de réception et production orale",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "Public d'anglais",
      objectifs:
          "Varier les modalités de mise au travail des élèves en   compréhension orale. Faire le point sur les stratégies,   y compris avec l'apport de la recherche",
      contenu:
          "ANGLAIS Varier les situations d'entraînement et d'évaluation   de la réception orale : choix de supports de   longueur différentes avec des objectifs différents.   Travailler sur les stratégies de compréhension, de   la discrimination auditive à la construction du   sens, en prenant en compte les sources et le   contexte. Connaître les résultats récents de la   recherche afin de proposer aux élèves des situations   d'entraînement qui leur permettront d'améliorer   leurs compétences en réception orale. Amplifier le   bain linguistique et varier les activités : travail   collectif, en groupe, en individuel tout en   articulant ce travail avec la production",
      duree: "5",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101179/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101180",
      plan: "ENS",
      theme: "ANGLAIS",
      titre:
          "Webinaires pédagogiques nouveaux programmes en lycée : focus sur les objets d'étude",
      dispoCode: "25A0090579",
      dispoTitre: "AGL_03 @ WEBINAIRES NVX PROGRAMMES",
      public:
          "Tous les enseignants d'anglais volontaires de lycée qui   cherchent à faire évoluer leurs pratiques au moyen des   nouveaux programmes;",
      objectifs:
          "Problématiser pour engager la réflexion des élèves.  Adapter l'exploitation de supports authentiques à   son public.  Articuler activités de production et de réception   pour développer la participation active des élèves.  Comprendre les enjeux des projets de programme   d'anglais pour la 2de.  Permettre aux enseignants de s'approprier les objets   d'étude et de concevoir des séquences cohérentes et   motivantes.  Appréhender le potentiel culturel des objets   d'étude.",
      contenu:
          "ANGLAIS Webinaire pédagogique sur les nouveaux programmes du   lycée : focus sur les objets d'études. Réflexion   collective sur les enjeux culturels et linguistiques   des objets d'étude. Se saisir des objets d'étude   proposés pour aborder les axes : exemple de mise en   œuvre. Articuler objectifs culturels et linguistiques   pour construire une séquence cohérente à partir d'un   objet d'étude.",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101180/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101186",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "Préparation à l'inscription à la certification DNL en anglais",
      dispoCode: "25A0090583",
      dispoTitre: "AGL_08 @ DOSSIER INSCRIPTION CERT. DNL ANGL",
      public:
          "Professeurs de toutes disciplines envisageant une   inscription à la  certification complémentaire en   langue anglaise.",
      objectifs:
          "Préparation à l'inscription à la certification DNL en   anglais",
      contenu:
          "ANGLAIS Un webinaire d'information est proposé aux   enseignants intéressés par la certification   complémentaire pour enseigner en anglais dans une   discipline non linguistique (DNL). La séance sera   consacrée plus particulièrement au dossier   nécessaire à l'inscription dont la date butoir est   fixée au 7 novembre 2024.  Un inspecteur en anglais et deux formateurs   présenteront les attentes quant au contenu du   dossier (expériences professionnelles, projets,   pratiques pédagogiques propres à l'enseignement en   DNL...) et répondront aux questions des participants.  La participation à ce webinaire ne vaut pas une   inscription à la certification.",
      duree: "1",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101186/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101235",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "Nouvelles stratégies d'entraînement à la réception orale",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public:
          "Module ouvert aux professeurs d&#8217;anglais de collège et   de lycée",
      objectifs:
          "Varier les modalités de mise au travail des élèves en   compréhension orale. Faire le point sur les stratégies,   y compris avec l'apport de la recherche.",
      contenu:
          "ANGLAIS Varier les situations d'entraînement et d'évaluation   de la réception orale : choix de supports de   longueur différentes avec des objectifs différents.   Travailler sur les stratégies de compréhension, de   la discrimination auditive à la construction du   sens, en prenant en  compte les sources et le contexte. Connaître les   résultats récents de la recherche afin de proposer   aux élèves des situations d'entraînement qui leur   permettront d'améliorer leurs compétences en   réception orale. Amplifier le bain linguistique et   varier les  activités : travail collectif, en groupe, en   individuel tout en articulant ce travail avec la   production.",
      duree: "1",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101235/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101236",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "Travaux de groupes et autonomie en cours d'anglais",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "Professeurs d'anglais en collège et en lycée",
      objectifs:
          "Réfléchir individuellement et collectivement sur la   mise au travail des élèves: individuellement, en   binôme, en groupes.  S'auto-évaluer sur ses pratiques.  Diversifier les démarches d'apprentissages au   collège et au lycée.",
      contenu:
          "ANGLAIS Distanciel 1h30   Varier les méthodes d'apprentissage pour mettre tous   les élèves en activité.  Alterner cours frontal, travail coopératif, travail   collaboratif et travail en autonomie pour répondre   aux besoins de tous les élèves.  Proposer des démarches qui sortent de l'ordinaire   pour susciter la curiosité et l'intérêt des élèves.  Aider les élèves à devenir plus autonomes.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101236/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101237",
      plan: "ENS",
      theme: "ANGLAIS",
      titre:
          "Parcours M@gistère : travaux de groupes et autonomie en cours d'anglais",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "Professeurs d'anglais en collège et en lycée",
      objectifs:
          "Réfléchir individuellement et collectivement sur la   mise au travail des élèves: individuellement, en   binôme, en groupes.  S'auto-évaluer sur ses pratiques.  Diversifier les démarches d'apprentissages au   collège et au lycée.",
      contenu:
          "ANGLAIS Varier les méthodes d'apprentissage pour mettre tous   les élèves en activité.  Alterner cours frontal, travail coopératif, travail   collaboratif et travail en autonomie pour répondre aux   besoins de tous les élèves.  Proposer des démarches qui sortent de l'ordinaire pour   susciter la curiosité et l'intérêt des élèves.  Aider les élèves à devenir plus autonomes.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101237/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101310",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "AI in the classroom: Friend, Foe ?",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "Public d'anglais",
      objectifs:
          "Comprendre les principes de fonctionnement de l'IA   générative et ses applications dans l'enseignement   de l'anglais  Identifier les usages pédagogiques simples et   complexes de l'IA au service des apprentissages des   élèves.  Intégrer l'IA générative dans la préparation des   cours, la conception de ressources et l'évaluation   des compétences linguistiques.  Analyser les points de vigilance liés à   l'utilisation de l'IA : fiabilité des contenus,   gestion des erreurs, risques de plagiat, protection   des données et équilibre entre technologie et   interaction humaine.  Encourager l'autonomie des élèves et leur esprit   critique face aux productions de l'IA.",
      contenu:
          "ANGLAIS Découvrez notre première formation dédiée aux   professeurs d'anglais sur le potentiel pédagogique   de l'IA générative en classe ! Cette session vous   permettra d'explorer comment l'IA peut enrichir vos   pratiques, de la création d'activités interactives à   la personnalisation des parcours d'apprentissage.   Nous aborderons les usages simples : génération de   textes, images, son, exercices personnalisés, et   plus complexes (projets collaboratifs, simulations   de conversations...), tout en identifiant les points   de vigilance : fiabilité des contenus, éthique,   évaluation, protection des données, développement de   l'esprit critique chez les élèves.",
      duree: "7",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101310/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101311",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "Intégrer le cinéma et les séries en classe d&#8217;anglais",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "Public professeurs d'anglais",
      objectifs:
          "Acquérir ou renforcer des compétences en analyse,   montage audiovisuel",
      contenu:
          "ANGLAIS Découvrez notre webinaire de niveau 1 dédié aux   professeurs d'anglais de collège et lycée : «   Intégrer le cinéma et les séries en classe d'anglais   ». Cette formation vous propose des outils pour   choisir des extraits de films ou de séries adaptés à   vos objectifs pédagogiques, les intégrer   efficacement dans une séquence, et outiller vos   élèves pour analyser l'image en mouvement, le son,   les plans et le sens produit afin de faciliter   l'articulation entre réception et production. En   lien avec les programmes officiels, cette formation   vous permettra de diversifier vos pratiques et de   renforcer la motivation de vos classes.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101311/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101360",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "Enseigner en ETLV en première et en terminale",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "Professeurs d'anglais et de technologie intervenant en   ETLV",
      objectifs:
          "Bien comprendre le cadrage pour optimiser   l'organisation pédagogique du co-enseignement  Aider à la préparation conjointe professeur d'anglais /   professeur d'enseignement technologique des séances   d'ETLV",
      contenu:
          "ANGLAIS Informer sur le cadrage du co-enseignement en ETLV.   Modalités d'exercice du co-enseignement, de la   préparation (séance /séquence) aux évaluations. Pistes   de mise en oeuvre, d'activités, de croisement d'axes.   Stage 100% à distance : 3h en webinaire destiné aux   professeurs d'anglais et de technologie intervenant en   ETLV.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101360/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101361",
      plan: "ENS",
      theme: "ANGLAIS",
      titre: "Enseigner en ETLV",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "professeurs d'anglais et de technologie intervenant en   ETLV",
      objectifs:
          "Se positionner comme co-enseignants, non spécialistes,   de la préparation à l'évaluation.",
      contenu:
          "ANGLAIS Questionnaire et mutualisation des pratiques de chacun   en ETLV",
      duree: "3",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101361/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102462",
      plan: "ENS",
      theme: "ANGLAIS",
      titre:
          "La trace du cours et ses enjeux : une étape clé du cours d'anglais au collège et au lycée.",
      dispoCode: "25A0090578",
      dispoTitre: "AGL_02 @ GESTES PROFESSIONNELS ET CONTENUS",
      public: "Professeurs d'anglais au collège et au lycée.",
      objectifs:
          "Définir la trace écrite et la situer dans le   parcours de l'élève. Réfléchir aux différents   composantes (culturelle, linguistique,  pragmatique et méthodologique). Echanger autour des   objectifs pour les élèves et pour l'enseignant.   Découvrir des pratiques  concrètes, ambitieuses et variées, qui favorisent   l'accessibilité des apprentissages et l'excellence   inclusive. Etre capable d'anticiper  les traces possibles, de doser le guidage des   élèves, d'adapter sa posture et de valoriser les   élèves. Faire évoluer ses pratiques en  développant de nouvelles méthodes pour exploiter la   trace écrite, faciliter la mémorisation, développer   l'autonomie et faire progresser  les élèves en fluence et en phonologie. Pouvoir   favoriser l'engagement et l'implication en rendant   cette étape motivante.",
      contenu:
          "ANGLAIS La trace écrite/orale est une étape clé du parcours   d'apprentissage de l'élève. Nous réfléchirons aux   enjeux de cette étape, à sa plus-value, à ses   obstacles et aux leviers qui existent. Des exemples   concrets (photos de tableaux et de cahiers à   différents moments du cours, enregistrements,   productions individuelles et collectives)   permettront d'illustrer différentes modalités de   mises en œuvre, de réfléchir aux objectifs   (élève/professeur) et de définir ce que l'on entend   par trace écrite: quels contenus? Quelles   composantes? Quels formats? Quelle gestion du temps?   Quel(s) guidage(s)? Que fait l'élève? Que fait   l'enseignant? Que se  passe-t-il en amont? Quelle(s) exploitations   ensuite? Comment gérer l'hétérogénéité? Comment   favoriser l'inclusion? La trace écrite,  un moment fort du cours.",
      duree: "2",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102462/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102464",
      plan: "ENS",
      theme: "ANGLAIS",
      titre:
          "Webinaires pédagogiques nouveaux programmes en collège : focus sur les objets d'étude",
      dispoCode: "25A0090579",
      dispoTitre: "AGL_03 @ WEBINAIRES NVX PROGRAMMES",
      public:
          "Tous les enseignants d'anglais volontaires de lycée qui   cherchent à faire évoluer leurs pratiques au moyen des   nouveaux programmes;",
      objectifs:
          "Problématiser pour engager la réflexion des élèves.   Adapter l'exploitation de supports authentiques à   son public. Articuler activités de production et de   réception pour développer la participation active   des élèves. Comprendre les enjeux des projets de   programme d'anglais pour la 6e. Permettre aux   enseignants de s'approprier les objets d'étude et de   concevoir des séquences cohérentes et motivantes.   Appréhender le potentiel culturel des objets   d'étude.",
      contenu:
          "ANGLAIS Webinaire pédagogique sur les nouveaux programmes du   collège : focus sur les objets d'études. Réflexion   collective sur les enjeux culturels et linguistiques   des objets d'étude. Se saisir des objets d'étude   proposés pour aborder les axes : exemple de mise en   oeuvre. Articuler objectifs culturels et linguistiques   pour construire une séquence cohérente à partir d'un   objet d'étude.",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102464/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100684",
      plan: "ENS",
      theme: "ARTS APPLIQUES",
      titre: "Les outils du designer au service de la pédagogie",
      dispoCode: "25A0090367",
      dispoTitre: "AAP_01 - DÉVELOPPER LA CRÉATIVITÉ",
      public:
          "PV : professeurs d&#8217;arts appliqués en LP       travaillant sur tous types de filières (tertiaire,   industriel,                                                    métiers d&#8217;art) et de niveau (3e prépa pro,  CAP,   BMA, Bac pro). Professeurs de",
      objectifs:
          "Comprendre les notions et enjeux liés au   développement de la créativité et en faire une   compétence transversale. Intégrer les outils   spécifiques du designer dans les pratiques   pédagogiques (séquences pédagogiques et démarche   de   projet).",
      contenu:
          "ARTS APPLIQUES Comprendre les notions et les enjeux liés au   développement de la pensée créative, compétence   indispensable en milieu professionnel et dans les   pratiques artistiques en se fondant sur de   nombreux exemples de concepts innovants dans tous   les domaines créatifs et les derniers résultats   des neurosciences. Identifier et déconstruire les   approximations et fausses représentations. Former   des individus créatifs en pensée et en   comportement. Explorer les différentes méthodes et   exercices pour développer la capacité à établir   des associations d'idées et poser de nouvelles   questions, proposer et développer de nouvelles   idées ou solutions à une situation particulière.   Construire des séquences pédagogiques en arts   appliqués ou interdisciplinaires développant les   compétences de travail collaboratif.",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100684/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100685",
      plan: "ENS",
      theme: "ARTS APPLIQUES",
      titre: "Les outils du designer au service de la pédagogie",
      dispoCode: "25A0090367",
      dispoTitre: "AAP_01 - DÉVELOPPER LA CRÉATIVITÉ",
      public:
          "PV : professeurs d&#8217;arts appliqués en LP       travaillant sur tous types de filières (tertiaire,   industriel,                                                    métiers d&#8217;art) et de niveau (3e prépa pro,  CAP,   BMA, Bac pro). Professeurs de",
      objectifs:
          "Comprendre les notions et enjeux liés au   développement de la créativité et en faire une   compétence transversale. Intégrer les outils   spécifiques du designer dans les pratiques   pédagogiques (séquences pédagogiques et démarche   de   projet).",
      contenu:
          "ARTS APPLIQUES Comprendre les notions et les enjeux liés au   développement de la pensée créative, compétence   indispensable en milieu professionnel et dans les   pratiques artistiques en se fondant sur de   nombreux exemples de concepts innovants dans tous   les domaines créatifs et les derniers résultats   des neurosciences. Identifier et déconstruire les   approximations et fausses représentations. Former   des individus créatifs en pensée et en   comportement. Explorer les différentes méthodes et   exercices pour développer la capacité à établir   des associations d'idées et poser de nouvelles   questions, proposer et développer de nouvelles   idées ou solutions à une situation particulière.   Construire des séquences pédagogiques en arts   appliqués ou interdisciplinaires développant les   compétences de travail collaboratif.",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100685/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100688",
      plan: "ENS",
      theme: "ARTS APPLIQUES",
      titre: "ENSEIGNER LE DESIGN AVEC L'IA",
      dispoCode: "25A0090370",
      dispoTitre: "AAP_03 @ ENSEIGNER AVEC L'IA",
      public:
          "Professeurs en arts appliqués et cultures artistiques et métiers d&#8217;art de la voie professionnelle, professeurs en design de la voie technologique.",
      objectifs: "Appréhender les enjeux de l'IA dans le design. Se saisir des impacts sur les pratiques, l'avenir des métiers et leurs apprentissages. Expérimenter les outils et interroger leurs potentiels pour une mise en œuvre éthique en enseignement disciplinaire.",
      contenu: "ARTS APPLIQUES Question vive pour le designer comme pour l'enseignant, l'intelligence artificielle interroge les pratiques futures, l'avenir des métiers et de leurs apprentissages. Cette formation se propose d'appréhender les fondamentaux de l'IA dans le design et les transpositions possibles dans son enseignement, en explorer les concepts clés et expérimenter la diversité des outils. Autour d'apports scientifiques, de temps collaboratifs et d'ateliers pratiques, les participants seront amenés à interroger les enjeux pédagogiques et mesurer les potentiels de l'usage de l'IA dans l'enseignement de la discipline. Des explorations, des pistes et des scenarios guidés par une réflexion critique et une sensibilisation aux impératifs éthiques pour une mise en œuvre éclairée dans un contexte éducatif.",
      duree: "6",
      effectif: "16",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100688/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: ["IA"]),
  Module(
      code: "100542",
      plan: "ENS",
      theme: "ARTS PLASTIQUES",
      titre: "DECOUVRIR LE CENTRE DE CONSERVATION DU LOUVRE A   LIEVIN",
      dispoCode: "25A0090289",
      dispoTitre: "APL_03 - DECOUVRIR CENTRE CONSERVATION LOUVRE",
      public:
          "Professeurs d'arts plastiques de collège et de                                                lycée en priorité ou enseignants intéressés dans le cadre du parcours avenir",
      objectifs:
          "Lieu de travail pour les personnels scientifiques,lieu de recherche pour les universitaires français    et étrangers, il permet de faire découvrir aux élèves pratiquant les arts plastiques les métiers de   la conservation scientifique.",
      contenu:
          "ARTS PLASTIQUES Découvrir et connaître les missions du Centre de conservation du Louvre Paris à Liévin : conservation des œuvres, traitement des collections ; recherche et étude. Accéder aux salles de traitements,ateliers, studio photo, salle d'anoxie, de vernissage. Lieu de travail pour les personnels scientifiques, lieu de recherche pour les universitaires français et étrangers, il permet de faire découvrir aux élèves pratiquant les arts plastiques les métiers de la conservation scientifique (Parcours Avenir).    Visite des espaces dédiés de 18 500 mètres carré de surface accueillant 300 000 œuvres. Rencontre avec les personnels dédiés à la régie des œuvres.   Présentation des missions d'un centre de conservation et d'études.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100542/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100543",
      plan: "ENS",
      theme: "ARTS PLASTIQUES",
      titre:
          "Elèves BEP et enseignement des Arts Plastiques, quels besoins, quels outils, quelles pratiques ?",
      dispoCode: "25A0090290",
      dispoTitre: "APL_04 - ELEVES EBEP ET ARTS PLASTIQUES",
      public:
          "Le stage est ouvert aux enseignants d'Arts  Plastiques, public volontaire.",
      objectifs:
          "Présentation des EBEP et des troubles. Quels sont les besoins des élèves BEP ? Quel(s) plan(s) mettre en place en fonction des profils des EBEP ? Quel est le rôle de l'AESH et comment s'organiser pendant les cours ? Proposer une adaptation universelle pour aller vers la différenciation en Arts Plastiques. Quelles apprentissages et compétences à développer en Arts Plastiques pour les EBEP ?",
      contenu:
          "ARTS PLASTIQUES Comment accompagner les élèves à besoins éducatifs particuliers pendant les cours d'Arts Plastiques ? Articuler la didactique des Arts Plastiques avec la prise en compte des besoins éducatifs particuliers des élèves. Comprendre les incidences de différents troubles ou situations de handicap et leurs conséquences pour les élèves en cours d'Arts Plastiques. Savoir proposer des situations d'enseignement permettant l'accès à la pratique artistique pour tous les élèves d'un groupe classe.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100543/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101755",
      plan: "ENS",
      theme: "BIOTECH. SANTE ENVIRONNMT - MEDICO-SOC. LP",
      titre: "Intégrer l'IA et les CPS dans l'enseignement de la PSE",
      dispoCode: "25A0090807",
      dispoTitre: "BSSM11 - L'IA ET CPS DANS L'ENSEIGNEMENT PSE",
      public: "Enseignants en BSE",
      objectifs:
          "S'approprier l'IA et les CPS pour une intégration   dans les séquences d'enseignement en PSE",
      contenu: "BIOTECHNOLOGIES ET SBSSA Intégrer l'IA et les CPS dans sa pédagogie.  Concevoir des supports de cours et d'évaluation en   utilisant l'IA.  Proposer des activités qui permettent d'activer les   CPS",
      duree: "6",
      effectif: "25",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101755/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: ["IA", 'CPS']),
  Module(
      code: "100571",
      plan: "ENS",
      theme: "CINEMA",
      titre:
          "Webinaire informatif aux certifications complémentaires pour les 5 enseignements artistiques (PV)",
      dispoCode: "25A0090308",
      dispoTitre: "CIN_06 @ WEBINAIRE CERTIFICATIONS EN ARTS (PV)",
      public:
          "Enseignants prioritairement du 2nd degré. Toutes disciplines concernées.",
      objectifs:
          "La certification complémentaire en arts permet d'attester de compétences dans un domaine de culture artistique et offre l'opportunité d'en acquérir d'autres. Prenant appui sur les programmes en lycée, mobilisant des expériences professionnelles et convoquant une expertise scientifique plus ou moins étayée et étoffée, il s'agit d'accompagner les préparationnaires dans leur démarche qu'il s'agisse de la construction de progressive du rapport dactylographié et de l'épreuve orale. Plusieurs points seront abordés : réflexions didactiques et pistes pédagogiques en lien avec les projets envisagés, connaissance des acteurs institutionnels et des ressources régionales.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Ce premier temps informatif commun aux enseignements artistiques (octobre 2025) abordera les différentes exigences et attendus de cette épreuve certificative Arts avec cinq options : arts du cirque, cinéma et audiovisuel, danse, histoire de l'art, théâtre.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100571/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101159",
      plan: "ENS",
      theme: "CINEMA",
      titre: "Découvrir l'enseignement et la pratique du cinéma au collège",
      dispoCode: "25A0090569",
      dispoTitre: "CIN_03 @ ENSEIGNER ET PRATIQUER LE CINEMA AU CLG",
      public:
          "Public volontaire, enseignants et CPE de collèges, toutes disciplines ayant un intérêt ou ayant déjà une pratique en classe du cinéma.",
      objectifs:
          "S'informer sur l'existence des dispositifs et   actions sur l'Académie en lien avec le cinéma  Apprendre des témoignages de pratiques : ateliers   artistiques cinéma et ciné-club  Aiguiller les collègues pour construire une   progression intégrant un projet   interdisciplinaire.",
      contenu:
          "CINEMA, DANSE, THEATRE Une visio conférence de 2 heures et 2 visio conférences d'1 heure (mise au point sur les pratiques et actions menées sur l'académie en cinéma, témoignages sur des pratiques comme la mise en place d'un ciné-club, propositions de pistes pour créer une progression intégrant un projet) puis un suivi des pratiques et interrogations des collègues stagiaires.",
      duree: "4",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101159/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101160",
      plan: "ENS",
      theme: "CINEMA",
      titre: "Comprendre les enjeux de l'enseignement du cinéma",
      dispoCode: "25A0090570",
      dispoTitre: "CIN_04 @ S'ENGAGER DANS L'ENSEIGNEMENT DU CINEMA",
      public:
          "Public volontaire,enseignants intéressés par l'enseignement du cinéma (théorie et pratique) qui voudraient se préparer à la certification complémentaire à moyen terme",
      objectifs:
          "S'approprier les textes officiels et programmes autour de l'enseignement du cinéma.   Savoir travailler ensemble autour de projets s'appuyant sur l'étude de films.  Découvrir ou consolider les connaissances cinématographiques.  Découvrir ou consolider les outils réflexifs nécessaires à la réalisation de petites formes audiovisuelles à partir d'un questionnement sur les démarches.   Exploiter les spécificités cinématographiques pour évaluer les compétences liées à l'enseignement du cinéma.",
      contenu:
          "CINEMA, DANSE, THEATRE Découverte du contexte et des enjeux de l'enseignement du cinéma  Réflexion sur la mise en place de projets et sur l'importance du partenariat  Réalisation et prise de vues lors d'une session en structure, ou en lycée, pour insister sur le partenariat et l'importance de ses intervenants",
      duree: "8",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101160/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101313",
      plan: "ENS",
      theme: "CINEMA",
      titre: "Apprendre à monter à partir de rushes",
      dispoCode: "25A0090638",
      dispoTitre: "CIN_05 - APPRENDRE À MONTER",
      public:
          "Public volontaire. En priorité, les enseignants d'option cinéma au lycée et professeurs de collège et de lycée ayant une implicatiob dans une activité liée au cinéma avec leurs élèves ou dans un projet audiovisuel pluridisciplinaire.",
      objectifs:
          "Apprendre à utiliser un logiciel de montage  savoir proposer une réécriture d'images à partir du montage  faire comprendre la force du montage et la polysémie des images en fonction du montage",
      contenu:
          "CINEMA, DANSE, THEATRE Les professeurs stagiaires vont manipuler des images(rushes)pour réaliser un montage et ainsi s'approprier les techniques et particularités du montage. Savoir s'investir et investir les élèves dans une création cinématographique ou audiovisuelle.",
      duree: "12",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101313/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101145",
      plan: "ENS",
      theme: "CULTURE ACADEMIQUE SCIENCES ET TECHNOLOGIES",
      titre: "Forum académique science et société",
      dispoCode: "25A0090562",
      dispoTitre: "CAST01 - FORUM ACADEMIQUE SCIENCE ET SOCIETE",
      public:
          "Enseignants de toutes les disciplines scientifiques en collège et lycée (mathématiques, physique-chimie, SVT et technologie) + enseignants du 1er degré",
      objectifs:
          "- Mettre en lumière l'ensemble des acteurs de la Culture Scientifique Technologique et Industrielle en Région  - Aborder et décrypter de manière concrète et simple les concepts scientifiques, techniques et industriels nécessaires à une compréhension des enjeux territoriaux  - Mettre en réseau les acteurs de l'EN, de l'enseignement supérieur, les collectivités et le monde économique afin d'investir les programmes, les parcours éducatifs, les transitions qui jalonnent leur parcours scolaire.",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Afin de permettre aux enseignants d'appréhender les grands enjeux sociétaux scientifiques en lien avec leur territoire et les acteurs qui le composent, le forum académique science et société vise à aborder de grandes thématiques et enjeux sociétaux déclinés à l'échelle de nos territoires.",
      duree: "6",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101145/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101149",
      plan: "ENS",
      theme: "CULTURE ACADEMIQUE SCIENCES ET TECHNOLOGIES",
      titre: "La découverte d'ARKEOS ORIONIS (DOUAI)",
      dispoCode: "25A0090565",
      dispoTitre: "CAST04 -FT- DECOUVERTE D'ARKEOS ORIONIS",
      public:
          "Enseignants de toutes les disciplines scientifiques en collège et lycée",
      objectifs:
          "- Découvrir des structures scientifiques afin de décrypter leurs approches de la science comme outil de médiation auprès des publics.   - Pratiquer la démarche scientifique et la démarche archéologique.  - Comprendre comment se construit la science en croisant les regards des acteurs.  - Développer des modèles simples pour expliquer des faits d'observations et mise en œuvre de démarches propres aux sciences.  - Décrire de la structure de l'Univers et du système solaire, identifier des unités de distance et conversion.",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Cette formation vous propose de découvrir 2 structures, véritable fer de lance du Douaisis. Arkéos est un lieu culturel unique qui s'appuie sur deux pôles à savoir un musée et un parc de reconstitutions archéologiques. À l'image d'un voyage dans le temps, ce musée explore la vie de nos ancêtres sur plus de 200 000 ans ; vous découvrirez à travers les expositions, ateliers et reconstitutions en extérieur une interprétation de l'histoire d'un territoire et de ceux qui l'ont modelé.   C'est ensuite une plongée au sein d'Orionis, véritable porte sur le cosmos que vous vivrez une expérience unique au cœur de ce planétarium, équipement scientifique de grande qualité, doté des dernières technologies. Cette journée vous permettra d'appréhender ces structures scientifiques comme un véritable outil pédagogique riche en ressources, animations ateliers transposables dans vos pratiques pédagogiques.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101149/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100569",
      plan: "ENS",
      theme: "DANSE",
      titre:
          "Webinaire informatif aux certifications complémentaires pour les 5 enseignements artistiques (PV)",
      dispoCode: "25A0090306",
      dispoTitre: "DANS02 @ WEBINAIRE CERTIFICATIONS EN ARTS (PV)",
      public:
          "Enseignants prioritairement du 2nd degré. Toutes disciplines concernées.",
      objectifs:
          "Les certifications complémentaires en arts (histoire de l'art, danse, théâtre, cinéma audiovisuel et arts du cirque) permettent d'attester de compétences dans ce domaine et offre l'opportunité d'en acquérir d'autres. Prenant appui sur les programmes mobilisant des expériences professionnelles et convoquant une expertise scientifique plus ou moins étayée et étoffée, il s'agit d'accompagner les préparationnaires dans leur démarche qu'il s'agisse de la construction de progressive du rapport dactylographié et de l'épreuve orale. Plusieurs points seront abordés et notamment des réflexions didactiques et pistes pédagogiques en lien avec les projets envisagés, connaissance des acteurs institutionnels et des ressources régionales.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Ce premier temps informatif commun aux enseignements artistiques (octobre 2025) abordera les exigences et attendus de cette épreuve certificative Arts avec cinq options : arts du cirque, cinéma et audiovisuel, danse, histoire de l'art, théâtre.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100569/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100726",
      plan: "ENS",
      theme: "DANSE",
      titre: "Cirque en lycée et LP, deux approches",
      dispoCode: "25A0090391",
      dispoTitre: "DANS01 @ VIVRE UN PROCESSUS DE CRÉATION",
      public:
          "Enseignants en LP et LGT. Professeurs d&#8217;EPS souhaitant enseigner  les arts du cirque  et professeurs de toutes disciplines investis dans les projets EAC. Condition physique minimale requise.",
      objectifs:
          "Découvrir des œuvres référencées servant de point d'appuis pour enseigner les arts du cirque. Expérimenter des outils pour bousculer les représentations et faire adhérer tous les élèves à l'activité. Élaborer ensemble des propositions d'évaluation. Structurer les séances pour s'assurer que les élèves acquièrent les compétences de CA3 ou des attendus de l'EAC. Identifier des procédés de composition pour en faire des moteurs de création. Préciser et catégoriser des contenus (sécuritaires, biomécaniques, techniques). Rencontrer une équipe artistique et envisager ses interventions dans le cadre d'un projet co-construit.",
      contenu:
          "CINEMA, DANSE, THEATRE Cette formation propose des pistes pour programmer, enseigner, et évaluer un projet cirque au lycée ou au lycée professionnel. Que ce soit dans le cadre de l'enseignement en EPS ou dans le cadre de projets interdisciplinaires permettant de nourrir le PEAC des élèves, il s'agit d'enrichir les connaissances des arts du cirque, de découvrir comment en diversifier les pratiques et comment en déconstruire certaines représentations erronées. En proposant aux stagiaires de vivre un processus de création au contact d'une équipe artistique et en découvrant des exemples de mise en œuvre de ces processus avec des élèves, ils pourront ainsi envisager les modalités d'adaptation pédagogique, de formalisation et d'évaluation.",
      duree: "7",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100726/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100727",
      plan: "ENS",
      theme: "DANSE",
      titre: "Danse hip-hop et affirmation de soi",
      dispoCode: "25A0090391",
      dispoTitre: "DANS01 @ VIVRE UN PROCESSUS DE CRÉATION",
      public:
          "Enseignants du second degré, voie générale, technologique et professionnelle. Enseignants qui préparent des élèves à des examens oraux. Enseignants de toutes disciplines.",
      objectifs:
          "Vivre un temps de pratique autour des fondamentaux de la danse hip-hop. Développer la confiance en soi et l'estime personnelle à travers le soutien du groupe. Favoriser l'affirmation de soi à travers l'expression de son style personnel. Faire de la danse un levier pour la réussite des élèves. Découvrir une structure partenaire du territoire et sa programmation à destination du public scolaire.",
      contenu:
          "CINEMA, DANSE, THEATRE Le stage propose d'appréhender la danse hip-hop et le free style de manière sensible. Les stagiaires seront accueillis au Flow, centre régional des cultures urbaines à Lille, afin de découvrir le lieu, les artistes en résidence et le service de médiation. Des projets à mener en partenariat seront présentés en lien avec le festival des cultures urbaines « Hip Open Dance ». Un temps de pratique permettra d'expérimenter la danse freestyle. Les questionnements suivants seront au centre des ateliers et des échanges : comment aider les élèves à s'exprimer face à un groupe ? Comment accompagner les élèves pour une meilleure affirmation de soi ?",
      duree: "4",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100727/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101675",
      plan: "ENS",
      theme: "DEVOIRS FAITS",
      titre:
          "Articuler le travail personnel de l'élève dans et hors la classe avec le dispositif Devoirs Faits",
      dispoCode: "25A0090768",
      dispoTitre: "DEFA03 - LE TRAVAIL PERSONNEL DANS/HORS LA CLASSE",
      public: "enseignant en collège",
      objectifs:
          "Initier une réflexion sur le travail personnel de l'élève dans et hors la classe, en interrogeant les gestes professionnels et les dispositifs pédagogiques. Le but est de mettre en place des démarches pédagogique permettant aux élèves de s'engager dans les apprentissages et de construire leur autonomie. Il s'agira de répondre à : Comment mettre en activité les élèves afin qu'ils s'engagent dans les apprentissages ? Quels sont les gestes professionnels qui favorisent et soutiennent ces mises au travail et la construction de l'autonomie dans et hors la classe ? Quelles sont les formes de travail à privilégier ? Comment s'assurer que le travail personnel est bien producteur d'apprentissages ?",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP A partir d'étude de cas concrets choisis par les stagiaires, il s'agira :   d'identifier les problèmes et obstacles rencontrées par les élèves et l'enseignant;  d'apporter les références essentielles en lien avec les cas.  de partager des pistes concrètes et des outils.    Concevoir une boucle pédagogique du travail personnel sur le thème apprendre sa leçon   réflexion collective sur les gestes professionnels et démarches à mettre en œuvre sur le temps de la classe, lors de la prescription des devoirs, sur le temps de devoirs faits et lors du retour en classe pour permettre l'apprentissage de la leçon.  apport de références essentielles: comprendre, mémoriser, transférer, autonomiser, engager dans les apprentissages.  partage de pistes et d'outils concrets.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101675/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100703",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre:
          "Élaborer et conduire en équipe un projet de politique documentaire",
      dispoCode: "25A0090377",
      dispoTitre: "DOC_02 - POLITIQUE DOCUMENTAIRE",
      public: "Professeur.es documentalistes",
      objectifs:
          "Objectif : concevoir et conduire la politique documentaire de l'établissement.",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 12h   Public : Professeur.es documentalistes  Apports notionnels : repères sur les cinq volets de la politique documentaire   (politique de formation, d'accès aux ressources, d'acquisition, de lecture, de   communication et veille). Réflexion sur les critères d'une politique documentaire inclusive. Apports opérationnels : accompagnement et outils pour entrer dans une démarche de projet et pour impulser un travail en équipe éducative.",
      duree: "12",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100703/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100704",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Réaménager, réorganiser le CDI",
      dispoCode: "25A0090377",
      dispoTitre: "DOC_02 - POLITIQUE DOCUMENTAIRE",
      public: "Professeur.es documentalistes",
      objectifs:
          "Faire évoluer l'espace documentaire existant de l'établissement. Définir des objectifs   d'aménagement selon les différents rôles du CDI et la politique documentaire.",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 12h   Public : Professeur.es documentalistes  Dates et lieux : jeudi 30 janvier 2025 au lycée Le Corbusier de Tourcoing et mardi 4 mars 2025 au lycée du Hainaut à Valenciennes  Enjeux, modèles et méthodes pour réorganiser l'espace CDI. Après des apports théoriques sur l'évolution récente des espaces documentaires scolaires et des bibliothèques, des ateliers d'idéation permettront de poser un diagnostic, de réfléchir aux besoins de tous les usagers et de définir des objectifs, en prenant en compte leurs pratiques, pour un espace inclusif. Présentation d'espaces réorganisés. Proposition de méthodes liées au design thinking, UX, CDIremix impliquant élèves et personnels. Ressources, trousse à outils.",
      duree: "12",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100704/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100706",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Gestion documentaire avec E-SIDOC et BCDI",
      dispoCode: "25A0090379",
      dispoTitre: "DOC_04 - PORTAIL DOCUMENTAIRE E-SIDOC",
      public:
          "Professeur.es documentalistes abonnés au portail  ou ayant projet de s'y abonner.",
      objectifs:
          "Objectif : maîtriser et alimenter le portail e-sidoc à partir d'une base saine sur BCDI",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION  Formation de 12h   Public : Professeur.es documentalistes dont l'établissement est abonné à e-sidoc ou prévoit de   l'être dans l'année.  Mise en cchérence et travail sur la base documentaire de BCDI. Articulation BCDI - E-sidoc.Fonctionnement du portail (interface de recherche, proposition de ressources, outil de  publication.    Intégration de contenus.   Utilisation en séance pédagogique, pour la politique de communicatio n du CDI, et pour la   continuité pédagogique.",
      duree: "12",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100706/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100707",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Quelle culture numérique pour les professeurs documentalistes ?",
      dispoCode: "25A0090380",
      dispoTitre: "DOC_05 - EMI ET PÉDAGOGIE INFO-DOCUMENTAIRE",
      public: "Professeurs documentalistes",
      objectifs:
          "Construire une progression EMI en se positionnant en tant qu'expert.e de l'info-documentation et pédagogue de l'EMI.",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 6h -   Public : Professeur.es documentalistes  Date : 20 mai 2025 au LP Aimé Césaire (Lille)  Lors de ce stage sera abordée la construction d'une progression en EMI en se positionnant en tant qu'expert.e de l'info-documentation et pédagogue de l'EMI, dans le contexte d'actualité de la société de l'information. Le travail permettra une repérage des compétences numériques liées à l'info- documentation dans les programmes et dans le CRCN, définira les notions inhérentes, identifiera les enjeux et modalités de certification des compétences numériques des élèves. Une réflexion sur la didactique (transmission de ces savoirs) accompagnera la création de scénarios pédagogiques en EMI mobilisant les cultures numériques.",
      duree: "6",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100707/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100708",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Jeu au CDI et Compétences Psycho-Sociales",
      dispoCode: "25A0090380",
      dispoTitre: "DOC_05 - EMI ET PÉDAGOGIE INFO-DOCUMENTAIRE",
      public:
          "Professeurs documentalistes souhaitant mettre en place ou alimenter une ludothèque, et/ou s&#8217;initier à la formation par le jeu.",
      objectifs:
          "Penser l'accueil et la pédagogie différemment avec le jeu, pour une   différenciation permettant de mieux répondre à l'hétérogénéité du public, de   favoriser l'inclusion et de développer les compétences psycho-sociales (CPS).",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 12h   Public : Professeurs documentalistes  Dates :   Penser l'accueil et la pédagogie différemment avec le jeu, pour une différenciation permettant de mieux répondre à l'hétérogénéité du public, de favoriser l'inclusion et de développer les compétences psycho-sociales( CPS). Mettre l'élève en activité grâce au jeu, l'accompagner dans l'acquisition de compétences transversales essentielles, notamment les compétences psychosociales. Présentation des théories sur l'apport du jeu et des pratiques ludiques dans la construction de l'individu, dans la pédagogie et l'enseignement. Mise en pratique au travers de différentes médiations, d'ateliers de jeux et de test de séances pédagogiques ludifiées.",
      duree: "12",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100708/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100709",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Projets d'incitation à la lecture",
      dispoCode: "25A0090381",
      dispoTitre: "DOC_06 - POLITIQUE DE LECTURE AU CDI",
      public:
          "Professeur.es documentalistes, professeurs de   lettres ; binômes  bienvenus.",
      objectifs:
          "Etre capable de mener des projets d'incitation à la lecture au CDI.",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 12h   Public : Professeur.es documentalistes ; possibilité d'assister avec le professeurs de lettres  Pour enrichir ses connaissances et compétences en littérature de jeunesse afin de mener des projets pour promouvoir la lecture au sein des établissements scolaires. Seront abordées les notions essentielles ainsi que les programmes scolaires et instructions officielles, les pratiques de lectures des jeunes, l'histoire, la définition et le contexte économique de la littérature jeunesse. Panorama des maisons d'édition et des collections pour adolescents, veille professionnelle. Médiations, actions et projets d'incitation à la lecture. Échange de pratiques.",
      duree: "12",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100709/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100710",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Atelier numérique : présentations numériques info-documentaire",
      dispoCode: "25A0090382",
      dispoTitre: "DOC_07 - APPLICATIONS NUMÉRIQUES POUR LA PÉDAGOGIE",
      public: "Professeurs documentalistes",
      objectifs:
          "Réaliser des présentations, diaporamas, infographies... avec des applications numériques intégrant ou non l'IAG.",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 6h  Public : Professeurs documentalistes     Découverte et prise en main d'outils numériques qui permettent de créer des des vidéos pour communiquer (promouvoir des événements, des acquisitions, des actions pédagogiques, des partenariats, parfois en utilisant les IAG). Ces outils peuvent également être intégrés dans la production de documents multimédias dans des séquences pédagogiques, notamment dans les dispositifs interdisciplinaires. Découverte et formation à l'utilisation d'outils permettant la création de capsules vidéos, de films, de booktrailers... etc, intégrables sur un portail documentaire, l'ENT ou le site de l'établissement. Outils d'appropriation aisée : sont envisagés (sous réserve) Canva, Genial.ly, applications de stop motion, pour filmer son écran, faire du montage ou encore utiliser un fond vert ou faire de la web TV.",
      duree: "6",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100710/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100711",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Atelier numérique : applications pédagogiques",
      dispoCode: "25A0090382",
      dispoTitre: "DOC_07 - APPLICATIONS NUMÉRIQUES POUR LA PÉDAGOGIE",
      public: "Professeur documentaliste",
      objectifs:
          "Maîtriser des applications pour la pédagogie info-documentaire, afin de diversifier les modalités et méthodes d'enseignement, et savoir utiliser les apports de l'IAG dans ces applications.",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 6h   Public : Professeurs documentalistes   Accompagner les enseignants documentalistes dans la découverte et la prise en main d'outils numériques qui permettent de rendre les élèves acteurs de leurs apprentissages, de différencier la pédagogie et de la rendre ainsi plus inclusive. Exemples d'usages d'outils numériques variés intégrant ou non une IAG et accompagnement dans leur prise en main (création de quizz, de questionnaires, de parcours d'apprentissages, à réaliser en présentiel, en distanciel, en synchrone ou en asynchrone). Les professeurs documentalistes pourront utiliser ces outils pour former les élèves en EMI ou créer des activités en lien avec la lecture ou le Parcours d'Éducation Artistique et Culturel.",
      duree: "6",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100711/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100712",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Atelier numérique : films et vidéos",
      dispoCode: "25A0090382",
      dispoTitre: "DOC_07 - APPLICATIONS NUMÉRIQUES POUR LA PÉDAGOGIE",
      public: "Professeurs documentalistes",
      objectifs:
          "Créer des vidéos dans le cadre d'activités pédagogiques ou pour communiquer à l'aide d'applications numériques et de leurs outils intégrés d'IAG",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 6h  Public : Professeurs documentalistes  Découverte et prise en main d'outils numériques qui permettent de créer des des vidéos pour communiquer (promouvoir des événements, des acquisitions, les actions pédagogiques, des partenariats). Ces outils peuvent également être intégrés dans la production de documents multimédias dans des séquences pédagogiques, notamment dans les dispositifs interdisciplinaires. Découverte et formation à l'utilisation d'outils permettant la création de capsules vidéos, de films, de booktrailers... etc, intégrables sur un portail documentaire, l'ENT ou le site de l'établissement. Outils d'appropriation aisée : sont envisagés (sous réserve) Canva, Genial.ly, applications de stop motion, pour filmer son écran, faire du montage ou encore utiliser un fond vert ou faire de la web TV.",
      duree: "6",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100712/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100713",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Droit et société d'information",
      dispoCode: "25A0090383",
      dispoTitre: "DOC_08 - DROIT ET CITOYENNETÉ NUMÉRIQUES",
      public: "Professeurs documentalistes",
      objectifs:
          "Connaître et s'approprier les règles juridiques en matière de droit à l'image, de droit d'auteur et de respect des données personnelles. Questionner l'impact des intelligences artificielles sur ces règles juridiques. Envisager des scénarios pédagogiques pour former les élèves à ces compétences en lien avec les programmes du cycle 4, du LGT et du Lycée professionnel (EMC, EMI, SNT...)",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 12h   Public : Professeur.es documentalistes  Après des apports théoriques sur les notions de droit à l'image (notamment droit au respect de la vie privée), de droit d'auteur (licences Creative Commons, domaine public, exception pédagogique,...), un point sera fait sur le droit des données personnelles (CNIL, RGPD, DPD) et les questions liées aux intelligences artificielles génératives. Vous prendrez connaissance d'outils respectueux des exigences légales et réglementaires et réfléchirez à des scénarios pédagogiques reprenant les compétences du CRCN. Il s'agira en fin de stage de connaître les règles relatives au droit à 'image, au droit d'auteur et au respect des données personnelles, et d'être capable d'élaborer des scénarios pédagogiques pour former les élèves à ces compétences",
      duree: "12",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100713/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100714",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "@ Etre professeur documentaliste en STS et CPGE",
      dispoCode: "25A0090384",
      dispoTitre: "DOC_09 @ WEBINAIRES THÉMATIQUES EN INFO-DOC",
      public:
          "Professeurs documentalistes exerçant en lycée  avec   sections STS et classes CPGE.",
      objectifs:
          "Echanger sur les particularités de la pratique professionnelle auprès d'étudiants en   STS et CPGE",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Webinaires semestriels accompagnés d'un parcours Magistère. Echanges et propositions de ressources concernant la politique d'acquisition, la gestion et la pédagogie pour les CDI accueillant des élèves de BTS ou de classes préparatoires, sur leurs pratiques informationnelles et culturelles. Partage de projets et de séances pédagogiques adaptés aux besoins des étudiants et aux programmes (EMI, culture générale, méthodologie, lecture... etc).",
      duree: "6",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100714/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100715",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "@ Webcafé : veille informationnelle et mutualisations",
      dispoCode: "25A0090384",
      dispoTitre: "DOC_09 @ WEBINAIRES THÉMATIQUES EN INFO-DOC",
      public: "Professeurs documentalistes",
      objectifs:
          "Echanger et se former sur l'actualité professionnelle des professeurs documentalistes",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Webinaires accompagnés d'un parcours Magistère. Échanges et partages de nouveautés, d'actualités de découvertes et de projets concernant la politique d'acquisition, la gestion, la pédagogie, l'ouverture culturelle, l'incitation à la lecture et la littérature jeunesse.",
      duree: "5",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100715/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100716",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "@Etre professeur documentaliste en LP",
      dispoCode: "25A0090384",
      dispoTitre: "DOC_09 @ WEBINAIRES THÉMATIQUES EN INFO-DOC",
      public: "Professeurs documentalistes exerçant en LP ou en SEP",
      objectifs:
          "Echanger sur les activités spécifiques en LP et enrichir sa pratique professionnelle",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Webinaire de 2h accompagné d'un parcours Magistère  Public : Professeurs documentalistes exerçant en LP ou en SEP  Echanges et propositions de ressources concernant la politique d'acquisition, la gestion et la pédagogie   pour les CDI de LP.",
      duree: "6",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100716/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100718",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre:
          "IA générative : apports théoriques, pratiques et conception pédagogique",
      dispoCode: "25A0090386",
      dispoTitre: "DOC_11 - IA GENERATIVES ET MEDIATION DOC. (PV)",
      public: "Enseignants documentalistes",
      objectifs: "Comprendre le fonctionnement des IA génératives pour mieux les prendre en main. Être capable de former les élèves à ces nouveaux outils de génération de contenus. Intégrer la question des IA génératives dans un parcours de formation en EMI.",
      contenu: "OUTILS NUMERIQUES DE TRAVAIL Au cours de cette formation, vous vous familiariserez avec le fonctionnement des IA génératives, et les   questions qu'elles posent en info-documentation scolaire :   Quelle place leur donner dans la formation des élèves à la culture de l'information ? Quelles sont leurs pratiques avec ces nouveaux outils ? Vous manipulerez différentes IA (Perplexity, Chatgpt, my AI, Bard, Midjourney, Dall-e, ...), pour ensuite envisager les applications pédagogiques possibles dans la recherche documentaire et la production d'informations, échanger sur des séances menées avec les élèves et en concevoir.",
      duree: "12",
      effectif: "20",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100718/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: ["IA"]),
  Module(
      code: "100719",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "IA générative et pédagogique en infodoc (PV)",
      dispoCode: "25A0090387",
      dispoTitre: "DOC_12 - IA GENERATIVES ET PEDA INFODOC (PV)",
      public:
          "Enseignants documentalistes  pré-requis : avoir suivi le stage &#8220;IAG et médiation documentaire",
      objectifs: "Concevoir des séances pédagogiques en pédagogie info-documentaire sur l'utilisation et l'évaluation des IAG en recherche et production d'informations",
      contenu: "OUTILS NUMERIQUES DE TRAVAIL Vous avez commencé à intégrer les outils d'IA générative dans vos pratiques pédagogiques ? Cette formation vous permettra d'approfondir leur usage en explorant leurs évolutions récentes, notamment en matière de raisonnement et de recherche avancée. Nous analyserons leurs implications sur la méthodologie info-documentaire et les compétences EMI, en particulier celles liées à l'analyse, la réflexivité, la distanciation critique et la production originale d'informations. Vous partagerez vos expériences, testerez de nouveaux usages, et réfléchirez à des pistes pour accompagner les élèves vers des pratiques plus conscientes et critiques, dans une interaction équilibrée et réfléchie entre humain et machine.",
      duree: "6",
      effectif: "20",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100719/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: ["IA"]),
  Module(
      code: "100724",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Fabriquer au CDI : de l'imprimante 3D au FabLab",
      dispoCode: "25A0090390",
      dispoTitre: "DOC_14 FABRIQUER AU CDI IMPRIMANTE 3D FABLAB",
      public:
          "Professeurs documentalistes exerçant en lycée  avec   sections STS et classes CPGE.",
      objectifs:
          "Intégrer les machines de fabrication numériques dans la pratique pédagogique des professeurs documentalistes  dans le cadre de l'EMI",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Présentation d'outils numériques de découpe 2D et d'impression 3D : fonctionnement, matériaux, limites. Choix des outils de modélisation : capacités, temps de prise en main, limites. Découverte de sites répertoriant des modélisations pour adapter des objets. Réflexion sur l'intérêt et la plus-value de l'intégration de la fabrication numérique dans des projets d'EMI : complément, valorisation, projet en soi... Configuration des projets et aménagement ou utilisation des espaces de fabrication disponibles.",
      duree: "6",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100724/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102583",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre:
          "Réseaux sociaux : citoyenneté numérique et production de l'information",
      dispoCode: "25A0090383",
      dispoTitre: "DOC_08 - DROIT ET CITOYENNETÉ NUMÉRIQUES",
      public: "Professeurs documentalistes",
      objectifs:
          "Connaître et s'approprier les règles juridiques en matière de droit à l'image, de droit d'auteur et de respect des données personnelles. Questionner l'impact des intelligences artificielles sur ces règles juridiques. Envisager des scénarios pédagogiques pour former les élèves à ces compétences en lien avec les programmes du cycle 4, du LGT et du Lycée professionnel (EMC, EMI, SNT...)",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 12h   Public : Professeur.es documentalistes  Depuis l'avènement du web 2.0, les réseaux sociaux ont bouleversé les pratiques informationnelles et communicationnelles. Aujourd'hui le web 4.0 nous amène à les redéfinir comme médias sociaux, avec de nouveaux enjeux didactiques et pédagogiques pour le professeur documentaliste. Ce module de 2 jours permettra d'actualiser ses connaissances pour faire évoluer les politiques documentaires et les progressions EMI, et développer les compétences citoyennes et numériques des élèves ainsi que leur créativité. La formation se penchera sur la production de l'information sur les réseaux sociaux, sur les projets pédagogiques possibles tout en respectant le droit en vigueur.",
      duree: "12",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102583/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102589",
      plan: "ENS",
      theme: "DOCUMENTATION",
      titre: "Escape game, EMI et Compétences Psycho-Sociales",
      dispoCode: "25A0090380",
      dispoTitre: "DOC_05 - EMI ET PÉDAGOGIE INFO-DOCUMENTAIRE",
      public:
          "Professeurs documentalistes souhaitant mettre en place ou alimenter une ludothèque, et/ou s&#8217;initier à la formation par le jeu.",
      objectifs:
          "Accompagner les professeurs documentalistes dans la conception d'escape games au service de l'acquisition de compétences info-documentaires et psycho-sociales",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Formation de 12h   Public : Professeurs documentalistes  Dates :   Accompagner les professeurs documentalistes dans la conception et la mise en œuvre d'escape games réels ou numériques, visant à former les élèves à des notions en information-documentation en éducation aux médias et à l'information leur permettant également de développer des soft skills. Découverte de plusieurs jeux et formation à des outils pour la création d'énigmes et de scénarios ludopédagogiques",
      duree: "12",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102589/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102846",
      plan: "ENS",
      theme: "ECOLE ACADEMIQUE DE LA FORMATION CONTINUE",
      titre:
          "Plan de formation dédié à l'IA dans les métiers de l'éducation - Webinaire de sensibilisation",
      dispoCode: "25A0091215",
      dispoTitre: "EAFC04 - PLAN FORMATION INTELLIGENCE ARTIFICIELLE",
      public: "Tout personnel de l'Education nationale",
      objectifs: "Sensibilisation aux fondamentaux de l'IA en éducation.",
      contenu: "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP Déploiement d'un plan dédié à l'intelligence artificielle dans les métiers de l'éducation. Webinaires thématiques.",
      duree: "6",
      effectif: "150",
      abonnement: "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102846/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: ["IA"]),
  Module(
      code: "101819",
      plan: "ENS",
      theme: "ECONOMIE GESTION EN LEGT",
      titre:
          "Accompagner la progression des élèves dans l&#8217;épreuve écrite de MSGN",
      dispoCode: "25A0090840",
      dispoTitre: "EGLT01 - FAVORISER REUSSITE ELEVES AU BAC STMG",
      public: "Enseignants de spécialité en STMG",
      objectifs:
          "- Analyser les sujets précédents pour en comprendre la structure, les attentes et les critères d'évaluation, dans le but de préparer efficacement les élèves à cette épreuve.  - Expliquer aux élèves comment sont élaborés les sujets de l'épreuve, quels sont les axes d'analyse à privilégier, et les éléments essentiels à aborder pour réussir l'épreuve écrite.",
      contenu:
          "ECONOMIE ET GESTION - Revisiter les sujets de l'épreuve de spécialité de MSGN en STMG.  - Expliciter la construction des sujets.",
      duree: "3",
      effectif: "26",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101819/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101820",
      plan: "ENS",
      theme: "ECONOMIE GESTION EN LEGT",
      titre:
          "Accompagner les élèves dans la formulation des questions pour le Grand oral",
      dispoCode: "25A0090840",
      dispoTitre: "EGLT01 - FAVORISER REUSSITE ELEVES AU BAC STMG",
      public: "Enseignants de spécialité en STMG",
      objectifs:
          "- Aider les élèves à concevoir des questions pertinentes, claires et adaptées aux attentes du Grand oral, en lien avec leur programme de spécialité et les compétences qu'ils doivent démontrer.  - Mettre en place des exercices et des simulations permettant aux élèves de s'entraîner à répondre de manière fluide et structurée aux questions du Grand oral, en mettant l'accent sur la prise de parole, la gestion du stress et la construction de réponses argumentées.",
      contenu:
          "ECONOMIE ET GESTION - Accompagner les élèves dans la formulation des questions pour le Grand oral,  - Organiser des modalités d'entraînement des élèves au Grand oral dans le cadre des cours.",
      duree: "3",
      effectif: "26",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101820/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101026",
      plan: "ENS",
      theme: "ECONOMIE GESTION EN LP",
      titre: "IA et scénarisation pédagogique en économie-gestion",
      dispoCode: "25A0090494",
      dispoTitre: "EGLP04 - INTEGRER IA DANS PRATIQUES PEDA ECO-GEST.",
      public:
          "Enseignants d'économie-gestion en lycée professionnel : vente, accueil, logistique, sécurité, hôtellerie, alimentation. Aucun prérequis technique exigé.",
      objectifs:
          "Concevoir des activités pédagogiques intégrant des outils d'IA adaptés aux spécialités d'économie-gestion.  Exploiter l'IA pour diversifier les pratiques d'enseignement, d'évaluation et de remédiation.  Développer l'autonomie et l'esprit critique des élèves face aux outils numériques.  S'inscrire dans une démarche de veille et d'innovation pédagogique.",
      contenu:
          "AUTRE CONTENU SERVICES À partir de situations pédagogiques concrètes, les enseignants découvriront comment utiliser des outils basés sur l'IA pour concevoir des séquences d'apprentissage différenciées, générer des supports adaptés, créer des évaluations formatives automatiques ou simuler des situations professionnelles. Des ateliers permettront de mutualiser et de créer des ressources",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101026/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101027",
      plan: "ENS",
      theme: "ECONOMIE GESTION EN LP",
      titre: "Webinaire : cuisine traiteur, un métier en transformation",
      dispoCode: "25A0090495",
      dispoTitre: "EGLP05 @ TRAITEUR 3.0",
      public:
          "Enseignants de cuisine, de boulangerie-pâtisserie, de boucher-charcutier et de poissonnier",
      objectifs:
          "Confronter les enseignants aux pratiques actuelles d'entreprises du secteur.    Offrir un moment d'échange direct avec des professionnels : traiteurs, chefs, responsables innovation, etc.",
      contenu:
          "HOTELLERIE, RESTAURATION, TOURISME Webinaire qui présente les entreprises et les tendances actuelles en termes de produits traiteurs.",
      duree: "2",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101027/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101028",
      plan: "ENS",
      theme: "ECONOMIE GESTION EN LP",
      titre: "Pratique cuisine traiteur",
      dispoCode: "25A0090495",
      dispoTitre: "EGLP05 @ TRAITEUR 3.0",
      public:
          "Enseignants de cuisine, de boulangerie-pâtisserie, de boucher-charcutier et de poissonnier",
      objectifs:
          "Analyser les différences entre les pratiques de cuisine classique et celles du traiteur événementiel  Savoir démontrer les gestes clés en situation pédagogique  Développer un regard professionnel sur les nouvelles pratiques liées à la cuisine traiteur  Mettre à jour ses connaissances sur les normes d'hygiène et sécurité en contexte traiteur",
      contenu:
          "HOTELLERIE, RESTAURATION, TOURISME Développement et pratique réflexive du geste professionnel.  Adaptation à l'évolution du contexte professionnel.  Découverte et mise en œuvre de techniques modernes adaptées à la cuisine traiteur",
      duree: "6",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101028/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101029",
      plan: "ENS",
      theme: "ECONOMIE GESTION EN LP",
      titre: "Barista",
      dispoCode: "25A0090496",
      dispoTitre: "EGLP06 - BOISSONS CHAUDES AU RESTAURANT",
      public: "Professeurs de LP en services et commercialisation.",
      objectifs:
          "- Comprendre les bases théoriques : Apprendre les origines du café et du thé, les variétés de grains, et le processus de torréfaction.  - Maîtriser les techniques de préparation : Savoir extraire un espresso parfait, calibrer un moulin à café, et monter une mousse de lait.  - Créer des boissons café variées : Réaliser des recettes classiques comme le cappuccino, le latte macchiato, des cocktails à base de café.  - Appliquer les normes d'hygiène et de sécurité : Assurer un service propre et conforme aux réglementations.  - Développer des compétences en latte art : Apprendre à réaliser des motifs comme le coeur ou la rosette.  - Entretenir le matériel : Savoir nettoyer et maintenir les machines à café professionnelles.",
      contenu:
          "HOTELLERIE, RESTAURATION, TOURISME Formation dédiée à la connaissance et à la production des boissons chaudes au restaurant dans un contexte moderne d'évolution des techniques, des matériels et des produits",
      duree: "6",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101029/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101030",
      plan: "ENS",
      theme: "ECONOMIE GESTION EN LP",
      titre: "Aspect healthy et éco durable de la pratique professionnel",
      dispoCode: "25A0090497",
      dispoTitre: "EGLP07 - BOULANGERIE SAINE ET DURABLE",
      public: "Professeurs de LP en boulangerie - patisserie",
      objectifs:
          "Favoriser la réflexion des enseignants sur les enjeux de santé publique et de durabilité dans le domaine de la boulangerie.  Intégrer les principes de l'alimentation durable (écologie, éthique, économie) dans les contenus pédagogiques.  Acquérir des compétences techniques liées à la fabrication de pains et viennoiseries sains (farines complètes, levain naturel, réduction des additifs, etc.).  Mettre en oeuvre des pratiques pédagogiques adaptées au contexte évolutif (produits techniques matériel attente du client.",
      contenu:
          "HOTELLERIE, RESTAURATION, TOURISME Mise en oeuvre d'une réflexion orientée vers une pratique respectueuse de l'environnement et porteuse de bien-être",
      duree: "6",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101030/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102355",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Poser les bases de la démarche d'accompagnement à l'orientation",
      dispoCode: "25A0091028",
      dispoTitre: "EDOR01 - ACCOMPAGNER ORIENT. ONISEP PLATF AVENIRS",
      public:
          "Equipes éducatives collège/LGT/LP et SEGPA.  Équipes de direction.",
      objectifs:
          "Poser les bases de la démarche d'accompagnement à l'orientation.  Que signifie accompagner un adolescent ou une adolescente dans la construction de son orientation ? Comment répondre aux problématiques d'orientation rencontrées sur le terrain ? Quelles ressources pédagogiques et méthodologiques mobiliser ?",
      contenu:
          "ORIENTATION Ce module d'introduction se propose de poser les bases de l'accompagnement à l'orientation. Cadre, démarche et posture, au travers de l'analyse du parcours d'un élève et la manière dont il s'est construit.",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102355/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102356",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner l'orientation au collège",
      dispoCode: "25A0091028",
      dispoTitre: "EDOR01 - ACCOMPAGNER ORIENT. ONISEP PLATF AVENIRS",
      public: "Equipes éducatives collège.  Equipes de direction collège",
      objectifs:
          "Contextualiser l'accompagnement et la présentation des ressources au travers de situations rencontrées en collège",
      contenu:
          "ORIENTATION Comment accompagner ses élèves en orientation au collège ? Comment mettre en place une démarche exploratoire de découverte des métiers ? Au travers de diverses situations, vous découvrirez une démarche et des ressources simples à appréhender et à mettre en oeuvre, adossées à l'utilisation de la nouvelle plateforme Avenir(s) développée par l'Onisep.",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102356/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102357",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner l'orientation en LGT",
      dispoCode: "25A0091028",
      dispoTitre: "EDOR01 - ACCOMPAGNER ORIENT. ONISEP PLATF AVENIRS",
      public: "Équipes éducatives LGT. Équipes de direction.",
      objectifs:
          "Contextualiser l'accompagnement et la présentation des ressources au travers de situations rencontrées en LGT",
      contenu:
          "ORIENTATION Comment accompagner l'orientation de ses élèves au LGT ? Comment les aider à s'informer et mettre en perspective l'information avec la construction de leur parcours ? Comment les accompagner dans une démarche réflexive ? Au travers de diverses situations, vous découvrirez une démarche et des ressources simples à appréhender et à mettre en oeuvre, adossées à l'utilisation de la nouvelle plateforme Avenir(s) développée par l'Onisep.",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102357/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102358",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner l'orientation au LP",
      dispoCode: "25A0091028",
      dispoTitre: "EDOR01 - ACCOMPAGNER ORIENT. ONISEP PLATF AVENIRS",
      public: "Équipes éducatives LP. Équipes de direction LP.",
      objectifs:
          "Contextualiser l'accompagnement et la présentation des ressources au travers de situations rencontrées en LP",
      contenu:
          "ORIENTATION Comment accompagner la construction du parcours de ses élèves en voie pro ? Comment favoriser leur ambition, les aider à contruire leur projet post-Bac ou leur projet d'insertion ? Au travers de situations concrètes, vous découvrirez des ressources et outils adaptés, développés par l'Onisep dans la nouvelle plateforme Avenir(s)",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102358/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102359",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Introduction à la démarche Compétences à s'orienter",
      dispoCode: "25A0091029",
      dispoTitre: "EDOR02 - DEMARCHE COMPETENCES A S'ORIENTER",
      public: "Équipes éducatives collège et lycée",
      objectifs: "Présenter les compétences à s'orienter",
      contenu:
          "ORIENTATION Découvrez ce que l'approche par les compétences à s'orienter en éducation peut apporter en éducation, et dans la dynamique du développement des adolescents. Découvrez l'utilité du référentiel des compétences à s'orienter (RCO) dans l'accompagnement individuel et collectif des jeunes.",
      duree: "5",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102359/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102480",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Poser les bases de la démarche d'accompagnement à l'orientation",
      dispoCode: "25A0091093",
      dispoTitre: "EDOR03 - ACCOMPAGNER A L'ORIENTATION - LE PPO",
      public: "Equipes éducatives collège   Équipes de direction.",
      objectifs:
          "Appréhender le Programme Pluriannuel d'Orientation au collège",
      contenu:
          "ORIENTATION En lien avec les compétences à s'orienter, le PPO s'articule autour de 3 axes pédagogiques, déclinés dans le cadre des heures dédiées à l'orientation (1)élaborer son projet d'orientation scolaire et professionnelle, (2)découvrir le monde économique et professionnel et les métiers, (3)découvrir les différentes voies de formation. Il s'agira d'aborder le rôle de l'enseignant ou du CPE dans la conception et la mise en œuvre du PPO. Des outils seront proposés aux stagiaires.",
      duree: "2",
      effectif: "150",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102480/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102481",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner l'orientation au collège",
      dispoCode: "25A0091093",
      dispoTitre: "EDOR03 - ACCOMPAGNER A L'ORIENTATION - LE PPO",
      public: "Enseignants et CPE de LP",
      objectifs:
          "Appréhender le Programme Pluriannuel d'Orientation au lycée professionnel",
      contenu:
          "ORIENTATION En lien avec les compétences à s'orienter, le PPO s'articule autour de 3 axes pédagogiques, déclinés dans le cadre des heures dédiées à l'orientation (1)élaborer son projet d'orientation scolaire et professionnelle, (2)découvrir le monde économique et professionnel et les métiers, (3)découvrir les différentes voies de formation. Il s'agira d'aborder le rôle de l'enseignant ou du CPE dans la conception et la mise en œuvre du PPO. Des outils seront proposés aux stagiaires.",
      duree: "2",
      effectif: "150",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102481/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102482",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner l'orientation en LGT",
      dispoCode: "25A0091093",
      dispoTitre: "EDOR03 - ACCOMPAGNER A L'ORIENTATION - LE PPO",
      public: "Équipes éducatives LGT. Équipes de direction.",
      objectifs:
          "Appréhender le Programme Pluriannuel d'Orientation au lycée général et technologique",
      contenu:
          "ORIENTATION En lien avec les compétences à s'orienter, le PPO s'articule autour de 3 axes pédagogiques, déclinés dans le cadre des heures dédiées à l'orientation (1)élaborer son projet d'orientation scolaire et professionnelle, (2)découvrir le monde économique et professionnel et les métiers, (3)découvrir les différentes voies de formation. Il s'agira d'aborder le rôle de l'enseignant ou du CPE dans la conception et la mise en œuvre du PPO. Des outils seront proposés aux stagiaires.",
      duree: "2",
      effectif: "150",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102482/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102483",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner à l'orientation : webinaire voie professionnelle",
      dispoCode: "25A0091094",
      dispoTitre: "EDOR04 - ACCOMPAGNER ORIENTATION VOIE PRO & TECHNO",
      public: "Equipes éducatives collège   Équipes de direction.",
      objectifs: "Comprendre l'évolution de la voie professionnelle",
      contenu:
          "ORIENTATION La formation abordera la transformation de la voie professionnelle au travers : des familles de métier, des modalités d'affectation, de l'affectation post-2de pro, de la mixité des parcours, des modules « insertion professionnelle » ou « poursuite d'études », du chef d'œuvre...",
      duree: "2",
      effectif: "150",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102483/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102484",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner l'orientation au collège",
      dispoCode: "25A0091094",
      dispoTitre: "EDOR04 - ACCOMPAGNER ORIENTATION VOIE PRO & TECHNO",
      public: "Enseignants en collège et enseignants de seconde GT.",
      objectifs:
          "Travailler sur les représentations des différentes voies technologiques dans leur contenu et leurs poursuites d'études.",
      contenu:
          "ORIENTATION La formation abordera la voie technologique dans sa diversité au travers notamment les différents domaines et  séries, les poursuites d'études, l'affectation post-2de GT... Il s'agira d'appréhender les voies technogiques dans leurs contenus et poursuites d'études.",
      duree: "2",
      effectif: "150",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102484/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102489",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner à l'orientation : webinaire voie professionnelle",
      dispoCode: "25A0091096",
      dispoTitre: "EDOR06 - ACCOMPAGNER ORIENTATION PROF. PRINCIPAUX",
      public: "Professeurs principaux de collège et lycée",
      objectifs: "Orientation et affectation",
      contenu:
          "ORIENTATION La formation se donne pour ambition de donner aux Professeurs Principaux des repères en matière d'orientation et d'affectation des élèves.",
      duree: "2",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102489/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102491",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre:
          "Le secteur de l'informatique et numérique : études supérieures et perspectives",
      dispoCode: "25A0091098",
      dispoTitre: "EDOR07 @ DECOUVERTE D'UNE FILIERE - ETUDES SUP.",
      public: "Equipes éducatives et pédagogiques de lycées et PsyEN",
      objectifs:
          "Découvrir les études de l'informatique et les perspectives pour faire évoluer ses représentations et mieux conseiller les lycéens dans leurs choix d'orientation",
      contenu:
          "ORIENTATION 1 webinaire de présentation générale du domaine  4 webinaires d'1 heure de présentation des formations et des débouchés professionnels (BUT, licences, BTS, CPGE/grandes écoles)",
      duree: "5",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102491/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102492",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "L'accès aux études médicales et paramédicales",
      dispoCode: "25A0091098",
      dispoTitre: "EDOR07 @ DECOUVERTE D'UNE FILIERE - ETUDES SUP.",
      public: "Equipes éducatives et pédagogiques de lycées et PsyEN",
      objectifs:
          "Les métiers de la santé et les études correspondant : faire évoluer ses représentations pour mieux conseiller les lycéens dans leurs choix d'orientation",
      contenu:
          "ORIENTATION 1 webinaire de présentation des cursus de formation en région académique  4 webinaires d'1 heure : IFSI, Pharmacie, Travailler dans la santé sans être soignant, le paramédical hors IFSI",
      duree: "5",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102492/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102493",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accès aux métiers de l'enseignement",
      dispoCode: "25A0091098",
      dispoTitre: "EDOR07 @ DECOUVERTE D'UNE FILIERE - ETUDES SUP.",
      public: "Equipes éducatives et pédagogiques de lycées et PsyEN",
      objectifs:
          "Mettre à jour ses connaissances sur l'organisation des études et les concours d'accès aux métiers de l'enseignement pour mieux conseiller les lycéens dans leurs choix d'orientation",
      contenu:
          "ORIENTATION Les filières et parcours de formation menant aux carrières de l'enseignement, l'offre de formation",
      duree: "1",
      effectif: "300",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102493/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102494",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Le secteur de l'éco-gestion",
      dispoCode: "25A0091098",
      dispoTitre: "EDOR07 @ DECOUVERTE D'UNE FILIERE - ETUDES SUP.",
      public: "Équipes éducatives LP. Équipes de direction LP.",
      objectifs:
          "Découvrir les études de l'économie-gestion et les perspectives pour faire évoluer ses représentations et mieux conseiller les lycéens dans leurs choix d'orientation",
      contenu: "ORIENTATION Parcours Magistère en autonomie.",
      duree: "5",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102494/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102498",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "La procédure Parcoursup",
      dispoCode: "25A0091100",
      dispoTitre: "EDOR08 - LA PROCEDURE PARCOURSUP",
      public: "Equipes éducatives et pédagogiques de lycées et PsyEN",
      objectifs:
          "Savoir utiliser Parcoursup pour accompagner les lycéens tout au long la procédure",
      contenu:
          "ORIENTATION 6 webinaires de 45 minutes de janvier à mai : site de gestion, formulation des vœux, constitution du dossier, confirmation des vœux, phase d'admission et phase complémentaire, fin de la phase principale  2 webinaires facultatifs : (1) Accompagner les lycéens professionnels sur Parcousup. (2) Utiliser Parcoursup comme outil d'aide à l'orientation au LEGT.",
      duree: "6",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102498/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102526",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Accompagner les lycéens professionnels vers le BTS et au-delà",
      dispoCode: "25A0091106",
      dispoTitre: "EDOR09 - ACCOMP LYCEENS PARCOURS FORM SUPERIEUR",
      public: "Equipes éducatives et pédagogiques de lycées et PsyEN",
      objectifs:
          "Savoir accompagner les lycéens professionnels sur Parcoursup. Faire évoluer ses connaissances sur les possibilités de poursuite d'études post BTS en fonction de la nouvelle offre de formation",
      contenu:
          "ORIENTATION 1 webinaire de présentation générale du domaine  4 webinaires d'1 heure de présentation des formations et des débouchés professionnels (BUT, licences, BTS, CPGE/grandes écoles)",
      duree: "3",
      effectif: "90",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102526/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102527",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Favoriser l'accès de tous les lycéens aux CPGE",
      dispoCode: "25A0091106",
      dispoTitre: "EDOR09 - ACCOMP LYCEENS PARCOURS FORM SUPERIEUR",
      public: "Equipes éducatives et pédagogiques de lycées et PsyEN",
      objectifs:
          "Faire évoluer ses représentations des CPGE pour diversifier le recrutement et élargir les choix des lycéens afin de leur permettre d'accéder à des filières d'excellence",
      contenu:
          "ORIENTATION Se repérer dans les formations du supérieur  Présentation des différents cursus en CPGE : contenus des enseignements, débouchés, profil des étudiants",
      duree: "2",
      effectif: "60",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102527/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102528",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "S'orienter à l'université après le baccalauréat",
      dispoCode: "25A0091106",
      dispoTitre: "EDOR09 - ACCOMP LYCEENS PARCOURS FORM SUPERIEUR",
      public: "Equipes éducatives et pédagogiques de lycées et PsyEN",
      objectifs:
          "Mieux connaître la formation et les acteurs de l'université pour améliorer l'orientation des élèves et favoriser leur réussite à l'université",
      contenu:
          "ORIENTATION Les études à l'université en 2025 - L'accompagnement à l'orientation et à la réussite à l'université - programmes d'actions proposés par les universités (PIA, OSeR...)",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102528/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102529",
      plan: "ENS",
      theme: "EDUCATION A L'ORIENTATION",
      titre: "Se repérer dans les formations du supérieur",
      dispoCode: "25A0091106",
      dispoTitre: "EDOR09 - ACCOMP LYCEENS PARCOURS FORM SUPERIEUR",
      public: "Équipes éducatives LP. Équipes de direction LP.",
      objectifs:
          "Découvrir et se repérer dans les formations de l'enseignement supérieur",
      contenu:
          "ORIENTATION Présentation du schéma des formations, comprendre les structures et les passerelles, connaître les ressources pour les lycéens",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102529/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100114",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre:
          "Cultures informationnelles et médiatiques pour exercer sa citoyenneté au XXIe siècle",
      dispoCode: "25A0090121",
      dispoTitre: "EMI_02 @ CULTURES INFORMATIONNELLE ET MÉDIA XXI°S",
      public:
          "Personnels d'enseignement et d'éducation (collège, lycée général, technologique et professionnel). Toutes les disciplines sont les bienvenues.",
      objectifs:
          "Développer ses compétences et connaissances en   Éducation aux Médias et à l'Information pour mieux   comprendre l'environnement informationnel et   médiatique et accompagner les élèves dans   l'apprentissage de leur citoyenneté et l'exercice   de leur droit à l'accès et à la production   d'information en ligne et hors ligne.",
      contenu:
          "EDUCATION AUX MÉDIAS Cette formation vise à actualiser les   connaissances et compétences des personnels   d'enseignement et d'éducation en Éducation aux   Médias et à l'Information indispensables à la   maîtrise des enjeux de la société de l'information   et de la communication au XXIe siècle. 4 grands   axes seront abordés: *en culture informationnelle   par la compréhension des pratiques   informationnelles et médiatiques des élèves. / *en   culture médiatique par l'analyse du paysage   médiatique français (ses modèles économiques, ses   nouveaux formats). / *en culture numérique par le   décryptage du fonctionnement des réseaux sociaux   numériques et les mécanismes de l'économie de   l'attention. / *en culture sociale et citoyenne   pour accompagner les élèves dans un usage éclairé   de leur liberté d'expression.  Durée : 13 : 4h en visio synchrone ou différée /   9h en asynchrone",
      duree: "4",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100114/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100115",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre:
          "Cultures informationnelles et médiatiques pour exercer sa citoyenneté au XXIe siècle (distanciel)",
      dispoCode: "25A0090121",
      dispoTitre: "EMI_02 @ CULTURES INFORMATIONNELLE ET MÉDIA XXI°S",
      public:
          "Personnels d'enseignement et d'éducation (collège,   lycée général, technologique et professionnel).   Toutes les disciplines sont les bienvenues.",
      objectifs:
          "Développer ses compétences et connaissances en   Éducation aux Médias et à l'Information pour mieux   comprendre l'environnement informationnel et   médiatique et accompagner les élèves dans   l'apprentissage de leur citoyenneté et l'exercice   de leur droit à l'accès et à la production   d'information en ligne et hors ligne.",
      contenu:
          "EDUCATION AUX MÉDIAS Cette formation vise à actualiser les   connaissances et compétences des personnels   d'enseignement et d'éducation en Éducation aux   Médias et à l'Information indispensables à la   maîtrise des enjeux de la société de l'information   et de la communication au XXIe siècle. 4 grands   axes seront abordés: *en culture informationnelle   par la compréhension des pratiques   informationnelles et médiatiques des élèves. / *en   culture médiatique par l'analyse du paysage   médiatique français (ses modèles économiques, ses   nouveaux formats). / *en culture numérique par le   décryptage du fonctionnement des réseaux sociaux   numériques et les mécanismes de l'économie de   l'attention. / *en culture sociale et citoyenne   pour accompagner les élèves dans un usage éclairé   de leur liberté d'expression.  Durée : 13 : 4h en visio synchrone ou différée /   9h en asynchrone",
      duree: "9",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100115/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100121",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre:
          "S'emparer de l'EMI dans sa discipline et en interdisciplinaire : SVT et EDD",
      dispoCode: "25A0090124",
      dispoTitre: "EMI_04 - S'EMPARER DE L'EMI DANS DISC. SCIENTIF.",
      public:
          "Personnels d'enseignement de SVT, EDD, PSE et   professeurs des écoles (désireux de travailler sur   les sciences&EMI) sont les bienvenues.",
      objectifs:
          "Penser sa progressivité disciplinaire sous l'angle   de l'EMI pour consolider l'esprit critique des   élèves et leur pouvoir d'agir . Concevoir des   projets EMI interdisciplinaires et contribuer le   volet EMI du projet d'établissement. Produire   des scénarios pédagogiques avec l'accompagnement   des formateurs pour instaurer une EMI du   quotidien en classe.",
      contenu:
          "EDUCATION AUX MÉDIAS S'emparer de l'EMI dans sa discipline et en   interdisciplinarité : Après avoir rappelé les   fondamentaux (informations, sources, fabrique de   l'information, écosystème informationnel) et les   postures professionnelles préconisées en Éducation   aux Médias et à l'Information en tronc commun, les   stagiaires pourront découvrir des scénarios   pédagogiques visant au développement de la   culture des sources et des stratégies de   production, de vérification et de fiabilité des   informations dans et en dehors de la classe.  Modalités : Stage d'une durée totale de 10h en   distanciel : 4h en synchrone (visio direct ou   différé en semaine en fin de journée) et 6h en   asynchrone entre décembre et juin.",
      duree: "4",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100121/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100122",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre: "S'emparer de l'EMI dans sa discipline : les sciences(dist)",
      dispoCode: "25A0090124",
      dispoTitre: "EMI_04 - S'EMPARER DE L'EMI DANS DISC. SCIENTIF.",
      public:
          "Personnels d'enseignement  de SVT, EDD et   professeurs des écoles (désireux de travailler sur   les sciences&EMI) sont les bienvenues.",
      objectifs:
          "Penser sa progressivité disciplinaire sous l'angle   de l'EMI pour consolider l'esprit critique des   élèves et leur pouvoir d'agir . Concevoir des   projets EMI interdisciplinaires et contribuer le   volet EMI du projet d'établissement. Produire des   scénarios pédagogiques avec l'accompagnement des   formateurs pour instaurer une EMI du quotidien   en classe.",
      contenu:
          "EDUCATION AUX MÉDIAS Après avoir rappelé les fondamentaux   (informations, sources, fabrique de l'information,   écosystème informationnel) et les postures   professionnelles préconisées en Éducation aux   Médias et à l'Information en tronc commun, les   stagiaires pourront découvrir des scénarios   pédagogiques visant au développement de la   culture des source » et des stratégies de   production, de vérification et de fiabilité des   informations dans et en dehors de la   classe.Modalités : Stage d'une durée totale de 10h   en   distanciel : 4h en synchrone (visio direct ou   différé en semaine en fin de journée) et 6h en   asynchrone entre décembre et juin.",
      duree: "6",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100122/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100126",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre: "Intelligence artificielle et EMI en classe",
      dispoCode: "25A0090128",
      dispoTitre: "EMI_06  @ ETAT DE LA RECHERCHE EN EMI",
      public:
          "Personnels d'enseignement et d'éducation (collège,   lycée général, technologique et professionnel).   Toutes les disciplines sont les bienvenues.",
      objectifs:
          "Actualiser ses connaissances en Éducation aux   médias et à l'Information en s'appuyant sur   l'état de la recherche afin de proposer des   séquences pédagogiques adaptées en classe.",
      contenu:
          "EDUCATION AUX MÉDIAS Ce cycle de webinaires donne la parole à des chercheurs et chercheuses en Sciences de l'Information et de la communication qui aborderont des thématiques actuelles vives en Éducation aux Médias et à l'Information   (intelligence artificielle et journalisme, débat public sur les fake news, propritété intellectuelle des images, économie de l'attention).   Ces webinaires constitueront un point de départ à la réalisation de séquences pédagogiques adaptées et pertinentes évitant ainsi les idées reçues et les phénomènes de panique morale.  Webinaire n°1 : Intelligence artificielle et EMI en classe  Webinaire d'1h30 en fin de mercredi après-midi",
      duree: "2",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100126/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100127",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre: "Débat public et lutte contre les fake news",
      dispoCode: "25A0090128",
      dispoTitre: "EMI_06  @ ETAT DE LA RECHERCHE EN EMI",
      public:
          "Personnels d'enseignement et d'éducation (collège,   lycée général, technologique et professionnel).   Toutes les disciplines sont les bienvenues.",
      objectifs:
          "Actualiser ses connaissances en Éducation aux   médias et à l'Information en s'appuyant sur l'état   de la recherche afin de proposer des séquences   pédagogiques adaptées en classe.",
      contenu:
          "EDUCATION AUX MÉDIAS Ce cycle de webinaires donne la parole à des chercheurs et chercheuses en Sciences de l'Information et de la communication qui aborderont des thématiques actuelles vives en Éducation aux Médias et à l'Information   (intelligence artificielle et journalisme, débat public sur les fake news, propritété intellectuelle des images, économie de l'attention).   Ces webinaires constitueront un point de départ à la réalisation de séquences pédagogiques adaptées et pertinentes évitant ainsi les idées reçues et les phénomènes de panique morale.  Webinaire n°2 : Qu'est-ce que la culture des sources3;? Comment la mettre en œuvre?  Webinaire d'1h30 en fin de mercredi après-midi",
      duree: "2",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100127/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100128",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre: "L'économie de l&#8217;attention: la connaître et s'en émanciper.",
      dispoCode: "25A0090128",
      dispoTitre: "EMI_06  @ ETAT DE LA RECHERCHE EN EMI",
      public:
          "Personnels d'enseignement et d'éducation (collège,   lycée général, technologique et professionnel).   Toutes les disciplines sont les bienvenues.",
      objectifs:
          "Actualiser ses connaissances en Éducation aux   médias et à l'Information en s'appuyant sur l'état   de la recherche afin de proposer   des séquences pédagogiques adaptées en classe.",
      contenu:
          "EDUCATION AUX MÉDIAS Ce cycle de webinaires donne la parole à des chercheurs et chercheuses en Sciences de l'Information et de la communication qui aborderont des thématiques actuelles vives en Éducation aux Médias et à l'Information   (intelligence artificielle et journalisme, débat public sur les fake news, propritété intellectuelle des images, économie de l'attention).   Ces webinaires constitueront un point de départ à la réalisation de séquences pédagogiques adaptées et pertinentes évitant ainsi les idées reçues et les phénomènes de panique morale.  Webinaire n°3 :L'économie de l'attention: la connaître et s'en émanciper.  Webinaire d'1h30 suivi de 30 minutes d'échanges le mercredi après-midi",
      duree: "2",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100128/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100129",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre: "Droit des images dans et en dehors de la classe",
      dispoCode: "25A0090128",
      dispoTitre: "EMI_06  @ ETAT DE LA RECHERCHE EN EMI",
      public:
          "Personnels d'enseignement et d'éducation (collège,   lycée général, technologique et professionnel).   Toutes les disciplines sont les bienvenues.",
      objectifs:
          "Actualiser ses connaissances en Éducation aux médias et à l'Information en s'appuyant sur l'état de la recherche afin de proposer des séquences pédagogiques adaptées en classe.",
      contenu:
          "EDUCATION AUX MÉDIAS Ce cycle de webinaires donne la parole à des chercheurs et chercheuses en Sciences de l'Information et de la communication qui aborderont des thématiques actuelles vives en Éducation aux Médias et à l'Information   (intelligence artificielle et journalisme, débat public sur les fake news, propritété intellectuelle des images, économie de l'attention).   Ces webinaires constitueront un point de départ à la réalisation de séquences pédagogiques adaptées et pertinentes évitant ainsi les idées reçues et les phénomènes de panique morale.  Webinaire n°4 : Discours médiatiques stéréotypés: quels mécanismes? Quels Impacts?  Webinaire d'1h30 suivi de 30 minutes d'échanges le mercredi après-midi",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100129/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102397",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre:
          "Comprendre les spécificités de la désinformation à caractère scientifique",
      dispoCode: "25A0091065",
      dispoTitre: "EMI_90 @ DESINFORMATION SCIENTIFIQUE",
      public: "Tout public enseignant du 2nd degré",
      objectifs:
          "Identifier les spécificités de la désinformation scientifique  Comprendre la construction de l'information à caractère scientifique et le fonctionnement de la démarche scientifique  Connaître des méthodes et outils pour vérifier l'information scientifique",
      contenu: "EDUCATION AUX MÉDIAS -",
      duree: "2",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102397/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102398",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre:
          "Les désordres de l'information : comment les aborder avec les élèves ?",
      dispoCode: "25A0091066",
      dispoTitre: "EMI_91 @ LES DESORDRES DE L'INFORMATION",
      public: "Enseignants Cycles 2, 3, 4",
      objectifs:
          "- Identifier les différents désordres de l'information et de les catégoriser  - Comprendre comment fonctionnent les mécanismes de vérification de l'information  - Découvrir comment mettre en place des séances autour de cette thématique dans votre classe",
      contenu: "EDUCATION AUX MÉDIAS -",
      duree: "5",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102398/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102399",
      plan: "ENS",
      theme: "EDUCATION AUX MEDIAS ET A L'INFORMATION",
      titre: "Défi podcast",
      dispoCode: "25A0091067",
      dispoTitre: "EMI_92 @ DEFI PODCAST",
      public: "Tout public",
      objectifs:
          "S'approprier les genres et les langages médiatiques radiophoniques  Savoir produire et diffuser une information en fonction du public visé, du support, des intentions de communication et de ses effets",
      contenu: "EDUCATION AUX MÉDIAS -",
      duree: "4",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102399/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101281",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "Développer les savoirs en EPS : l'EPS par les APSA : L'EPS par le demi fond  - Webinaire",
      dispoCode: "25A0090624",
      dispoTitre: "EPS_03 @ L'EPS PAR LES APSA - WEBINAIRES",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public : enseignants d'EPS  Webinaire de 2h en fin de journée (17h-19h)  Contenus :  Présentation d'une forme de pratique scolaire en   1/2 fond - niveau collège.  Extraction de la compétence visée.  Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  Exploitation de la fiche académique de   construction de FPS.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101281/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101282",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "Développer les savoirs en EPS : l'EPS par les APSA : L'EPS par la gymnastique - Webinaire",
      dispoCode: "25A0090624",
      dispoTitre: "EPS_03 @ L'EPS PAR LES APSA - WEBINAIRES",
      public: "Enseignant d'EPS de collège",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS de collège   volontaires  Webinaire de 2h en fin de journée (17h-19h).   Contenus :   Présentation d'une forme de pratique scolaire en   gymnastique en collège.  Extraction de la compétence visée.  Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  Exploitation de la fiche académique de   construction de FPS.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101282/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101284",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "L'EPS par la course d'orientation - classe ouverte",
      dispoCode: "25A0090626",
      dispoTitre: "EPS_04 @ L'EPS PAR LES APSA - ATELIERS DE PRATIQUE",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS volontaires  Contenus :   4h de formation hybride :  1h visio : explication du cadre académique et de   l'outil d'observation  2h : observation d'une classe de 4e en course   d'orientation  1h : retour sur l'observation - Extraction de la   compétence visée - analyse des éléments de la FPS   (règles, dispositif, médias utilisés, ...) au   regard des objectifs visés. Exploitation de la   fiche académique de construction de FPS.",
      duree: "4",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101284/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101288",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "Concevoir ses applications pour optimiser les apprentissages - A distance",
      dispoCode: "25A0090628",
      dispoTitre: "EPS_05 @ EPS ET GESTES PROFS - FOCALE NUMÉRIQUE",
      public:
          "Enseignant d'EPS désirant exploiter le numérique   dans le cadre de son enseignement",
      objectifs:
          "Apprendre à créer un outil numérique hors ligne ou   une application mobile capables de répondre à nos   réelles attentes",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignant d'EPS désirant exploiter   le numérique dans le cadre   de son enseignement.   Formation de 6h en Distanciel synchrone : 3x2h en   fin de journée (17h/19h).  Contenus :   Conception d'application pour évaluer ou   accompagner les élèves, pour faire collaborer les   élèves, échanges de pratiques et réflexion sur la   charge cognitive imposée par le numérique.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101288/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101384",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "Développer les savoirs en EPS : l'EPS par les APSA : L'EPS par le crosstraining en CA1 - Webinaire",
      dispoCode: "25A0090624",
      dispoTitre: "EPS_03 @ L'EPS PAR LES APSA - WEBINAIRES",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS volontaires  Webinaire de 2h en fin de journée (17h-19h).   Contenus :   Présentation d'une forme de pratique scolaire en   crosstraining.  Mise en évidence des éléments garantissant une   pratique en sécurité, une pratique authentique   (s'inscrivant dans le CA1) et une pratique pour   tous.  Extraction de la compétence visée.  Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  Exploitation de la fiche académique de   construction de FPS.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101384/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101385",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "L'EPS par les APSA : L'EPS par la natation : Enseigner le savoir nager au delà de l'ASNS - Webinaire",
      dispoCode: "25A0090624",
      dispoTitre: "EPS_03 @ L'EPS PAR LES APSA - WEBINAIRES",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  S'approprier les conditions permettant d'acquérir   les compétences du savoir nager sans récitation   de l'ASNS  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS volontaires  Webinaire de 2h en fin de journée (17h-19h).   Contenus :   Présentation d'une FPS en natation (cartanat)   visant à dépasser un enseignement formel de l'ASNS   au profit d'acquisition de réelles compétences de   nageur autonome.  Réflexions sur les conditions de mise en oeuvre   d'une compétence scolaire et utilisation de la   fiche académique de construction de compétence   scolaire.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101385/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101386",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "L'EPS par les APSA : L'EPS par l'escalade - Webinaire",
      dispoCode: "25A0090624",
      dispoTitre: "EPS_03 @ L'EPS PAR LES APSA - WEBINAIRES",
      public: "Enseignant d'EPS de collège",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS de collège   volontaires  Webinaire de 2h en fin de journée (17h-19h).   Contenus :   Présentation d'une forme de pratique scolaire en   escalade en collège.  Extraction de la compétence visée.  Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  Exploitation de la fiche académique de   construction de FPS.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101386/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101388",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "L'EPS par les APSA : L'EPS par l'ultimate - Webinaire",
      dispoCode: "25A0090624",
      dispoTitre: "EPS_03 @ L'EPS PAR LES APSA - WEBINAIRES",
      public: "Enseignant d'EPS de collège",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS de collège   volontaires  Webinaire de 2h en fin de journée (17h-19h).   Contenus :   Présentation d'une forme de pratique scolaire en   ultimate - niveau collège.  Extraction de la compétence visée.  Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  Exploitation de la fiche académique de   construction de FPS.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101388/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101396",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "L'EPS par le relais vitesse - atelier de pratique - samedi matin",
      dispoCode: "25A0090626",
      dispoTitre: "EPS_04 @ L'EPS PAR LES APSA - ATELIERS DE PRATIQUE",
      public: "Enseignant d'EPS de collège",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS de collège   volontaires  Contenus :   3h de présentiel : samedi matin   Présentation et expérimentation pratique d'une   forme de pratique scolaire en relais vitesse en   collège.  Extraction de la compétence visée.  Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  Exploitation de la fiche académique de   construction de FPS.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101396/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101399",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "L'EPS par les Arts du Cirque lycée et LP, 2 publics, 2 entrées",
      dispoCode: "25A0090626",
      dispoTitre: "EPS_04 @ L'EPS PAR LES APSA - ATELIERS DE PRATIQUE",
      public:
          "Professeurs d'EPS en LP et LGT  souhaitant enseigner   ou enseignant l'APSA Arts du Cirque. Ouvert aux   enseignants d'autres disciplines investis dans   l'EAC. Tenue adaptée à la pratique physique.   Condition physique minimale requise.",
      objectifs:
          "Les objectifs sont les suivants :  - proposer des productions artistiques référencées   servant de point d'appuis,   - partager des outils pour bousculer les   représentations et faire adhérer les élèves à   l'activité,   - structurer ses séances pour s'assurer que les   élèves vivent pleinement le CA3 et l'EAC  - identifier des procédés de composition moteurs   de la création  - préciser des contenus sécuritaires,   biomécaniques, techniques  - définir des propositions d'évaluation (principe   d'élaboration d'épreuve, déclinaison des AFLP ou   AFL, 4 degrés d'acquisitions, indicateurs, ...)  - aborder une réflexion inter-champ , notamment   en LP au service d'une éducation gestuelle et   posturale intégrant le module PRAP.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public : Professeurs d'EPS en LP et LGT   souhaitant enseigner ou enseignant l'APSA Arts du   Cirque. Ouvert aux enseignants d'autres   disciplines investis dans l'EAC. Tenue adaptée à   la pratique physique. Condition physique minimale   requise.  Contenus : durée 5h :   - 1h de visio mardi soir 18h/19h pour définir les   enjeux et le déroulement du stage, visionner des   extraits de productions artistiques servant de   points d'appuis,   - 4h de présentiel mercredi Apm :   Au regard d'une forte demande de formation dans   l'APSA Arts du Cirque, nous proposons une   formation à destination des professeurs de lycée   professionnel et lycée général et technologique.   2 publics pour 2 entrées différentes en co-  animation avec une entrée LP plutôt orientée   Industrie, Bâtiment et autres filières engageant   une sollicitation physique professionnelle.  Des pistes pour programmer, exploiter, et évaluer   une APSA aux représentations fortes, parfois   erronées.",
      duree: "5",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101399/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101403",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "L'EPS par l'escalade - atelier de pratique - samedi matin",
      dispoCode: "25A0090626",
      dispoTitre: "EPS_04 @ L'EPS PAR LES APSA - ATELIERS DE PRATIQUE",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS volontaires  Contenus :   3h de présentiel : samedi matin   1- Expérimentation d'une forme de pratique   scolaire en escalade (collège, lycée/Lp).  2- Extraction de la compétence visée.  3- Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  4- Exploitation de la fiche académique de   construction de FPS.  5- Thème Un SAVOIR PLANIFIER son itinéraire   couplé à un SAVOIR ACCEPTER des déséquilibres pour   VALORISER DES TRANSFERTS D'APPUIS.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101403/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101404",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "L'EPS par le badminton - Vacances",
      dispoCode: "25A0090626",
      dispoTitre: "EPS_04 @ L'EPS PAR LES APSA - ATELIERS DE PRATIQUE",
      public: "Enseignant d'EPS de collège",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   définition de compétence scolaire et d'élaboration   d'une FPS associée.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS de collège  Formation de 6h en présentiel 1 jour pendant les   vacances scolaires (1er lundi) : à définir  Contenus :   Pratique d'une FPS en badminton en classe de 6e et   en classe de 3e  Analyse de la FPS et extraction de la compétence   visée.  Analyse des éléments de la FPS (règles,   dispositif, médias utilisés, ...) au regard des   objectifs visés.  Modification de la FPS au regard des besoins de   mes élèves.  Exploitation de la fiche académique de   construction de FPS.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101404/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101422",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "Création et exploitation de cartes en Course d&#8217;Orientation - A distance",
      dispoCode: "25A0090628",
      dispoTitre: "EPS_05 @ EPS ET GESTES PROFS - FOCALE NUMÉRIQUE",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier les mécanismes et outils   professionnels amenant à utiliser les APSA comme   moyens de formation.  Identifier et mobiliser les leviers professionnels   permettant la définition, la mise en oeuvre et le   développement d'une compétence scolaire en EPS.  Mobiliser la fiche académique de démarche de   construction de compétence scolaire.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS  Webinaire Distanciel synchrone 2h en fin de   journée   (17h/19h)   Contenus :   Présentation d'une FPS en course d'orientation   associée à la prise en main d'un logiciel de   construction de cartes  Création de cartes pour une exploitation au sein   de son établissement  Réflexions sur les conditions de mise en oeuvre   d'une compétence scolaire et utilisation de la   fiche académique de construction de compétence   scolaire.",
      duree: "5",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101422/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101423",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "Construire des FPS accessibles à tous les élèves en EPS - A Distance",
      dispoCode: "25A0090667",
      dispoTitre: "EPS_06 @ EPS ET GESTES PROFS - FOCALE INCLUSION",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier les leviers mobilisables pour   construire des FPS accessibles à tous les élèves en   EPS  Prise de connaissance et utilisation de la fiche   outil fiche accessibilité",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP Webinaire de 2h en fin de journée (17h/19h)  Public cible : Enseignants d'EPS volontaires  Contenus :  Présentation d'une FPS et de la compétence visée.   Analyse de cette FPS afin d'extraire les principes   permettant de rendre le dispositif et les règles   de cette FPS plus inclusives.  Utilisation de la fiche outil accessibilité pour   identifier et s'approprier les leviers à mobiliser   en lien avec les problématiques des élèves afin de   se garantir de la résolution d'un même problème   par tous.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101423/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101424",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre:
          "Construire des outils pour rendre accessible les FPS dans son contexte d'enseignement - A Distance",
      dispoCode: "25A0090667",
      dispoTitre: "EPS_06 @ EPS ET GESTES PROFS - FOCALE INCLUSION",
      public: "Enseignant d'EPS",
      objectifs:
          "Construire des outils favorisant l'inclusion dans   son contexte d'enseignement.  Mettre en oeuvre des adaptations / compensations au   regard d'une compétence scolaire permettant de la   rendre accessible à chacun des élèves.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Public cible : Enseignants d'EPS volontaires  Distanciel synchrone 2h fin de journée (17h/19h).  Contenus :  Travail en amont de la formation : le stagiaire   devra préciser les besoins identifiés de ses   élèves et les transmettre au formateur via une   fiche outil.  Présentation d'une compétence scolaire et des   éléments d'une forme de pratique scolaire   associée.   Adaptation, modification de cette FPS par les   stagiaires au regard des problématiques inclusives   remontées en amont de la formation via   l'utilisation de la fiche outil accessibilité .",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101424/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101434",
      plan: "ENS",
      theme: "EDUCATION PHYSIQUE ET SPORTIVE",
      titre: "EPS et CPS - A Distance",
      dispoCode: "25A0090671",
      dispoTitre: "EPS_07 @ LES CPS - UNE APPROCHE INTEGREE EN EPS",
      public: "Enseignant d'EPS",
      objectifs:
          "S'approprier la notion de compétences psycho-  sociales et leurs mises en oeuvre en EPS",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP Webinaire de 2h en fin de journée (17h/19h)  Public cible : Enseignants d'EPS volontaires  Contenus :   - Initiation aux compétences psychosociales (selon   le référentiel Santé Publique France 2025)  - Envisager les liens entre EPS et développement   des CPS  - Propositions de formes de travail favorisant   l'exploration et le développement des CPS en EPS",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101434/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101571",
      plan: "ENS",
      theme: "ELEVES ALLOPHONES NOUVELLEMENT ARRIVES",
      titre: "x",
      dispoCode: "25A0090720",
      dispoTitre: "EANA05 @ FT - SCOLARISER LES EANA AU CLG",
      public: "x",
      objectifs: "x",
      contenu: "MAITRISE DE LA LANGUE x",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101571/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101572",
      plan: "ENS",
      theme: "ELEVES ALLOPHONES NOUVELLEMENT ARRIVES",
      titre: "x",
      dispoCode: "25A0090721",
      dispoTitre: "EANA06 @ FT - SCOLARISER LES EANA EN LYCEES",
      public: "x",
      objectifs: "x",
      contenu: "MAITRISE DE LA LANGUE x",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101572/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101573",
      plan: "ENS",
      theme: "ELEVES ALLOPHONES NOUVELLEMENT ARRIVES",
      titre: "Scolariser les EANA à l'école maternelle",
      dispoCode: "25A0090722",
      dispoTitre: "EANA07 - SCOLARISER EANA EN ECOLE MATERNELLE",
      public:
          "Enseignant-e-s de classe élémentaire qui            accueillent des EANA.",
      objectifs:
          "Mieux connaitre les spécificités des EANA pour   adapter sa pédagogie à ce public spécifique.",
      contenu:
          "MAITRISE DE LA LANGUE -Présentation des textes officiels. -  Renforcement des connaissances relatives au   public concerné. -  Analyse de stratégies facilitant l'inclusion des   EANA. -  Interculturel et plurilinguisme.  -  Présentation d'activités et de ressources pour   répondre aux besoins particuliers de ces élèves.",
      duree: "6",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101573/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101574",
      plan: "ENS",
      theme: "ELEVES ALLOPHONES NOUVELLEMENT ARRIVES",
      titre: "Scolariser les EANA à l'école élémentaire",
      dispoCode: "25A0090723",
      dispoTitre: "EANA08 @ FT - SCOLARISER EANA ECOLE ELEMENTAIRE",
      public:
          "Enseignant-e-s en classe élémentaire qui            accueillent des EANA dans leur classe.",
      objectifs:
          "Développer les connaissances relatives aux EANA   pour favoriser l'accueil et l'inclusion de ces   élèves en classe ordinaire.",
      contenu:
          "MAITRISE DE LA LANGUE -Présentation des textes officiels relatifs à la   scolarisation des EANA.    -Apport de connaissances relatives aux EANA.   -Présentation de stratégies d'aide pour favoriser   l'inclusion.   -Présentation de ressources pour enseigner le FLS.   -Présentation d'activités à mettre en œuvre en   classe ordinaire pour répondre aux besoins   particuliers des EANA.",
      duree: "6",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101574/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101575",
      plan: "ENS",
      theme: "ELEVES ALLOPHONES NOUVELLEMENT ARRIVES",
      titre: "Scolariser les EANA à l'école élémentaire",
      dispoCode: "25A0090723",
      dispoTitre: "EANA08 @ FT - SCOLARISER EANA ECOLE ELEMENTAIRE",
      public: "Enseignant-e-s dclasse élémentaire qui accueillent   des EANA.",
      objectifs: "Renforcer ses connaissances sur la scolarisation   des EANA.",
      contenu:
          "MAITRISE DE LA LANGUE M@gistere EANA: -  Présentation des textes officiels relatifs aux   EANA. -  Apports de connaissances sur le public concerné.   -Apport de connaissances sur l'accueil et   l'évaluation.",
      duree: "3",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101575/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101215",
      plan: "ENS",
      theme: "ENSEIGNEMENT SANTE ET SECURITE AU TRAVAIL",
      titre: "Formation préparant à la certification SST",
      dispoCode: "25A0090598",
      dispoTitre: "ESST02 - FORMATION SANTE SECURITE AU TRAVAIL PV",
      public: "Tout professeur du second degré souhaitant devenir SST",
      objectifs:
          "Maîtriser les compétences permettant de se situer en tant qu'acteur de prévention SST",
      contenu:
          "HYGIENE ET SECURITE Acquérir les compétences à la Certification SST",
      duree: "14",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101215/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101175",
      plan: "ENS",
      theme: "ENSEMBLE DES LANGUES VIVANTES",
      titre:
          "Inclusion et hétérogénéité : mobiliser tous les élèves en classe de LV",
      dispoCode: "25A0090576",
      dispoTitre: "LVI_02 @ MOBILISER TOUS LES ELEVES EN LV",
      public: "Professeurs de langues vivantes",
      objectifs:
          "Comprendre les différents profils d'élèves. Adapter sa pédagogie en conséquence.",
      contenu:
          "ANGLAIS Observer pour définir les besoins spécifiques des élèves. Lister les freins aux apprentissages, les hiérarchiser. Définir et construire des outils transférables dont l'élève a besoin afin de dépasser ses difficultés. Inscrire ce changement de posture dans une démarche collective (différents interlocuteurs et partenariats) afin de construire un parcours ambitieux pour tout élève. Découvrir des outils d'aménagement de la scolarité, la Conception Universelle des Apprentissages, sur les opérations de bas / haut niveau, les aides à la mémorisation. Quelle pédagogie mettre en avant en tant qu'enseignant de langues vivantes et quels gestes acquérir pour permettre à  tous de développer des compétences dans les différentes activités langagières ?",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101175/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101176",
      plan: "ENS",
      theme: "ENSEMBLE DES LANGUES VIVANTES",
      titre:
          "Inclusion et hétérogénéité : mobiliser tous les élèves en classe de langues vivantes - Distanciel asynchrone",
      dispoCode: "25A0090576",
      dispoTitre: "LVI_02 @ MOBILISER TOUS LES ELEVES EN LV",
      public: "Professeurs de langues vivantes",
      objectifs:
          "Comprendre les différents profils d'élèves. Adapter sa pédagogie en conséquence.",
      contenu:
          "ANGLAIS Observer pour définir les besoins spécifiques des élèves. Lister les freins aux apprentissages, les hiérarchiser. Définir et construire des outils transférables dont l'élève a besoin afin de dépasser ses difficultés. Inscrire ce changement de posture dans une démarche collective (différents interlocuteurs et partenariats) afin de construire un parcours ambitieux pour tout élève. Découvrir des outils d'aménagement de la scolarité, la Conception Universelle des Apprentissages, sur les opérations de bas / haut niveau, les aides à la mémorisation. Quelle pédagogie mettre en avant en tant qu'enseignant de langues vivantes et quels gestes acquérir pour permettre à tous de développer des compétences dans les différentes activités langagières ?",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101176/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101245",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre:
          "Conférence sur la poésie, mission impossible en cours d'espagnol?",
      dispoCode: "25A0090608",
      dispoTitre: "ESP_05 @ CONF. POUR PROFESSEURS D'ESPAGNOL",
      public: "Professeurs de collège et LGT",
      objectifs:
          "Conforter, enrichir et mettre à jour ses connaissances disciplinaires et ses compétences professionnelles grâce à une conférence d'expert sur le roman graphique dans l'aire hispanique.",
      contenu:
          "ESPAGNOL La poésie est un genre qui peut faire peur ou paraître rébarbatif, tant qu'aux élèves qu'à leur professeur. Elle peut être vue comme un art difficile d'accès réservé à une élite intellectuelle. Comment dépasser ces a priori, oser davantage l'analyse et la création poétique, au service de l'épanouissement de chacun, élèves comme professeurs, et de la réussite de tous les élèves, en collège comme en lycée ?  Afin de répondre à ces défis, Nuria Rodríguez Lázaro, professeure à l'université Bordeaux-Montaigne où elle dirige le département d'Études ibériques et ibéro-américaines, proposera un temps de formation qui alternera sensibilisation autour des spécificités de l'art poétique et de sa place dans les cultures hispaniques, apports théoriques, méthodologiques et travaux pratiques.  Nouveau contenu 2026",
      duree: "3",
      effectif: "80",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101245/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101246",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "Conférence sur le théâtre",
      dispoCode: "25A0090608",
      dispoTitre: "ESP_05 @ CONF. POUR PROFESSEURS D'ESPAGNOL",
      public: "Professeurs de collège et LGT",
      objectifs:
          "Conforter, enrichir et mettre à jour ses connaissances disciplinaires et ses compétences professionnelles grâce à une conférence d'expert sur le théâtre en espagnol",
      contenu:
          "ESPAGNOL Conférence autour du teatro breve de José Sanchis Sinisterra, dramaturge espagnol contemporain. La présentation et l'analyse de certains passages de l'auteur sera suivie d'un temps d'échange autour de ce qu'il est possible de faire en classe suite à l'étude de fragments de pièces de théâtre, en collège comme en lycée.",
      duree: "3",
      effectif: "80",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101246/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101247",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "Webinaire : travail maison et repaso",
      dispoCode: "25A0090609",
      dispoTitre: "ESP_06 @ FAIRE PROGRESSER TOUS LES ELEVES EN ESP.",
      public: "Professeurs d'espagnol",
      objectifs:
          "Conforter ses compétences professionnelles autour de la question suivante : comment   favoriser la progression de tous les élèves dans l'ensemble des activités langagières,   en tant que professeur d'espagnol, pour permettre à chacun d'exploiter au maximum ses   capacités ?   On abordera cette question sous 3 angles différents et complémentaires :  1) Articuler travail dans et hors la classe  2) Accompagner, sécuriser et renforcer la production orale et écrite de l'élève.  3) Mettre en œuvre des démarches de médiation, coopération et collaboration   efficientes.",
      contenu:
          "ESPAGNOL Apprendre une leçon : pourquoi et comment ? Quelles consignes de travail donner pour   favoriser la compréhension, la mémorisation, l'automatisation et le transfert des   connaissances et des compétences ? Quel lien avec la phase de retour aux acquis ? Quel   rôle et quelle forme donner au repaso ?  Ce module de formation sous forme d'un webinaire court proposera des pistes de travail et   de réflexion à travers notamment des exemples de démarches concrètes, déclinables en   collège et en lycée.",
      duree: "2",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101247/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101248",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "Webinaire : quelle(s) trace(s) du cours ?",
      dispoCode: "25A0090609",
      dispoTitre: "ESP_06 @ FAIRE PROGRESSER TOUS LES ELEVES EN ESP.",
      public: "Professeurs d'espagnol",
      objectifs:
          "Conforter ses compétences professionnelles autour   de la question suivante : comment favoriser la   progression de tous les élèves dans l'ensemble des   activités langagières, en tant que professeur   d'espagnol, pour permettre à chacun d'exploiter au   maximum ses capacités ?   On abordera cette question sous 3 angles   différents et complémentaires :  1) Articuler travail dans et hors la classe  2) Accompagner, sécuriser et renforcer la   production orale et écrite de l'élève.  3) Mettre en œuvre des démarches de médiation,   coopération et collaboration efficientes.",
      contenu:
          "ESPAGNOL Quelles traces garder du cours ? Écrites, orales ?   Partielles, complètes ? Pour quoi   faire ? Quelle contribution aux apprentissages et   aux progrès de tous les élèves ?    Ce module de formation combinera un parcours   M@gistère à suivre de façon autonome et un   webinaire court afin d'apporter des réponses à ces   questions et de présenter des   exemples de pratiques et de co-construire des   pistes de travail et de réflexion.",
      duree: "2",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101248/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101249",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "Webinaire : médiation, collaboration et coopération",
      dispoCode: "25A0090609",
      dispoTitre: "ESP_06 @ FAIRE PROGRESSER TOUS LES ELEVES EN ESP.",
      public: "Professeurs d'espagnol",
      objectifs:
          "Conforter ses compétences professionnelles autour   de la question suivante : comment favoriser la   progression de tous les élèves dans l'ensemble des   activités langagières, en tant que professeur   d'espagnol, pour permettre à chacun d'exploiter au   maximum ses capacités ?   On abordera cette question sous 2 angles   différents et complémentaires :    1) Accompagner, sécuriser et renforcer la   production orale et écrite de l'élève.  2) Mettre en œuvre des démarches de médiation,   coopération et collaboration efficientes.",
      contenu:
          "ESPAGNOL Coopérer et collaborer : comment et pour quoi   faire ? Quelle articulation entre le travail   individuel et le travail collectif ? Comment   permettre à tous les élèves de développer des   compétences de médiation ?  Ce module de formation combinera un parcours   M@gistère à suivre de façon autonome et deux   webinaires courts afin d'apporter des réponses à   ces questions, de présenter des exemples   de pratiques et de co-construire des pistes de   travail et de réflexion.",
      duree: "4",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101249/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101251",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "Parcours M@gistère médiation, collaboration et coopération",
      dispoCode: "25A0090609",
      dispoTitre: "ESP_06 @ FAIRE PROGRESSER TOUS LES ELEVES EN ESP.",
      public: "Professeurs d'espagnol",
      objectifs:
          "Conforter ses compétences professionnelles autour de la question suivante : comment favoriser la progression de tous les élèves dans l'ensemble des activités langagières, en tant que professeur d'espagnol, pour permettre à chacun d'exploiter au maximum ses capacités ?   On abordera cette question sous 2 angles différents et complémentaires :    1) Accompagner, sécuriser et renforcer la production orale et écrite de l'élève.  2) Mettre en œuvre des démarches de médiation, coopération et collaboration efficientes.",
      contenu:
          "ESPAGNOL Coopérer et collaborer : comment et pour quoi faire ? Quelle articulation entre le travail individuel et le travail collectif ? Comment permettre à tous les élèves de développer des compétences de médiation ?",
      duree: "1",
      effectif: "60",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101251/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101253",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "Webinaire : construire un projet de mobilité pour les élèves",
      dispoCode: "25A0090610",
      dispoTitre: "ESP_07 @ LE PROJET CULTUREL DU CLG AU LYCEE",
      public: "Professeurs d'espagnol en collège et en LGT",
      objectifs:
          "Conforter ses compétences professionnelles autour de la question suivante : comment privilégier   l'entrée culturelle à chaque étape des projets pédagogiques et éducatifs en tant que professeur   d'espagnol, pour favoriser la découverte de l'altérité, la réflexion et la formation de citoyens   éclairés ?   On abordera cette question sous l'angle de la construction d'un projet de mobilité à destination des   élèves.",
      contenu:
          "ESPAGNOL Comment construire un projet de mobilité internationale à destination des élèves ? Comment l'intégrer   à sa progression annuelle ? Ce module de formation combinera un parcours M@gistère à suivre de façon   autonome et un webinaire court afin d'apporter des réponses à ces questions et de présenter des   outils, des ressources et de co-construire des pistes de travail et de réflexion.",
      duree: "2",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101253/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101254",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "Jeux, défis et créativité",
      dispoCode: "25A0090612",
      dispoTitre: "ESP_08 @ JEUX, DEFIS ET CREATIVITE",
      public: "Professeurs d'espagnol en collège et en LGT",
      objectifs:
          "Conforter ses compétences professionnelles autour de la question suivante : comment favoriser la   progression de tous les élèves dans l'ensemble des activités langagières, en tant que professeur   d'espagnol, pour permettre à chacun d'exploiter au maximum ses capacités ?   On abordera cette question sous 5 angles différents et complémentaires :  Oser innover.  Développer l'entraide, la collaboration et l'émulation.  S'appuyer sur le jeu et le défi créatif comme leviers de motivation au service de la production de l'élève.",
      contenu:
          "ESPAGNOL Pourquoi et comment permettre aux élèves d'apprendre autrement ? Dans quelle mesure et à quelles   conditions le jeu ou le défi créatif constituent des leviers de motivation pour tous les élèves au   service de la production en espagnol ? Quelle contribution au développement de quelles compétences ?  Ce parcours de formation apportera des réponses à ces questions ainsi que des pistes de travail et   de réflexion à travers notamment des exemples de pratiques inspirantes déclinables en collège et en   lycée. Il se déclinera en 4 temps : une courte visio d'introduction, un parcours M@gistère à suivre   de façon autonome, une demi-journée de travail en présentiel, puis une visio pour un retour sur   pratiques quelques mois plus tard.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101254/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101255",
      plan: "ENS",
      theme: "ESPAGNOL",
      titre: "M@gistère jeux, défis et créativité",
      dispoCode: "25A0090612",
      dispoTitre: "ESP_08 @ JEUX, DEFIS ET CREATIVITE",
      public: "Professeurs d'espagnol en collège et en LGT",
      objectifs:
          "Conforter ses compétences professionnelles autour de la question suivante : comment favoriser la progression de tous les élèves dans l'ensemble des activités langagières, en tant que professeur d'espagnol, pour permettre à chacun d'exploiter au maximum ses capacités ?   On abordera cette question sous 5 angles différents et complémentaires :  Oser innover.  Développer l'entraide, la collaboration et l'émulation.  S'appuyer sur le jeu et le défi créatif comme leviers de motivation au service de la production de l'élève.",
      contenu:
          "ESPAGNOL Pourquoi et comment permettre aux élèves d'apprendre autrement ? Dans quelle mesure et à quelles conditions le jeu ou le défi créatif constituent des leviers de motivation pour tous les élèves au service de la production en espagnol ? Quelle contribution au développement de quelles compétences ?  Ce parcours de formation apportera des réponses à ces questions ainsi que des pistes de travail et de réflexion à travers notamment des exemples de pratiques inspirantes déclinables en collège et en lycée. Il se déclinera en 4 temps : une courte visio d'introduction, un parcours M@gistère à suivre de façon autonome, une demi-journée de travail en présentiel, puis une visio pour un retour sur pratiques quelques mois plus tard.",
      duree: "1",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101255/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100124",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Le jeu, un outil pédagogique",
      dispoCode: "25A0090126",
      dispoTitre: "EXER01 - LE JEU, OUTIL PEDAGOGIQUE",
      public:
          "Enseignants 2nd degré, documentalistes, CPE désireux de découvrir l'approche ludique dans l'enseignement.",
      objectifs:
          "Après un bref apport théorique sur les spécificités du jeu (règles claires, défis, gains, mise en scène) nous manipulerons rapidement des jeux simple à concevoir. Nous verrons ensemble comment leurs caractéristiques peuvent être transposées dans des finalités pédagogiques.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Pourquoi est-on plus motivé quand on joue ? Comment intégrer le jeu à sa pédagogie ? Nous apprendrons à utiliser le jeu ou ses ressorts motivationnels pour répondre aux besoins des élèves : apprendre, communiquer, se sociabiliser et mémoriser.  2x3h un mercredi après-midi (Lille) - Philippe Turbelin et David Lannoote",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100124/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100138",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Initiation aux CPS : Que sont les CPS ? Quel est leur intérêt pour l'enseignant ? Pour l'élève ? Comment les développer ?",
      dispoCode: "25A0090134",
      dispoTitre: "EXER03 - DEVELOPER LES CPS",
      public:
          "Tout public enseignant 1er et 2nd degré &#8211; inter-catégoriel possible",
      objectifs:
          "- Savoir ce que sont les compétences psychosociales et comment elles sont classées  - Comprendre leur utilité pour l'enseignant et pour les élèves  - Connaitre la demande institutionnelle  - Avoir quelques pistes pour les développer en classe",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT La formation est un kit de démarrage dans les compétences psychosociales.   Il s'agira de découvrir les différents types de compétences psychosociales et la demande institutionnelle de leur développement en classe. Pour la comprendre, il sera utile de savoir ce qu'apportent les CPS au bien-être et à la réussite, tant des élèves que des enseignants. Enfin le webinaire présentera les deux formes de développement des CPS au sein d'une classe avec des exemples concrets. Des ressources complémentaires seront apportées pour compléter et prolonger la réflexion et la mise en pratique.  Webinaire d'1h30 en fin de journée  Formatrice : Valérie Beaumont",
      duree: "2",
      effectif: "70",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100138/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100404",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Comment mettre réellement tous les élèves au travail en classe?",
      dispoCode: "25A0090244",
      dispoTitre: "EXER04 @@ METTRE TOUS LES ELEVES AU TRAVAIL",
      public: "Enseignants du 2nd degré",
      objectifs:
          "La différenciation pédagogique / La coopération entre élèves / Un exemple de dispositif: le plan de travail / Le zoom sur les élèves en décrochage scolaire: Redonner du sens aux apprentissages",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Qui parmi mes élèves a vraiment travaillé aujourd'hui et appris quelque chose à la fin du cours? Entre les décrocheurs, les attentistes et ceux qui ne parlent jamais, comment s'assurer que tous se sont engagés dans les activités proposées? Cette formation abordera la mise en place de la différenciation pédagogique et de la coopération entre élèves et présentera un dispositif favorisant l'engagement des élèves: le plan de travail. Et les décrocheurs dans tout ça? Comment travailler avec les empêchés d'apprendre ? Comment redonner du sens dans les apprentissages pour tous les élèves ?  Déroulé:   à définir  Formateurs : Aline Chudy, Stéphane Salama, Sophie Nilson, Aurélien Prévost",
      duree: "10",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100404/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100405",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Mettre tous les élèves au travail - dist",
      dispoCode: "25A0090244",
      dispoTitre: "EXER04 @@ METTRE TOUS LES ELEVES AU TRAVAIL",
      public: "Enseignants du 2nd degré",
      objectifs:
          "La différenciation pédagogique / La coopération entre élèves / Un exemple de dispositif: le plan de travail / Le zoom sur les élèves en décrochage scolaire: Redonner du sens aux apprentissages",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Qui parmi mes élèves a vraiment travaillé aujourd'hui et appris quelque chose à la fin du cours? Entre les décrocheurs, les attentistes et ceux qui ne parlent jamais, comment s'assurer que tous se sont engagés dans les activités proposées? Cette formation abordera la mise en place de la différenciation pédagogique et de la coopération entre élèves et présentera un dispositif favorisant l'engagement des élèves: le plan de travail. Et les décrocheurs dans tout ça? Comment travailler avec les empêchés d'apprendre ? Comment redonner du sens dans les apprentissages pour tous les élèves ?  Déroulé:   ...",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100405/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100406",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Enseigner avec les neurosciences",
      dispoCode: "25A0090245",
      dispoTitre: "EXER05 - ENSEIGNER AVEC LES NEUROSCIENCES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Interroger les sciences cognitives sur les problèmes pédagogiques que rencontrent les enseignants en termes d'attention, de mémorisation, de compréhension et de motivation des élèves.  Apporter des réponses scientifiques et issues des pratiques de classe  S'engager dans la pratique d'un outil, d'une pratique et en mesurer les effets sur les élèves",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Découvrez comment les neurosciences peuvent transformer votre pédagogie ! Cette formation vous dévoilera les secrets du cerveau et des applications concrètes en classe. Vous apprendrez à mieux connaitre le fonctionnement cognitif de vos élèves, à adapter vos méthodes d'enseignement, et vous découvrirez des outils simples et faciles à appliquer en classe. L'attention, la mémorisation, le feedback et l'engagement actif n'auront plus de secrets pour vous !  Modalités : 2h en visio un mercredi après-midi + 2x3h en présentiel des mercredis après midi (lieu à confirmer)",
      duree: "8",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100406/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100537",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Je ne reconnais plus mes élèves : le malaise des ados",
      dispoCode: "25A0090284",
      dispoTitre: "EXER06 @ JE NE RECONNAIS PLUS MES ELEVES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "- Chiffres/signaux alerte : données (ONDRP/INJEP), signaux (comportement, repli, agressivité, absentéisme), vidéo expert.  - facteurs (sociaux, crise), exemples concrets à partir d'un questionnaire préalablement distribué aux participants ; témoignage sur la base du volontariat.   - Solutions envisagées par le protagonistes et pistes de réflexion collectives. Présentation de l'écoute active, la communication non violente, les compétences psycho-sociales. Rappel des ressources internes/externes,   - Conclusion/plan post-formation. Plan travail post-formation : lecture (article, livre), observation (grille), réflexion, expérimentation, partage équipe, formations/ressources (webinaires, sites), réseau soutien (groupes, mentorat).  Formation de sensibilisation, qui donne des clés de compréhension, 1ères actions et pistes développement.  Formatrices: Frédérique Bayart et Laure Petit",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Développer des stratégies de repérage des élèves en difficulté, élaborer collectivement des solutions en s'appuyant notamment sur les compétences psycho-sociales, favoriser un climat scolaire positif, prévenir la violence, accompagner les élèves vers un mieux-être.",
      duree: "1",
      effectif: "90",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100537/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100540",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Favoriser un climat de classe motivant et plus serein",
      dispoCode: "25A0090287",
      dispoTitre: "EXER07 @@ CLIMAT DE CLASSE + MOTIVANT ET SEREIN",
      public: "enseignants, CPE, AED, AESH",
      objectifs:
          "Créer un climat de classe propice au travail et au bien être des élèves et des enseignants",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT il s'agira de développer les compétences et les postures pédagogiques qui favorisent un climat de classe serein et propice au travail et au bien être des élèves et des enseignants. On abordera donc les principes de la discipline positive pour créer un climat de confiance. Pour compléter, on verra les principes de la communication non violente qui permettront d'avoir des outils pour faciliter le relationnel. Et enfin, on développera les piliers de la motivation propices à l'engagement des élèves dans le travail.  Modalités : 4 webinaires de 2h - formatrices: Marie Landi - Valérie Beaumont - Aline Chudy",
      duree: "8",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100540/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100547",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Evaluation positive et efficace - synchrone",
      dispoCode: "25A0090292",
      dispoTitre: "EXER08 @@ EVALUATION POSITIVE  EFFICACE",
      public: "enseignants 2D",
      objectifs:
          "Créer un climat de classe propice au travail et au bien être des élèves et des enseignants",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Comment l'évaluation peut être un outil de motivation pour les élèves et les faire progresser ? Nous verrons les pratiques, méthodes et outils qui motivent l'élève, évaluent ses progrès et prennent en compte l'hétérogénéité dans les classes. Évaluation formative et formatrice, droit à l'erreur, droit de refaire, évaluation par contrat de confiance, évaluation par ceintures.  Modalités: 1 webinaire de 2h en fin d'après-midi / 1 présentiel de 3h pour porter un regard sur la posture de l'enseignant et expérimenter des outils au service de l'évaluation positive. /2h asynchrone sur Magistère Formatrices : Marie Landi, Delphine Hude",
      duree: "5",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100547/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100548",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "L'autonomie, cela s'apprend :  quand et comment ?",
      dispoCode: "25A0090293",
      dispoTitre: "EXER09 @ AUTONOMIE ET APPRENTISSAGE",
      public:
          "Ce stage est destiné à tout public et tout particulièrement les entrants dans le métier : néo-contractuels, contractuels, néo-titulaires, enseignants titularisés depuis quelques années",
      objectifs:
          "La formation alternera entre théories et pratiques afin, que par une analyse réflexive de pratique, chacun puisse dégager les leviers à confirmer ou à exploiter.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Meirieu explique que « « On n'est pas autonome parce qu'on est livré à soi-même ; on devient autonome parce qu'on a appris à choisir dans un cadre exigeant. »  Comment ? Nous aborderons les différents axes tels que   Quelles postures, quels gestes professionnels, quelles activités...sont propices au développement de l'autonomie ? Quand et comment faut-il instaurer un cadre exigeant et bienveillant propice au climat de classe et aux apprentissages ?   En quoi est-ce un levier de motivation ? ...  Modalités : h asynchrone à distance (module B)/1 présentiel de 3h / 2 visios de 2h  Formatrice : Aline chudy",
      duree: "7",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100548/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100549",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Outils de bien-être au service des enseignants et de leurs élèves",
      dispoCode: "25A0090294",
      dispoTitre: "EXER10 - OUTILS DE BIEN-ETRE",
      public: "Enseignants 2nd degré",
      objectifs:
          "Identifier sa posture d'enseignant et de celles des élèves. Révéler ses ressources et les mobiliser.  Savoir prendre soin de soi et de ses élèves. Développer l'estime de soi  Savoir s'adapter afin de favoriser un climat scolaire constructif. Favoriser l'esprit d'équipe et le travail collaboratif.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Pratiquer des exercices simples de relaxation et de respiration inspirés de la sophrologie et d'outils de coaching. Identifier sa posture.  / Développer sa qualité de présence aux élèves pour développer leur qualité de présence au cours. / Découvrir les postures de l'enseignant et celles des élèves. S'adapter et aussi se ménager. / Développer l'estime de soi, d'abord chez soi afin de pouvoir le transposer chez les élèves.  Modalités : 2x3h mercredi pm ou 1x6h vacances   Formatrice : Cindy Sede",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100549/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100552",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Repenser l'approche du travail personnel de l'élève avec les nouveaux usages de l&#8217;IA",
      dispoCode: "25A0090296",
      dispoTitre: "EXER12 - IA & TRAVAIL PERSONNEL DE L'ELEVE",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Comment repenser le travail hors la classe à l'ère de l'IA ? Nous verrons comment les IA génératives (chat GPT) peuvent vraiment aider les élèves et comment nous pouvons leur apprendre à l'utiliser pour mieux apprendre. Et peut-être contribuer à réduire les inégalités scolaires.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Nous verrons les possibilités et les limites de l'IA pour répondre à la charge de travail des élèves et surtout comment ils peuvent s'en servir intelligemment et pour progresser. Comment l'IA peut les aider à comprendre leurs devoirs et ainsi leur faire acquérir la méthodologie qui leur manque. Comment elle peut les faire réviser et préparer les évaluations. Quelques exemples d'applications transférables à toutes disciplines seront montrés et testés. Formatrice : Marie Landi",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100552/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100570",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Aller vers l'évaluation positive et l'évaluation par contrat de confiance",
      dispoCode: "25A0090307",
      dispoTitre: "EXER13 @ EVAL. POSITIVE PAR CONTRAT DE CONFIANCE",
      public:
          "Ce stage est destiné à tout public et tout   particulièrement les entrants dans le métier : néo-  contractuels, contractuels, néo-titulaires,   enseignants titularisés depuis quelques années",
      objectifs:
          "- Mesurer, noter, évaluer : une question de point   de vue  - Pourquoi évaluer ?   - Quelles évaluations pour quels résultats ?  - Quelles évaluation pour quels élèves ?  - Comment mettre en place une évaluaion qui   favorise des échanges entre parents et eseignants   ?  - Comment une évaluation destinée à mieux   accompagner les élèves peut-elle prendre en compte   les contraintes   professionnelles des enseignants et le cadre   institutionnel ?",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Travail en équipe autour de l'évaluation positive  Mise en œuvre dans les classes de l'évaluation du   contrat de confiance qui permet de s'affranchir de   la constante   macabre. formateurs : Aurélien Prévost - Sophie   Nilson",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100570/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100800",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Favoriser un climat de classe motivant et plus serein - distanciel",
      dispoCode: "25A0090287",
      dispoTitre: "EXER07 @@ CLIMAT DE CLASSE + MOTIVANT ET SEREIN",
      public: "enseignants, CPE, AED, AESH",
      objectifs:
          "Créer un climat de classe propice au travail et au bien être des élèves et des enseignants",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT il s'agira de développer les compétences et les postures pédagogiques qui favorisent un climat de classe serein et propice au travail et au bien être des élèves et des enseignants. On abordera donc les principes de la discipline positive pour créer un climat de confiance. Pour compléter, on verra les principes de la communication non violente qui permettront d'avoir des outils pour faciliter le relationnel. Et enfin, on développera les piliers de la motivation propices à l'engagement des élèves dans le travail.  Modalités : 4 webinaires de 2h - formatrices: Marie Landi - Valérie Beaumont - Aline Chudy",
      duree: "2",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100800/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101053",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Evaluation positive et efficace - asynchrone",
      dispoCode: "25A0090292",
      dispoTitre: "EXER08 @@ EVALUATION POSITIVE  EFFICACE",
      public: "enseignants 2D",
      objectifs:
          "Créer un climat de classe propice au travail et au bien être des élèves et des enseignants",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Comment l'évaluation peut être un outil de motivation pour les élèves et les faire progresser ? Nous verrons les pratiques, méthodes et outils qui motivent l'élève, évaluent ses progrès et prennent en compte l'hétérogénéité dans les classes. Évaluation formative et formatrice, droit à l'erreur, droit de refaire, évaluation par contrat de confiance, évaluation par ceintures.  Module distanciel asynchrone : 2h  Formatrices : Marie Landi, Delphine Hude",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101053/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101119",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Comment utiliser sa voix?",
      dispoCode: "25A0090547",
      dispoTitre: "EXER14 - COMMENT UTILISER SA VOIX ?",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Travail individuel et collectif de mise en situation corporelle et vocale. Exercices favorisant la conscience corporelle basés sur la respiration, la posture, les appuis, la verticalité, l'ouverture, la fluidité, le mouvement dans l'espace",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Travailler sur la prise de parole et le silence. Aider les élèves à prendre conscience de leur présence aux autres et à eux-mêmes par une attention à la voix, au corps et à l'émotion.   Modalités: 6h en août 2026 au collège Le Triolo à Villeneuve D'Ascq - Nathalie Gosset",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101119/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101155",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "L'autonomie, cela s'apprend :  quand et comment ? - asynchrone",
      dispoCode: "25A0090293",
      dispoTitre: "EXER09 @ AUTONOMIE ET APPRENTISSAGE",
      public:
          "Ce stage est destiné à tout public et tout particulièrement les entrants dans le métier : néo-contractuels, contractuels, néo-titulaires, enseignants titularisés depuis quelques années",
      objectifs:
          "La formation alternera entre théories et pratiques afin, que par une analyse réflexive de pratique, chacun puisse dégager les leviers à confirmer ou à exploiter.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Meirieu explique que « « On n'est pas autonome parce qu'on est livré à soi-même ; on devient autonome parce qu'on a appris à choisir dans un cadre exigeant. »  Comment ? Nous aborderons les différents axes tels que   Quelles postures, quels gestes professionnels, quelles activités...sont propices au développement de l'autonomie ? Quand et comment faut-il instaurer un cadre exigeant et bienveillant propice au climat de classe et aux apprentissages ?   En quoi est-ce un levier de motivation ? ...  Module asynchrone : 3h  Formatrice : Aline chudy",
      duree: "33",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101155/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101157",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Travailler les CPS de manière expérientielle ou intégrée afin de répondre aux attentes du socle.",
      dispoCode: "25A0090134",
      dispoTitre: "EXER03 - DEVELOPER LES CPS",
      public:
          "Tout public enseignant 1er et 2nd degré &#8211; inter-catégoriel possible",
      objectifs:
          "Les compétences psychosociales sont une priorité nationale pour la génération 2022-2037.   Il convient de les aborder de manière expérientielle formelle ou de manière intégrée formelle ou informelle.   Toutes ces notions seront explicitées. Des exemples concrets et des mises en situation permettront aux enseignants de les intégrer dans leurs pratiques.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT 1- Présentiel qui rappellera le cadre du référentiel de Santé Publique France ( mars 2025) et le socle commun ( avril 2025) et les différentes modalités pour faire vivre les CPS (les mobiliser ou les travailler).   Une présentation et expérimentation de CPS cognitives afin que les collègues puissent l'expérimenter.   2- webinaire de 1h30 avec un retour d'expériences et une présentation d'une CPS émotionnelle afin que les collègues puissent l'expérimenter.   3- webinaire de 1h 30 avec un retour d'expériences et une présentation d'une CPS sociale afin que les collègues puissent l'expérimenter.   4- Temps en présentiel (3h) : bilan des CPS mobilisées de manière intégrée ( formelle ou informelle) puis 3 ateliers sur chaque des catégories de manière expérientielle.  Formatrice Aline Chudy",
      duree: "9",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101157/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101691",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Aller vers l'évaluation positive et l'évaluation par contrat de confiance - Podcast à distance",
      dispoCode: "25A0090307",
      dispoTitre: "EXER13 @ EVAL. POSITIVE PAR CONTRAT DE CONFIANCE",
      public:
          "Ce stage est destiné à tout public et tout   particulièrement les entrants dans le métier : néo-  contractuels, contractuels, néo-titulaires,   enseignants titularisés depuis quelques années",
      objectifs:
          "- Mesurer, noter, évaluer : une question de point   de vue  - Pourquoi évaluer ?   - Quelles évaluations pour quels résultats ?  - Quelles évaluation pour quels élèves ?  - Comment mettre en place une évaluaion qui   favorise des échanges entre parents et eseignants   ?  - Comment une évaluation destinée à mieux   accompagner les élèves peut-elle prendre en compte   les contraintes   professionnelles des enseignants et le cadre   institutionnel ?",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Travail en équipe autour de l'évaluation positive  Mise en œuvre dans les classes de l'évaluation du   contrat de confiance qui permet de s'affranchir de la constante   macabre. formateurs : Aurélien Prévost - Sophie   Nilson",
      duree: "1",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101691/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101709",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Développer l'agentivité des élèves pour leur permettre de se remotiver pour les apprentissages",
      dispoCode: "25A0090787",
      dispoTitre: "EXER15 @ AGENTIVITE / REMOTIVATION",
      public: "enseignant 2D",
      objectifs:
          "- Développer l'attention chez les élèves  - Amener les élèves à mieux connaître les ressources dont elles/ils disposent pour apprendre  - Développer des outils permettant aux élèves de se situer dans les apprentissages  - Faire conscientiser aux élèves l'articulation entre cognition et émotion  - Évaluer et s'autoévaluer et co-construire avec les élèves les critères de réussite  - Pratiquer la réflexivité avec ses élèves  - Coopérer pour aider à la gestion de l'hétérogénéité  - Développer des outils pour mémoriser et faciliter le transfert de ce qui a été compris en classe",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT - Comment être capable d'agir dans le monde et sur le monde ?   - Comment être soi, avec d'autres ?  - Comment comprendre le monde à travers ce qui est vécu et enseigné en classe ?   - Comment l'objectif de l'école peut-il devenir l'empowerment des individus, l'accroissement de leur capacité à agir ? formateurs : Aurélien Prévost - Sophie Nilson",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101709/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101710",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Développer l'agentivité des élèves pour leur permettre de se remotiver pour les apprentissages - Podcast à distance",
      dispoCode: "25A0090787",
      dispoTitre: "EXER15 @ AGENTIVITE / REMOTIVATION",
      public: "enseignants 2D",
      objectifs:
          "- Développer l'attention chez les élèves  - Amener les élèves à mieux connaître les ressources dont elles/ils disposent pour apprendre  - Développer des outils permettant aux élèves de se situer dans les apprentissages  - Faire conscientiser aux élèves l'articulation entre cognition et émotion  - Évaluer et s'autoévaluer et co-construire avec les élèves les critères de réussite  - Pratiquer la réflexivité avec ses élèves  - Coopérer pour aider à la gestion de l'hétérogénéité  - Développer des outils pour mémoriser et faciliter le transfert de ce qui a été compris en classe",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT - Comment être capable d'agir dans le monde et sur le monde ?   - Comment être soi, avec d'autres ?  - Comment comprendre le monde à travers ce qui est vécu et enseigné en classe ?   - Comment l'objectif de l'école peut-il devenir l'empowerment des individus, l'accroissement de leur capacité à agir ?  formateurs : Aurélien Prévost - Sophie Nilson",
      duree: "1",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101710/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102401",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Connaître des pédagogies actives pour engager les élèves dans les apprentissages",
      dispoCode: "25A0091069",
      dispoTitre: "EXER91 @ PEDAGOGIES ACTIVES",
      public: "Enseignants 2nd degré",
      objectifs:
          "Identifier les liens entre les pédagogies actives et la motivation des élèves  Identifier des pratiques pédagogiques favorisant l'engagement et la motivation  Concevoir et expérimenter des dispositifs pédagogiques intégrant ces pratiques dans son contexte d'enseignement  Développer sa pratique professionnelle en s'appuyant sur les échanges entre pairs",
      contenu: "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT -",
      duree: "6",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102401/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102402",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Consolidation et Feedback",
      dispoCode: "25A0091070",
      dispoTitre: "EXER92 @ CONSOLIDATION ET FEEDBACK",
      public: "Enseignants 2nd degré",
      objectifs:
          "Identifier les principes fondamentaux de la consolidation et des feedback  Connaître des outils numériques et non numériques issues des sciences cognitives pour améliorer la mémorisation et les feedback  Construire une séquence pédagogique intégrant l'IA pour la consolidation et le feedback",
      contenu: "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT -",
      duree: "6",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102402/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102403",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Employer les jeux vidéos pour renforcer les neurosciences cognitives",
      dispoCode: "25A0091071",
      dispoTitre: "EXER90 @ JEUX VIDEOS ET CPS",
      public: "Enseignants et personnels d'éducation 2nd degré",
      objectifs:
          "Manipuler des jeux vidéos pour renforcer la mémorisation, les stratégies, l'attention...  Décrire des procédures cognitives pour accompagner la réalisation des situations de jeu  Mettre en pratique les principes de collaboration et de tutorat pour favoriser la compréhension des procédures mentales efficientes",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Cette formation propose d'aborder les principes neuro-scienctifiques cognitifs par le biais des jeux vidéos. Elle permettra d'expérimenter ces outils, de comprendre leurs enjeux et les fonctionnalités pour les intégrer dans un environnement scolaire. Le travail sur les jeux vidéos est également un média pour analyser ses procédures et ses fonctionnements afin de les faire évoluer positivement.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102403/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102405",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre: "Escape game pédagogique",
      dispoCode: "25A0091072",
      dispoTitre: "EXER93 - ESCAPE GAME PEDAGOGIQUE",
      public: "Enseignants et personnels d'éducation 2nd degré",
      objectifs:
          "Expérimenter des escape games pédagogiques  Identifier les grands principes d'un escape game pédagogique et les stratégies coopératives mises en œuvre  Connaître les outils d'aide à la conception",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Cette formation permet aux équipes pédagogiques de connaître la méthodologie de conception des jeux d'évasion (escape game) et d'en comprendre la plus-value pédagogique. Apports théoriques sur la ludopédagogie et l'escape game dans les apprentissages. Test de différents escape games pédagogiques. Découverte de différents outils de création d'un escape game pédagogique.",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102405/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102536",
      plan: "ENS",
      theme: "EXERCER SON MÉTIER D'ENSEIGNANT",
      titre:
          "Les piliers de l'apprentissage : focus sur consolidation et feedback",
      dispoCode: "25A0091113",
      dispoTitre: "EXER93 - APPRENTISSAGE : CONSOLIDATION ET FEEDBACK",
      public: "&#8239;Toutes disciplines, tous les niveaux",
      objectifs:
          "Comprendre les concepts et les enjeux autour des axes de la consolidation et du feedback.   Expérimenter des outils, des dispositifs pour en comprendre les enjeux. Développer sa pratique professionnelle en s'appuyant sur les échanges entre pairs.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Lors de cette formation les concepts de consolidation de de feedback seront clarifiés en lien avec les sciences cognitives. Les enseignants découvriront des outils numériques qu'ils pourront prendre en main lors de la formation pour pouvoir les expérimenter en classe en fonction des besoins identifiés pour aider les élèves à apprendre.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102536/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102580",
      plan: "ENS",
      theme: "GENIE CIVIL EN LYCEE PROFESSIONNEL",
      titre: "Le BIM en énergétique",
      dispoCode: "25A0091130",
      dispoTitre: "GCLP01 - LE BIM EN ENERGETIQUE",
      public: "Professeurs de la filière énergétique.",
      objectifs: "Acquérir des compétences techniques en BIM",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Réaliser des activités pratiques sur les thématiques BIM ppur organiser la certification",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102580/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102581",
      plan: "ENS",
      theme: "GENIE CIVIL EN LYCEE PROFESSIONNEL",
      titre: "La manipulation des fluides frigorigènes",
      dispoCode: "25A0091131",
      dispoTitre: "GCLP03 - MANIPULATION FLUIDES FRIGORIGENES",
      public: "Professeurs de la filière énergétique.",
      objectifs:
          "Acquérir des compétences techniques en manipulation des fluides frigorigènes",
      contenu:
          "ENERGETIQUE, CLIMATISATION, CHAUFFAGE Acquérir des compétences techniques en manipulation des fluides frigorigènes",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102581/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102582",
      plan: "ENS",
      theme: "GENIE CIVIL EN LYCEE PROFESSIONNEL",
      titre: "La manipulation des fluides frigorigènes",
      dispoCode: "25A0091132",
      dispoTitre: "GCLP04 - A LA DECOUVERTE INSTALLATION AU CO2",
      public: "Professeurs de la filière énergétique.",
      objectifs:
          "Acquérir des compétences techniques :  installation énergétique au CO2",
      contenu:
          "ENERGETIQUE, CLIMATISATION, CHAUFFAGE Découvrir et réaliser des activités pratiques sur une  installation au CO2",
      duree: "3",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102582/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102535",
      plan: "ENS",
      theme: "GENIE INDUSTRIEL EN LP",
      titre:
          "Génie industriel textiles et cuirs - Former et évaluer par compétences",
      dispoCode: "25A0091112",
      dispoTitre: "GILP01 - GI TEXTILES ET CUIRS EVAL PAR COMPETENCES",
      public: "Enseignants en Génie industriel textiles et cuirs",
      objectifs:
          "Ce module a pour objectif d'accompagner les enseignants en génie industriel des textiles et cuirs dans la mise en œuvre didactique du nouveau référentiel de couture et confection. Il s'inscrit dans une démarche de formation continue et fait suite aux journées de présentation du nouveau référentiel, permettant ainsi une appropriation progressive et une application efficace des nouvelles orientations pédagogiques.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Co-construire avec les enseignants les méthodes nécessaires pour structurer une progression pédagogique cohérente et concevoir une échelle de compétences adaptée aux différents cycles d'apprentissage.     Objectifs spécifiques :     - Comprendre les principes fondamentaux de la progression pédagogique et de l'évaluation des compétences.  - Apprendre à structurer un parcours d'apprentissage progressif et adapté aux besoins des apprenants.  - Définir des niveaux de compétences et des critères d'évaluation pertinents.  - Intégrer des outils de suivi de compétences - Pronote.",
      duree: "9",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102535/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102541",
      plan: "ENS",
      theme: "GENIE INDUSTRIEL EN LP",
      titre: "Maintenance des véhicules - Former et évaluer par compétences",
      dispoCode: "25A0091116",
      dispoTitre: "GILP02 - MAINTENANCE VEHICULE-EVAL.PAR COMPETENCES",
      public: "Enseignants en Maintenance des véhicules",
      objectifs:
          "Ce module a pour objectif d'accompagner les enseignants en génie mmécanique maintenance des véhicules dans la mise en œuvre didactique du nouveau référentiel . Il s'inscrit dans une démarche de formation continue et fait suite aux journées de présentation du nouveau référentiel, permettant ainsi une appropriation progressive et une application efficace des nouvelles orientations pédagogiques.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Co-construire avec les enseignants les méthodes nécessaires pour structurer une progression pédagogique cohérente et concevoir une échelle de compétences adaptée aux différents cycles d'apprentissage.     Objectifs spécifiques :     - Comprendre les principes fondamentaux de la progression pédagogique et de l'évaluation des compétences.  - Apprendre à structurer un parcours d'apprentissage progressif et adapté aux besoins des apprenants.  - Définir des niveaux de compétences et des critères d'évaluation pertinents.  - Intégrer des outils de suivi de compétences - Pronote.",
      duree: "8",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102541/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102564",
      plan: "ENS",
      theme: "GENIE MECANIQUE EN LP",
      titre: "Maintenance industrielle - Former et évaluer par compétences",
      dispoCode: "25A0091123",
      dispoTitre: "GMLP01 - MAINTENANCE INDUS - EVAL PAR COMPETENCES",
      public: "Enseignants GMLP - Maintenance industrielle",
      objectifs:
          "Le suivi d'acquisition des compétences  la construction d'une séance  L'évaluation par compétences et la construction d'une épreuve certificative  Cpro: un outil numérique de  suivi d'acquisition des compétences",
      contenu:
          "DIDACTIQUE ET PEDAGOGIE Découvrir et réaliser des activités pratiques sur une  installation au CO2",
      duree: "3",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102564/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102566",
      plan: "ENS",
      theme: "GENIE MECANIQUE EN LP",
      titre:
          "Réseaux informatique industriel connecté, réalité augmentée, réalité virtuelle, de fabrication additive, robotique, cobotique, GMAO et Cpro",
      dispoCode: "25A0091125",
      dispoTitre: "GMLP02 - INDUSTRIE ET TECHNOLOGIES 4.0",
      public: "Enseignants GMLP - Maintenance industrielle",
      objectifs: "Acquérir des compétences techniques en industrie 4.0",
      contenu:
          "INFORMATIQUE-AUTOMATISME-MAINTENANCE INDUSTRIELLES Réaliser des activités pratiques sur les thématiques: objets connectés, réseaux informatique industriel connecté, réalité augmentée, réalité virtuelle, de fabrication additive, robotique, cobotique, GMAO",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102566/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101831",
      plan: "ENS",
      theme: "GRH DE FORMATION ET DE PROXIMITE",
      titre: "LA MISSION DE TUTEUR DANS LES DISPOSITIFS D'ACCOMPAGNEMENT",
      dispoCode: "25A0090849",
      dispoTitre: "GRH_02 - STRATEGIES D'ENTRETIEN INDIVIDUEL",
      public:
          "Personnes ayant été sollicitées pour l'accompagnement des personnels en difficulté",
      objectifs:
          "Didactiser un entretien avec une personne en souffrance / en difficulté. Construire un protocole d'entretien et apprendre à l'adapter en fonction de l'interlocuteur dans le cadre des dispositifs d'accompagnement.",
      contenu:
          "INGENIERIE EDUCATIVE ET DE FORMATION 1. Accompagner les personnels en difficulté/souffrance. Laquelle/Lesquelles ?  Concept de résistance au changement - Quels profils de résistance ?  Pourquoi cette résistance ?  Comment procéder pour contourner/éviter/surmonter cette résistance ?    2. L'entretien de formation  - Les enjeux  - Le déroulement pour un entretien efficace et formateur : l'entretien d'explicitation    3. Les profils de personnels et le style de communication  Quels profils ? Comment communiquer efficacement (études de cas)",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101831/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100328",
      plan: "ENS",
      theme: "HISTOIRE DES ARTS",
      titre:
          "L'enseignement de l'Histoire des arts en collège et le développement des compétences orales.",
      dispoCode: "25A0090215",
      dispoTitre: "HDA_01 @ L'HISTOIRE DES ARTS A PORTEE DE MOTS CLG",
      public:
          "Enseignants du 2nd degré. Une attention sera portée   aux candidatures d'un même établissement.",
      objectifs:
          "Enrichir la connaissance du patrimoine local et en   prenant appui sur les ressources culturelles,   historiques et artistiques locales, approfondir le   référentiel des compétences en histoire des arts au   collège selon les disciplines d'origine  Mobiliser les compétences attendues de fin de cycles   3 et 4 en histoire des arts  Investir l'acquisition des fondamentaux dans une   perspective plurielle: la maîtrise de la langue, la   distanciation critique et à la construction d'une   pensée singulière.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE La découverte et l'appropriation d'un lieu   patrimonial local offre l'opportunité d'ancrer les   apprentissages dans une expérience motivante,   sensible et scientifiquement riche. Comment faire   de L'histoire des arts, enseignement de culture   artistique à la croisée des disciplines, un   levier pour renforcer des pratiques pédagogiques   et en développer de nouvelles?  La parution d'un nouveau programme d'Histoire des   arts en cycles 3 et 4 à partir de la rentrée   2026 invite à investir ses composantes majeures   dans une déclinaison opérationnelle en relation   avec une structure partenariale.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100328/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100329",
      plan: "ENS",
      theme: "HISTOIRE DES ARTS",
      titre:
          "L'enseignement de l'Histoire des arts et le patrimoine en collège : retour réflexif",
      dispoCode: "25A0090215",
      dispoTitre: "HDA_01 @ L'HISTOIRE DES ARTS A PORTEE DE MOTS CLG",
      public: "Enseignants du 2nd degré.",
      objectifs:
          "Insuffler une dynamique au sein des établissements   ou inter-établissements.  Investir les outils numériques pour échanger,   partager et mutualiser, garder   trace.  Collaborer avec des enseignants de même discipline   ou d'autres disciplines sur un   objet d'étude commun.  Découvrir et parfaire ses connaissances dans   d'autres champs disciplinaires.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Mutualisation des projets disciplinaires ou   interdisciplinaires qui articulent   l'histoire des arts et le lieu visité. La mise en   oeuvre d'un nouveau programme   Histoire des arts en cycles 3 et 4 est l'occasion   d'investir ce volet qui est un   élément majeur de cet enseignement partagé.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100329/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100567",
      plan: "ENS",
      theme: "HISTOIRE DES ARTS",
      titre:
          "Webinaire informatif sur les certifications complémentaires pour les 5 enseignements artistiques (PV)",
      dispoCode: "25A0090304",
      dispoTitre: "HDA_04 @ WEBINAIRE CERTIF. COMPLEMENT.EN ARTS (PV)",
      public:
          "Enseignants prioritairement du 2nd degré. Toutes   disciplines concernées.",
      objectifs:
          "La certification complémentaire en arts permet   d'attester de compétences dans un domaine de culture   artistique et offre l'opportunité d'en acquérir   d'autres. Prenant appui sur les programmes en   lycée, mobilisant des expériences professionnelles   et convoquant une expertise scientifique plus ou   moins étayée et étoffée, il s'agit d'accompagner les   préparationnaires dans leur démarche qu'il s'agisse   de la construction de progressive du rapport   dactylographié et de l'épreuve orale. Plusieurs   points seront abordés : réflexions didactiques et   pistes pédagogiques en lien avec les projets   envisagés, connaissance des acteurs institutionnels   et des ressources régionales.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Ce premier temps informatif commun aux enseignements   artistiques (octobre 2025)abordera les différentes   exigences et attendus de cette épreuve certificative   Arts avec cinq options : arts du cirque, cinéma et   audiovisuel, danse, histoire de l'art, théâtre.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100567/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101711",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "Sortir de la seconde guerre mondiale, refonder la France",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public:
          "Enseignants d'Histoire-Géographie du Secondaire (collège, lycée, spécialité HGGSP)",
      objectifs:
          "- renforcer ses connaissances disciplinaires  - être capable d'opérer un choix pertinent de documents",
      contenu:
          "HISTOIRE, GEOGRAPHIE Au printemps 1945, le territoire français est totalement libéré. Le Gouvernement provisoire de la République française est placé devant des défis immenses. À la nécessité de reconstruire le pays et de châtier les traitres, s'ajoute la mise en œuvre du projet de refondation démocratique pensé par la Résistance. Il s'agit de moderniser et d'élargir la République en accordant enfin les droits politiques aux femmes, en jetant les bases de l'Etat-providence tout en renforçant la place de l'Etat.   Interventions de spécialistes sur le site de la Coupole.",
      duree: "6",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101711/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101712",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre:
          "Maîtriser sa programmation en histoire-géographie : l'exemple de l'enseignement de la Révolution Française",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public: "Professeurs d'histoire-géographie de collège et lycée GT",
      objectifs:
          "Répondre aux difficultés exprimées par les enseignants dans la mise en œuvre de cette question. Réfléchir aux choix didactiques qui peuvent être faits au quotidien pour traiter les programmes de façon complète et équilibrée.",
      contenu:
          "HISTOIRE, GEOGRAPHIE Au collège comme au lycée général et technologique, les chapitres portant sur la période révolutionnaire sont considérés comme difficiles à enseigner en raison de l'ampleur du sujet. Comment traiter efficacement ce sujet sans mettre en péril l'équilibre de la programmation annuelle ? Comment éviter le piège du récit exhaustif autant que celui des approches exagérément simplificatrices ? Quels objectifs viser aux différents niveaux de la scolarité des élèves ? Comment faire des choix dans les repères chronologiques, les acteurs, les notions ? Ce court module de formation en distanciel permettra de poser ces questions et de proposer aux enseignants des pistes de réflexion et des exemples de mise en œuvre au collège et au LGT.  Modalités : 3H un mercredi après-midi en visio",
      duree: "3",
      effectif: "45",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101712/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101713",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "Renouveler l'enseignement de la géographie en classe",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public:
          "Professeurs d'histoire-géographie de collège et lycée général et technologique",
      objectifs:
          "Croiser le regard sur les choix et stratégies didactiques pédagogiques au collège et au lycée autour de cette question.  Consolider les gestes professionnels relatifs à l'enseignement de la géographie. Outiller les enseignants sur les démarches spécifiques à mettre en œuvre.",
      contenu:
          "HISTOIRE, GEOGRAPHIE Les démarches en géographie sont nombreuses, variées et peuvent être complexes à mettre en place. Il s'agit de réfléchir collectivement et d'élaborer des stratégies pour amener l'élève à adopter un raisonnement géographique et développer ses compétences tout au long de son parcours scolaire. Comment intégrer dans son enseignement tout en les distinguant études de cas, exemples, question spécifique sur la France, changements d'échelles...? Apports théoriques sur ces questions. Réflexions sur les spécificités des démarches. Ateliers autour des usages et des stratégies à mettre en place. Réflexions et échanges autour de la mise en œuvre des programmes de géographie. Réflexions autour de l'évaluation.   Modalités : 2 demi-journées (mercredi après-midi)",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101713/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101714",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "Géopolitique de la France : la France dans le monde de demain",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public: "Professeurs d'histoire-géographie de collège et lycée",
      objectifs:
          "Approfondir et renouveler ses approches disciplinaires. Croiser les regards avec des partenaires experts sur des objets communs. Articuler les programmes avec les parcours de l'élève.",
      contenu:
          "HISTOIRE, GEOGRAPHIE Les nouvelles formes de guerre et la résurgence de conflictualités bousculent la géopolitique mondiale. A partir de certaines de ces transformations, il s'agit de questionner la manière dont la France fait face, analyse et anticipe les évolutions géopolitiques contemporaines. La redéfinition des enjeux et des axes stratégiques ainsi que l'engagement des forces et des moyens sur les théâtres d'opération seront au cœur de l'analyse.  Modalités : 1h30 en visio en fin d'après-midi / 1h30 en asynchrone (voir module E) / 3H un mercredi pm",
      duree: "5",
      effectif: "40",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101714/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101715",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre:
          "Géopolitique de la France : la France dans le monde de demain - Distanciel",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public: "Professeurs d'histoire-géographie de collège et lycée",
      objectifs:
          "Approfondir et renouveler ses approches disciplinaires. Croiser les regards avec des partenaires experts sur des objets communs. Articuler les programmes avec les parcours de l'élève.",
      contenu:
          "HISTOIRE, GEOGRAPHIE Les nouvelles formes de guerre et la résurgence de conflictualités bousculent la géopolitique mondiale. A partir de certaines de ces transformations, il s'agit de questionner la manière dont la France fait face, analyse et anticipe les évolutions géopolitiques contemporaines. La redéfinition des enjeux et des axes stratégiques ainsi que l'engagement des forces et des moyens sur les théâtres d'opération seront au cœur de l'analyse.  Modalités : 1h30 en asynchrone",
      duree: "2",
      effectif: "40",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101715/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101716",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "Le XIXe siècle en révolutions ?",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public: "Professeurs d'histoire-géographie de collège et lycée",
      objectifs:
          "Approfondir et renouveler ses connaissances disciplinaires. Appréhender les enjeux didactiques de l'enseignement du XIXe siècle. Aborder la transposition des apports dans les classes (collège et lycée).",
      contenu:
          "HISTOIRE, GEOGRAPHIE Questionner l'emploi de « révolution » pour désigner des transformations politiques, économiques, sociales, culturelles, artistiques et scientifiques du XIXe siècle. Interroger également le terme « révolution » qui évoque des idées (notamment celles de processus ou de rupture), des représentations et des constructions mémorielles depuis le XIXe siècle à nos jours. Un premier temps en distanciel permettra de faire le point sur les apports récents de l'historiographie pour appréhender ces bouleversements qui marquent le XIXe siècle français et européen. Une demi-journée en présentiel sera ensuite l'occasion d'aborder la transposition de ces apports dans les classes dans le cadre des programmes d'histoire au collège et au lycée.  Modalités : 3h un mercredi après-midi en présentiel + 2h en asynchrone",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101716/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101717",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "Le XIXe siècle en révolutions ? Distanciel",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public: "Professeurs d'histoire-géographie de collège et lycée",
      objectifs:
          "Approfondir et renouveler ses connaissances disciplinaires. Appréhender les enjeux didactiques de l'enseignement du XIXe siècle. Aborder la transposition des apports dans les classes (collège et lycée).",
      contenu:
          "HISTOIRE, GEOGRAPHIE Questionner l'emploi de « révolution » pour désigner des transformations politiques, économiques, sociales, culturelles, artistiques et scientifiques du XIXe siècle. Interroger également le terme « révolution » qui évoque des idées (notamment celles de processus ou de rupture), des représentations et des constructions mémorielles depuis le XIXe siècle à nos jours. Un premier temps en distanciel permettra de faire le point sur les apports récents de l'historiographie pour appréhender ces bouleversements qui marquent le XIXe siècle français et européen. Une demi-journée en présentiel sera ensuite l'occasion d'aborder la transposition de ces apports dans les classes dans le cadre des programmes d'histoire au collège et au lycée.  2h en asynchrone",
      duree: "2",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101717/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101720",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre:
          "Maîtriser sa programmation en histoire-géographie : l'exemple de la première guerre mondiale",
      dispoCode: "25A0090788",
      dispoTitre: "HEG_01 @ SAVOIRS DISC. ET DIDACTIQUE EN HG",
      public: "Professeurs d'histoire-géographie de collège et lycée GT",
      objectifs:
          "Répondre aux difficultés exprimées par les enseignants dans la mise en œuvre de cette question. Réfléchir aux choix didactiques qui peuvent être faits au quotidien pour traiter les programmes de façon complète et équilibrée.",
      contenu:
          "HISTOIRE, GEOGRAPHIE Au collège et au lycée général et technologique, les chapitres sur la Première Guerre mondiale sont souvent perçus comme difficile à mettre en oeuvre en raison de l'étendue du sujet.   Comment aborder ce thème de manière efficace sans compromettre l'équilibre du programme annuel ? Comment éviter à la fois le piège d'un récit trop détaillé et celui d'approches excessivement simplifiées ? Quels objectifs faut-il viser à chaque niveau scolaire ? Comment sélectionner les repères chronologiques, les acteurs et les notions clés ? Ce module de formation en ligne aidera à poser ces questions et proposera aux enseignants des pistes de réflexion et des exemples concrets pour le collège et le lycée.",
      duree: "3",
      effectif: "45",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101720/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101721",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "L'IA pour enseigner et apprendre en histoire-géographie",
      dispoCode: "25A0090791",
      dispoTitre: "HEG_02 @ L'IA POUR ENSEIGNER ET APPRENDRE EN HG",
      public: "Professeurs d'histoire-géographie",
      objectifs:
          "A l'issue de la formation, l'enseignant doit être capable de comprendre le fonctionnement de base de l'IA, identifier les potentialités  de l'IA dans l'éducation, en particulier en histoire-géographie, rédiger un prompt efficace et connaître quelques usages et outils d'IA  concrets pour enseigner et apprendre.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE L'intelligence artificielle transforme nos pratiques. Cette formation explore ses apports pour enseigner l'histoire-géographie :  assistant IA pour l'élève (Mizou), différenciation des parcours (Wooflash), création de quiz (Quizizz), conception de séances (Magic  School), soutien aux élèves à BEP (ChatGPT), contenus immersifs (Canva, Vittascience, ElevenLabs). Elle propose des démarches  concrètes pour concevoir des activités, mieux accompagner les élèves et gagner du temps, tout en outillant les enseignants pour  sensibiliser à un usage critique et raisonné de l'IA, déjà largement adoptée par les élèves.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101721/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102379",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "L'IA pour enseigner et apprendre en histoire-géographie",
      dispoCode: "25A0090791",
      dispoTitre: "HEG_02 @ L'IA POUR ENSEIGNER ET APPRENDRE EN HG",
      public: "Professeurs d'histoire-géographie",
      objectifs:
          "A l'issue de la formation, l'enseignant doit être capable de comprendre le fonctionnement de base de l'IA, identifier les potentialités  de l'IA dans l'éducation, en particulier en histoire-géographie, rédiger un prompt efficace et connaître quelques usages et outils d'IA  concrets pour enseigner et apprendre.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE L'intelligence artificielle transforme nos pratiques. Cette formation explore ses apports pour enseigner l'histoire-géographie :  assistant IA pour l'élève (Mizou), différenciation des parcours (Wooflash), création de quiz (Quizizz), conception de séances (Magic  School), soutien aux élèves à BEP (ChatGPT), contenus immersifs (Canva, Vittascience, ElevenLabs). Elle propose des démarches  concrètes pour concevoir des activités, mieux accompagner les élèves et gagner du temps, tout en outillant les enseignants pour  sensibiliser à un usage critique et raisonné de l'IA, déjà largement adoptée par les élèves.",
      duree: "3",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102379/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102463",
      plan: "ENS",
      theme: "HISTOIRE ET GEOGRAPHIE",
      titre: "TRAVAIL PERSONNEL",
      dispoCode: "25A0091087",
      dispoTitre: "HEG_08 @ GESTES PROFESSIONNELS EN HG (PV)",
      public: "Professeurs d'histoire-géographie de collège",
      objectifs:
          "Croiser les regards sur les choix et stratégies didactiques pédagogiques au collège et au lycée autour de cette question.  Consolider les gestes professionnels relatifs à la question du travail personnel dans la classe, hors la classe et retour en classe.  Outiller les enseignants sur le travail personnel de l'élève afin de rendre l'élève autonome et en réussite en HG.",
      contenu:
          "HISTOIRE, GEOGRAPHIE Le travail personnel de l'élève est indispensable à sa réussite scolaire mais il est aussi le reflet des inégalités sociales et source de tensions dans la classe et à la maison. Encore largement cantonné « au travail à faire à la maison », on ignore de fait sa complexité et la temporalité qui lui est propre. Le travail personnel de l'élève concerne tous les temps d'apprentissages : celui de la classe comprenant le moment dévolu à sa prescription, celui du temps hors la classe et celui du retour en classe.   Apports théoriques sur cette question. Réflexions sur les spécificités du travail personnel de l'élève en histoire-géographie. Ateliers autour des usages et des stratégies à mettre en place. Réflexions et échanges autour de l'évaluation du TP de l'élève en histoire-géographie.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102463/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100578",
      plan: "ENS",
      theme: "ITALIEN",
      titre: "L'IA en classe d'Italien",
      dispoCode: "25A0090314",
      dispoTitre: "ITA_02 @ L'IA EN CLASSE D'ITALIEN",
      public: "professeurs d'italien",
      objectifs:
          "Expérimenter les intelligences artificielles afin de comprendre leurs potentialités et leurs limites, dans le but de concevoir des activités spécifiques à l'italien et de favoriser le développement de l'esprit critique des élèves.",
      contenu:
          "ITALIEN S'approprier l'IA, se sensibiliser aux enjeux éthiques, sociétaux et environnementaux, élaborer des contenus, des activités, des évaluations, de la différenciation. Trouver des solutions concrètes à des situations rencontrées en classe, comparer les séances, les tester.   Les enseignants pourront ainsi explorer comment l'IA peut être utilisée pour personnaliser l'apprentissage et répondre aux besoins individuels des élèves",
      duree: "6",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100578/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100562",
      plan: "ENS",
      theme: "LANGUES ANCIENNES",
      titre: "Les fondamentaux de la didactique en LCA",
      dispoCode: "25A0090301",
      dispoTitre: "LANC02 @ DEVELOPPER COMPETENCES ENSEIGNANTS LCA",
      public: "Professeurs de collège et de lycée qui enseignent les LCA.",
      objectifs:
          "Monter en compétence. Acquérir les fondamentaux de la didactique en LCA.",
      contenu:
          "LANGUES ANCIENNES Parcours M@gistère qui vise à définir les enjeux et modalités de l'enseignement des LCA à travers de courtes capsules vidéos thématiques qui correspondent à différents niveaux de maîtrise des attendus de l'enseignement de la discipline. Des capsules abordent ainsi l'enseignement de la langue, d'autres celui de la lecture de textes, d'autres encore celui de la culture, d'autres encore la construction des séquences tissant ces différentes entrées.",
      duree: "5",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100562/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100563",
      plan: "ENS",
      theme: "LANGUES ANCIENNES",
      titre: "Séminaire académique LCA : L'Autre",
      dispoCode: "25A0090301",
      dispoTitre: "LANC02 @ DEVELOPPER COMPETENCES ENSEIGNANTS LCA",
      public: "Professeurs de collège et de lycée qui enseignent en LCA.",
      objectifs:
          "Enrichir ses connaissances universitaires et les utiliser dans sa pratique professionnelle.",
      contenu:
          "LANGUES ANCIENNES Cette formation qui s'inscrit dans un partenariat avec l'Université de Lille vise à apporter aux enseignants, grâce à l'intervention d'universitaires sur des thèmes que nous identifions comme moins maîtrisés, des connaissances universitaires. Afin que celles-ci puissent plus facilement nourrir les pratiques, des ateliers seront associés à ces conférences pour permettre aux enseignants de penser la transposition de ces savoirs savants dans leurs pratiques professionnelles. Le thème retenu cette année est « L'autre».",
      duree: "6",
      effectif: "70",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100563/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100565",
      plan: "ENS",
      theme: "LANGUES ANCIENNES",
      titre: "Découvrir le dispositif Mare Nostrum",
      dispoCode: "25A0090302",
      dispoTitre: "LANC03 - MARE NOSTRUM",
      public:
          "Professeurs de collège et de lycée qui enseignent en LCA, en LV et LV régionales.",
      objectifs:
          "Poursuivre le dispositif Mare nostrum et enseigner conjointement LCA et Langues vivantes, étrangères / régionales.",
      contenu:
          "LANGUES ANCIENNES Cette formation vise à doter les enseignants de repères pour envisager sereinement la mise en œuvre du dispositif Mare nostrum qui fait intervenir enseignants de LCA et de LVE/LVR. Des séquences seront proposées ainsi qu'une réflexion sur la didactique des langues.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100565/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101838",
      plan: "ENS",
      theme: "LANGUES ANCIENNES",
      titre: "Relever les défis de l'enseignement des LCA",
      dispoCode: "25A0090301",
      dispoTitre: "LANC02 @ DEVELOPPER COMPETENCES ENSEIGNANTS LCA",
      public: "Professeurs de collège et de lycée qui enseignent en LCA.",
      objectifs:
          "Accompagner les enseignants à la construction de séquences mêlant des élèves de groupes différents  -  Tirer profit de la présence dans un même cours d'élèves de groupes différents en développant ECLA, tutorat, culture antique  -  Mettre en place une pédagogie de projets riche et variée susceptible d'intéresser des élèves, même en début ou fin de journée.",
      contenu:
          "LANGUES ANCIENNES Cette formation vise à partir des obstacles les plus fréquemment rencontrés par les enseignants de LCA (horaires des cours, hétérogénéité de groupes constitués de débutants et confirmés, groupes constitués d'élèves de niveaux de classe différents, groupes mêlant le grec et le latin, groupes mêlant l'option et la spécialité...) pour leur donner des pistes pour travailler le plus sereinement possible malgré celles-ci, voire d'en faire des forces.  Cette formation vise aussi à rassurer, par un solide bagage didactique, les enseignants qui souhaiteraient enseigner la spécialité LLCA dont la mise en place aboutit, souvent, à ce que des heures de spécialité soient communes avec celles de l'option LCA.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101838/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102604",
      plan: "ENS",
      theme: "LANGUES VIVANTES AU LP",
      titre: "Pédagogies innovantes en Langue vivante",
      dispoCode: "25A0091140",
      dispoTitre: "LVLP01 - FT ENSEIGNER LANGUES EN LP A L'ERE DE IA",
      public: "Enseignants en LV au LP",
      objectifs:
          "Cette formation propose aux enseignants des   stratégies concrètes pour intégrer l'intelligence   artificielle (IA) dans leurs séquences de langues   vivantes, à travers des outils conformes au RGPD,   des activités interactives et des études de cas.   Elle abordera la personnalisation des   apprentissages, l'évaluation automatisée, les   enjeux éthiques et les freins à l'usage de l'IA en   classe. Les participants repartiront avec des   pratiques renouvelées, au service d'un   enseignement plus adapté, collaboratif et propice   au développement des Compétences Psychosociales.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES L'innovation ne se réduit pas aux nouvelles   technologies mais s'étend également aux approches   pédagogiques qui ont prouvé leur efficacité en   termes d'autonomie linguistique. Le contenu   explorera des approches innovantes, à la fois   technologiques et didactiques.  Présentation d'un projet eTwining  Ateliers pratiques : Mise en pratique de   différentes   approches pédagogiques. Création de contenu.   Études de cas : Analyse de séquences   d'apprentissage   concrètes.  Partage d'expériences, échanges de pratiques",
      duree: "9",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102604/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102628",
      plan: "ENS",
      theme: "LANGUES VIVANTES AU LP",
      titre: "LEXIBILITE ET EXCELLENCE ENSEIGNER ANGLAIS AUTREMENT",
      dispoCode: "25A0091149",
      dispoTitre: "LVLP02 - FT FLEXIBILITE ET EXCELLENCE ANGL AUTREM",
      public: "Enseignants en LV au LP",
      objectifs:
          "CCette formation offre aux enseignants des   méthodes concrètes pour intégrer l'enseignement   flexible, basé sur la démarche actionnelle, afin   de personnaliser les contenus et adapter les   méthodes aux besoins des élèves. Ils découvriront   comment créer des activités interactives et   collaboratives favorisant l'engagement et   l'autonomie, utiliser efficacement les outils   technologiques et ressources pédagogiques, et   mettre en place des techniques d'évaluation   variées et collaboratives pour mieux suivre les   progrès des apprenants dans une classe flexible.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Comprendre les principes de l'enseignement   flexible implique d'identifier les différents   modèles et approches possibles. Adapter l'approche   pédagogique selon les besoins des élèves.   Optimiser la gestion du temps pour favoriser un   apprentissage plus efficace. Intégrer les   technologies éducatives dans les cours d'anglais   pour enrichir les supports et les activités.   Favoriser l'autonomie et renforcer la confiance en   soi des élèves. Évaluer les compétences   langagières de manière continue et adaptée.   Promouvoir la collaboration et encourager les   échanges en anglais. Faire évoluer les compétences   psychosociales pour soutenir le développement   global des élèves.",
      duree: "9",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102628/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102629",
      plan: "ENS",
      theme: "LANGUES VIVANTES AU LP",
      titre: "LEXIBILITE ET EXCELLENCE ENSEIGNER ANGLAIS AUTREMENT",
      dispoCode: "25A0091150",
      dispoTitre: "LVLP03 - BIEN VIVRE SON ANNEE SCOLAIRE",
      public: "Enseignants en LV au LP",
      objectifs:
          "Optimiser l'efficacité pédagogique en anglais en   construisant une progression adaptée aux   différents rythmes de l'année scolaire. Il s'agit   de maintenir des objectifs clairs tout en   maximisant les progrès des élèves, en tenant   compte des contraintes institutionnelles,   matérielles et temporelles : classes mixtes,   parcours Y, PFMP, projets européens, sorties   pédagogiques, CCF, absentéisme, remplacements   (RCD), calendrier des bulletins, etc. Cette   formation propose des solutions concrètes pour   aligner vos pratiques pédagogiques sur le rythme   spécifique de la voie professionnelle, afin de   mieux répondre aux besoins réels des apprenants en   classe d'anglais",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Les participants apprendront à ajuster leur   organisation, leurs approches et leurs contenus   pour répondre aux besoins des élèves tout en   gérant les contraintes du calendrier scolaire. La   formation propose des stratégies pour exploiter au   mieux le rythme de l'année afin de gagner en   efficience, en intégrant techniques de gestion de   classe, création de séquences et respect des   obligations institutionnelles. Elle mettra   l'accent sur le renforcement des compétences   langagières à travers une progression équilibrée   et adaptée, incluant l'alternance des cinq   activités langagières. Les enseignants verront   comment intégrer des contenus professionnels   concrets en anglais, pour rendre l'apprentissage   plus motivant et pertinent selon les spécificités   de chaque filière.",
      duree: "9",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102629/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102712",
      plan: "ENS",
      theme: "LANGUES VIVANTES AU LP",
      titre: "LUDOPEDAGOGIE ESPAGNOL LP",
      dispoCode: "25A0091167",
      dispoTitre: "LVLP07 - LUDOPEDAGOGIE ESPAGNOL LP",
      public: "Enseignant en LV au LP",
      objectifs:
          "se familiariser avec la pédagogie ludique et la   méthodologie de l'apprentissage par le jeu.   Découvrir des exemples de jeux et de ressources.   Échanges et mutualisation de pratiques. / Contenu   : présentation d'outils, de jeux, des bénéfices de   l'apprentissage par le jeu, expérimentation   d'activités ludiques.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES CPrésentation des principes de la pédagogie   ludique et de la méthodologie de l'apprentissage   par le jeu ; exploration d'outils et de jeux   transférables en classe ; mise en évidence des   apports pédagogiques du jeu (motivation,   mémorisation, coopération, différenciation) ;   expérimentation d'activités ludiques en groupe ;   temps d'échanges et de mutualisation autour des   pratiques de chacun.",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102712/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102714",
      plan: "ENS",
      theme: "LANGUES VIVANTES AU LP",
      titre: "LUDOPEDAGOGIE ESPAGNOL LP",
      dispoCode: "25A0091169",
      dispoTitre: "LVLP08 - PROJETS CULTURELS ESPAGNOL LP",
      public: "Enseignant en LV au LP",
      objectifs:
          "se former à la pédagogie de projet - placer le   culturel au cœur des pratiques - partager et   mutualiser les pratiques. Contenu : découverte de   projets culturels au service de la réussite des   élèves, construction d'un projet culturel au   service de la réussite des élèves, découvrir des   partenaires culturels, familiarisation à la   pédagogie de projet.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Découverte de la pédagogie de projet, exploration de   projets culturels au service de la réussite des   élèves, identification de partenaires culturels,   construction d'un projet culturel, échanges et   mutualisation de pratiques.",
      duree: "5",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102714/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102715",
      plan: "ENS",
      theme: "LANGUES VIVANTES AU LP",
      titre: "LUDOPEDAGOGIE ESPAGNOL LP",
      dispoCode: "25A0091170",
      dispoTitre: "LVLP09 - DIFFERENCIATION PEDAGOG ESPAGNOL LP",
      public: "Enseignant en LV au LP",
      objectifs:
          "se familiariser avec la différenciation pédagogique,   adapter les séquences de cours aux élèves à BEP, se   familiariser avec le travail par compétences,   échanges et mutualisation de pratiques.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Découverte des principes de la différenciation   pédagogique, identification de ses bénéfices pour   les élèves à besoins éducatifs particuliers (BEP) et   pour l'enseignant, présentation d'outils et de   méthodes pour adapter les séquences, initiation au   travail par compétences, échanges et mutualisation   de pratiques.",
      duree: "5",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102715/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "102723",
      plan: "ENS",
      theme: "LANGUES VIVANTES AU LP",
      titre: "Pédagogies innovantes en Langue vivante",
      dispoCode: "25A0091172",
      dispoTitre: "LVLP10 - PEDAGOGIES INNOVANTES EN LV PRO",
      public: "Enseignants en LV au LP",
      objectifs:
          "- Explorer les pédagogies innovantes telles   que la gestion d'une classe flexible,   l'utilisation   de plateformes et applications numériques, la   prise   en compte des compétences psychosociales dans un   projet pédagogique, la mise en place de rituels   originaux, l'approche par compétences ...  - Comprendre comment utiliser ces approches   dans l'enseignement des langues vivantes en lycée   professionnel, tout en étant en cohérence avec le   programme des langues vivantes (pédagogie active,   différenciation/inclusion, profil linguistique)",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES L'innovation ne se réduit pas aux nouvelles   technologies mais s'étend également aux approches   pédagogiques qui ont prouvé leur efficacité en   termes d'autonomie linguistique. Le contenu   explorera des approches innovantes, à la fois   technologiques et didactiques.  Présentation d'un projet eTwining  Ateliers pratiques : Mise en pratique de   différentes   approches pédagogiques. Création de contenu.   Études de cas : Analyse de séquences   d'apprentissage   concrètes.  Partage d'expériences, échanges de pratiques",
      duree: "9",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102723/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101764",
      plan: "ENS",
      theme: "LETTRES",
      titre:
          "Etudier Étienne de La Boétie, Discours de la servitude volontaire en classe de première",
      dispoCode: "25A0090812",
      dispoTitre: "LET_01 @ ENSEIGNER LES LETTRES AU LYCEE",
      public: "Enseignants de lettres en première",
      objectifs: "Propositions de démarches d'enseignement.",
      contenu:
          "LETTRES Le stage répondra à plusieurs questions   essentielles : Comment concevoir le projet d'étude   de l'oeuvre intégrale ? Comment choisir les extraits   à expliquer en classe ? Comment développer une étude   synthétique des oeuvres ? Quels savoirs transmettre   ? Comment les transmettre ?",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101764/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101765",
      plan: "ENS",
      theme: "LETTRES",
      titre:
          "Etudier les nouvelles œuvres au programme du lycée : Etudier Fontenelle Entretiens sur la pluralité  des mondes en première",
      dispoCode: "25A0090812",
      dispoTitre: "LET_01 @ ENSEIGNER LES LETTRES AU LYCEE",
      public: "Enseignants de lettres en première",
      objectifs: "Propositions de démarches d'enseignement.",
      contenu:
          "LETTRES Le stage répondra à plusieurs questions   essentielles : Comment concevoir le projet d'étude   de l'oeuvre intégrale ? Comment choisir les   extraits à expliquer en classe ? Comment   développer une étude synthétique des oeuvres ?   Quels savoirs transmettre ? Comment les   transmettre ? Réactiver les connaissances   fondamentales pour étudier l'oeuvre. Propositions   de démarches d'enseignement.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101765/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101766",
      plan: "ENS",
      theme: "LETTRES",
      titre:
          "Etudier les nouvelles œuvres au programme du lycée : Etudier Françoise de Graffigny, Lettres d'une Péruvienne en classe de première.",
      dispoCode: "25A0090812",
      dispoTitre: "LET_01 @ ENSEIGNER LES LETTRES AU LYCEE",
      public: "Enseignants de lettres en première",
      objectifs: "Propositions de démarches d'enseignement.",
      contenu:
          "LETTRES Le stage répondra à plusieurs questions essentielles   : Comment concevoir le projet d'étude des oeuvres   intégrales ? Comment choisir les extraits à   expliquer en classe ? Comment développer une étude   synthétique des oeuvres ? Quels savoirs transmettre   ? Comment les transmettre ?",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101766/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101768",
      plan: "ENS",
      theme: "LETTRES",
      titre: "Aider les élèves à s'approprier une oeuvre intégrale",
      dispoCode: "25A0090812",
      dispoTitre: "LET_01 @ ENSEIGNER LES LETTRES AU LYCEE",
      public: "Enseignants de lettres en première",
      objectifs:
          "Outiller les enseignants pour développer chez leurs   élèves une lecture approfondie et critique d'une   œuvre intégrale, en adaptant leurs pratiques   pédagogiques et en favorisant l'engagement des   élèves.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Aider les enseignants à accompagner leurs élèves   dans la lecture et la compréhension d'une œuvre   intégrale, grâce aux outils et méthodes du parcours   Magistère.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101768/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101769",
      plan: "ENS",
      theme: "LETTRES",
      titre: "Accompagner les élèves en difficultés",
      dispoCode: "25A0090813",
      dispoTitre: "LET_02 - ACCOMPAGNER ELEVES EN DIFFICULTES COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Permettre aux enseignants d'identifier les besoins   des élèves en difficulté et de mettre en place des   pratiques pédagogiques différenciées pour les   soutenir efficacement.",
      contenu:
          "LETTRES Aider les enseignants à mieux accompagner les élèves   en difficulté, en proposant des outils et des   méthodes adaptés pour favoriser leur réussite et   leur engagement en classe.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101769/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101770",
      plan: "ENS",
      theme: "LETTRES",
      titre: "Accompagner les élèves en difficultés",
      dispoCode: "25A0090814",
      dispoTitre: "LET_03 @ DEVELOPPER COMPETENCES ECRITURE COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Permettre aux enseignants de diagnostiquer les   difficultés des élèves en orthographe et de proposer   des pratiques pédagogiques variées pour favoriser   des progrès durables.",
      contenu:
          "LETTRES Accompagner les enseignants dans la mise en place de   démarches et d'outils efficaces pour aider les   élèves à améliorer leurs compétences en orthographe,   à travers des activités adaptées et motivantes.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101770/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101771",
      plan: "ENS",
      theme: "LETTRES",
      titre: "Aider les élèves à progresser à l'écrit. Parcours Magistère",
      dispoCode: "25A0090814",
      dispoTitre: "LET_03 @ DEVELOPPER COMPETENCES ECRITURE COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Outiller les enseignants pour identifier les besoins   des élèves à l'écrit et mettre en place des   pratiques pédagogiques adaptées, visant à améliorer   la maîtrise de l'expression écrite et la confiance   des élèves.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Accompagner les enseignants dans le développement   des compétences écrites des élèves, en proposant des   méthodes et outils issus du parcours Magistère pour   favoriser une progression efficace et durable à   l'écrit.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101771/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101772",
      plan: "ENS",
      theme: "LETTRES",
      titre: "LIRE ETUDIER TEXTES LITTERAIRES COLLEGE",
      dispoCode: "25A0090815",
      dispoTitre: "LET_04 - LIRE ETUDIER TEXTES LITTERAIRES COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Permettre à l'élève, par des stratégies   pédagogiques variées, d'entrer dans un texte   littéraire, lui donner l'envie de le lire, de   l'expliquer, en lui permettant de construire le   sens littéral et littéraire, pour aboutir   à une interprétation raisonnée.",
      contenu:
          "LETTRES Le stage alterne brefs cadrages théoriques et   conduites d'études sur des textes : varier les   entrées dans le texte, exploiter les réactions des   élèves tout au long de la construction du sens,   varier les écrits au fil de la   séance, rendre les élèves autonomes dans   l'élaboration de la trace écrite. Les supports   travaillés en groupe permettent un regard réflexif   sur les lectures analytiques proposées pour la   classe.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101772/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101773",
      plan: "ENS",
      theme: "LETTRES",
      titre: "L'étude d&#8217;œuvres intégrales au collège",
      dispoCode: "25A0090815",
      dispoTitre: "LET_04 - LIRE ETUDIER TEXTES LITTERAIRES COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Session en présence. L'objectif de ce stage est de   partager des pratiques de lecture susceptibles de   donner et de cultiver le goût de la lecture, et de   l'étude en réfléchissant à la place des   connaissances utiles à la compréhension et à   l'interprétation des textes littéraires.",
      contenu:
          "LETTRES Seront abordées les questions liées à la lecture   cursive et à l'étude des oeuvres intégrales. Comment   partager des pratiques de lecture motivantes et des   démarches innovantes ? Comment aider les élèves à   s'engager dans la   lecture et l'étude des œuvres ?",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101773/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101774",
      plan: "ENS",
      theme: "LETTRES",
      titre: "Lire et étudier la poésie au collège.",
      dispoCode: "25A0090815",
      dispoTitre: "LET_04 - LIRE ETUDIER TEXTES LITTERAIRES COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Outiller les enseignants pour développer chez leurs   élèves une approche active de la poésie, mêlant   compréhension, expression orale et créativité, afin   de favoriser l'engagement et le plaisir de lire et   dire des poèmes.",
      contenu:
          "LETTRES Accompagner les enseignants à faire découvrir la   poésie aux élèves du collège en favorisant la   lecture à voix haute, la mise en voix, et   l'appropriation sensible et critique des textes   poétiques. Le stage propose des méthodes pour   rendre la poésie vivante, accessible et source   d'émotion, en s'appuyant sur des activités variées   telles que la lecture collective, la déclamation,   et l'écriture à partir de poèmes.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101774/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101775",
      plan: "ENS",
      theme: "LETTRES",
      titre: "LIRE ETUDIER TEXTES LITTERAIRES COLLEGE",
      dispoCode: "25A0090816",
      dispoTitre: "LET_05 - CONCEVOIR EVALUATIONS STIMULANTES COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Permettre aux enseignants de concevoir des   évaluations qui encouragent l'implication des   élèves, favorisent l'autoévaluation et contribuent à   des progrès durables.",
      contenu:
          "LETTRES Accompagner les enseignants dans la création   d'évaluations variées et motivantes, conçues pour   soutenir la progression des collégiens et valoriser   leurs réussites. Le stage propose des outils et des   exemples concrets pour rendre l'évaluation plus   formative, engageante et adaptée à la diversité des   élèves.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101775/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101776",
      plan: "ENS",
      theme: "LETTRES",
      titre: "La pratique de l'oral dans le cours de français",
      dispoCode: "25A0090817",
      dispoTitre: "LET_06 - DEVELOPPER COMPTENCES ORALES AU COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Permettre aux enseignants de diversifier leurs   pratiques pour développer les compétences orales des   élèves et mettre en place des évaluations adaptées   tout au long des quatre années de collège.",
      contenu:
          "LETTRES Durant ce stage, les enseignants exploreront la   diversité des supports d'étude en intégrant l'oral   à la fois comme démarche d'enseignement et comme   compétence à développer chez les élèves.   Différentes situations d'oral seront abordées pour   enrichir les séances de lecture et d'écriture :   lecture à voix haute, travail de groupes,   utilisation du brouillon de l'oral, outils   numériques, et articulation entre écrit et oral.   Les modalités concrètes de mise en œuvre   d'exercices favorisant le développement des   compétences orales seront présentées, afin de   mieux accompagner et évaluer les élèves tout au   long de leur parcours au collège.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101776/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101778",
      plan: "ENS",
      theme: "LETTRES",
      titre:
          "Comment concevoir un projet d'enseignement pour des élèves de collège. Parcours Magistère",
      dispoCode: "25A0090819",
      dispoTitre: "LET_08 @ CONCEVOIR PROJET ENSEIGNEMENT COLLEGE",
      public: "Enseignants de lettres en collège",
      objectifs:
          "Permettre aux enseignants de définir, planifier et   conduire un projet d'enseignement motivant, en   mobilisant la pédagogie de projet pour rendre les   apprentissages concrets, collaboratifs et porteurs   de sens pour tous les élèves.",
      contenu:
          "LETTRES Ce stage accompagne les enseignants dans la   conception et la mise en œuvre de projets   pédagogiques adaptés aux collégiens. Il s'agit de   structurer une démarche intégrant des objectifs   clairs, des étapes progressives, des supports   variés et une évaluation adaptée, afin de motiver   les élèves, de développer leurs compétences   disciplinaires et transversales, et de favoriser   leur autonomie et leur engagement.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101778/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101780",
      plan: "ENS",
      theme: "LETTRES",
      titre: "Le nouveau thème en BTS  A table ! : Formes et enjeux du repas",
      dispoCode: "25A0090821",
      dispoTitre: "LET_10 - NVEAU THEME BTS CGE LES ANIMAUX ET NOUS",
      public:
          "Enseignant(e)s de Lettres en lycée intervenant en   BTS culture générale",
      objectifs:
          "Ce stage a pour objectif de présenter le nouveau   thème de culture générale et expression en STS, «   Les animaux et nous : imaginer, connaître,   comprendre l'animal », d'explorer des pistes   concrètes pour la progression annuelle et la   construction de séquences, et de proposer des   outils pratiques (projets, différenciation,   intégration de l'IA...). La formation s'appuie sur   l'analyse de problématiques possibles, la   mutualisation de ressources et d'activités, et   vise à enrichir la culture commune des enseignants   autour de ce nouveau thème.",
      contenu:
          "LETTRES Le stage se donne pour objectif de :  faire découvrir le nouveau thème de CGE de la   seconde année de STS ;  d'explorer des modalités pratiques de la   progression annuelle et séquences ;  de proposer des pistes de travail (projets   d'apprentissage, séances, différenciation, IA...).  La formation propose des réflexions sur le nouveau   thème de culture générale et expression de STS   « Les animaux et nous : imaginer, connaître,   comprendre l'animal » à partir d'analyses de   problématiques possibles et de propositions de   ressources et d'activités. Cette formation sera   aussi l'occasion de mutualiser des références   culturelles et de construire une culture commune.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101780/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101781",
      plan: "ENS",
      theme: "LETTRES",
      titre: "Réussir en CGE dès la l&#8217;entrée en STS",
      dispoCode: "25A0090822",
      dispoTitre: "LET_11 - REUSSIR EN CGE DÈS ENTREE EN STS",
      public:
          "Enseignant(e)s de Lettres en lycée intervenant en   BTS culture générale",
      objectifs:
          "Cette formation vise à favoriser la réussite de   tous les étudiants de STS, en tenant compte de la   diversité de leurs parcours. Elle abordera la   différenciation pédagogique, la pédagogie de   projet, le développement des compétences sociales   et personnelles, ainsi qu'une réflexion sur   l'évaluation, afin de renforcer l'engagement et   l'estime de soi des étudiants. Des exemples   concrets de séquences et d'activités seront   proposés.",
      contenu:
          "LETTRES Cette formation a pour objectif d'accompagner les   enseignants de STS dans la mise en place de   pratiques favorisant la réussite de tous les   étudiants, quelle que soit leur filière d'origine.   Elle propose d'explorer la différenciation   pédagogique, la pédagogie de projet et le   développement des compétences sociales et   personnelles, tout en réfléchissant à des   modalités d'évaluation adaptées. Des exemples   concrets de séquences et d'activités seront   partagés pour encourager l'engagement, la   coopération et l'estime de soi au sein des groupes   hétérogènes.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101781/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100638",
      plan: "ENS",
      theme: "LETTRES HISTOIRE GEOGRAPHIE EN LP",
      titre:
          "Questionner les documents-sources en Histoire-Géographie en LP - synchrone",
      dispoCode: "25A0090351",
      dispoTitre: "LHLP03 @ QUESTIONNER LES DOCUMENTS SOURCES",
      public: "Enseignants de lettres-HG",
      objectifs:
          "L'objectif de cette formation est d'enrichir les pratiques pédagogiques autour du document-source, en mobilisant des activités de la lecture, d'écriture et d'oral pour les élèves. Il s'agira de questionner les usages en classe afin de développer l'analyse critique des élèves face aux sources de différentes natures.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Les temps de formation en présentiel permettent, en atelier et par le propos d'un intervenant extérieur, de fonder une réflexion didactique et pédagogique sur la place du document en classe d'histoire géographie, interrogeant la posture l'enseignant et celle des élèves face à cet usage. L'accompagnement se poursuivra par une période asynchrone sur magistère (à raison de 3 heures).   Il permettra d'explorer des ressources, de découvrir et de proposer des applications pédagogiques variées.",
      duree: "6",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100638/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100643",
      plan: "ENS",
      theme: "LETTRES HISTOIRE GEOGRAPHIE EN LP",
      titre:
          "Questionner les documents-sources en Histoire-Géographie en LP - distanciel",
      dispoCode: "25A0090351",
      dispoTitre: "LHLP03 @ QUESTIONNER LES DOCUMENTS SOURCES",
      public: "Enseignants de lettres-HG",
      objectifs:
          "L'objectif de cette formation est d'enrichir les pratiques pédagogiques autour du document-source, en mobilisant des activités de la lecture, d'écriture et d'oral pour les élèves. Il s'agira de questionner les usages en classe afin de développer l'analyse critique des élèves face aux sources de différentes natures.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Les temps de formation en présentiel permettent, en atelier et par le propos d'un intervenant extérieur, de fonder une réflexion didactique et pédagogique sur la place du document en classe d'histoire géographie, interrogeant la posture l'enseignant et celle des élèves face à cet usage.  L'accompagnement se poursuivra par une période asynchrone sur magistère (à raison de 3 heures). Il permettra d'explorer des ressources, de découvrir et de proposer des applications pédagogiques variées.",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100643/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100648",
      plan: "ENS",
      theme: "LETTRES HISTOIRE GEOGRAPHIE EN LP",
      titre:
          "Pratiques distanciées en Lettres-Histoire-Géographie - Saison #1 - en autonomie",
      dispoCode: "25A0090354",
      dispoTitre: "LHLP04 @ PRATIQUES DISTANCIEES EN LHG - AUTONOMIE",
      public: "Enseignants de lettres-HG",
      objectifs:
          "Se former dans un parcours magistère à réaliser en autonomie, mettant à disposition les enregistrements de webinaires sur un format court.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Ces visioconférences bi-mensuelles alternent les disciplines des Lettres, de l'Histoire, de la Géographie. Elles émanent de la formation «pratiques distanciées», dans un format plus restreint. Chaque webinaire, indépendant, aborde une entrée problématisée et disciplinaire liée à la didactique des LHG en LP.  Ce parcours peut permettre d'enrichir ses pratiques de classes et l'appropriation de nouvelles méthodes d'enseignement.",
      duree: "8",
      effectif: "10",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100648/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100653",
      plan: "ENS",
      theme: "LETTRES HISTOIRE GEOGRAPHIE EN LP",
      titre:
          "Pratiques distanciées en Lettres-Histoire-Géographie - Saison #1 - cycle de webinaires",
      dispoCode: "25A0090357",
      dispoTitre: "LHLP05 @ PRATIQUES DISTANCIEES EN LHG - WEBINAIRES",
      public: "Enseignants de lettres-HG",
      objectifs:
          "Proposer aux enseignants de LP en LHG une réflexion flash sur :  - une compétence à travailler,  - une modalité d'activité pour la classe,  - un point de connaissance scientifique ou didactique,  - des ressources,  - une question vive,  - un geste professionnel...",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Ouverture de la saison 1 des webinaires destinés aux enseignants de Lettres-Histoire-Géographie.  Deux fois par mois, en alternance entre les disciplines, une visioconférence courte apportera des éclairages scientifiques et proposera des pistes didactiques concrètes pour enrichir les pratiques de classe.  Chaque webinaire, indépendant, aborde une entrée problématisée et disciplinaire.  Les enseignants peuvent s'y inscrire librement, selon leurs centres d'intérêt et disponibilités.",
      duree: "1",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100653/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100656",
      plan: "ENS",
      theme: "LETTRES HISTOIRE GEOGRAPHIE EN LP",
      titre: "L'arpentage, une démarche de lecture collective.",
      dispoCode: "25A0090360",
      dispoTitre: "LHLP06 @ LIRE EN ARPENTAGE EN LHG",
      public: "Enseignants de lettres-HG",
      objectifs:
          "- Permettre aux élèves de devenir des lecteurs   compétents et critiques en s'adaptant à la   diversité des textes.  - Lire des livres résistants avec des élèves qui   en sont éloignés,  - Enrichir la culture générale dans l'optique de   la poursuite d'étude.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Dans un premier temps, Maxime Boitieux,   coordinateur de l'association d'Education   Populaire « Peuple et culture », présentera la   démarche de lecture par « arpentage » qui permet   de s'approprier de manière collective des ouvrages   résistants (essais, récits, recueils poétiques...).  Une lecture en arpentage sera proposée aux   stagiaires afin de mesurer les intérêts de cette   approche pour aborder avec les élèves des œuvres   plus longues et substantielles dans l'ordinaire de   classe et l'esprit des programmes.  Un troisième temps, encadré par des formateurs,   permettra de réfléchir à la transposition en   classe de la lecture en arpentage",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100656/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100657",
      plan: "ENS",
      theme: "LETTRES HISTOIRE GEOGRAPHIE EN LP",
      titre: "L'arpentage, une démarche de lecture collective. asycnhrone",
      dispoCode: "25A0090360",
      dispoTitre: "LHLP06 @ LIRE EN ARPENTAGE EN LHG",
      public: "Enseignants de lettres-HG",
      objectifs:
          "- Permettre aux élèves de devenir des lecteurs compétents et critiques en s'adaptant à la diversité des textes.  - Lire des livres résistants avec des élèves qui en sont éloignés,  - Enrichir la culture générale dans l'optique de la poursuite d'étude.",
      contenu:
          "AUTRE CONTENU LETTRES ET LANGUES Dans un premier temps, Maxime Boitieux, coordinateur de l'association d'Education Populaire « Peuple et culture », présentera la démarche de lecture par « arpentage » qui permet de s'approprier de manière collective des ouvrages résistants (essais, récits, recueils poétiques...).  Une lecture en arpentage sera proposée aux stagiaires afin de mesurer les intérêts de cette approche pour aborder avec les élèves des œuvres plus longues et substantielles dans l'ordinaire de classe et l'esprit des programmes.  Un troisième temps, encadré par des formateurs, permettra de réfléchir à la transposition en classe de la lecture en arpentage",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100657/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101845",
      plan: "ENS",
      theme: "LUTTE CONTRE LE DECROCHAGE SCOLAIRE",
      titre: "PARCOURS DE FORMATION CPLDS 2026",
      dispoCode: "25A0090854",
      dispoTitre: "DESC01 - PARCOURS PREPARATOIRE CPLDS SESSION 2026",
      public:
          "Tout public Education nationale s'inscrivant à l'épreuve du certificat de professionnalisation en matière de lutte contre le décrochage scolaire.",
      objectifs:
          "Se préparer à la certification de lutte contre le décrochage scolaire",
      contenu:
          "AIDE SPECIFIQUE GRANDE DIFFICULTE SCOLAIRE Parcours de formation d'une année pour se préparer au CPLDS. Le parcours comprend des modules de formation, des conférences et une mise en situation.",
      duree: "25",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101845/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100791",
      plan: "ENS",
      theme: "MAISON POUR LA SCIENCE",
      titre: "Cerveau : gestion des émotions et apprentissages",
      dispoCode: "25A0090404",
      dispoTitre: "MPLS01 @ ACTIONS MAISON POUR LA SCIENCE",
      public: "Professeur de collège et de lycée de toutes disciplines",
      objectifs:
          "Vivre une situation d'investigation sur une plateforme expérimentale. Comprendre les méthodes pour provoquer et enregistrer des états émotionnels. Réfléchir aux apports des sciences cognitives à l'enseignement.",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Le cerveau, joue un grand rôle dans les émotions : la joie, la peur, le stress, etc. Aujourd'hui, les chercheurs sont capables de visualiser l'activité cérébrale par des techniques non invasives, de mieux la comprendre. Les participants de cette action découvrent les méthodes qui permettent de provoquer des états émotionnels et les techniques pour enregistrer leurs effets cérébraux et corporels. Ils comprennent les mécanismes d'addiction et réfléchissent à l'impact de ces connaissances dans des situations éducatives, notamment dans la prévention des risques liés aux nouveaux comportements sociétaux des jeunes.  PUBLIC CIBLE : Professeurs de collège et de lycée de toutes disciplines",
      duree: "8",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100791/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100792",
      plan: "ENS",
      theme: "MAISON POUR LA SCIENCE",
      titre: "Le verre dans tous ses états !",
      dispoCode: "25A0090404",
      dispoTitre: "MPLS01 @ ACTIONS MAISON POUR LA SCIENCE",
      public: "Professeurs du second degré toutes disciplines",
      objectifs:
          "Mener une investigation pour caractériser ce matériau et sa transformation. Collaborer avec des scientifiques et des industriels. Comparer ses caractéristiques à d'autres matériaux. Sensibiliser les élèves aux métiers et carrières scientifiques.",
      contenu:
          "TRANSFORMATIONS (CHIMIE, AGROALIM, VERRE, ETC.) Lunettes, vitres, bouteilles, le verre fait partie de notre quotidien. Connait-on vraiment ce matériau? Quelles sont les caractéristiques et les propriétés des matériaux vitreux ?  Cette action est l'occasion d'aborder la structure du verre et les différents procédés de fabrication, de mise en forme et de coloration. Les participants s'interrogent sur l'impact environnemental, le bilan carbone de sa fabrication et de son recyclage. Cette formation permet de découvrir les métiers de la filière pour compléter le parcours avenir des élèves et d'envisager un travail en interdisciplinarité sur des projets.  PUBLIC CIBLE : Professeurs du second degré toutes disciplines",
      duree: "8",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100792/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100793",
      plan: "ENS",
      theme: "MAISON POUR LA SCIENCE",
      titre: "Intelligence artificielle : fonctionnement, intérêts et limites",
      dispoCode: "25A0090404",
      dispoTitre: "MPLS01 @ ACTIONS MAISON POUR LA SCIENCE",
      public: "Professeurs du second degré toutes disciplines",
      objectifs:
          "- Maîtriser les savoirs sur le fonctionnement de l'IA  - Caractériser les impacts de l'IA sur le quotidien  - Identifier les apports de l'IA dans les métiers de la recherche au service de la santé, de l'innovation technologique  - Concevoir des enseignements stimulants dont l'objet d'apprentissage est l'IA  - S'approprier des outils intégrant l'IA pour faire mener aux élèves des investigations scientifiques",
      contenu:
          "AUTRE CONTENU NUMERIQUE ET SYSTEMES D'INFORMATION Afin de donner aux élèves une image scientifiquement fondée du fonctionnement et des applications de l'Intelligence Artificielle dans l'industrie, l'innovation technologique, la santé, le quotidien, il paraît intéressant d'apporter aux enseignants des clés de compréhension de son fonctionnement, de ses intérêts et de ses limites.   PUBLIC CIBLE : Professeurs du second degré toutes disciplines",
      duree: "8",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100793/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100794",
      plan: "ENS",
      theme: "MAISON POUR LA SCIENCE",
      titre: "Nanotechnologie et santé",
      dispoCode: "25A0090404",
      dispoTitre: "MPLS01 @ ACTIONS MAISON POUR LA SCIENCE",
      public: "Professeurs du second degré toutes disciplines",
      objectifs:
          "- Approfondir ses connaissances en nano technologie  - Poser des repères pour un débat avec des enjeux de société  - Saisir les interactions entre disciplines scientifiques au service de la santé  - Découvrir des métiers associés dans une perspective d'orientation",
      contenu:
          "ENERGIE ET ENVIRONNEMENT Les nanotechnologies ouvrent des perspectives prometteuses pour le traitement de maladies neurodégénératives. La découverte du modèle de vision neuro-inspiré permet de comprendre comment les dispositifs hybrides nanotechnologiques-vivants se mettent au service de problématiques de santé. Des visites des laboratoires de l'IEMN (Institut d'Electronique, de Microélectronique et de Nanotechnologie) font percevoir les spécificités physiques et biologiques des dispositifs neurohybrides. Des tests sur simulateurs de stimulations électriques et la réalisation de cultures cellulaires concrétisent les différents aspects de la communication implant-neurone et de poser les questions éthiques.  PUBLIC CIBLE : Professeurs du second degré toutes disciplines",
      duree: "8",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100794/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100798",
      plan: "ENS",
      theme: "MAISON POUR LA SCIENCE",
      titre: "De la chimie dans notre assiette",
      dispoCode: "25A0090404",
      dispoTitre: "MPLS01 @ ACTIONS MAISON POUR LA SCIENCE",
      public: "Professeurs du second degré de toutes les disciplines",
      objectifs:
          "Mieux connaître nos aliments et identifier ceux qui nous sont indispensables ; identifier les additifs agroalimentaires et leurs rôles ; analyser la cuisine sous l'éclairage de notions simples de chimie ; savoir en quoi consiste la cuisine moléculaire.",
      contenu:
          "PHYSIQUE-CHIMIE Depuis quelques décennies, notre mode d'alimentation a évolué, l'industrie agro-alimentaire s'est largement développée. Mais quels en sont les effets sur notre santé ? Quelle est la place de la chimie en cuisine ? Grâce à des ateliers basés sur la démarche d'investigation, cette action sera l'occasion de comprendre comment la manière de cuisiner influence le goût. Les notions d'additifs alimentaires seront abordées et les participants s'intéresseront également à la cuisine moléculaire.  PUBLIC CIBLE : Professeurs du second degré toutes disciplines",
      duree: "8",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100798/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100801",
      plan: "ENS",
      theme: "MAISON POUR LA SCIENCE",
      titre:
          "Le ciel et les astres dans notre objectif (formation territoriale)",
      dispoCode: "25A0090406",
      dispoTitre: "MPLS02 @FT@ CIEL ET ASTRES DANS NOTRE OBJECTIF",
      public:
          "Professeurs du second degré toutes disciplines de Lille et communes environnantes",
      objectifs:
          "Comprendre les phénomènes physiques qui régissent le système Terre-Lune. Mettre en oeuvre une démarche d'investigation au niveau adulte. Apprendre à lire le ciel. Imaginer des exploitations pédagogiques pertinentes, privilégiant l'interdisciplinarité, en cohérence avec les nouveaux programmes.",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Les éclipses de la Lune et du Soleil, les marées quotidiennes sont des phénomènes qui résultent des mouvements interdépendants du Soleil, de la Terre et de la Lune. Cette action propose aux participants de mieux comprendre les interactions qui unissent la Terre et son satellite. L'observation rigoureuse, l'élaboration d'un modèle et son application expérimentale sont les étapes clés d'un raisonnement scientifique. Elles se complètent de la visite d'un planétarium et d'une aide à la transposition en classe. Ce stage est prévu avec une journée à l'Observatoire de Lille.  PUBLIC CIBLE : Professeurs du second degré toutes disciplines",
      duree: "8",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100801/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100805",
      plan: "ENS",
      theme: "MAISON POUR LA SCIENCE",
      titre: "Micro-organismes : amis ou ennemis ?  (formation territoriale)",
      dispoCode: "25A0090410",
      dispoTitre: "MPLS03 @FT@ MICRO-ORGANISMES : AMIS OU ENNEMIS ?",
      public:
          "Professeurs de collège et de lycée de toutes les disciplines de Bailleul et communes environnantes",
      objectifs:
          "Replacer l'évolution des connaissances du monde microbien dans son contexte historique et évolutif. Comprendre les enjeux de leur surveillance et de leur utilisation dans différents domaines de la vie de tous les jours dont la conservation et la transformation des aliments.",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Bactéries, virus : leur pouvoir pathogène nous fait souvent considérer les micro-organismes comme un danger pour l'Homme, les animaux ou les végétaux. Cependant, le fonctionnement de notre corps est étroitement dépendant de relations avec eux ; nous partageons leur histoire évolutive ; la compréhension de leur mode d'action permet d'en tirer bénéfices dans divers domaines (santé, environnement, etc.). Des situations pratiques (mises en culture, réalisation de transformations biologiques) permettent aux participants d'appréhender les deux visages de ces microbes. La formation est prévue sur la métropole lilloise avec une visite de l'entreprise DANONE à Bailleul.",
      duree: "8",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100805/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100333",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre: "Manipuler pour apprendre efficacement",
      dispoCode: "25A0090218",
      dispoTitre: "MAT_05 - MANIPULER APPRENDRE EFFICACEMENT -",
      public: "Professeurs de mathématiques en collège, en lycée",
      objectifs:
          "D'expériences simples, de matériel à manipuler   basique et varié, il est possible   d'introduire un grand nombre de notions.   Manipuler certes... comment faire pour conduire à   des manipulations actives et riches   d'apprentissages ?   Comment accompagner chacun de la manipulation aux   apprentissages ?   Par quel biais, amener à se questionner, à   verbaliser ses procédures à atteindre le   concept mathématique sous-jacent, pour comprendre   et favoriser la mémorisation ?   Le choix du matériel, les modalités de mise en   activité, les apports récents des   sciences cognitives sont autant de pistes à   explorer et ceci à tous niveaux (école /   collège / lycée).",
      contenu:
          "MATHEMATIQUES Formation de 6h en présentiel,   2 mercredis après-midi   Public : Professeurs de mathématiques en   collège/en lycée.  Contenus :   Manipuler est aisé pour entrer dans une activité   mathématique mais cela permet-il réellement   d'appréhender une notion ou de vraies acquisitions   ?  Comment faire pour que manipuler, quelque soit le   niveau de proposition, mène à des apprentissages   efficaces et résistants ?",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100333/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101025",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre:
          "Formation de découverte des challenges d'IA et de prise en main des ressources MathAdata",
      dispoCode: "25A0090493",
      dispoTitre: "MAT_06 - MATHADATA AU LYCEE -",
      public:
          "Professeurs de mathématiques de lycée volontaires,   désireux d&#8217;expérimenter et de mutualiser l&#8217;usage des ressources MathAdata.",
      objectifs:
          "Permettre aux participants à travers des   présentations et des tests pratiques de :   - Découvrir l'approche de MathAdata de   l'enseignement des mathématiques à partir de   challenges d'IA  - Identifier les principales ressources MathAdata   et comprendre leur architecture.   - Mettre en œuvre et tester concrètement les   notebooks IA.   - Concevoir un scénario d'intégration de ces   outils dans leurs cours.   - Partager et enrichir les pratiques via un   temps de mutualisation.   - S'inscrire dans une communauté apprenante   pour accompagner le déploiement futur.",
      contenu:
          "MATHEMATIQUES Formation de 3h en présentiel, un mercredi après-  midi.   Public : Professeurs de mathématiques de lycée   volontaires, désireux d'expérimenter et de   mutualiser l'usage des ressources MathAdata.  Contenus :   - Une première partie en plénière : Présentation   de l'approche et des ressources MathAdata, du   contexte académique et des retours d'expérience.  - Dans un second temps : Deux groupes de 20   travaillent en parallèle sur les notebooks IA :   prise en main, paramétrage, premiers tests.  Dans un troisième et dernier temps : Retour   d'atelier, mutualisation des pratiques et plan   d'action local pour la mise en oeuvre en classe.   Remarques : Les ateliers seront animés en salle   informatique ou salle multimédia.  Chaque participant est invité s'il le souhaite à   apporter son propre ordinateur pour faciliter la   prise en main.  Les supports de cours et notebooks seront mis en   ligne après la session.",
      duree: "3",
      effectif: "40",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101025/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101110",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre:
          "Les concepts mathématiques clés dans le programme du lycée, une approche historique",
      dispoCode: "25A0090538",
      dispoTitre: "MAT_20 - ENSEIGNER LES MATHS PAR LEUR HISTOIRE",
      public: "Enseignants du second degré en lycée",
      objectifs:
          "Par la lecture de textes anciens, réfléchir sur   quelques concepts fondamentaux des mathématiques du   programme de lycée.",
      contenu:
          "MATHEMATIQUES Formation de 6h (2 fois 3h) :   2 mercredis après-midi :   Public : Enseignants du second degré en lycée   Contenus :   En utilisant une démarche historique qui relève de   la lecture de textes anciens nous allons   introduire des définitions et concepts   fondamentaux du programme du lycée.   Cette approche, qui contribue à mener une   réflexion épistémologique sur la notion même de   progrès scientifique, pourra aussi servir comme   une source de problèmes originaux.  Par exemple, nous aborderons des sujets parmi les   suivants :   - Vecteur : définition, calcul et notation   - Concept de vitesse chez Galilée   - Les indivisibles : de Cavalieri à Saint Vincent   - La méthode des moindres carrés",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101110/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101111",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre: "Ateliers d'Astronomie",
      dispoCode: "25A0090539",
      dispoTitre: "MAT_21 - MATHEMATIQUES ET ASTRONOMIE",
      public: "Enseignants du second degré",
      objectifs:
          "Acquérir les concepts mathématiques liés au travail   en astronomie. Étudier et élaborer des séances pour   la classe.",
      contenu:
          "MATHEMATIQUES Formation de 6h : 2 fois 3h le mercredi après-midi  Public : Enseignants du second degré.   Contenus :   Huit ateliers seront proposés et quatre seront   suivis par chaque stagiaire.  Chaque atelier consiste en une activité scientifique   appliquée à l'astronomie qui peut   être adaptée au niveau des élèves (collège ou lycée).  Ateliers proposés : Cercle d'Antifer, rétrogradation de   Mars, cadran solaire, carte du ciel, astrolabe,   trajectoire du Soleil, marées, Stellarium   (approfondissement).",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101111/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101112",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre: "Mathématiques et Astronomie",
      dispoCode: "25A0090539",
      dispoTitre: "MAT_21 - MATHEMATIQUES ET ASTRONOMIE",
      public: "Enseignants du second degré",
      objectifs:
          "Présentations d'outils mathématiques et logiciels   pour l'introduction de l'astronomie au collège et au   lycée.",
      contenu:
          "MATHEMATIQUES Formation de 6h : 2 mercredis après-midi  Public : Enseignants du second degré.   Contenus :   Les premiers outils mathématiques utilisés en   astronomie seront présentés ainsi qu'une initiation   à la prise en main du logiciel Stellarium.  Une présentation sera faite de quelques fiches   d'activités mathématiques appliquées à l'astronomie.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101112/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101113",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre:
          "Enseigner les notions de l'informatique : Intelligence artificielle et apprentissage automatique",
      dispoCode: "25A0090541",
      dispoTitre: "MAT_22 - ENSEIGNER NOTIONS DE L'INFORMATIQUE",
      public: "Enseignants du second degré",
      objectifs:
          "L'objectif est de démystifier l'intelligence   artificielle et l'apprentissage automatique afin de   pouvoir aborder ces thèmes en classe et leur   dimension scientifique comme éthique.",
      contenu:
          "MATHEMATIQUES Formation en présentiel de 6h, 2 fois 3h : deux   mercredis   après-midi.   Public : Enseignants du second degré   Contenus :   Des activités variées : jeux, activités   d'informatique sans   ordinateurs, utilisation de programmes ou   logiciels ad hoc,   voire de programmation Scratch ou Python   élémentaire   permettront d'appréhender les mécanismes sur   lesquels reposent l'apprentissage par renforcement   ou apprentissage automatique au cœur de   l'intelligence   artificielle.  Cette compréhension permettra des échanges sur les   applications possibles et les usages qui sont   faits de   l'IA, sur leurs limites et leurs biais.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101113/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101114",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre: "Journées Académiques de l'IREMS de Lille",
      dispoCode: "25A0090542",
      dispoTitre: "MAT_23 - JOURNÉES ACADÉMIQUES DE L'IREMS LILLE",
      public: "Enseignants du second degré",
      objectifs:
          "L'Institut de Recherche sur l'Enseignement des Mathématiques et des Sciences de   Lille organise, avec le soutien du Rectorat des Journées Académiques.   Le public visé est essentiellement constitué d'enseignants : du collège, du lycée et de   l'université ayant à cœur de promouvoir les mathématiques, d'enrichir leur enseignement et de   l'ouvrir à d'autres horizons.   Elles sont dans ce sens un prolongement et un élargissement aussi bien thématique   que conceptuel du Programme Académique de Formation.",
      contenu:
          "MATHEMATIQUES Formation de deux journées consécutives :   un jeudi et un vendredi.   Public : Enseignants du second degré    Les journées Académiques de l'IREMS sont   traditionnellement organisées au printemps et   proposent   conférences et ateliers en lien avec la Recherche.   Le thème de l'édition 2026 est à déterminer.",
      duree: "12",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101114/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101115",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre:
          "Enseigner les Mathématiques en Anglais : Appréhender les enjeux de la DNL en mathématiques",
      dispoCode: "25A0090543",
      dispoTitre: "MAT_24 - DNL - ENSEIGNER LES MATHS EN ANGLAIS IREM",
      public:
          "Professeurs du premier et du second degré   (mathématiques) : Niveau B1 à B2  en anglais.",
      objectifs:
          "Comprendre les enjeux spécifiques d'un enseignement mathématique   en tant que DNL :   Présentation de la DNL, objets et cadres, instructions   officielles, Cadre européen.",
      contenu:
          "MATHEMATIQUES Formation de 12h en présentiel :   4 mercredis après-midi sur le campus Cité   Scientifique, Bât M1,   Université de Lille, Villeneuve d'Ascq.  Public : Enseignants du second degré  Contenus :   Présentation détaillée des ressources pour   l'enseignant.    Vocabulaire pour l'enseignement des mathématiques.    Présentation et production de contenus   didactiques.   Passerelles entre les enseignements DNL et les   enseignements   «classiques ».   Consolidation et approfondissement des compétences   langagières   écrites et orales et de communication.   Préparation à la certification complémentaire en   DNL.",
      duree: "12",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101115/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101195",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre: "Informatique sans ordinateur en SNT",
      dispoCode: "25A0090541",
      dispoTitre: "MAT_22 - ENSEIGNER NOTIONS DE L'INFORMATIQUE",
      public: "Enseignants du second degré, de lycée et collège",
      objectifs:
          "Cette formation vise à découvrir, voire élaborer,   des activités d'informatique sans ordinateur   permettant d'introduire des notions et concepts de   l'informatique. Chacune des activités proposées est   en lien avec un des sept thèmes du programme de SNT.",
      contenu:
          "MATHEMATIQUES Formation en présentiel de 6h, 2 fois 3h : Deux   Mercredis après-  midi.   Public : Enseignants du second degré   Contenus :   L'informatique sans ordinateur propose des   activités ludiques   variées à base de matériels divers tels des   jetons, des dés, des   cartes, des balles, des ficelles, etc.   Ces activités mènent à la découverte de notions   fondamentales de   l'informatique.  Lors du stage, nous pratiquerons ces activités,   découvrirons   comment elles éclairent des notions de   l'informatique, nous   travaillerons de possibles extensions ou   prolongements, nous   expliciterons les liens avec le programme de SNT.  Cette démarche pourra être reproduite, et ces   activités utilisées   en classe avec les élèves.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101195/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101196",
      plan: "ENS",
      theme: "MATHEMATIQUES",
      titre: "Utiliser un planétaire humain avec les élèves",
      dispoCode: "25A0090539",
      dispoTitre: "MAT_21 - MATHEMATIQUES ET ASTRONOMIE",
      public: "Enseignants de mathématiques ou de physique en   collège",
      objectifs:
          "Découvrir comment utiliser le planétaire humain   itinérant proposé par l'IREMS de Lille avec ses   élèves pour aborder des notions de mathématiques et   de sciences physiques du cycle 4.",
      contenu:
          "MATHEMATIQUES Public cible : Enseignants de mathématiques ou de   physique en collège.   6h en présentiel : 2 mercredis après-midi  Contenus :   Dans un premier temps, les stagiaires expérimenteront   physiquement le planétaire humain,   représentation à l'échelle des orbites de différents objets   du système solaire, puis plusieurs activités menées en classe   en lien avec ce planétaire seront présentées.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101196/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101402",
      plan: "ENS",
      theme: "MATHS PHYSIQUE-CHIMIE EN LP",
      titre:
          "Actualités de la recherche en didactique des mathématiques en voie professionnelle",
      dispoCode: "25A0090658",
      dispoTitre: "MPC_04 @ LES RECHERCHES EN DIDACTIQ. DES MATHS -VP",
      public: "Enseignants de MPC",
      objectifs:
          "Présenter les recherches historiques et récentes en didactique des mathématiques en voie professionnelle(VP).  Identifier les enjeux spécifiques à l'enseignement des maths en VP.  Partager des pratiques pédagogiques issues de la recherche.  Favoriser les échanges entre enseignants, formateurs et chercheurs.",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Introduction à la didactique des mathématiques : définitions clés, enjeux et finalités - Spécificités de la discipline en contexte scolaire et plus particulièrement en voie professionnelle.  Pratiques enseignantes en voie professionnelle : regards croisés - Témoignages ou études de cas - Difficultés, réussites, questions vives du terrain.  Apports théoriques pour nourrir la pratique : notions didactiques utiles (situations, contrat didactique, etc.) - Pistes pour articuler théorie et pratique en classe.  Temps d'échange et de réflexion collective : réactions, partages d'expériences, questions ouvertes.",
      duree: "2",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101402/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101426",
      plan: "ENS",
      theme: "MATHS PHYSIQUE-CHIMIE EN LP",
      titre:
          "L&#8217;éducation au développement durable dans l&#8217;enseignement en MPC",
      dispoCode: "25A0090668",
      dispoTitre: "MPC_06 - L'EDD DANS LES ENSEIGNEMENTS EN MPC",
      public: "Enseignants de MPC",
      objectifs:
          "Permettre aux enseignants d'intégrer efficacement les principes du Développement Durable de manière transversale afin de sensibiliser les apprenants aux enjeux environnementaux et sociétaux liés aux pratiques scientifiques et techniques.",
      contenu:
          "AUTRE CONTENU SCIENCES, TECHNO, SCIENCES INGENIEUR Immersion à l'Xpérium de Villeneuve D'Ascq pour aborder de manière concrète les enjeux de l'innovation scientifique et technologique dans le cadre de la transition vers un développement durable.",
      duree: "9",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101426/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101433",
      plan: "ENS",
      theme: "MATHS PHYSIQUE-CHIMIE EN LP",
      titre: "De PENSER AVEC LES MAINS à MANIPULER DANS SA TETE",
      dispoCode: "25A0090670",
      dispoTitre: "MPC_07 - PENSER AV. LES MAINS MANIPULER DS SA TETE",
      public: "Enseignants de MPC",
      objectifs:
          "Cette formation vise à développer chez les enseignants une pédagogie active fondée sur les manipulations concrètes, pour aider les élèves à construire progressivement des représentations mentales stables et transférables. L'objectif est de favoriser la compréhension conceptuelle, stimuler le raisonnement, et ancrer les apprentissages mathématiques dans l'expérience sensorielle et l'action.",
      contenu:
          "MATHEMATIQUES 1. Fondements théoriques des pratiques manipulatoires en mathématiques - Apports des neurosciences et de la didactique - Rôle de la manipulation dans le développement de la pensée logique, du raisonnement spatial et de l'abstraction.   2. Construire la compréhension par l'action - Qu'est-ce que PENSER AVEC LES MAINS ?   3. Manipulations en contexte de résolution de problèmes.  4. Vers la manipulation mentale : développer l'abstraction - Jeux mathématiques et défis sans matériel, mais qui mobilisent des gestes mentaux.  5. Sélection et conception de supports de manipulation.  6. Différenciation pédagogique et inclusion par la manipulation : adapter les activités manipulatoires aux différents profils d'élèves ; utiliser la manipulation comme levier de remobilisation et d'estime de soi.   7. Intégrer la manipulation dans des progressions cohérentes, articulée à des temps de formalisation.",
      duree: "6",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101433/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101649",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Découvrir les mille et une astuces de la création  pédagogique",
      dispoCode: "25A0090755",
      dispoTitre: "NUME01 @ S'EMPARER DES BASES DU NUMERIQUE",
      public: "T1, T2, Contractuels",
      objectifs:
          "Devenir autonome dans la création de documents à l'aide d'outils de bureautique ou grand public afin de créer des supports engageants et impactants pour les cours",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Les enseignants ont besoin de réaliser des supports pédagogiques. Cette formation permettra de couvrir les essentiels de la création de documents avec des outils de bureautique et grand public accessibles en ligne. Les potentiels des IA génératives seront aussi évoqués.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101649/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101650",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Partager, collaborer et publier en toute sécurité grâce à la suite de l'état",
      dispoCode: "25A0090755",
      dispoTitre: "NUME01 @ S'EMPARER DES BASES DU NUMERIQUE",
      public: "Équipe éducative du second degré",
      objectifs:
          "Devenir familier des suites d'outils proposés par le ministère et en tirer le plein potentiel pour travailler en équipe",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Le site Portail Apps regorge d'outils pratiques pour les enseignants pour stocker des vidéos dans des chaînes dédiées et sécurisées, pour partager des documents avec leurs collègues et bien d'autres services. Dans des focus de 30 minutes, ces possibilités seront présentées et aussi ceux de la Digitale.",
      duree: "1",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101650/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101651",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Maîtriser les applications pédagogiques de L'ENT",
      dispoCode: "25A0090755",
      dispoTitre: "NUME01 @ S'EMPARER DES BASES DU NUMERIQUE",
      public: "Professeur second degré et CPE",
      objectifs:
          "Échanger avec les formateurs sur des thématiques pédagogiques liées à l'usage de l'ENT et trouver des réponses à ses questions dans un format court et efficace.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Des webinaires pour répondre aux questions des enseignants à raison de deux rendez-vous par période dans un temps court.",
      duree: "1",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101651/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101652",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Exploiter le potentiel d'Eduline : un portail multi-services sécurisé",
      dispoCode: "25A0090755",
      dispoTitre: "NUME01 @ S'EMPARER DES BASES DU NUMERIQUE",
      public: "Équipe éducative du second degré",
      objectifs:
          "Savoir se connecter à Eduline, et utiliser des outils professionnels de communication disponibles pour les enseignants. Un gain de temps et d'efficacité dans un environnement sécurisé",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Eduline et la messagerie académique seront présentés lors de ces courts webinaires co-construits avec la Drasi. Vous découvrirez les essentiels pour maîtriser les outils professionnels à destination des enseignants.",
      duree: "1",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101652/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101672",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Découvrir les mille et une astuces de la création  pédagogique",
      dispoCode: "25A0090755",
      dispoTitre: "NUME01 @ S'EMPARER DES BASES DU NUMERIQUE",
      public: "T1, T2, Contractuels",
      objectifs:
          "Vous verrez comment marier habilement les compétences numériques aux contenus disciplinaires. Des illustrations précises serviront de tremplin pour construire, étape par étape, des parcours à chaque fois plus solides.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Les enseignants ont besoin de réaliser des supports pédagogiques. Cette formation permettra de couvrir les essentiels de la création de documents avec des outils de bureautique et grand public accessibles en ligne. Les potentiels des IA génératives seront aussi évoqués.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101672/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101723",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Développement de la créativité numérique responsable : co-création de ressources en licences libres.",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Enseignants du second degré",
      objectifs:
          "Connaître et utiliser les outils libres afin de rester maître de ses données et de l'utilisation qui en sont faites dans le cadre de sa fonction au sein de l'ENT bien sûr mais aussi ceux présents dan la Forge numérique",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Les ressources libres seront à l'honneur dans ce module qui vient en appui du concours sur la citoyenneté numérique afin d'accompagner la création de ressources pédagogiques avec Eléa, un Moodle dans l'ENT, H5P pour réaliser un support avec les élèves.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101723/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101724",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Objectif de débat radio : les écrans et moi (bien être). Se lancer grâce à l&#8217;outil de webradio live dans l'ENT.",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Enseignants du second degré",
      objectifs:
          "Grâce à la pédagogie de projet autour de la radio dans l'ENT, les enseignants découvriront les potentiels de ces moments de prise de parole, que ce soit sur la motivation ou la montée en confiance des élèves quand il s'agit de prendre la parole en public. Un plus pour le grand oral ou la préparation du DNB",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Animer un débat à la radio nécessite une découverte des techniques d'animation et d'organisation avec les élèves. C'est ce que propose ce module qui vous permettra de vous lancer et de créer soit des podcasts ou une radio en direct. Ce module se propose de vous accompagner dans votre démarche de projet.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101724/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101725",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Présentation et pistes de travail autour de la charte de citoyenneté numérique",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Enseignants du second degré",
      objectifs:
          "Un Français sur six présente des limitations visuelles, auditives ou cognitives. Vous identifierez précisément les besoins de chaque profil. Vous synchroniserez rigoureusement vos sous-titres avec les séquences vidéo. Vous structurerez vos PDF selon les normes d'accessibilité. Au terme de ce module, vous disposerez d'une méthode éprouvée pour concevoir des ressources réellement utilisables par tous.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE 1 personne sur 6 rencontre des difficultés visuelles, auditives ou cognitives en France. C'est pourquoi il est essentiel de proposer des supports multimédia accessibles, que ce soit en ajoutant des sous-titres dans une vidéo ou en rendant un PDF vraiment accessible. Ce module a pour ambition de vous accompagner dans la prise en compte des différents profils dans l'élaboration de vos ressources.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101725/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101726",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Défi fake news à l&#8217;ère de l&#8217;IA : comment se prémunir ? Formation des enseignants pour la conception et la réalisation d&#8217;une affiche.",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Vous apprendrez à formuler des prompts efficaces pour générer des visuels, à distinguer l'origine humaine ou automatique d'un document et à intégrer l'IA générative dans la conception de vos supports pédagogiques.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Créer une affiche avec des IAG ne nécessite plus d'utiliser des logiciels complexes mais de connaître les requêtes qui s'avèreront les plus efficaces. C'est pourquoi il est important que les élèves sachent faire la différence entre des documents authentiques et ceux générés afin de ne pas se laisser duper. Au cours de ce temps de formation, vous aurez les clefs pour tirer le maximum des IA génératives qui sont des assistants de conception pour les enseignants et les élèves.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101726/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101727",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE module  A Développement de la créativité numérique responsable : co-création de ressources en licences libres.",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Connaître et utiliser les outils libres afin de rester maître de ses données et de l'utilisation qui en sont faites dans le cadre de sa fonction au sein de l'ENT bien sûr mais aussi ceux présents dan la Forge numérique",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Les ressources libres seront à l'honneur dans ce module qui vient en appui du concours sur la citoyenneté numérique afin d'accompagner la création de ressources pédagogiques avec Eléa, un Moodle dans l'ENT, H5P pour réaliser un support avec les élèves.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101727/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101729",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE B - Objectif de débat radio : les écrans et moi (bien être). Se lancer grâce à l&#8217;outil de webradio live dans l&#8217;ENT.",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Enseignants du second degré",
      objectifs:
          "Grâce à la pédagogie de projet autour de la radio dans l'ENT, les enseignants découvriront les potentiels de ces moments de prise de parole, que ce soit sur la motivation ou la montée en confiance des élèves quand il s'agit de prendre la parole en public. Un plus pour le grand oral ou la préparation du DNB",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Animer un débat à la radio nécessite une découverte des techniques d'animation et d'organisation avec les élèves. C'est ce que propose ce module qui vous permettra de vous lancer et de créer soit des podcasts ou une radio en direct. Ce module se propose de vous accompagner dans votre démarche de projet.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101729/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101730",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE C - Présentation et pistes de travail autour de la charte de citoyenneté numérique",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Tout public",
      objectifs:
          "Un Français sur six présente des limitations visuelles, auditives ou cognitives. Vous identifierez précisément les besoins de chaque profil. Vous synchroniserez rigoureusement vos sous-titres avec les séquences vidéo. Vous structurerez vos PDF selon les normes d'accessibilité. Au terme de ce module, vous disposerez d'une méthode éprouvée pour concevoir des ressources réellement utilisables par tous.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE 1 personne sur 6 rencontre des difficultés visuelles, auditives ou cognitives en France. C'est pourquoi il est essentiel de proposer des supports multimédia accessibles, que ce soit en ajoutant des sous-titres dans une vidéo ou en rendant un PDF vraiment accessible. Ce module a pour ambition de vous accompagner dans la prise en compte des différents profils dans l'élaboration de vos ressources.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101730/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101731",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE  MODULE D - Défi fake news à l'ère de l'IA : comment se prémunir ? Formation des enseignants pour la conception et la réalisation d'une affiche.",
      dispoCode: "25A0090793",
      dispoTitre: "NUME02 @ CITOYENNETE NUMERIQUE CRITIQUE ET IA",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Vous apprendrez à formuler des prompts efficaces pour générer des visuels, à distinguer l'origine humaine ou automatique d'un document et à intégrer l'IA générative dans la conception de vos supports pédagogiques.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Créer une affiche avec des IAG ne nécessite plus d'utiliser des logiciels complexes mais de connaître les requêtes qui s'avèreront les plus efficaces. C'est pourquoi il est important que les élèves sachent faire la différence entre des documents authentiques et ceux générés afin de ne pas se laisser duper. Au cours de ce temps de formation, vous aurez les clefs pour tirer le maximum des IA génératives qui sont des assistants de conception pour les enseignants et les élèves.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101731/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102546",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Préparation à la certification CRCN  des enseignants",
      dispoCode: "25A0091119",
      dispoTitre: "NUME03 @ VALORISER SES COMPETENCES NUMERIQUES",
      public: "Enseignants du second degré",
      objectifs:
          "Ce module vous guide dans la découverte du cadre CRCN et dans l'acquisition progressive de ces compétences. À travers des exercices ciblés, vous repérez vos forces et vos faiblesses, avant de consolider votre savoir-faire. Vous avancez à votre rythme, pas à pas. Ce parcours vise à renforcer votre autonomie numérique et à transformer ces compétences en atouts concrets.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Les enseignants ont besoin de réaliser des supports pédagogiques. Cette formation permettra de couvrir les essentiels de la création de documents avec des outils de bureautique et grand public accessibles en ligne. Les potentiels des IA génératives seront aussi évoqués.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102546/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102547",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Stratégies pédagogiques pour engager les élèves vers le CRCN au collège",
      dispoCode: "25A0091119",
      dispoTitre: "NUME03 @ VALORISER SES COMPETENCES NUMERIQUES",
      public: "Équipe éducative du second degré",
      objectifs:
          "Vous verrez comment marier habilement les compétences numériques aux contenus disciplinaires. Des illustrations précises serviront de tremplin pour construire, étape par étape, des parcours à chaque fois plus solides.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module accompagne l'intégration de PIX dans une démarche pédagogique au collège. Il propose des pistes pour lier compétences numériques et enseignements disciplinaires.  Des exemples concrets permettront de structurer des parcours progressifs. Objectif : ancrer PIX dans les pratiques de classe, en lien avec le CRCN.",
      duree: "2",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102547/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102548",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Stratégies pédagogiques pour engager les élèves vers le CRCN au lycée",
      dispoCode: "25A0091119",
      dispoTitre: "NUME03 @ VALORISER SES COMPETENCES NUMERIQUES",
      public: "Professeur second degré et CPE",
      objectifs:
          "Ce module invite à repérer les points de convergence entre les activités de chaque discipline et les compétences CRCN, afin de construire des séquences où le numérique se déploie dans des tâches authentiques et motivantes",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module aide à construire un parcours numérique cohérent au lycée avec PIX. Il propose des repères pour intégrer le CRCN dans les disciplines et les séquences. Des outils, retours d'expériences et ressources concrètes seront partagés. Objectif : faire de PIX un levier d'apprentissages transversaux et contextualisés.",
      duree: "2",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102548/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102549",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Monter en compétence avec la Drane  Hauts-De-France",
      dispoCode: "25A0091119",
      dispoTitre: "NUME03 @ VALORISER SES COMPETENCES NUMERIQUES",
      public: "Équipe éducative du second degré",
      objectifs:
          "Vous explorerez dans ce module des usages du numérique grâce à des outils ciblés, des scénarios variés et des méthodes d'évaluation précises. À chaque session, vous repartirez avec des ressources immédiatement opérationnelles.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module s'inscrit dans le projet Montée en compétences de la région académique. Une série de webinaires tout au long de l''année pour explorer les usages du numérique. Outils, scénarios, évaluation : chaque session propose des apports concrets.",
      duree: "1",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102549/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102550",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE A : Découvrir les mille et une astuces de la création  pédagogique",
      dispoCode: "25A0091119",
      dispoTitre: "NUME03 @ VALORISER SES COMPETENCES NUMERIQUES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Ce module vous guide dans la découverte du cadre CRCN et dans l'acquisition progressive de ces compétences. À travers des exercices ciblés, vous repérez vos forces et vos faiblesses, avant de consolider votre savoir-faire. Vous avancez à votre rythme, pas à pas. Ce parcours vise à renforcer votre autonomie numérique et à transformer ces compétences en atouts concrets.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module permet de découvrir et de maîtriser les compétences évaluées par PIX.  Des exercices concrets aident à identifier ses besoins et à progresser à son rythme.  Les participants sont accompagnés vers plus d'autonomie numérique.",
      duree: "12",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102550/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102560",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE B : Stratégies pédagogiques pour engager les élèves vers le CRCN au collège",
      dispoCode: "25A0091119",
      dispoTitre: "NUME03 @ VALORISER SES COMPETENCES NUMERIQUES",
      public: "Enseignants du second degré",
      objectifs:
          "Vous verrez comment marier habilement les compétences numériques aux contenus disciplinaires. Des illustrations précises serviront de tremplin pour construire, étape par étape, des parcours à chaque fois plus solides.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module accompagne l'intégration de PIX dans une démarche pédagogique au collège. Il propose des pistes pour lier compétences numériques et enseignements disciplinaires. Des exemples concrets permettront de structurer des parcours progressifs. Objectif : ancrer PIX dans les pratiques de classe, en lien avec le CRCN.",
      duree: "2",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102560/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102561",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE C : Stratégies pédagogiques pour engager les élèves vers le CRCN au lycée",
      dispoCode: "25A0091119",
      dispoTitre: "NUME03 @ VALORISER SES COMPETENCES NUMERIQUES",
      public: "Enseignants du second degré",
      objectifs:
          "Ce module invite à repérer les points de convergence entre les activités de chaque discipline et les compétences CRCN, afin de construire des séquences où le numérique se déploie dans des tâches authentiques et motivantes",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module aide à construire un parcours numérique cohérent au lycée avec PIX. Il propose des repères pour intégrer le CRCN dans les disciplines et les séquences. Des outils, retours d'expériences et ressources concrètes seront partagés. Objectif : faire de PIX un levier d'apprentissages transversaux et contextualisés.",
      duree: "2",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102561/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102570",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Découvrir le fonctionnement des algorithmes pour comprendre l'IA",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du second degré",
      objectifs:
          "Ce module initie les enseignants aux usages créatifs de l'IA générative en classe. Ils apprendront à produire et à faire produire des textes, des images et des ressources numériques tout en gardant un regard critique sur les résultats",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module propose une initiation au fonctionnement du machine learning, accessible à tous les enseignants, quelle que soit leur discipline. À travers des outils simples et des mises en situation concrètes, il permet de comprendre les mécanismes d'apprentissage automatique utilisés par l'IA. L'objectif est de démystifier ces technologies et de donner des clés de lecture pour mieux les appréhender, tant dans la vie quotidienne que dans les pratiques pédagogiques.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102570/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102571",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Création et IA génératives : nouvelles perspectives et pratiques",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du second degré",
      objectifs:
          "Ce module initie les enseignants aux usages créatifs de l'IA générative en classe. Ils apprendront à produire et à faire produire des textes, des images et des ressources numériques tout en gardant un regard critique sur les résultats.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module initie les enseignants aux usages créatifs de l'IA générative. Ils apprendront à produire textes, images et contenus numériques en classe. L'objectif : stimuler la créativité tout en développant une approche critique. Des pistes concrètes pour intégrer l'IA dans les pratiques pédagogiques.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102571/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102572",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Tirer parti du potentiel créatif des IA génératives",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Ce module interroge la place de l'IA dans le quotidien professionnel des enseignants et des élèves. Il éclaire les pistes que l'automatisation ouvre pour enrichir les pratiques et redessiner les espaces d'apprentissage.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module propose une réflexion critique sur les impacts de l'IA dans nos vies professionnelles. Quelles nouvelles potentialités et quelles redéfinitions du travail des enseignants et des élèves ? Quelles compétences développer et quels ajustements sont nécessaires pour embrasser cette révolution technologiques qui touche tous les acteurs de l'éducation ?",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102572/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102573",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Repenser la place du travail personnel de l'élève à l&#8217;ère de l'IA",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Ce module examine l'usage de l'IA pour suivre et ajuster le travail personnel, adapter les parcours et différencier l'évaluation.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module interroge l'impact de l'IA sur l'évaluation et le travail personnel. Les enseignants exploreront des usages pour mieux suivre, adapter et différencier. L'enjeu : encourager l'autonomie des élèves sans renoncer à l'exigence critique. Une occasion de repenser l'évaluation de manière plus juste et créative.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102573/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102574",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE A - Découvrir le fonctionnement des algorithmes pour comprendre l&#8217;IA",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Ce module initie les enseignants aux usages créatifs de l'IA générative en classe. Ils apprendront à produire et à faire produire des textes, des images et des ressources numériques tout en gardant un regard critique sur les résultats",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module propose une initiation au fonctionnement du machine learning, accessible à tous les enseignants, quelle que soit leur discipline. À travers des outils simples et des mises en situation concrètes, il permet de comprendre les mécanismes d'apprentissage automatique utilisés par l'IA. L'objectif est de démystifier ces technologies et de donner des clés de lecture pour mieux les appréhender, tant dans la vie quotidienne que dans les pratiques pédagogiques.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102574/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102575",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE B - Création et IA génératives : nouvelles perspectives et pratiques",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du second degré",
      objectifs:
          "Ce module initie les enseignants aux usages créatifs de l'IA générative en classe. Ils apprendront à produire et à faire produire des textes, des images et des ressources numériques tout en gardant un regard critique sur les résultats.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module initie les enseignants aux usages créatifs de l'IA générative. Ils apprendront à produire textes, images et contenus numériques en classe. L'objectif : stimuler la créativité tout en développant une approche critique. Des pistes concrètes pour intégrer l'IA dans les pratiques pédagogiques.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102575/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102576",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE C - Tirer parti du potentiel créatif des IA génératives",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Ce module interroge la place de l'IA dans le quotidien professionnel des enseignants et des élèves. Il éclaire les pistes que l'automatisation ouvre pour enrichir les pratiques et redessiner les espaces d'apprentissage.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module propose une réflexion critique sur les impacts de l'IA dans nos vies professionnelles. Quelles nouvelles potentialités et quelles redéfinitions du travail des enseignants et des élèves ? Quelles compétences développer et quels ajustements sont nécessaires pour embrasser cette révolution technologiques qui touche tous les acteurs de l'éducation ?",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102576/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102577",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE  MODULE D - Repenser la place du travail personnel de l'élève à l&#8217;ère de l'IA",
      dispoCode: "25A0091128",
      dispoTitre: "NUME04 @ DECOUVRIR POTENTIELS DE L'IA EN EDUCATION",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Ce module examine l'usage de l'IA pour suivre et ajuster le travail personnel, adapter les parcours et différencier l'évaluation.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module interroge l'impact de l'IA sur l'évaluation et le travail personnel. Les enseignants exploreront des usages pour mieux suivre, adapter et différencier. L'enjeu : encourager l'autonomie des élèves sans renoncer à l'exigence critique. Une occasion de repenser l'évaluation de manière plus juste et créative.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102577/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102606",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Administrer l'ENT pour les débutants dans la fonction",
      dispoCode: "25A0091142",
      dispoTitre: "NUME05 @ MAÎTRISER L'ENT DE L'ETABLISSEMENT",
      public: "Enseignants du second degré",
      objectifs:
          "Un accompagnement hybride est proposé à base de distanciels synchrones de présentations des ressources afin de bien paramétrer son ENT. Au fil de cas concrets, les administrateurs seront testés dans leur capacité à répondre à des problèmes de gestion de comptes, de règles de communication, d'accès aux ressources et le déploiement de certains services pour une gestion souple et humaine de l'environnement numérique de travail.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module offre une approche simple et pratique pour paramétrer l'ENT en tant que responsable. Les participants apprendront à configurer les utilisateurs, ajuster les paramètres et personnaliser les outils de l'ENT selon les besoins de l'établissement. L'objectif est d'aider chaque responsable à se sentir à l'aise avec la gestion quotidienne de l'ENT, en toute autonomie et simplicité.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102606/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102607",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Découvrir les ressources insoupçonnées de L'ENT",
      dispoCode: "25A0091142",
      dispoTitre: "NUME05 @ MAÎTRISER L'ENT DE L'ETABLISSEMENT",
      public: "Équipe éducative du second degré",
      objectifs:
          "Explorer et exploiter toutes les ressources de l'ENT (la webradio, les magazines, Cantoo Web, Citizen Code...)",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module vous invite à découvrir les richesses de l'ENT, notamment des outils comme Cantoo et la webradio, qui peuvent enrichir vos pratiques pédagogiques. Vous apprendrez à explorer et utiliser ces ressources pour dynamiser l'apprentissage et encourager des projets collaboratifs. L'objectif est de vous permettre de mieux comprendre et exploiter les différentes fonctionnalités de l'ENT, afin de les intégrer pleinement dans votre quotidien d'enseignant.",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102607/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102608",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE A : Administrer l'ENT pour les débutants dans la fonction",
      dispoCode: "25A0091142",
      dispoTitre: "NUME05 @ MAÎTRISER L'ENT DE L'ETABLISSEMENT",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Un accompagnement hybride est proposé à base de distanciels synchrones de présentations des ressources afin de bien paramétrer son ENT. Au fil de cas concrets, les administrateurs seront testés dans leur capacité à répondre à des problèmes de gestion de comptes, de règles de communication, d'accès aux ressources et le déploiement de certains services pour une gestion souple et humaine de l'environnement numérique de travail.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module offre une approche simple et pratique pour paramétrer l'ENT en tant que responsable. Les participants apprendront à configurer les utilisateurs, ajuster les paramètres et personnaliser les outils de l'ENT selon les besoins de l'établissement. L'objectif est d'aider chaque responsable à se sentir à l'aise avec la gestion quotidienne de l'ENT, en toute autonomie et simplicité.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102608/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102609",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE B : Découvrir les ressources insoupçonnées de L'ENT",
      dispoCode: "25A0091142",
      dispoTitre: "NUME05 @ MAÎTRISER L'ENT DE L'ETABLISSEMENT",
      public: "Enseignants du second degré",
      objectifs:
          "Vous verrez comment marier habilement les compétences numériques aux contenus disciplinaires. Des illustrations précises serviront de tremplin pour construire, étape par étape, des parcours à chaque fois plus solides.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Ce module accompagne l'intégration de PIX dans une démarche pédagogique au collège. Il propose des pistes pour lier compétences numériques et enseignements disciplinaires. Des exemples concrets permettront de structurer des parcours progressifs. Objectif : ancrer PIX dans les pratiques de classe, en lien avec le CRCN.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102609/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102610",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Journée du numérique : une journée en immersion au cœur des pratiques numériques innovantes",
      dispoCode: "25A0091143",
      dispoTitre: "NUME06 - JOURNEE NUMERIQUE - PRATIQUES INNOVANTES",
      public: "Enseignants du second degré",
      objectifs:
          "Présentation des technologies permettant la pédagogie de projet et formation de premier niveau sur l'une d'entre elles",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Une journée dans deux lieux de l'académie : 9H à 11H en mode présentation, 11H 12H : table ronde 13H 16H : formation PV sous la forme d'ateliers à la carte",
      duree: "6",
      effectif: "50",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102610/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102611",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Escape game : s&#8217;échapper de la routine",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du second degré",
      objectifs:
          "Conception, expérimentation, mise en place et exploitation pédagogique d'escape games enrichis par le numérique, au service d'une pédagogie innovante, ludifiée et collaborative, mais toujours centrée sur les apprentissages.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Concevoir un Escape Game, c'est organiser un espace de rencontre potentiel entre les élèves et les savoirs grâce au jeu. Notre formation proposera : (1)une expérimentation de différentes formes d'Escape Games afin de comprendre leurs principes, leurs mécanismes et leurs plus-values pédagogiques. (2)une réflexion sur l'intérêt de ludifier sa pédagogie. (3)la découverte et la prise en main d'outils numériques permettant d'apporter une vraie plus-value (tels que Genially, Learning Apps ou des cadenas numériques). (4)présentation et mise en pratique de techniques de conception permettant de ludifier ses supports. (5)la présentation de méthodes permettant la mise en place concrète d'Escape Games avec une classe entière. (6)la conception de scénarii pédagogiques ludifiants : Quelles étapes ?",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102611/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102612",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Classe inversée, pédagogie renversante",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du second degré",
      objectifs:
          "Quels sont les bénéfices de la pratique de la classe inversée pour mes élèves ? Comment concilier innovation pédagogique, différenciation, et individualisation. Quel peut être l'apport des outils numériques pour la pédagogie inversée ?",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Conception de capsules vidéo, travail en groupe, différenciation, apprentissage par les pairs : la pratique de la classe inversée permet de mettre en œuvre quelques-unes des innovations pédagogiques les plus marquantes de ces dernières décennies. Les stagiaires découvriront l'histoire de cette approche innovante et prennent connaissance des expérimentations menées depuis plusieurs décennies dans le monde entier. Ils prendront en main un certain nombre d'outils permettant la création, l'édition et le partage de capsules vidéo ainsi que différents types d'exerciciels. Après une réflexion collective sur les modalités possibles d'organisation du travail en groupe (îlots ludifiés / îlots bonifiés), on s'essaiera à l'élaboration de scenarii pédagogiques adaptés aux besoins de chacun.",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102612/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102613",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Créer des capsules vidéos",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Maîtrise technique de la vidéo, du son et de l'image. Création de contenus engageants et accessibles. Intégration efficace des vidéos dans l'enseignement.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Cette formation équipe les enseignants du second degré, même débutants, pour créer des vidéos pédagogiques de qualité, favorisant ainsi une expérience d'apprentissage enrichie et inclusive. En utilisant des outils gratuits ou ceux présents dans l'ENT, les stagiaires pourront créer leurs propres ressources, capturer leur écran, exporter leurs vidéos et les publier de manière sécurisée dans leur espace de travail ou dans le portailapps du ministère. La vidéo est un moyen efficace pour engager les élèves et les conforter dans leurs apprentissages.",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102613/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102614",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "TBI VPI : un allié pédagogique",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Apprendre à utiliser le TBI afin de rendre ses cours plus attrayants. Comprendre et mettre en œuvre dans sa classe ses apports pédagogiques",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Cette formation vous permettra de comprendre et de mettre en œuvre dans sa classe le TBI ou VPI en exploitant tous ses atouts pédagogiques. Réfléchir sur la manière d'appréhender l'outil par rapport à un vidéoprojecteur. Apprendre les principales fonctionnalités de la barre d'outils, du logiciel pour mesurer les possibilités très étendues offertes à la pédagogie. Apprendre à adapter ses cours aux particularités graphiques de cet outil et à préparer en amont ses cours pour optimiser l'usage de l'outil.",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102614/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102615",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE A - Escape game : s&#8217;échapper de la routine",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Conception, expérimentation, mise en place et exploitation pédagogique d'escape games enrichis par le numérique, au service d'une pédagogie innovante, ludifiée et collaborative, mais toujours centrée sur les apprentissages.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Concevoir un Escape Game, c'est organiser un espace de rencontre potentiel entre les élèves et les savoirs grâce au jeu. Notre formation proposera : (1)une expérimentation de différentes formes d'Escape Games afin de comprendre leurs principes, leurs mécanismes et leurs plus-values pédagogiques. (2)une réflexion sur l'intérêt de ludifier sa pédagogie. (3)la découverte et la prise en main d'outils numériques permettant d'apporter une vraie plus-value (tels que Genially, Learning Apps ou des cadenas numériques). (4)présentation et mise en pratique de techniques de conception permettant de ludifier ses supports. (5)la présentation de méthodes permettant la mise en place concrète d'Escape Games avec une classe entière. (6)la conception de scénarii pédagogiques ludifiants : Quelles étapes ?",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102615/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102616",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "PARCOURS MAGISTERE MODULE B - Classe inversée, pédagogie renversante",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du second degré",
      objectifs:
          "Quels sont les bénéfices de la pratique de la classe inversée pour mes élèves ? Comment concilier innovation pédagogique, différenciation, et individualisation. Quel peut être l'apport des outils numériques pour la pédagogie inversée ?",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Conception de capsules vidéo, travail en groupe, différenciation, apprentissage par les pairs : la pratique de la classe inversée permet de mettre en œuvre quelques-unes des innovations pédagogiques les plus marquantes de ces dernières décennies. Les stagiaires découvriront l'histoire de cette approche innovante et prennent connaissance des expérimentations menées depuis plusieurs décennies dans le monde entier. Ils prendront en main un certain nombre d'outils permettant la création, l'édition et le partage de capsules vidéo ainsi que différents types d'exerciciels. Après une réflexion collective sur les modalités possibles d'organisation du travail en groupe (îlots ludifiés / îlots bonifiés), on s'essaiera à l'élaboration de scenarii pédagogiques adaptés aux besoins de chacun.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102616/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102617",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "PARCOURS MAGISTERE MODULE C - Créer des capsules vidéos",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Maîtrise technique de la vidéo, du son et de l'image. Création de contenus engageants et accessibles. Intégration efficace des vidéos dans l'enseignement.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Cette formation équipe les enseignants du second degré, même débutants, pour créer des vidéos pédagogiques de qualité, favorisant ainsi une expérience d'apprentissage enrichie et inclusive. En utilisant des outils gratuits ou ceux présents dans l'ENT, les stagiaires pourront créer leurs propres ressources, capturer leur écran, exporter leurs vidéos et les publier de manière sécurisée dans leur espace de travail ou dans le portailapps du ministère. La vidéo est un moyen efficace pour engager les élèves et les conforter dans leurs apprentissages.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102617/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102618",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "PARCOURS MAGISTERE  MODULE D - TBI VPI : un allié pédagogique",
      dispoCode: "25A0091144",
      dispoTitre: "NUME07 @ LES FORMATIONS EXPERTES",
      public: "Enseignants du 2nd degré",
      objectifs:
          "Apprendre à utiliser le TBI afin de rendre ses cours plus attrayants. Comprendre et mettre en œuvre dans sa classe ses apports pédagogiques",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Cette formation vous permettra de comprendre et de mettre en œuvre dans sa classe le TBI ou VPI en exploitant tous ses atouts pédagogiques. Réfléchir sur la manière d'appréhender l'outil par rapport à un vidéoprojecteur. Apprendre les principales fonctionnalités de la barre d'outils, du logiciel pour mesurer les possibilités très étendues offertes à la pédagogie. Apprendre à adapter ses cours aux particularités graphiques de cet outil et à préparer en amont ses cours pour optimiser l'usage de l'outil.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102618/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102675",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Un Pixathon c'est comprendre le projet PIX et la certification, vivre des ateliers de progression et passer une certification officielle.",
      dispoCode: "25A0091159",
      dispoTitre: "NUME91 - PIXATHON : CONNAÎTRE LE PROJET PIX",
      public:
          "Tous les enseignants 1er et 2nd degré mais aussi les personnels impliqués dans le projet PIX de l'établissement ou désirant se certifier.",
      objectifs:
          "Comprendre, vivre et préparer le projet PIX dans son établissement",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Explication du projet PIX et des nouveautés. Vivre et comprendre les différentes activités à proposer aux élèves. Passer une certification officielle et en analyser les résultats.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102675/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102676",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre:
          "Concevoir des scénarios et produire des vidéos 360° pour renforcer les compétences du 21ème siècle.",
      dispoCode: "25A0091160",
      dispoTitre: "NUME92 - CONCEVOIR SCENARIO EXPERIENCE IMMERSIVE",
      public: "Enseignants 1er et 2d degré, acteurs éducatifs, étudiants",
      objectifs:
          "Identifier les éléments pertinents d'un environnement, d'un événement. Produire le story board d'une vidéo 360° en intégrant la notion d'immersivité dans la réflexion. Concevoir une expérience immersive en anticipant les éléments marquants.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Cette formation mobilise la valeur immersive de la vidéo 360° pour engager un travail de création des élèves. La production d'espaces immersifs nécessite d'approfondir la réflexion sur les éléments constitutifs et incite à un travail collaboratif et transversal.",
      duree: "5",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102676/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102691",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Certification PIX",
      dispoCode: "25A0091162",
      dispoTitre: "NUME93 - CERTIFICATION PIX",
      public: "Enseignants du 2d degré",
      objectifs: "Sessions de certification pour les enseignants",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Monter en compétences numériques",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102691/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102693",
      plan: "ENS",
      theme: "NUMERIQUE EDUCATIF",
      titre: "Master class Citoyenneté numérique",
      dispoCode: "25A0091164",
      dispoTitre: "NUME94 - MASTER CLASS CITOYENNETE NUMERIQUE",
      public:
          "Personnels 1er et 2nd degrés : enseignants, personnels de direction, vie scolaire, référents académiques, formateurs, etc.",
      objectifs:
          "Identifier les éléments pertinents d'un environnement, d'un événement. Produire le story board d'une vidéo 360° en intégrant la notion d'immersivité dans la réflexion. Concevoir une expérience immersive en anticipant les éléments marquants.",
      contenu:
          "USAGES PEDAGOGIQUES DU NUMERIQUE Cette formation mobilise la valeur immersive de la vidéo 360° pour engager un travail de création des élèves. La production d'espaces immersifs nécessite d'approfondir la réflexion sur les éléments constitutifs et incite à un travail collaboratif et transversal.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102693/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101080",
      plan: "ENS",
      theme: "NUMERIQUE ET SCIENCES INFORMATIQUES",
      titre: "Usage de la plateforme collaborative Capytale en NSI",
      dispoCode: "25A0090527",
      dispoTitre: "NSI_01 - USAGES PLATEFORME COLLABORATIVE NSI",
      public: "Les enseignants concernés par l'informatique en   lycée",
      objectifs:
          "La formation vise à développer l'usage de   plateformes (collaboratives) et envisage la mise à   disposition de ressources et le suivi des travaux   des élèves de NSI",
      contenu:
          "NUMERIQUE ET SCIENCES INFORMATIQUES Appropriation des services de plateforme type   Capytale",
      duree: "9",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101080/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101083",
      plan: "ENS",
      theme: "NUMERIQUE ET SCIENCES INFORMATIQUES",
      titre:
          "Mise en place de projets autour de jeux vidéos permettant de travailler sur des notions de première et terminale avec un objectif de participer au concours la nuit du code",
      dispoCode: "25A0090529",
      dispoTitre: "NSI_02 - PROJET JEU VIDEO ET CONCOURS NUIT DU CODE",
      public:
          "Professeurs en lycée destinés à l'enseignement de NSI en première et terminale",
      objectifs:
          "Mise en place de projets autour de jeux vidéos permettant de travailler sur des notions de première et terminale de façon ludique avec un objectif en fin d'année qui est le concours la nuit du code",
      contenu:
          "NUMERIQUE ET SCIENCES INFORMATIQUES Prise en main pyxel et une présentation de l'insertion des projets dans une progression et la seconde pour une réalisation.  Les tableaux et dictionnaires (space_invaders), les tableaux de tableaux (dig dug), POO (multiballes), files (snake), graphe (Labyrinthe).",
      duree: "9",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101083/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100870",
      plan: "ENS",
      theme: "PERFECTIONNEMENT LANGUE VIVANTE ETRANGERE",
      titre: "Oser enseigner en LVE de l'école au lycée au service des élèves",
      dispoCode: "25A0090440",
      dispoTitre: "PLVE04 - OSER ENSEIGNER EN LVE",
      public:
          "Ils s'adressent à tous les personnels souhaitant s'informer sur les modalités (règlementaires et pratiques) d'enseignement d&#8217;une discipline en LVE et des modalités offertes pour le développement de leurs compétences en LVE.",
      objectifs:
          "Formation inter-degrés pour tous les enseignants non linguistes intéressés par l'enseignement en langue vivante étrangère d'une discipline de l'école au LGT ou LP. Dans le cadre du déploiement académique du Plan Langues Vivantes, piloté par la DGESCO, le groupe des référents académiques du Plan Langues Vivantes vient en appui aux différentes disciplines pour la promotion et la mise en place la plus large possible de l'enseignement EN langue vivante étrangère sur l'ensemble du parcours de l'élève. Inciter les enseignants à la certification complémentaire",
      contenu:
          "INTERLANGUES Temps 2 des Rencontres Plan langues, les visioconférences s'efforceront de répondre aux attentes du public inscrit en tenant compte des lieux d'exercice, des parcours et de la discipline concernée.   Les regroupements seront adaptés au public inscrit : possibilité de regroupements par langues, par disciplines (ou groupes de disciplines) ou encore par niveau d'enseignement (1er ou 2nd degré.  Ils s'efforceront de proposer un contenu qui soit complémentaire par rapport aux aux offres disciplinaires dans ce domaine.  Il s'agira également d'identifier le champ des possibles en fonction des territoires et de favoriser une exposition à la langue de façon régulière et au service d'une autre discipline. Croiser les enseignements et les pratiques.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100870/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100208",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre:
          "Assurer l'animation de l'équipe vie scolaire et organiser son activité",
      dispoCode: "25A0090172",
      dispoTitre: "EDU_06 @ ASSURER ORGANISATION EQ VIE SCO NIV 1",
      public: "cpe public volontaire",
      objectifs:
          "améliorer le management du service pour contribuer à   la politique de l'établissement",
      contenu:
          "ACCOMPAGNEMENT RH comment, sous la responsabilité du chef   d'établissement, améliorer l'organisation et   l'animation du service de la vie scolaire au   profit de la réussite, de la sécurité et de   l'épanouissement des élèves?    gérer l'équipe de vie scolaire, faire évoluer le   service, appréhender les moments difficiles.   la formation alternera apports scientifiques,   mises en situations, et co-construction d'outils",
      duree: "15",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100208/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100210",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre:
          "Renforcer le sentiment de justice scolaire pour améliorer le climat scolaire",
      dispoCode: "25A0090173",
      dispoTitre: "EDU_07 @ RENFORCER SENTIMENT DE JUSTICE SCOLAIRE",
      public: "à destination des cpe volontaires",
      objectifs:
          "Connaître le cadre réglementaire régissant les   punitions scolaires et procédures disciplinaires.   Caractéristiques de la sanction éducative.   - Définition de la justice en milieu scolaire et   corrélation avec la qualité du climat.   - Approche du concept d'autorité éducative.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Principes généraux du droit, règlement intérieur,   sursis, commission éducative, procédures   disciplinaires, plan de lutte contre les violences   scolaires.   - Définition de la justice en milieu scolaire et   apports de la recherche.    - Réflexion sur les finalités de la sanction.  A destination des CPE volontaires de l'Académie   ayant au moins 5 ans d'expérience",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100210/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100212",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre: "EDU_08.A @ TRAVAILLER COMPETENCES PSYCHO-SOCIALES",
      dispoCode: "25A0090174",
      dispoTitre: "EDU_08 @ TRAVAILLER COMPETENCES PSYCHO-SOCIALES",
      public: "CPE",
      objectifs:
          "Comprendre le lien entre l'acquisition des   compétences psycho-sociales par les élèves et la   pratique du CPE Interroger l'approche par   compétences, l'évaluation et questionner le rôle   pédagogique du   CPE Faire le lien avec l'accrochage scolaire",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP La formation alternera des apports théoriques et des   mises en pratique Travail sur les dispositifs   permettant de travailler sur ces compétences.   Comment intégrer ce travail dans le fonctionnement   du service vie scolaire ?",
      duree: "9",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100212/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100214",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre:
          "Parcours : promouvoir l&#8217;égalité filles-garçons pour                                             améliorer le climat scolaire",
      dispoCode: "25A0090175",
      dispoTitre: "EDU_09 @ PROMOUVOIR EGALITE FILLES-GARÇONS",
      public:
          "cpe de l'académie public volontaire avec au moins 5   ans d'ancienneté",
      objectifs:
          "-Dans le cadre des Valeurs de la République,   s'approprier les enjeux éducatifs de la diffusion   d'une culture d'égalité entre filles et garçons   dans les établissements scolaires.  -Comment contribuer en tant que CPE à la promotion   de l'égalité filles-garçons au sein de   l'établissement scolaire lieu de socialisation,   d'apprentissage et d'expérience de cette égalité?",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP -Cette formation alternera des apports théoriques,   de la mutualisation d'expérience et des mises en   pratiques.  -Acquisition de connaissances et de compétences   dans le cadre de cette question transversale de   l'égalité filles-garçons.  -Présentation des enjeux liés à la réussite   scolaire, l'orientation, le climat scolaire...  -Prévention des comportements sexistes et des   violences  -Présentation des référents académiques, des   ressources et des partenaires mobilisables en EPLE  Public volontaire",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100214/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100216",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre:
          "EDU_10.A@ Construire et mettre en œuvre des situations éducatives en prenant en compte la diversité des  élèves incubateur de projets   éducatifs",
      dispoCode: "25A0090176",
      dispoTitre: "EDU_10 @ CPS PROJETS EDUCATIFS CREA LAB",
      public: "à destination des cpe volontaires de l'Académie",
      objectifs:
          "-Focus sur la créativité, une CPS et une compétence   du XXIème siècle selon F. Taddéi /dimension   laboratoire de ce dispositif de formation  Développer la créativité professionnelle et celle   des élèves dans le cadre de la construction et de la   mise en œuvre de projets éducatifs",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP -Work-shop de collaboration créative : incubateur de   projets éducatifs, dimension laboratoire de ce   dispositif de formation  -Développer la créativité des élèves pour le montage   des projets inscrits au sein des parcours :   Définition de la créativité CPS et compétence du   XXIè siècle  -Evaluation du sentiment d'auto efficacité créative,   -Présentation des micro et macroprocessus de la   créativité  -Recherche du catalyseur de la créativité : la   collaboration créative",
      duree: "12",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100216/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100218",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre: "Cyber-citoyenneté",
      dispoCode: "25A0090177",
      dispoTitre: "EDU_11 @ CYBER-CITOYENNETE",
      public: "CPE",
      objectifs:
          "Contribuer à la construction de compétences   nécessaires à un usage éclairé et citoyen du   numérique et des réseaux sociaux.",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP Les pratiques adolescentes en terme de numérique   et de réseaux sociaux. Typologie des   réseaux sociaux, présentation des réseaux sociaux   les plus utilisés par les élèves.    Enjeux sociologiques et éthiques.   Principes juridiques qui s'appliquent sur le web   et dans les pratiques numériques quotidiennes   des élèves.    Contribution à la conception et à la mise en   œuvre de projets et d'actions en faveur d'un   usage plus réfléchi et plus responsable du    numérique et des réseaux sociaux.",
      duree: "15",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100218/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100220",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre: "EDU_12 @ CPS RELATION CONFIANCE AVC FAMILLES",
      dispoCode: "25A0090178",
      dispoTitre: "EDU_12 @ CPS RELATION CONFIANCE AVC FAMILLES",
      public: "CPE",
      objectifs:
          "-Comprendre l'intérêt du partenariat avec les   familles et les collaborateurs institutionnels   dans la réussite et l'épanouissement de l'élève.   -Mettre en place des conditions favorables à   l'accueil des familles.   -Place dans la politique d'établissement. Créer le   cercle vertueux de la confiance école-famille.   -Établir une relation efficace avec les   partenaires extérieurs en charge du soutien aux   familles.",
      contenu:
          "AUTRE CONTENU EDUC, FORMATION, ORGA, ACCOMP -Définition et évolution des notions de parentalité,   de co-éducation et d'alliances éducatives : de la   défiance au partenariat de confiance.   -Écoute active et entretien d'aide (espace et temps)   -La collaboration avec les partenaires acteurs de   cette thématique.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100220/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100222",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre:
          "Assurer l'animation de l'équipe vie scolaire et organiser son activité",
      dispoCode: "25A0090179",
      dispoTitre: "EDU_13 @ ANIMER REUNION EN TANT QUE CPE",
      public: "cpe public volontaire",
      objectifs:
          "accompagner le CPE à la préparation de la mise en   œuvre de réunion en lien avec l'exercice de son   métier  -Définir le rôle du CPE comme animateur, définir   les modalités de communication,   -Construire son déroulé de réunion",
      contenu:
          "ACCOMPAGNEMENT RH À travers des apports théoriques et des mises en   situation professionnelles :  -Définir des objectifs de la réunion   -Proposer les actions nécessaires à la bonne   conduite de la réunion, ainsi que la gestion des   échanges   -Planifier déroulement de la réunion (gestion du   temps, gestion des conflits, gestion de la prise   de parole)   -Proposer des exemples de techniques d'animation   de réunion   -Formaliser les compte-rendus par des écrits",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100222/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100224",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre:
          "Assurer l'animation de l'équipe vie scolaire et organiser son activité",
      dispoCode: "25A0090180",
      dispoTitre: "EDU_05 @ OUTIL IA POUR VIE SCOLAIRE",
      public: "cpe public volontaire",
      objectifs:
          "-Aborder sous forme d'un table ronde plusieurs   questions autour de l'IA en lien avec le métier de   CPE  -Table ronde constituée de CPE, de pédagogues et   d'acteurs académiques en lien avec le pilotage du   numérique.",
      contenu:
          "ACCOMPAGNEMENT RH -Echanges de points de vue autour de questions en   lien avec la thématique :   L'IA peut-elle assister le CPE ? Existe-t-il une   place pour l'IA dans les bureaux de la vie   scolaire ? Les CPE ont-ils intérêt à s'emparer de   cet outil pour les aider dans certaines tâches?   Quelles conséquences sur la relation entre acteurs   de la communauté éducative ? les questions   éthiques ?",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100224/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102754",
      plan: "ENS",
      theme: "PERSONNELS D'EDUCATION",
      titre:
          "Assurer l'animation de l'équipe vie scolaire et organiser son activité",
      dispoCode: "25A0091187",
      dispoTitre: "EDU_15 @ INTELLIGENCE COLLECTIVE ET IA",
      public: "cpe public volontaire",
      objectifs:
          "Mes objectifs étaient de stimuler la créativité et   la collaboration des élèves grâce à l'intelligence   collective et à l'IA, et de concevoir des   séquences   éducatives innovantes et adaptées à leurs besoins.   J'ai également souhaité sensibiliser les élèves   aux   enjeux éthiques liés à l'usage de l'IA.",
      contenu:
          "ACCOMPAGNEMENT RH Lors de ce stage, j'ai exploré comment   l'intelligence collective, la créativité en groupe   et l'intelligence artificielle permettent de   concevoir des séquences d'animation et des projets   éducatifs innovants. Grâce à des outils d'IA, les   élèves ont pu créer, collaborer et personnaliser   leurs apprentissages, tout en développant leur   esprit critique et leur créativité. Ce stage m'a   permis de mettre en place des activités   originales,   adaptées aux besoins de chacun, et de sensibiliser   les élèves aux enjeux éthiques du numérique.",
      duree: "18",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102754/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101799",
      plan: "ENS",
      theme: "PHILOSOPHIE",
      titre: "L'urgence",
      dispoCode: "25A0090833",
      dispoTitre: "PHI_01 - CULTURE PHILOSOPHIQUE",
      public: "Professeurs de Philosophie de l'académie.",
      objectifs:
          "L'urgence, autrefois associée à des situations exceptionnelles, semble être devenue un phénomène structurant de nos sociétés contemporaines, au point de devenir la norme jusque dans notre rapport subjectif et intime au temps. Comment comprendre et analyser un tel phénomène ?",
      contenu:
          "PHILOSOPHIE Les nombreuses problématiques soulevées par la notion d'urgence seront discutées au sein de cette formation (la tension entre action immédiate et réflexion et délibération ; l'instrumentalisation politique de l'urgence ; la relation entre la notion de crise et d'urgence ; la question du protocole dans l'urgence ; l'urgence comme possible condition d'action face à la procrastination ; l'articulation entre le temps de l'urgence et le temps de la philosophie, entre l'agir et le penser...), soulignant par là l'intérêt de cette notion comme opérateur problématique pour interroger certaines des notions du programme de philosophie de Terminale.",
      duree: "4",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101799/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101800",
      plan: "ENS",
      theme: "PHILOSOPHIE",
      titre:
          "Le corps féminin à l'époque moderne : lectures de Poulain de la Barre",
      dispoCode: "25A0090833",
      dispoTitre: "PHI_01 - CULTURE PHILOSOPHIQUE",
      public: "Professeurs de Philosophie de l'académie.",
      objectifs:
          "L'étude des textes de Poulain de la Barre est particulièrement intéressante pour les élèves de Terminale dans le cadre du programme de philosophie, car elle permet de comprendre comment la rupture cartésienne avec la scolastique au XVIIe siècle a conduit à une pensée plus égalitaire des sexes, en remettant en question les conceptions inégalitaires et misogynes du corps féminin.",
      contenu:
          "PHILOSOPHIE Mais alors, comment définir le corps féminin ? Les différences observées entre les sexes sont-elles uniquement dues à des pratiques culturelles, comme le propose Poulain de la Barre ? Marie-Frédérique Pellegrin expliquera comment ont émergé à l'époque moderne ces problématiques.",
      duree: "4",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101800/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101801",
      plan: "ENS",
      theme: "PHILOSOPHIE",
      titre: "La démocratie",
      dispoCode: "25A0090833",
      dispoTitre: "PHI_01 - CULTURE PHILOSOPHIQUE",
      public: "Professeurs de philosophie",
      objectifs:
          "Dès l'origine, la philosophie à interrogé le régime démocratique, ses bienfaits et ses faiblesses. De l'Athènes antique à aujourd'hui, ce régime a été confronté à l'histoire, aux évolutions culturelles, sociales et économiques et en a sans doute été transformé, tout comme la pensée de la démocratie. Comment la philosophie politique contemporaine pense ces évolutions ? Quelles sont les apories de la démocratie contemporaine ?",
      contenu:
          "PHILOSOPHIE Dès l'origine, la philosophie à interrogé le régime démocratique, ses bienfaits et ses faiblesses. De l'Athènes antique à aujourd'hui, ce régime a été confronté à l'histoire, aux évolutions culturelles, sociales et économiques et en a sans doute été transformé, tout comme la pensée de la démocratie. Comment la philosophie politique contemporaine pense ces évolutions ? Quelles sont les apories de la démocratie contemporaine ?",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101801/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101803",
      plan: "ENS",
      theme: "PHILOSOPHIE",
      titre: "Penser l'intelligence artificielle",
      dispoCode: "25A0090833",
      dispoTitre: "PHI_01 - CULTURE PHILOSOPHIQUE",
      public: "Professeurs de philosophie",
      objectifs:
          "État de la réflexion philosophique et scientifique sur l'avènement de l'IA dans le paysage éducatif comme dans le monde du travail et de la culture : identification du phénomène, prise de hauteur grâce à une approche informée et critique.",
      contenu:
          "PHILOSOPHIE L'objectif est d'acquérir un point de vue panoramique sur les recherches actuelles dans le domaine de l'IA. Dans cette perspective, chaque webinaire abordera le ou les texte(s) important(s) d'un chercheur, en synthétisera les enjeux et en proposera une mise en perspective.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101803/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101804",
      plan: "ENS",
      theme: "PHILOSOPHIE",
      titre: "Penser autrement la dissertation",
      dispoCode: "25A0090835",
      dispoTitre: "PHI_03 - PRATIQ PEDAGOGIQUES - APPROFONDISSEMENT",
      public: "Enseignants de philosophie",
      objectifs:
          "Réfléchir aux finalités de cet exercice canonique et varier les modalités d'entrainement.",
      contenu:
          "PHILOSOPHIE Si la dissertation est un exercice académique qui suppose pour l'élève de se soumettre à certaines règles et qui génère chez le professeur certains attendus, elle n'en reste pas moins un exercice où la pensée doit trouver sa forme. Comment penser ses différentes formes et comment entraîner les élèves pour qu'ils soient en mesure de restituer leur pensée?",
      duree: "5",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101804/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101805",
      plan: "ENS",
      theme: "PHILOSOPHIE",
      titre:
          "Philosophie et IA : Le travail à la maison à l'heure des robots conversationnels",
      dispoCode: "25A0090835",
      dispoTitre: "PHI_03 - PRATIQ PEDAGOGIQUES - APPROFONDISSEMENT",
      public: "Professeurs de Philosophie de l'académie.",
      objectifs:
          "Formation à l'IA pour un usage raisonné et critique (monter en compétence dans la maitrise des outils), échanges de pratiques destinées à accompagner le nécessaire travail personnel des élèves, y compris sur temps libre.",
      contenu:
          "PHILOSOPHIE L'objectif de cette formation consiste à acquérir des connaissances pratiques sur l'IA afin d'accompagner les élèves dans la rédaction de leurs travaux, en classe comme à la maison.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101805/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100841",
      plan: "ENS",
      theme: "PHYSIQUE CHIMIE ELECTRICITE",
      titre: "La classe flexible en physique-chimie",
      dispoCode: "25A0090429",
      dispoTitre: "SPH_06 @  LA CLASSE FLEXIBLE",
      public: "Enseignants de physique-chimie collège et lycée",
      objectifs:
          "- Définition de la classe flexible  - Découvrir le matériel nécessaire pour réaliser une classe flexible  - Repenser l'agencement de son laboratoire pour amener à une classe flexible  - Découvrir d'autres manières d'enseigner entrant dans le cadre d'une classe flexible (classe puzzle + révisions autonomes)  - Réaliser une séance / séquence flexible  - Retours d'expérience pour améliorer et perfectionner ce qui a été entrepris",
      contenu:
          "PHYSIQUE-CHIMIE Depuis quelques années, nous entendons parler de «classes flexibles», notamment dans les classes primaires, puis dans les lycées professionnels. Le besoin de mobilité de nos élèves n'a jamais été aussi présent qu'à ce jour.  La classe flexible permet aux élèves de bouger, d'expérimenter, de choisir, de devenir autonome, tout en étant encadré par l'enseignant dans un climat de bienveillance et d'écoute.  Au cours de cette formation, après un court point théorique, nous vous proposerons nos retours d'expérience de nos laboratoires flexibles et nous donnerons des outils pratiques vous permettant de vous lancer en toute sérénité dans cette nouvelle façon d'enseigner, qui n'a plus à prouver son efficacité auprès de nos élèves et des enseignants.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100841/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100855",
      plan: "ENS",
      theme: "PHYSIQUE CHIMIE ELECTRICITE",
      titre: "Physique dans un parc d'attraction",
      dispoCode: "25A0090434",
      dispoTitre: "SPH_08 - LA PHYSIQUE DANS UN PARC D'ATTRACTION",
      public: "Enseignants de physique-chimie collège et lycée",
      objectifs:
          "Utiliser, réinvestir les connaissances, savoir-faire et notions de physique-chimie vues dans l'année lors de situations concrètes. Ancrer la physique-chimie dans le concret à travers la visite et différentes mesures effectuées dans les attractions (réalisation de calculs : énergie cinétique, potentielle, vitesse, vitesse linéaire, période, fréquence).",
      contenu:
          "PHYSIQUE-CHIMIE Physique-chimie et parc d'attraction, c'est une évidence. Quel professeur de physique chimie n'a jamais visité un parc d'attraction en se disant qu'il pourrait l'intégrer dans ses cours ! Cela est chose faite, « Dennlys parc » colle parfaitement au programme de cycle terminal, 1ère spécialité physique-chimie et 1ère STIDD.  Mécanique, acoustique, électricité, le parc est fait pour cela. Vous ne serez pas en reste avec la chimie de la barbe à papa ou la thermodynamique de la cuisson des gaufres.  Vous aurez accès aux 32 attractions du parc et à toutes les données qui vous seront nécessaires. Vous aurez également accès au questionnaire challenge (clé en main) réalisé par les élèves, ce qui vous permettra de vous projeter sur une sortie pédagogique.  PUBLIC CIBLE : Enseignants de physique-chimie collège et lycée",
      duree: "6",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100855/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100862",
      plan: "ENS",
      theme: "PHYSIQUE CHIMIE ELECTRICITE",
      titre: "Galaxies et cosmologie",
      dispoCode: "25A0090436",
      dispoTitre: "SPH_10 - ASTRONOMIE ET ASTROPHYSIQUE",
      public: "Professeurs de physique-chimie du second degré",
      objectifs:
          "L'Observatoire de l'Université de Lille est composé en 2016 de quatre enseignants-chercheurs permanents. L'astronomie est une science qui offre à l'imagination les domaines les plus vastes dans le temps et l'espace, tout en proposant des spectacles d'une grande beauté. L'intérêt des jeunes comme du public adulte se porte naturellement sur les découvertes récentes relatives à l'Univers et il s'accompagne souvent de questions métaphysiques. La place de l'Homme dans l'Univers, son origine et son devenir sont naturellement questionnés dès qu'on aborde un thème d'astronomie et l'engouement des jeunes pour ce domaine s'explique sans doute autant par cet aspect que par les découvertes scientifiques proprement dites.",
      contenu:
          "PHYSIQUE-CHIMIE Présentation de notre galaxie (contenu stellaire, nébuleuses gazeuses, poussières, structure : bras spiraux, disque, noyau, halo) et de son environnement proche(Nuages de Magellan, galaxies naines satellites (ou non), groupe local).Apport de connaissances sur la formation des galaxies et leur classification morphologique.   Initiation à la cosmologie : la relativité générale, par une approche historique et non formaliste - le décalage spectral des astres extragalactiques et l'hypothèse d'expansion de l'Univers (Hubble, Lemaître, le passé de l'Univers dans le cadre d'un modèle FLRW, constante cosmologique et expansion accélérée) par des diagrammes sans équations.  Deux sessions de formation de 3 heures sont prévues deux mardis en fin d'après-midi à l'Observatoire de Lille.  PUBLIC CIBLE : Professeurs de physique-chimie du second degré",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100862/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100863",
      plan: "ENS",
      theme: "PHYSIQUE CHIMIE ELECTRICITE",
      titre: "Phénomènes astronomiques et calendriers",
      dispoCode: "25A0090436",
      dispoTitre: "SPH_10 - ASTRONOMIE ET ASTROPHYSIQUE",
      public: "Professeurs de physique-chimie du second degré",
      objectifs:
          "L'Observatoire de l'Université de Lille est composé en 2016 de quatre enseignants-chercheurs permanents. L'astronomie est une science qui offre à l'imagination les domaines les plus vastes dans le temps et l'espace, tout en proposant des spectacles d'une grande beauté. L'intérêt des jeunes comme du public adulte se porte naturellement sur les découvertes récentes relatives à l'Univers et il s'accompagne souvent de questions métaphysiques. La place de l'Homme dans l'Univers, son origine et son devenir sont naturellement questionnés dès qu'on aborde un thème d'astronomie et l'engouement des jeunes pour ce domaine s'explique sans doute autant par cet aspect que par les découvertes scientifiques proprement dites.",
      contenu:
          "PHYSIQUE-CHIMIE La première partie de ce module sera consacrée à la description des phénomènes astronomiques que l'on peut observer depuis la Terre. On commencera par présenter la forme sous laquelle ces phénomènes sont publiés : les éphémérides. Ces phénomènes sont multiples et variés : mouvements apparents des planètes, éclipses, occultations et autres transits.   Dans une seconde partie, on affrontera le problème de la mesure et de la définition du temps, en astronomie mais aussi dans la vie courante.  Deux sessions de formation de 3 heures sont prévues deux mardis en fin d'après-midi à l'Observatoire de Lille.  PUBLIC CIBLE : Professeurs de physique-chimie du second degré",
      duree: "6",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100863/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100597",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre: "Introduction à la ludopédagogie",
      dispoCode: "25A0090320",
      dispoTitre: "RECH01 - INITIATION A LA LUDOPEDAGOGIE",
      public:
          "Professeurs du cycle 2 à l'enseignement supérieur (BTS); Formateurs; Formateurs de formateurs; Ingénieurs de formation",
      objectifs:
          "- Faire vivre une séance ludopédagogique  - Comprendre la notion d'écarts interprétatifs   - Appréhender la structuration en 3 temps ludopédagogiques",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT a) Faire vivre une séance ludopédagogique : l'objectif est de faire vivre aux participants une séance ludopédagogique pour comprendre l'approche pédagogique et pouvoir par la suite saisir les concepts théoriques sous-jacents. Concrètement, il s'agit de proposer une activité de jeux sérieux et de capitaliser sur l'expérience vécue par chaque participant dans le cadre d'une visée utilitaire précise à atteindre.  b) Comprendre la notion d'écarts interprétatifs : à l'issue de la séance ludopédagogique, les apprenants seront amenés à constater qu'ils disposent de filtres de perceptions différents. C'est pourquoi, il conviendra d'adopter des stratégies pour tâcher de réduire les interprétations qui s'écarteraient de trop des objectifs pédagogiques visés.  Modalités: distanciel zoom le soir de 17h à 19h.",
      duree: "2",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100597/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100600",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre: "Bonnes et mauvaises pratiques en ludopédagogie",
      dispoCode: "25A0090321",
      dispoTitre: "RECH02 - LUDOPEDAGOGIE : BONNES/MAUVAISES PRAT.",
      public:
          "Professeurs cycle 2 et enseignements supérieurs; Formateurs; Formateurs de formateurs; Ingénieurs de formation",
      objectifs:
          "- Comprendre l'apport et limites de certaines approches ludopédagogiques  - Savoir déconstruire les jeux (vidéo) et identifier les messages associés  - Aborder la question du genre en lien avec le jeu vidéo",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT a) Comprendre l'apport et limites de certaines approches ludopédagogiques :   l'objectif est d'aborder les notions d'effets et de contre-effets que peuvent présenter des activités ludopédagogiques. Il s'agit de les appréhender pour comprendre quelles approches adopter pour sécuriser au mieux les apprenants dans un contexte ludopédagogique.  b) Savoir déconstruire les jeux (vidéo) et identifier les messages associés :   l'idée est ici d'aborder la notion de soft power opéré par le jeu et d'en comprendre les mécanismes principaux. L'intention est ainsi de donner aux participants des clés pour leur permettre d'aider à leurs propres élèves ou étudiants à appréhender les messages que peuvent véhiculer certains jeux, notamment de nature vidéoludiques.  Distanciel (Utilisation de Zoom et activités proposées en ligne): 2h le soir de 17h à 19h",
      duree: "2",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100600/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100601",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Enseigner la compréhension par (et avec) le cinéma d'animation : réconcilier le contemporain et le patrimonial, la culture juvénile et la culture scolaire",
      dispoCode: "25A0090322",
      dispoTitre: "RECH03 - COMPREHENSION & CINEMA D'ANIMATION",
      public: "Enseignants cycle 3 et 4",
      objectifs:
          "- Réconcilier la culture juvénile et la culture scolaire  - Ouvrir la classe aux pratiques multimodales du XXIe siècle  - Les fictions multimodales et leur transposition didactique  - Les corpus transfictionnels : enjeu de formation",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Ce module se propose, à partir d'exemples concrets et de pistes d'exploitation pédagogique, de penser les fictions numériques et leur transposition didactique, de faire le lien entre l'extrême contemporain et le patrimonial, de créer des ponts entre la culture juvénile et la culture scolaire.   Par le cinéma d'animation, il est possible de former le sujet lecteur-spectateur, de développer des compétences en compréhension du récit et des compétences multimodales.  Il s'agira d'explorer notamment la manière dont le cinéma d'animation permet d'actualiser les œuvres patrimoniales, d'acquérir des stéréotypes culturels (et de les dépasser), de développer des compétences génériques.  Corpus envisagé autour :  - de ce que le cartoon fait aux œuvres patrimoniales ;  - des stéréotypes de la fiction  un mercredi après-midi par zoom",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100601/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100602",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Travail collectif et formation par et pour des pratiques pédagogiques choisies",
      dispoCode: "25A0090323",
      dispoTitre: "RECH04 - TRAVAILLER & SE FORMER DIFFEREMMENT",
      public: "Enseignants 1D et 2D",
      objectifs:
          "Penser l'organisation, à l'échelle d'une équipe pédagogique, permettant de soutenir le développement de pratiques pédagogiques choisies (temps dédiés, outils) et la manière d'agencer des modes de fonctionnement collectifs et formateurs.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Analyses des représentations et des constats relatifs à la formation continue des enseignants (appui sur le rapport du Cnesco, 2020).  Le travail collectif et l'auto-coformation, un facteur de professionnalisation ?  Partage d'expériences autour de modalités d'organisation du travail enseignant, de formation continue et d'autoformation. Identification de modalités de travail favorisant l'auto-coformation.  Aborder la question des pratiques différentes, de quoi s'agit-il ?  Présentation d'expériences : école Vitruve, école Ariane Capon.  Conférence participative un mercredi après-midi sur le site INSPE de Villeneuve d'Ascq",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100602/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100603",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Inclure des élèves allophones dans toutes les disciplines : lire et écrire en langue seconde",
      dispoCode: "25A0090324",
      dispoTitre: "RECH05 - LIRE ET ECRIRE EN LANGUE SECONDE",
      public: "Enseignants 2D",
      objectifs:
          "- Connaitre les notions de langue seconde et langue de scolarisation  - Comprendre les mécanismes en jeu dans l'apprentissage de la lecture-écriture en langue étrangère  - Identifier les besoins éducatifs particuliers des élèves allophones nouvellement arrivés et y répondre",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT - Les principales caractéristiques des élèves allophones (connaissance du public et de ses besoins)  - Les notions de langue seconde, langue de scolarisation, littératie  - L'analyse de la dimension langagière dans différentes disciplines  - L'explicitation des mécanismes et composantes intervenant dans l'acte du lire/écrire   - L'apport de pistes pédagogiques pour aider au développement des compétences littéraciques des élèves allophones dans toutes les matières  INSPE Lille Hdf, un mercredi après-midi",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100603/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100604",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Agir, s'exprimer et comprendre à travers les activités physiques, faisons bouger les lignes : illustration avec le savoir nager",
      dispoCode: "25A0090325",
      dispoTitre: "RECH06 - ACTIVITE DE L'ENSEIGNANT EN EPS",
      public: "Enseignants 1D et 2D",
      objectifs:
          "Permettre aux enseignants en EPS de progresser sur leurs interventions pédagogiques et didactiques à l'aide d'observables simples qui pourront être utilisés en autoscopie ou pour faire progresser un stagiaire.",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Ajustements en intervention : observation & introspection de l'enseignant en EPS lors de ses interventions pédagogiques (utilisation des casquettes de supporter, d'arbitre et de coach )  Conception et régulation par les choix didactiques : priorisation des choix en fonction de la sécurité, des programmes, du temps moteur, des adaptations, des plus-values, etc.  INSPE Lille Hdf, un mercredi après-midi  Exemples pris dans le curriculum de l'élève sur l'activité du savoir nager en lien avec la nouvelle circulaire du 3 mars 2022. Les appuis didactiques seront tirés des documents Eduscol, du Guide du savoir nager de Durali et Fouchard, inspirés de la démarche de Catteau.  INSPE Lille Hdf, un mercredi après-midi ou samedi matin (3h)",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100604/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100605",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Une conférence interactive inspirante pour faire de la géographie enseignée (cycle 3) une ressource pour penser le monde",
      dispoCode: "25A0090326",
      dispoTitre: "RECH07 - RE-ECHANTER LA GEO AU CYCLE 3",
      public: "Enseignants 1D et 2D",
      objectifs:
          "Varier les supports didactiques pour construire la notion centrale du programme : la notion d'habiter. Produire des cas concrets (études de cas) ancrés dans les problématiques actuelles (scientifiques et sociétales). Construire des situations-problèmes : mettre les élèves en situation de raisonner, de se poser des questions, de construire leurs savoirs",
      contenu:
          "CONTENU NE TOUCHANT À AUCUN DOMAINE PRECEDENT Appréhender la géographie (cycle 3) à partir de supports divers et variés, accessibles très facilement (chansons, publicité, photographies, documents administratifs, SIG (géoportail)  etc... pour proposer aux élèves  des activités qui leur permettent de comprendre le monde dans  lequel ils vont grandir et en devenir des acteurs. L'organisation de la conférence en présentiel est pensée pour produire ensemble des situations. présentiel de 3h : INSPE v'Ascq et INSPE Valenciennes - au choix",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100605/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100610",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre: "Moi aussi je bouge !",
      dispoCode: "25A0090331",
      dispoTitre: "RECH08 - MOI AUSSI JE BOUGE !",
      public: "Enseignants 2D d'EPS",
      objectifs:
          "Donner des informations sur la prise en charge d'un point de vue physiologiques des élèves diabétique de type 1 en EPS. Faire un état des lieux des contraintes ou des soutiens qui impactent le bien-être et l'engagement de ces élèves dans la pratique physique.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE 1. Intervention sur l'activité physique et le diabète de type 1 d'un point de vue physiologique et pratique. 2. Présenter un travail de recherche qui porte sur l'engagement et le bien-être à l'école des élèves diabétiques de type 1 en s'intéressant à la fois aux points de vue de ces élèves et aux points de vue de leurs enseignants d'EPS. Identifier les bonnes pratiques en EPS. Examiner les contraintes, obstacles ou soutiens qui impactent (positivement ou négativement) leur bien-être et leur engagement dans la pratique physique scolaire. 3. Temps de questionnement pour les enseignants.",
      duree: "3",
      effectif: "40",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100610/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100611",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre: "Construire une séquence engageante en EPS",
      dispoCode: "25A0090332",
      dispoTitre: "RECH09 -  SEQUENCE ENGAGEANTE EN EPS",
      public: "Enseignants 2D d'EPS",
      objectifs:
          "Discerner deux tensions: facile VS difficile et simple VS complexe; Mieux comprendre les options de parcours personnels proposées par l'enseignant; Interroger ces options sous l'angle de leur potentiel inclusif.",
      contenu:
          "EDUCATION PHYSIQUE ET SPORTIVE Qu'est-ce qu'un élève mobilisé? motivé? engagé? Après un rappel synthétique des théories classiques de la motivation et de l'engagement, nous exposerons un cadre pragmatique d'analyse des situations sous le prisme de la mobilisation des personnes. De nouvelles questions clés pour enseigner-apprendre émergent alors: Qu'est-ce qui peut se partager avec tous en permettant à chacun de rester mobilisé (pratiques culturelles fédératrices)? Qu'est-ce qui ne se partage qu'avec quelques-uns(travail en groupe/de groupe / en équipe / d'équipe)? Qu'est-ce qui est strictement singulier (travail individuel)? Nous poursuivrons l'inventaire des possibles en exposant trois logiques de conception de la séquence (linéaire, spiralaire, modulable & personnalisable).  un mercredi après-midi en visio (3h)",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100611/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100612",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Les plateformes de lecture en ligne et les adolescents : entre appropriations culturelles et stratégies de captation.",
      dispoCode: "25A0090333",
      dispoTitre: "RECH10 -  PLATEFORMES DE LECTURE EN LIGNE",
      public: "Enseignants second degré lettres et professeurs documentalistes",
      objectifs:
          "Il s'agit avec ce module, de découvrir et d'acquérir des références en matière de lecture numérique adolescente, et en particulier, 1/ de comprendre certaines de leurs pratiques, 2/ d'observer les mécanismes de captation mis en œuvre par les plateformes qui leur sont destinées.",
      contenu:
          "LECTURE Cette séance permettra de rendre compte de différentes recherches menées dans les Hauts de France auprès de publics adolescents et de présenter un corpus de plateformes de lecture qui séduisent les jeunes lecteurs et lectrices. Nous dresserons un état des lieux des pratiques des adolescents et des stratégies déployées par les industries culturelles qui les ciblent. En analysant ces plateformes et leur mode de fonctionnement, il s'agira de comprendre les rapports ambivalents des pratiques de lecture numérique à la fois très éloignées des lectures dites classiques et souvent en lien avec une culture du livre héritée. Découverte et manipulation des plateformes : 30 minutes. Mise en commun : 15 minutes. Remise en perspective par la présentation des études de pratiques et des analyses des plateformes.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100612/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100613",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Le sens de l'école au service des apprentissages, l'enseignement explicite au service de la réduction des inégalités de réussite.",
      dispoCode: "25A0090334",
      dispoTitre: "RECH11 -  ENSEIGNER PLUS EXPLICITEMENT",
      public: "Enseignants premier degré et second degré",
      objectifs:
          "Prendre conscience du rôle du langage dans l'apprentissage. / Connaître les mécanismes d'apprentissage et leurs obstacles. / Enseigner plus explicitement. / Prendre en compte les élèves dans son enseignement. / Donner du sens aux apprentissages.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Dans ce module de formation nous aborderons ce qui fait obstacle à l'apprentissage chez certains élèves et notamment chez les élèves issus de milieux populaires. Nous verrons, notamment, comment s'adapter à ces élèves pour leur permettre d'apprendre. Dans une perspective d'inclusion, au sens large, c'est à l'école à s'adapter pour la réussite de tous. Elle ne doit plus attendre que les élèves aient les compétences nécessaires pour bien apprendre mais jouer pleinement son rôle en les aidant plutôt qu'en se contentant de constater leur réussite ou leur échec dans les activités scolaires. La verbalisation autour des tâches dans un enseignement explicite doit permettre le passage de l'acte premier, le faire, à l'acte second, l'apprendre.",
      duree: "3",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100613/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101699",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Journée académique de l&#8217;innovation (JAI) :  bien-être / CPS",
      dispoCode: "25A0090780",
      dispoTitre: "RECH12 - JOURNEE INNO. LES SAVOIRS FONDAMENTAUX",
      public:
          "Enseignants 1er et 2d degrés porteurs de projets innovants suivis par le SEPIA",
      objectifs:
          "Valoriser les projets innovants  Donner la parole aux acteurs de terrain Favoriser le partage d'expérience  Renforcer les liens entre la recherche et la pratique",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Inspirer et diffuser l'innovation pédagogique en lien avec le bien-être et les CPS. Conférences et table ronde. Partage de connaissances et expériences autour de sous-thématiques.",
      duree: "6",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101699/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101705",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Les rendez-vous de l'innovation en académie : la médiation animale",
      dispoCode: "25A0090786",
      dispoTitre: "RECH18 @ LES RENDEZ-VOUS DE L'INNOVATION",
      public:
          "Enseignants du premier et second degré suivis par l'équipe SEPIA",
      objectifs:
          "Identifier les leviers, les freins et tous les paramètres à prendre en compte ( notamment juridiques)",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Webinaire sur la question de la médiation animale en établissement. Point juridique, partages d'expérience et mise en réseau de porteurs de projets",
      duree: "2",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101705/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101706",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Les rendez-vous de l'innovation en académie : les conseils de classe",
      dispoCode: "25A0090786",
      dispoTitre: "RECH18 @ LES RENDEZ-VOUS DE L'INNOVATION",
      public:
          "Enseignants du premier et second degré suivis par l'équipe SEPIA",
      objectifs:
          "Identifier les leviers, les freins et tous les paramètres à prendre en compte",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Webinaire sur les conseils de classe",
      duree: "2",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101706/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101707",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre: "Les rendez-vous de l'innovation en académie : les laboratoires",
      dispoCode: "25A0090786",
      dispoTitre: "RECH18 @ LES RENDEZ-VOUS DE L'INNOVATION",
      public:
          "Enseignants du premier et second degré suivis par l'équipe SEPIA",
      objectifs:
          "Identifier les leviers, les freins et tous les paramètres à prendre en compte",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Webinaire sur la question de les laboratoires",
      duree: "2",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101707/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102563",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Les rendez-vous de l'innovation en académie : identifier les effets d'un projet innovant ou expérimental",
      dispoCode: "25A0090786",
      dispoTitre: "RECH18 @ LES RENDEZ-VOUS DE L'INNOVATION",
      public:
          "Enseignants du premier et second degré suivis par   l'équipe SEPIA",
      objectifs:
          "Identifier les leviers, les freins et tous les   paramètres à prendre en compte",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Webinaire sur la question des effets d'un projet, ou   quels paramètres sont à intégrer dès la construction   d'un projet afin de l'évaluer objectivement et de   l'ajuster",
      duree: "2",
      effectif: "16",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102563/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "102565",
      plan: "ENS",
      theme: "PRATIQUE ET RECHERCHE",
      titre:
          "Mettre en œuvre, évaluer et valoriser un projet innovant ou expérimental",
      dispoCode: "25A0091124",
      dispoTitre: "RECH19 @ METTRE EN ŒUVRE UN PROJET INNOVANT",
      public:
          "Enseignants 1er et 2d degrés porteurs de projets   innovants suivis par le SEPIA",
      objectifs:
          "Concevoir, formaliser un projet innovant et évaluer son   impact.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Réflexion et échanges autour des notions   d'innovation pédagogique, d'expérimentation et de   développement professionnel.  Échanges de pratiques entre porteurs de projets.  Valoriser un projet.  Définition d'indicateurs qualitatifs et quantitatifs   pour l'évaluation de l'impact de projets innovants   pour les élèves, les pratiques pédagogiques,   l'établissement, les partenaires, le territoire,   etc.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/102565/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101317",
      plan: "ENS",
      theme: "PREVENTION ET SECOURS CIVIQUE",
      titre:
          "Formation initiale de formateurs en prévention et secours civiques de niveau 1 Public volontaire",
      dispoCode: "25A0090639",
      dispoTitre: "PSC_04 @ FORMATION DE FORMATEURS PSC1 PV",
      public:
          "Tout personnel de l'académie de Lille relevant de   l'Education Nationale (public collège   prioritaire)et titulaire obligatoirement du PSC1 ou du SST",
      objectifs:
          "Former des personnels de notre académie à   l'enseignement des gestes de secours pour les   autoriser à délivrer l'attestation PSC1 aux   élèves et au personnel de l'éducation nationale",
      contenu:
          "PREVENTION DES RISQUES PROFESSIONNELS 9 jours de formation pratique et pédagogique.   Contrôle continu par pôle de compétences et certification en commission sous le contrôle de   la Préfecture.",
      duree: "54",
      effectif: "14",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101317/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101318",
      plan: "ENS",
      theme: "PREVENTION ET SECOURS CIVIQUE",
      titre:
          "Formation initiale de formateurs en prévention et secours civiques de niveau 1 Public volontaire",
      dispoCode: "25A0090639",
      dispoTitre: "PSC_04 @ FORMATION DE FORMATEURS PSC1 PV",
      public: "intercatégoriel - priorité collège",
      objectifs:
          "Accompagner la formation présentielle: ressources   de formation. Se constituer une banque de   supports de formation. Echanger entre   participants sur les pratiques.",
      contenu:
          "PREVENTION DES RISQUES PROFESSIONNELS Parcours m@gistere sur lequel figurent les textes   réglementaires et les apports théoriques de la   formation en présentiel. Forum pour échanges entre les participants. Constitution et dépôt de supports pour les futures formations auprès des élèves.",
      duree: "6",
      effectif: "14",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101318/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101321",
      plan: "ENS",
      theme: "PREVENTION ET SECOURS CIVIQUE",
      titre: "Prévention Secours Civiques niveau 1 Public volontaire",
      dispoCode: "25A0090643",
      dispoTitre: "PSC_01 - PREVENTION SECOURS CIVIQUES NIVEAU 1 PV",
      public:
          "De préférence public qui se destine à la formation de formateur ou d'animateur",
      objectifs:
          "Attester des personnels en PSC1 et leur permettre d'accéder à la formation de formateur PSC1 et /ou la formation animateur gestes qui sauvent.",
      contenu:
          "PREVENTION DES RISQUES PROFESSIONNELS Assurer une protection immédiate, assurer la transmission de l'alerte, réaliser les premiers gestes des secours face à une victime avec une obstruction des voies aériennes; victime d'un saignement abondant; victime inconsciente qui respire; victime en arrêt cardiaque; victime d'un malaise; victime d'un traumatisme.",
      duree: "7",
      effectif: "10",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101321/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101387",
      plan: "ENS",
      theme: "PREVENTION ET SECOURS CIVIQUE",
      titre: "Sensibilisation aux gestes qui sauvent Public volontaire",
      dispoCode: "25A0090654",
      dispoTitre: "PSC_07 - SENSIBILISATION AUX GESTES QUI SAUVENT PV",
      public: "Personnels enseignants",
      objectifs:
          "Sensibiliser aux gestes de premiers secours pour   permettre de devenir le premier maillon de la   chaîne de secours et ainsi préserver   l'intégrité physique d'une victime en attendant   les secours organisés.",
      contenu:
          "PREVENTION DES RISQUES PROFESSIONNELS Acquisition des connaissances nécessaires à:  Assurer la sécurité de soi-même, de la victime ou de toute autre personne et transmettre au service de secours d'urgence, les informations nécessaires à son intervention;  Réagir face à une hémorragie externe et installer la victime dans une position d'attente adaptée;  Réagir face à une victime en arrêt cardiaque et   utiliser un défibrillateur automatisé externe.",
      duree: "3",
      effectif: "15",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101387/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101600",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre: "Les fondamentaux du TDA/H",
      dispoCode: "25A0090738",
      dispoTitre: "PSY_01 - TROUBLES NEURODEVELOPPEMENTAUX ENFANT/ADO",
      public:
          "Psychologues de l'Education nationale du second degré et du premier degré (EDO-EDA)",
      objectifs: "Les fondametaux du TDAH",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE Aspects théoriques sur le TDAH + aspects pratiques le TDAH à l'école",
      duree: "3",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101600/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101601",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "LES TSA : Gestion des troubles du comportement (Les fondamentaux)",
      dispoCode: "25A0090738",
      dispoTitre: "PSY_01 - TROUBLES NEURODEVELOPPEMENTAUX ENFANT/ADO",
      public:
          "Psychologues de l'Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "Mettre à jour les connaissances sur les troubles du spectre de l'autisme, en s'appuyant sur les données épidémiologiques et les critères diagnostiques du DSM 5.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Présentation des critères et des outils diagnostiques des TSA et des outils. Présentation du CRA et objectif du service. Etude de cas et temps d'échanges sur les situations",
      duree: "6",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101601/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101603",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre: "Trouble oppositionnel avec provocation, TEI , TC et TDAH",
      dispoCode: "25A0090738",
      dispoTitre: "PSY_01 - TROUBLES NEURODEVELOPPEMENTAUX ENFANT/ADO",
      public:
          "Psychologue de l'Education nationale exerçant dans le 1er degré et le 2nd degré (PSY EN EDA-EDO)",
      objectifs:
          "Trois troubles souvent confondus, mais dont les trajectoires et les vulnérabilités méritent d'être différenciées et surtout comprises dans leurs contextes.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Fondamentaux sur ces troubles + diagnostic différentiel.",
      duree: "3",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101603/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101604",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "Trouble de la cognition mathématique : Comprendre et accompagner(Les fondamentaux)",
      dispoCode: "25A0090738",
      dispoTitre: "PSY_01 - TROUBLES NEURODEVELOPPEMENTAUX ENFANT/ADO",
      public:
          "Psychologues de l'Education nationale du second degré et du premier degré (EDO-EDA)",
      objectifs:
          "L'objectif est de mettre à jour les connaissances théoriques des PsyEN sur le trouble de la communication mathématiques et de présenter certaines pistes de compensations pédagogiques afin de mieux appréhender l'accompagnement des élèves concernés.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Présentation du trouble de la cognition mathématique, définition et ses spécificités. Description des méthodes d'évaluation. Pistes de remédiation rééducative et compensations pédagogiques. Étude de cas.",
      duree: "3",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101604/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101605",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre: "Le diagnostic différentiel dans les TND",
      dispoCode: "25A0090738",
      dispoTitre: "PSY_01 - TROUBLES NEURODEVELOPPEMENTAUX ENFANT/ADO",
      public:
          "Psychologues de l'Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "Savoir élaborer des hypothèses diagnostiques de TND et des diagnostics différentiels à partir de bilans de différents professionnels (psychologue, orthophoniste, ergothérapeute...)",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) A partir d'études de cas ( présentations de bilans de différents professionnels), élaborer des hypothèses diagnostiques et des diagnostics différentiels.,Temps d'échange sur les situations",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101605/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101606",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre: "Troubles du langage : Comprendre et accompagner",
      dispoCode: "25A0090738",
      dispoTitre: "PSY_01 - TROUBLES NEURODEVELOPPEMENTAUX ENFANT/ADO",
      public: "Psychologues de l'Education nationale EDA - EDO",
      objectifs:
          "Comment accompagner les professionnels, les familles et les élèves ayant un TDL ?",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Présentation et mise en pratique de différents outils pour accompagner les professionnels, les familles et les élèves ayant un TDL",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101606/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101607",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "Rôle du PSY EN dans l'accompagnement des enfants et adolescents traversant un deuil",
      dispoCode: "25A0090739",
      dispoTitre: "PSY_02 - ACCOMPAGNER LES ÉLÈVES",
      public:
          "Psychologues de l'Education nationale du second degré et du premier degré (EDO-EDA)",
      objectifs:
          "Comment intervenir en tant que Psy EN dans la gestion du deuil ?",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE La formation comporte deux journées de 6h en présentiel et s'adresse aux EDA et EDO. Comment intervenir en tant que Psy EN dans la gestion du deuil ? Acquérir des connaissances théoriques et pratiques permettant au Psy EN d'apporter un soutien aux élèves et aux équipes éducatives face au deuil. Apports d'informations et échange de pratiques. Échanges entre stagiaires. Mise en situation et pratique via des jeux de rôles.",
      duree: "12",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101607/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101611",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "La maltraitance de l'enfant et de l'adolescent : la connaître pour agir en conséquence",
      dispoCode: "25A0090739",
      dispoTitre: "PSY_02 - ACCOMPAGNER LES ÉLÈVES",
      public:
          "Psychologues de l'Education nationale du second degré et du premier degré (EDO-EDA)",
      objectifs:
          "Développer des qualifications ou acquisitions nouvelles sur l'enfant et l'adolescent en souffrance. Comprendre les enjeux de la maltraitance infantile. Repérer les signes de la maltraitance. Savoir agir en conséquence.",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE Acquérir des connaissances théoriques permettant d'apporter un éclairage sur les situations de souffrance chez l'enfant et l'adolescent (deuil, maltraitance, crise suicidaire,) en lien avec les étapes connues du développement. Acquérir des connaissances pratiques permettant au Psy EN d'apporter un soutien aux élèves, aux équipes éducatives et aux familles face aux situations mettant en souffrance. Définition de la maltraitance. Notion d'enfant (définitions et évolution du regard porté à l'enfant au cours de l'Histoire). Aspects psychologiques et juridiques de la maltraitance. Critères de détection de la maltraitance infantile (tableau clinique, étude de cas). Les familles maltraitantes.",
      duree: "12",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101611/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101612",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "Anxiété et choix d'orientation : diminuer le stress lié à Parcoursup",
      dispoCode: "25A0090739",
      dispoTitre: "PSY_02 - ACCOMPAGNER LES ÉLÈVES",
      public: "Psychologues de l'Éducation nationale du 2nd degré (EDO).",
      objectifs:
          "Accompagner les lycéens et les équipes pour contribuer à réduire l'anxiété face aux choix d'orientation et plus particulièrement Parcoursup",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Le rôle des émotions et de l'anxiété dans l'orientation - les processus de recherche de l'information - comment se repérer dans la reconnaissance des formations",
      duree: "6",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101612/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101613",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "PHENOMENE DE RADICALISATION : information, sensibilisation, prévention à destination des Psy EN",
      dispoCode: "25A0090739",
      dispoTitre: "PSY_02 - ACCOMPAGNER LES ÉLÈVES",
      public:
          "Psychologues de l'Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "Acquérir des connaissances sur le phénomène de radicalisation permettant au PSY EN d'être sensibilisé à cette thématique en établissement scolaire",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE Cette formation comporte 3h en distanciel + 6h en présentiel.  Données objectivées sur le phénomène de radicalisation :   Définition, Sémantique, Etat des lieux, Données épidémiologiques.   Complémentarité des regards et des approches théoriques sur la thématique.  Posture du psy EN et enjeux systémiques au sein de la communauté éducative.   Ouverture autour de la question de laïcité et du vivre ensemble  Prolongement dans une perspective d'action de prévention primaire : à éviter/ à privilégier ",
      duree: "3",
      effectif: "200",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101613/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101614",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "L'évolution des modes éducatifs et leurs répercussions sur le développement de l'enfant et de l'adolescent",
      dispoCode: "25A0090739",
      dispoTitre: "PSY_02 - ACCOMPAGNER LES ÉLÈVES",
      public:
          "Psychologues de l'Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "Expliquer l'explosion des diagnostics neurodéveloppementaux au regard de l'évolution sociétale et des modes éducatifs. Enrichir nos connaissances sur le développement de l'enfant/adolescent. Comment accompagner les parents et les enfants/adolescents autour de la problématique des comportements troublés.",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE Daniel MARCELLI, pédospychiatre et professeur émérite propose une intervention sur l'évolution des modes éducatifs et sociétaux et leur répercussion sur le développement de l'enfant et de l'adolescent et sur l'augmentation notable des diagnostics de certains troubles neurodéveloppementaux (TDA/H, TOP notamment). Apports théoriques et réflexions collectives autour d'études de cas proposées par les stagiaires.",
      duree: "12",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101614/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101615",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre: "Les troubles de l'attachement (Les fondamentaux)",
      dispoCode: "25A0090739",
      dispoTitre: "PSY_02 - ACCOMPAGNER LES ÉLÈVES",
      public:
          "Psychologues de l'Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "Connaître les théories de l'attachement pour mieux comprendre les comportements problématiques des élèves et adapter sa posture professionnelle",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE Cette formation abordera les troubles de l'attachement d'un point de vue théorique et ses conséquences chez les enfants et adolescents.",
      duree: "3",
      effectif: "100",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101615/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101616",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "NEPSY II &#8211; VINELAND II : Appropriation et manipulation du matériel",
      dispoCode: "25A0090740",
      dispoTitre: "PSY_03 - LES OUTILS DU PSY EN",
      public:
          "Psychologue de l&#8217;Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "L'objectif de la formation est de découvrir au travers d'un nouveau parcours Magistère, 2 outils qui peuvent être intéressants pour la pratique du PsyEN : La Nepsy II et la Vineland II. Le regroupement en présentiel qui suivra sera l'occasion de manipuler concrètement le matériel au travers de mise en situation et d'échanger autour de situations où ces outils peuvent être utiles.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) L'objectif de la formation est de découvrir au travers d'un nouveau parcours Magistère, 2 outils qui peuvent être intéressants pour la pratique du PsyEN : La Nepsy II et la Vineland II. Le regroupement en présentiel qui suivra sera l'occasion de manipuler concrètement le matériel au travers de mise en situation et d'échanger autour de situations où ces outils peuvent être utiles.Parcours Magistère 2: Découverte des outils, étude de cas avec quiz.   Journée présentielle: Manipulation concrète des outils, mise en situation, analyse des résultats",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101616/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101617",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "NEPSY II &#8211; VINELAND II : Appropriation et manipulation du matériel",
      dispoCode: "25A0090740",
      dispoTitre: "PSY_03 - LES OUTILS DU PSY EN",
      public:
          "Psychologue de l&#8217;Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "Mieux repérer et accompagner les élèves à besoins éducatifs particuliers (autisme, troubles de l'attention...) en s'appropriant des outils récents d'évaluation psychologique.",
      contenu:
          "AIDE AUX APPRENTISSAGES (Y COMPRIS AIDE A L'ELEVE) Parcours Magistère 2: Découverte des outils, étude de cas avec quizz.",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101617/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101618",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "Soutien au soutien : Echanger, partager et analyser ses pratiques",
      dispoCode: "25A0090741",
      dispoTitre: "PSY_04 - ACCOMPAGNER PSY EN DANS LEURS MISSIONS",
      public: "PSY EN EDA et EDO",
      objectifs:
          "Bénéficier d'une supervision à partir de situations vécues selon la méthode des groupes de Soutien au Soutien (AGSAS) avec un praticien formé à cette méthode.",
      contenu:
          "ACCOMPAGNEMENT RH Le soutien comporte 5 séances de 3h en présentiel. C'est un lieu où chacun est considéré comme un interlocuteur valable , où la parole circule et permet une dynamique de travail, une recherche de sens et un travail d'élaboration à partir d'une situation exposée par un participant. La méthode s'appuie sur les groupes d'analyse de pratiques de l'AGSAS : le respect absolu des 4 temps de la méthode décrits par Jacques Lévine qui repose sur un contrat de solidarité, de non-jugement, de confidentialité et de non-conflictualité.  Le travail qui s'opère au sein de ces groupes consiste en une véritable formation à la relation où chacun peut opérer un retour réflexif sur son mode de fonctionnement professionnel.  Les groupes sont formés de 12 personnes en présentiel.",
      duree: "15",
      effectif: "10",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101618/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101621",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "Prévention des conduites suicidaires chez l'enfant et l'adolescent",
      dispoCode: "25A0090743",
      dispoTitre: "PSY_06 - LA GESTION DES SITUATIONS DE CRISE",
      public: "Psychologues de l'Education nationale EDA et EDO",
      objectifs:
          "Acquérir des connaissances théoriques permettant d'apporter un éclairage sur les situations de risque suicidaire. Acquérir des connaissances pratiques permettant au Psy EN d'apporter un soutien aux élèves et aux équipes éducatives face au suicide.",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE Cette formation comporte 12h (2 journée consécutives) en présentiel. Comment intervenir en tant que Psy EN dans la gestion de la crise suicidaire. Définition et conceptualisation de la crise suicidaire. Outils de repérage d'une personne en risque suicidaire. Savoir évaluer la situation de crise suicidaire. Principe de l'intervention de crise. Comment orienter vers les soins ?",
      duree: "12",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101621/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101741",
      plan: "ENS",
      theme: "PSYCHOLOGUES EDUCATION NATIONALE",
      titre:
          "Accompagner les élèves souffrant d&#8217;un trouble de l&#8217;attachement (Ateliers d'approfondissement)",
      dispoCode: "25A0090739",
      dispoTitre: "PSY_02 - ACCOMPAGNER LES ÉLÈVES",
      public:
          "Psychologues de l'Éducation nationale du 1er et 2nd degré (EDA et EDO).",
      objectifs:
          "Accompagner les élèves et les familles souffrant d'un trouble de l'attachement",
      contenu:
          "PREVENTION DES CONDUITES A RISQUE L'intervenante définira le concept de troubles de l'attachement et les réalités qu'il recouvre. Avec l'éclairage des apports théoriques récents et à l'aide d'illustrations cliniques, des pistes concrètes d'accompagnement des élèves et des familles seront abordées.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101741/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100454",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre: "Séminaire de découverte du monde de l'entreprise.",
      dispoCode: "25A0090261",
      dispoTitre: "REE_01 - CONNAISSANCE MONDE DE L'ENTREPRISE",
      public:
          "Enseignants du 2nd degré inscrits dans le parcours FCME. PSY EN.",
      objectifs:
          "Donner des repères du monde de l'entreprise au stagiaire qui n'en a aucune autre idée que celle de ses représentations.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Cette formation en autonomie est fondée sur une émission de 3H que l'on peut regarder en 1 fois, ou séquencée en plusieurs parties, accompagnée d'un kit pédagogique pour à la fois comprendre les enjeux mais aussi en exploiter les éléments avec les élèves.",
      duree: "3",
      effectif: "150",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100454/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100455",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre: "Immersion en entreprise",
      dispoCode: "25A0090261",
      dispoTitre: "REE_01 - CONNAISSANCE MONDE DE L'ENTREPRISE",
      public:
          "Enseignants du 2nd degré inscrits dans le parcours FCME. PSY EN.",
      objectifs:
          "L'enseignant pourra confronter ses connaissances théoriques du monde de l'entreprise à l'épreuve du réel.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS L'immersion en entreprise permet au stagiaire d'aller dans une entreprise pour une journée et d'y faire un stage d'observation. Il a le choix de choisir son entreprise par rapport à un lieu (résidence pour le côté pratique, établissement notamment pour imaginer de futurs liens de proximité dans le cadre d'un projet), à un projet pédagogique en cours ou à venir, à une nécessité quand les contenus de ses enseignements ont été modifiés pour adapter et colorer les parcours de formation par rapport à la réalité du travail. Son observation mais aussi le contact établi avec les professionnels lui permettent d'envisager de futurs projets pédagogiques, mais l'aident aussi dans son quotidien pour parler de l'entreprise aux jeunes qui ont besoin de s'orienter.",
      duree: "6",
      effectif: "150",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100455/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100457",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre:
          "Entreprendre collectivement en créant une structure ESS (Economie sociale et solidaire) à l'école",
      dispoCode: "25A0090262",
      dispoTitre: "REE_02 - ESS - ENTREPRENDRE PAR PEDAGOGIE PROJET",
      public:
          "Equipes éducatives : enseignants, psy EN, CPE&#8230;avec priorité aux équipe ayant mené un projet pédagogique et si possible à visée entrepreneuriale avec leurs élèves ou souhaitant s&#8217;engager dans ce type de projet.",
      objectifs:
          "Cette formation permet d'acquérir les compétences pour la gestion de projets ESS (Economie Sociale et Solidaire) pour aider à accompagner les élèves dans une approche coopérative.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Mener un projet collectif d'utilité sociale en éprouvant une démarche coopérative.   Acquérir des méthodes pédagogiques pour bien démarrer son projet et développer sa créativité.   Comprendre les fondamentaux de l'économie sociale et solidaire   Apprendre à gérer son projet efficacement planifier et mettre en œuvre son projet ESS  Expérimenter des méthodes et des pratiques pédagogiques permettant de sensibiliser les élèves à la coopération.",
      duree: "11",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100457/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100464",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre: "Les formations à la carte des RBDE",
      dispoCode: "25A0090266",
      dispoTitre: "REE_06 - RBDE - FORMATIONS A LA CARTE",
      public: "Responsables des RBDE",
      objectifs:
          "Accompagner les acteurs du bureau des entreprises dans leurs missions afin d'optimiser l'organisation et le service du BDE.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Thématiques proposées par l'inspectrice référente du dossier RBDE et le GIP FCIP .",
      duree: "12",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100464/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100465",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre: "Découvrir une entreprise : stage à la carte",
      dispoCode: "25A0090267",
      dispoTitre: "REE_07 - DECOUVRIR ENTREPRISE STAGE A LA CARTE",
      public: "Enseignants du 2nd degré et PSY EN",
      objectifs:
          "L'enseignant pourra confronter ses connaissances théoriques du monde de l'entreprise à l'épreuve du réel.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS L'enseignant pourra confronter ses connaissances théoriques du monde de l'entreprise à l'épreuve du réel.  Découvrir  Contenu détaillé :   Ce module donne l'occasion de réaliser une immersion :  - Dans une entreprise du secteur industriel ;  - Sur le territoire de l'académie de Lille exclusivement ;  - Pour une durée de 3h minimum, 18 heures maximum ;  - Pendant les vacances scolaires.    Le stagiaire trouve lui-même son entreprise.  L'inscription au PAF permet d'avoir une convention d'immersion tripartite (stagiaire - entreprise - EAFC) et un ordre de mission.",
      duree: "18",
      effectif: "1",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100465/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100467",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre: "Découvrir les métiers de la santé et de l'accompagnement",
      dispoCode: "25A0090269",
      dispoTitre: "REE_09 - AUTONOMIE - LONGEVITE - SANTE",
      public:
          "Les prescripteurs de l'orientation : enseignants 2nd degré de toutes les disciplines (collège prioritairement), RDDM, PsyEN, CPE, DDFPT, RBDE, chefs d'établissement",
      objectifs:
          "Découvrir la diversité des filières et formations des différents métiers au sein d'un hôpital.  Savoir où trouver les informations sur les métiers  S'approprier des outils ludiques de découverte des métiers produits par le CMQeALS et le dispositif Aiguill'âge pour sensibiliser les apprenants aux filières concernées",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Jour 1 : En immersion une demi journée au sein de l'hopital Victor Provo de Roubaix (ou d'un autre établissement de santé dans l'agglomération lilloise). Faire un « parcours patient » avec un passage dans différents services : l'accueil / le standard, l'administration patient + l'administration de la structure ; des métiers supports aux diagnostics et aux explorations médicales.  Rencontre des différents intervenants et des métiers peu connus de l'hôpital (=secteurs de la santé, de l'accompagnement, des fonctions supports de la maintenance des systèmes, de la communication)  Jour 2 : Connaitre et utiliser les outils ludiques pour faire découvrir aux apprenants les métiers de la santé, du social, de la domotique et des biotechnologies. Le dispostif Aiguill'âge, porté par le projet « A vous le sup' » de l'université de Lille a pour but de sensibiliser les publics à ces métiers, aux filières et aux parcours de formation.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100467/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100468",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre:
          "Autonomie, longévité, Santé : Découvrir les métiers qui accompagnent la perte d'autonomie",
      dispoCode: "25A0090269",
      dispoTitre: "REE_09 - AUTONOMIE - LONGEVITE - SANTE",
      public:
          "Les prescripteurs de l'orientation : enseignants 2nd degré de toutes les disciplines (collège, ULIS et EREA prioritairement), RDDM, PsyEN, CPE, DDFPT, RBDE, chefs d'établissement",
      objectifs:
          "Être sensibilisé à la perte d'autonomie et aux problématiques qui en découlent en terme de mobilité et de nutrition. Découvrir la diversité des filières et formations des différents métiers liés à la perte d'autonomie (due au handicap ou à l'âge). Rencontrer les professionnels de terrain.  Savoir où trouver les informations sur les métiers. S'approprier des outils ludiques de découverte des métiers produits par le CMQ ALS et le dispositif Aiguill'âge pour sensibiliser les apprenants aux filières concernées  Le dispositif Aiguill'âge, porté par le projet A vous le sup' de l'université de Lille a pour but de sensibiliser les publics à ces métiers, aux filières et aux parcours de formation d'une manière innovante.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Jour 1 : En immersion une journée au sein de 2 établissements qui travaillent conjointement dans le secteur de Bruay - la-Buissière. Le lycée Pierre Mendes France possède un appartement connecté présentant toutes les innovations en matière de domotique permettant le maintien à domicile. La demi-journée permettra de se sensibiliser à la perte d'autonomie : visite de l'appartement, étude des besoins particuliers, intervention d'une enseignante experte. Après - midi au sein d'un Ehpad.  Rencontre des professionnels du secteur de la santé, de la nutrition et de l'accompagnement  Jour 2 : Connaitre et utiliser les outils ludiques pour faire découvrir aux apprenants les métiers de la santé, du social, de la domotique et des biotechnologies. Le dispositif Aiguill'âge, porté par le projet A vous le sup' de l'université de Lille a pour but de sensibiliser les publics à ces métiers, aux filières et aux parcours de formation.",
      duree: "9",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100468/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100471",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre: "Sensibiliser à la fresque du climat",
      dispoCode: "25A0090270",
      dispoTitre: "REE_10 - GRANDS ENJEUX DE LA TRANSITION ECOLOGIQUE",
      public:
          "Enseignants de SVT, physique et chimie des collèges et des lycées (tous types)",
      objectifs:
          "Sensibilisation, afin que les enseignants s'inscrivent ensuite à la formation pour devenir animateurs de la fresque du climat",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Outiller les enseignants pour qu'ils puissent expliquer les causes et conséquences du réchauffement climatique, afin que les élèves deviennent acteurs de la lutte contre le réchauffement, apprennent les éco-gestes, développent l'esprit d'équipe et leurs capacités à argumenter.",
      duree: "3",
      effectif: "70",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100471/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "100472",
      plan: "ENS",
      theme: "RELATION ECOLE-ENTREPRISE",
      titre: "Les métiers et enjeux de la transition écologique",
      dispoCode: "25A0090270",
      dispoTitre: "REE_10 - GRANDS ENJEUX DE LA TRANSITION ECOLOGIQUE",
      public:
          "Professeurs principaux et RDDM des collèges, profs principaux des lycées (tous types), PsyEN",
      objectifs: "Découvrir les métiers et enjeux de la transition écologique",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS J1 : S'approprier les enjeux de la transition écologique, les filières les plus porteuses et les métiers en tension  J2 : Concevoir et mettre en oeuvre des actions permettant d'aider les élèves à s'orienter",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100472/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101685",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre: "Les enjeux de l'intelligence artificielle en SVT",
      dispoCode: "25A0090775",
      dispoTitre: "SVT_05 @ LES ENJEUX DE L'IA EN SVT",
      public: "Enseignants de SVT en collège et lycée",
      objectifs:
          "Actualiser ses connaissances dans le domaine des IA :   - historique, fonctionnement et évolution   - utilisation dans les enseignements",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Cette formation propose une exploration approfondie de l'intelligence artificielle (IA). Les participants découvriront comment fonctionnent les IA discriminatives et s'entraîneront à les utiliser efficacement. Une section dédiée aux IA génératives révèlera comment ces technologies peuvent servir d'assistants pédagogiques en SVT. La formation abordera les techniques de prompt et examinera comment les IA peuvent développer l'esprit critique des élèves.   Historique, fonctionnement et évolution des intelligences artificielles.  Entraînement d'une IA discriminative.  Les IA génératives : des assistants pour l'enseignant.  L'art du prompt pour obtenir une génération voulue.  La construction de l'esprit critique des élèves catalysée par les IA.    PUBLIC CIBLE : enseignants en SVT de collège et lycée",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101685/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101686",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre:
          "Les enjeux de l'intelligence artificielle en SVT (partie asynchrone)",
      dispoCode: "25A0090775",
      dispoTitre: "SVT_05 @ LES ENJEUX DE L'IA EN SVT",
      public: "Enseignants de SVT en collège et lycée",
      objectifs:
          "Actualiser ses connaissances dans le domaine des IA :   - historique, fonctionnement et évolution   - utilisation dans les enseignements",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Cette formation propose une exploration approfondie de l'intelligence artificielle (IA). Les participants découvriront comment fonctionnent les IA discriminatives et s'entraîneront à les utiliser efficacement. Une section dédiée aux IA génératives révèlera comment ces technologies peuvent servir d'assistants pédagogiques en SVT. La formation abordera les techniques de prompt et examinera comment les IA peuvent développer l'esprit critique des élèves.   Historique, fonctionnement et évolution des intelligences artificielles.  Entraînement d'une IA discriminative.  Les IA génératives : des assistants pour l'enseignant.  L'art du prompt pour obtenir une génération voulue.  La construction de l'esprit critique des élèves catalysée par les IA.    PUBLIC CIBLE : enseignants en SVT de collège et lycée",
      duree: "3",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101686/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101687",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre: "Le terrain comme ressource pédagogique (formation en territoire)",
      dispoCode: "25A0090774",
      dispoTitre: "SVT_04 @FT@ LE TERRAIN COMME RESSOURCE PEDAGOGIQUE",
      public: "Enseignants de SVT en collège et lycée",
      objectifs:
          "Exploiter une sortie de terrain dans un contexte local - en lien avec des partenaires - afin de rendre les sciences plus concrètes.",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Appropriation du local comme ressource.  Travail sur les enjeux d'une exploitation locale du terrain dans des domaines très variés.  Récolter et exploiter des données par les élèves. Utilisation d'outils pour l'observation, la localisation et la récolte de données.  Faire des liens entre l'environnement proche et les exploitations humaines.  Collaboration avec un intervenant expert pour travailler l'orientation et certaines problématiques et politiques locales.   Élaboration d'outils tels qu'un journal de terrain.",
      duree: "12",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101687/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101688",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre: "Info Infox à l'ère du numérique",
      dispoCode: "25A0090776",
      dispoTitre: "SVT_06 @ INFO INFOX A L'ERE DU NUMERIQUE",
      public: "Enseignants de SVT de collège et de lycée",
      objectifs:
          "Comment rendre les élèves acteurs de la construction de leur savoir scientifique en développant leur esprit critique et tout particulièrement à l'ère du numérique ?",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Distinguer une info d'une infox, comprendre la fiabilité d'une démarche scientifique et la construction d'un savoir scientifique de l'élève, dans un écosystème informationnel en constante évolution.",
      duree: "7",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101688/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101689",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre: "Info Infox à l'ère du numérique (distanciel asynchrone)",
      dispoCode: "25A0090776",
      dispoTitre: "SVT_06 @ INFO INFOX A L'ERE DU NUMERIQUE",
      public: "Enseignants de SVT de collège et de lycée",
      objectifs:
          "Comment rendre les élèves acteurs de la construction de leur savoir scientifique en développant leur esprit critique et tout particulièrement à l'ère du numérique ?",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Distinguer une info d'une infox, comprendre la fiabilité d'une démarche scientifique et la construction d'un savoir scientifique de l'élève, dans un écosystème informationnel en constante évolution.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101689/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101732",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre: "Les nouveaux programmes de SVT - approfondissement",
      dispoCode: "25A0090794",
      dispoTitre: "SVT_07 @ NVX PROGRAMMES EN SVT - APPROFONDISSEMENT",
      public: "Enseignants de SVT en collège",
      objectifs:
          "Découvrir et mettre en œuvre les nouveaux programmes de collège.",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Temps d'échange sur les nouveaux programmes pour répondre aux besoins des enseignants.",
      duree: "2",
      effectif: "330",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101732/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101813",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre: "Vivre la science en classe",
      dispoCode: "25A0090837",
      dispoTitre: "SVT_08 @ VIVRE LA SCIENCE EN CLASSE",
      public: "Enseignants de SVT de collège et de lycée",
      objectifs:
          "Replacer les manipulations au coeur des démarches afin de développer l'autonomie des élèves dans la construction d'un savoir scientifique.",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Intégrer des manipulations dans les démarches.  Réflexion sur les pratiques expérimentales et la place des résultats dans la démarche. Développer l'esprit critique et travailler l'argumentation en s'appuyant sur les démarches expérimentales. Travailler sur une progressivité du cycle 3 au cycle terminal.",
      duree: "7",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101813/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101814",
      plan: "ENS",
      theme: "SCIENCES DE LA VIE ET DE LA TERRE",
      titre: "Vivre la science en classe - partie asynchrone",
      dispoCode: "25A0090837",
      dispoTitre: "SVT_08 @ VIVRE LA SCIENCE EN CLASSE",
      public: "Enseignants de SVT de collège et de lycée",
      objectifs:
          "Replacer les manipulations au coeur des démarches afin de développer l'autonomie des élèves dans la construction d'un savoir scientifique.",
      contenu:
          "SCIENCES DE LA VIE ET DE LA TERRE Intégrer des manipulations dans les démarches.  Réflexion sur les pratiques expérimentales et la place des résultats dans la démarche. Développer l'esprit critique et travailler l'argumentation en s'appuyant sur les démarches expérimentales. Travailler sur une progressivité du cycle 3 au cycle terminal.",
      duree: "2",
      effectif: "18",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101814/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100633",
      plan: "ENS",
      theme: "SCIENCES ECONOMIQUES ET SOCIALES",
      titre: "@ Comment enseigner la lutte contre le chômage ?",
      dispoCode: "25A0090349",
      dispoTitre: "SES_05 @ VISIOS LES OA ET  LA PROGRESSION EN TALE",
      public: "Professeurs de SES",
      objectifs:
          "Mieux cerner les attentes pour chaque OA, les notions   et mécanismes incontournables, fermer l'OA   en fixant les limites. Partant de là, proposer une à   trois progressions possibles en terminale qui prennent   pour levier les liens cohérents entre chaque chapitre.",
      contenu:
          "SCIENCES ECONOMIQUES ET SOCIALES L'objectif est de partager une réflexion collective   menée sur la progression à réaliser en Terminale et de   délimiter les notions, mécanismes, savoir-faire   attendus dans chaque objectif d'apprentissage du   chapitre sur la structure sociale. La formation   permettra de présenter des fiches synthétiques.",
      duree: "2",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100633/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100634",
      plan: "ENS",
      theme: "SCIENCES ECONOMIQUES ET SOCIALES",
      titre: "Actualisation scientifique sur le commerce international",
      dispoCode: "25A0090349",
      dispoTitre: "SES_05 @ VISIOS LES OA ET  LA PROGRESSION EN TALE",
      public: "Professeurs de SES",
      objectifs:
          "Permettre aux enseignants d'actualiser leurs   connaissances sur le commerce international.",
      contenu:
          "TECHNIQUES DOCUMENTAIRES ET DOCUMENTATION Apporter un état des savoirs et des pistes de mises en   œuvre en classe.",
      duree: "2",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100634/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100635",
      plan: "ENS",
      theme: "SCIENCES ECONOMIQUES ET SOCIALES",
      titre: "@ Comment enseigner le commerce international?",
      dispoCode: "25A0090349",
      dispoTitre: "SES_05 @ VISIOS LES OA ET  LA PROGRESSION EN TALE",
      public: "Professeurs de SES",
      objectifs:
          "Accompagner les enseignants dans la mise en œuvre du   programme portant sur le commerce International.",
      contenu:
          "SCIENCES ECONOMIQUES ET SOCIALES L'objectif est de partager une réflexion collective   menée sur la progression à réaliser en Terminale et de   délimiter les notions, mécanismes, savoir-faire   attendus dans chaque objectif d'apprentissage du   chapitre sur la structure sociale. La formation   permettra de présenter des fiches synthétiques.",
      duree: "2",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100635/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100671",
      plan: "ENS",
      theme: "SCIENCES ECONOMIQUES ET SOCIALES",
      titre: "@ Connaître l'INSEE",
      dispoCode: "25A0090364",
      dispoTitre: "SES_09 @ MIEUX CONNAITRE L'INSEE",
      public: "Professeurs de SES",
      objectifs:
          "Présentation de l'INSEE  Mieux connaître les missions et le fonctionnement de   l'INSEE  Permettre aux professeurs de SES de s'approprier les   ressources et outils proposés par l'INSEE afin   d'enrichir leurs séquences pédagogiques, actualiser   leurs données statistiques, développer l'esprit   critique des élèves face aux chiffres, et favoriser   l'analyse de phénomènes économiques et sociaux à   partir de données officielles fiables.",
      contenu:
          "SCIENCES ECONOMIQUES ET SOCIALES L'objectif est de découvrir l'INSEE  Panaorama des ressources de l'INSEE (statistiques,   publications, bases de données, accès aux données   régionales)  Focus sur les fiches pédagogiques, les jeux de données   exploitables en classe   Mise en pratique",
      duree: "2",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100671/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101060",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Initiation à la robotique industrielle N1",
      dispoCode: "25A0090514",
      dispoTitre: "SII_11 - INITIATION ROBOTIQUE INDUSTRIELLE",
      public: "Professeurs qui interviennent en BTS MS option A ou en BTS CRSA",
      objectifs:
          "- Comprendre les caractéristiques et les principes de fonctionnement d'une cellule robotisée.  - Initiation à la mise en œuvre et à la programmation.",
      contenu:
          "NUMERIQUE ET SCIENCES INFORMATIQUES Sera défini en fonction d'un positionnement des enseignants inscrits",
      duree: "10",
      effectif: "12",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101060/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101667",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "le projet en Technologie",
      dispoCode: "25A0090763",
      dispoTitre: "SII_03 - FORMATION DE TECHNOLOGIE PV",
      public: "Professeur de technologie",
      objectifs:
          "Construire un projet, ses pré-requis, le mettre en œuvre en classe.",
      contenu:
          "TECHNOLOGIE Concevoir des séquences de formation. Se familiariser avec la modélisation multiphysique",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101667/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101668",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Utilisation de l&#8217;IA en classe de technologie",
      dispoCode: "25A0090763",
      dispoTitre: "SII_03 - FORMATION DE TECHNOLOGIE PV",
      public: "Professeur de technologie",
      objectifs:
          "Développer l'usage des intelligences artificielles en classe.",
      contenu:
          "TECHNOLOGIE Découverte des différents types d'IA. L'impact environnemental. Machines learning, Teachable Machine. Interfaçage avec différentes maquettes",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101668/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101669",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Utilisation des plateformes collaboratives en Technologie",
      dispoCode: "25A0090763",
      dispoTitre: "SII_03 - FORMATION DE TECHNOLOGIE PV",
      public: "Professeur de technologie",
      objectifs: "Utiliser en classe les plateformes ELEA et CAPYTALE",
      contenu:
          "TECHNOLOGIE Découverte et prise en main des plateformes ELEA et CAPYTPALE afin de les utiliser en classe.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101669/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101678",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Mise en œuvre du nouveau programme",
      dispoCode: "25A0090770",
      dispoTitre: "SII_04 &#8211; PROGRAMME DE TECHNOLOGIE 5E-4E",
      public: "Professeurs de technologie au collège",
      objectifs:
          "S'approprier et mettre en œuvre le programme de 5ème en Technologie",
      contenu:
          "TECHNOLOGIE Appropriation des compétences et connaissances du programme. Prise en main de maquettes et supports d'enseignent. Développer ses propres séquences.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101678/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101680",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Les nouveaux programmes de technologie en classe de 4ème",
      dispoCode: "25A0090770",
      dispoTitre: "SII_04 &#8211; PROGRAMME DE TECHNOLOGIE 5E-4E",
      public: "Professeurs de Technologie",
      objectifs:
          "S'approprier et mettre en œuvre le programme de 4ème en Technologie",
      contenu:
          "TECHNOLOGIE Le nouveau programme de technologie en classe de 4ème.  Accompagner les professeurs de technologie dans le cadre de la mise en place du nouveau programme de technologie en classe de 4ème RS2025",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101680/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101693",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Approfondir sa compréhension du programme de 5eme",
      dispoCode: "25A0090779",
      dispoTitre: "SII_07 - SEMINAIRE TECHNOLOGIE APPROFONDISSEMENT",
      public: "Professeur de technologie",
      objectifs:
          "Permettre aux enseignants d'approfondir leur appropriation du programme de 5ème",
      contenu:
          "TECHNOLOGIE Retour sur les ressources présentées durant les séminaires. Compléments sur la mise en œuvre des nouveaux supports d'enseignement",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101693/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101694",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Approfondir sa compréhension du programme de 4eme",
      dispoCode: "25A0090779",
      dispoTitre: "SII_07 - SEMINAIRE TECHNOLOGIE APPROFONDISSEMENT",
      public: "Professeur de technologie",
      objectifs:
          "Retour sur les ressources présentées durant les séminaires. Compléments sur la mise en œuvre des nouveaux supports d'enseignement",
      contenu:
          "TECHNOLOGIE Découverte des différents types d'IA. L'impact environnemental. Machines learning, Teachable Machine. Interfaçage avec différentes maquettes",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101694/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101695",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Anticiper la rentrée 2025-2026 s'approprier le programme en 3eme",
      dispoCode: "25A0090779",
      dispoTitre: "SII_07 - SEMINAIRE TECHNOLOGIE APPROFONDISSEMENT",
      public: "Professeur de technologie",
      objectifs:
          "Permettre aux enseignants d'anticiper la rentrée 2025-2026 et la mise en oeuvre du nouveau programme de Technologie",
      contenu:
          "TECHNOLOGIE Retour sur les ressources présentées durant les séminaires. Compléments sur la mise en œuvre des nouveaux supports d'enseignement",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101695/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101696",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Mise en œuvre de nouveaux supports d'enseignement",
      dispoCode: "25A0090779",
      dispoTitre: "SII_07 - SEMINAIRE TECHNOLOGIE APPROFONDISSEMENT",
      public: "Professeur de technologie",
      objectifs:
          "Permettre aux enseignants de s'approprier les nouveaux supports d'enseignement",
      contenu:
          "TECHNOLOGIE Retour sur les ressources présentées durant les séminaires. Compléments sur la mise en œuvre des nouveaux supports d'enseignement",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101696/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101697",
      plan: "ENS",
      theme: "SCIENCES INDUSTRIELLES DE L'INGENIEUR",
      titre: "Utilisation de la plateforme ELEA en classe",
      dispoCode: "25A0090779",
      dispoTitre: "SII_07 - SEMINAIRE TECHNOLOGIE APPROFONDISSEMENT",
      public: "Professeur de technologie",
      objectifs: "S'approprier les usages de base de la plateforme ELEA",
      contenu: "TECHNOLOGIE Découverte et prise en main de la plateforme ELEA",
      duree: "2",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101697/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101086",
      plan: "ENS",
      theme: "SCIENCES NUMERIQUES ET TECHNOLOGIES",
      titre: "Enseignement Sciences Numériques et Technologie",
      dispoCode: "25A0090531",
      dispoTitre: "SNT_03 - LA GEOLOCALISATION EN SNT",
      public: "Professeurs en lycée",
      objectifs:
          "Se former aux enseignements des Sciences Numériques et Technologie. Acquérir des connaissances et compétences minimales nécessaires à l'enseignement de la nouvelle spécialité.",
      contenu:
          "NUMERIQUE ET SCIENCES INFORMATIQUES La formation est organisée autour du thème : géolocalisation.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101086/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101088",
      plan: "ENS",
      theme: "SCIENCES NUMERIQUES ET TECHNOLOGIES",
      titre: "Informatique sans ordinateur en SNT",
      dispoCode: "25A0090533",
      dispoTitre: "SNT_02 - INFORMATIQUE SANS ORDINATEUR EN SNT",
      public: "Professeurs de lycée ou de collège",
      objectifs:
          "Cette formation vise à découvrir, voire élaborer, des activités d'informatique sans ordinateur permettant d'introduire des notions et concepts de l'informatique. Chacune des activités proposées est en lien avec un des sept thèmes du programme de SNT",
      contenu:
          "NUMERIQUE ET SCIENCES INFORMATIQUES L'informatique sans ordinateur propose des activités ludiques variées à base de matériels divers tels des jetons, des dés, des cartes, des balles, des ficelles, etc. Ces activités mènent à la découverte de notions fondamentales de l'informatique.  Lors du stage, nous pratiquerons ces activités, découvrirons comment elles éclairent des notions de l'informatique, nous travaillerons de possibles extensions ou prolongements, nous expliciterons les liens avec le programme de SNT.  Cette démarche pourra être reproduite, et ces activités utilisées en classe avec les élèves.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101088/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101103",
      plan: "ENS",
      theme: "SCIENCES NUMERIQUES ET TECHNOLOGIES",
      titre: "Enseignement Sciences Numériques et Technologie",
      dispoCode: "25A0090535",
      dispoTitre: "SNT_01 - ENSEIGNER LES SNT AU LYCEE",
      public: "Professeurs en lycée",
      objectifs:
          "Accompagner les enseignants qui prennent en charge l'enseignement de SNT pour la première année",
      contenu:
          "NUMERIQUE ET SCIENCES INFORMATIQUES Cette formation vise à introduire les notions de   base du programme de SNT au travers des ressources existantes et de ces attendus.",
      duree: "6",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101103/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101644",
      plan: "ENS",
      theme: "TERRITOIRES BILINGUES",
      titre: "Calais Territoire Bilingue : ETWINNING",
      dispoCode: "25A0090753",
      dispoTitre: "BIL_07 - ETWINNING CALAIS TERRITOIRE BILINGUE",
      public:
          "Enseignants du 1 et 2nd degré du dispositif Calais   territoire bilingue",
      objectifs:
          "Découvrir la plateforme Etwinning - S'appuyer sur le   potentiel de la mobilité comme moteur de progrès et   source de motivation pour les enseignants et les élèves",
      contenu:
          "INTERLANGUES Présentation de la plateforme, mise en lumière de   projets existant et rédaction de nouveaux projets",
      duree: "3",
      effectif: "24",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101644/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100340",
      plan: "ENS",
      theme: "THEATRE",
      titre: "La didactique du théâtre en cours de français",
      dispoCode: "25A0090223",
      dispoTitre: "THE_04 - DIDACTIQUE DU THÉÂTRE EN COURS DE FRANÇ.",
      public:
          "Enseignants de lettres (collège, lycée général,   technologique et professionnel)",
      objectifs:
          "Le stage se propose, à travers des exemples concrets, d'aborder la lecture des textes, leur compréhension, leur explication et leur interprétation grâce aux outils didactiques du   théâtre : lecture à haute voix, mobilisation du corps, enjeux du dialogue, travail sur l'espace. Le stage permettra d'approfondir la didactique de l'oral et de la lecture, mais aussi celle des exercices d'analyse littéraire (lectures analytiques et explications linéaires), dans le souci   d'une dynamisation du cours de français.",
      contenu:
          "CINEMA, DANSE, THEATRE Introduire la pratique théâtrale au cœur de son enseignement de français pour varier ses pratiques et faciliter la compréhension des textes, pas seulement théâtraux.",
      duree: "6",
      effectif: "20",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100340/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "100568",
      plan: "ENS",
      theme: "THEATRE",
      titre:
          "Webinaire informatif aux certifications complémentaires pour les 5 enseignements artistiques (PV)",
      dispoCode: "25A0090305",
      dispoTitre: "THE_05 @ WEBINAIRE CERTIFICATIONS  EN ARTS (PV)",
      public:
          "Enseignants prioritairement du 2nd degré. Toutes disciplines concernées.",
      objectifs:
          "La certification complémentaire en Arts permet d'attester de compétences dans un domaine artistique et offre l'opportunité d'en acquérir d'autres. Prenant appui sur les programmes en lycée, mobilisant des expériences professionnelles et convoquant une expertise scientifique plus ou moins étayée et étoffée, il s'agit d'accompagner les préparationnaires dans leur démarche qu'il s'agisse de la construction progressive du rapport dactylographié et de l'épreuve orale. Plusieurs points seront abordés : réflexions didactiques et pistes pédagogiques en lien avec les projets envisagés, connaissance des acteurs institutionnels et des ressources régionales.",
      contenu:
          "AUTRE CONTENU ARTS ET PATRIMOINE Ce premier temps informatif commun aux enseignements artistiques (octobre 2025) abordera les exigences et les attendus de cette épreuve certificative Arts avec cinq options : arts du cirque, cinéma et audiovisuel, danse, histoire de l'art, théâtre.",
      duree: "2",
      effectif: "60",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/100568/tab/trainee/pill/individualTrainingPlan",
      discipline: true,
      tags: []),
  Module(
      code: "101456",
      plan: "ENS",
      theme: "VALEURS DE LA REPUBLIQUE",
      titre: "Le complotisme, question socialement vive: comprendre pour agir.",
      dispoCode: "25A0090675",
      dispoTitre: "VALR16 - LE COMPLOTISME, QSV: COMPRENDRE POUR AGIR",
      public: "inter-catégoriel",
      objectifs:
          "Cette autoformation a pour objectif de permettre aux stagiaires d'avoir un premier temps de travail personnel afin de s'approprier l'ensemble des ressources et éléments proposés au service de leur propre pratique.   Identifier et traiter des arguments complotistes",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Proposition de ressources bibliographiques et d'un document sur les argumentations complotistes.",
      duree: "2",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101456/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101457",
      plan: "ENS",
      theme: "VALEURS DE LA REPUBLIQUE",
      titre:
          "Le complotisme, question socialement vive : comprendre pour agir.",
      dispoCode: "25A0090675",
      dispoTitre: "VALR16 - LE COMPLOTISME, QSV: COMPRENDRE POUR AGIR",
      public: "inter-catégoriel",
      objectifs:
          "Connaître les évolutions historiques (du XVIIIème siècle à nos jours) ainsi que les principaux ressorts du complotisme (ressorts psychologiques, biais cognitifs, mécanismes socio-politiques, stratégies communicationnelles, manipulation de l'image...).",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Présentation des enjeux de la formation ;   Présentation des « logiques du complotisme »;   Le complotisme de Barruel à nos jours .",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101457/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101458",
      plan: "ENS",
      theme: "VALEURS DE LA REPUBLIQUE",
      titre: "Reflexion, mutualisation des pratiques et cas pratiques.",
      dispoCode: "25A0090675",
      dispoTitre: "VALR16 - LE COMPLOTISME, QSV: COMPRENDRE POUR AGIR",
      public: "inter-catégoriel",
      objectifs:
          "Cerner et conforter le rôle des personnels (notamment enseignants mais pas seulement). Les apports sont restitués dans le carde des missions de l'Ecole en matière de formation à l'esprit critique, mais aussi de prévention contre les dérives sectaires et de lutte contre le racisme et l'antisémitisme.",
      contenu:
          "CONTENUS TOUCHANT A PLUSIEURS GROUPES, INTER-TRANS Retour réflexif sur le parcours réalisé, du début de la formation à l'autoformation, afin de mutualiser des idées de pratiques éducatives et pédagogiques, mais aussi de fournir des pistes nouvelles. Un second temps est consacré à un atelier d'études de cas pratiques.",
      duree: "3",
      effectif: "25",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101458/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
  Module(
      code: "101660",
      plan: "ENS",
      theme: "VALEURS DE LA REPUBLIQUE",
      titre: "Enseigner Charles de Gaulle autrement",
      dispoCode: "25A0090758",
      dispoTitre: "VALR18 - MEMOIRE SECONDE GUERRE MONDIALE",
      public: "Enseignants d'Histoire-géographie-EMC prioritairement",
      objectifs:
          "Cette formation propose aux enseignants d'HG-EMC de collège et de lycée des dispositifs et outils (parfois numériques) pour construire des séances et des projets qui s'inscrivent dans les programmes de la 4ème à la Terminale, dans le parcours civique et dans le parcours d'éducation artistique et culturelle à partir de la figure de Charles de Gaulle. Elle permet d'aborder l'enseignement de l'histoire de la IIIème à la Vème République. Une approche croisant les capacités travaillées et les points de programme sera proposée.",
      contenu:
          "HISTOIRE, GEOGRAPHIE Cette formation a pour objectif de permettre aux enseignants de mieux intégrer la figure de Charles de Gaulle dans leur enseignement, tout en favorisant l'acquisition du socle commun de connaissances, de compétences et de culture.",
      duree: "6",
      effectif: "30",
      abonnement:
          "https://eduline.ac-lille.fr/sofia-fmo-acad//default/extmodule/subscriptionadd/extModuleId/101660/tab/trainee/pill/individualTrainingPlan",
      discipline: false,
      tags: []),
];
